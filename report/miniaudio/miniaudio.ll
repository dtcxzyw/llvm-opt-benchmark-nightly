Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_worker_thread:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !324
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %ma_device_audio_thread__default_read_write.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %i.ai, align 4, !tbaa !214
  %i.cm = load i32, ptr %i.aj, align 8, !tbaa !215
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !118
  %i.cq = mul i32 %i.cp, %i.cm
  %i.cr = udiv i32 4096, %i.cq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0107.i = phi i32 [ %i.cr, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.cs = load atomic i32, ptr %i.p seq_cst, align 8
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %.lr.ph238.i, label %ma_device_audio_thread__default_read_write.exit

.lr.ph238.i:                                      ; preds = %bb.o
  %i.cu = zext nneg i32 %.0107.i to i64           ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %ma_device_get_state.exit.i, %.lr.ph238.i
  %i.cv = load i32, ptr %i.af, align 8, !tbaa !223
  switch i32 %i.cv, label %ma_device_get_state.exit.i [
    i32 3, label %bb.q
    i32 2, label %bb.ao
    i32 4, label %bb.ao
    i32 1, label %bb.ar
  ]

bb.q:                                             ; preds = %bb.p
  %i.cw = load i32, ptr %i.al, align 8, !tbaa !210
  %i.cx = load i32, ptr %i.ak, align 8, !tbaa !217
  %..i = call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.cx) ; 3 uses
  %.not241.i = icmp eq i32 %..i, 0
  br i1 %.not241.i, label %ma_device_get_state.exit.i, label %.lr.ph234.i

.lr.ph234.i:                                      ; preds = %bb.q, %bb.an
  %.0103233.i = phi i32 [ %i.lr, %bb.an ], [ 0, %bb.q ] ; 2 uses
  %.1110232.i = phi i32 [ %.5.ph.i, %bb.an ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.cy = sub nuw i32 %..i, %.0103233.i
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.cy, i32 %.0108.i)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !219
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !323
  %i.dc = call i32 %i.db(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %spec.select.i, ptr noundef nonnull %i.g) #55, !inline_history !1287
  %.not147.i = icmp eq i32 %i.dc, 0
  br i1 %.not147.i, label %bb.r, label %.thread180.i

bb.r:                                             ; preds = %.lr.ph234.i
  %i.dd = load i32, ptr %i.g, align 4, !tbaa !118
  br label %bb.s

bb.s:                                             ; preds = %bb.am, %bb.r
  %.0101.i = phi i32 [ %i.dd, %bb.r ], [ %i.lb, %bb.am ] ; 2 uses
  %.099.i = phi i32 [ 0, %bb.r ], [ %i.la, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  %i.de = load i32, ptr %i.am, align 4, !tbaa !229
  %i.df = load i32, ptr %i.an, align 8, !tbaa !230
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !118
  %i.dj = mul i32 %i.di, %i.df
  %i.dk = udiv i32 4096, %i.dj
  %i.dl = load i32, ptr %i.ao, align 4, !tbaa !231
  %i.dm = load i32, ptr %i.ap, align 8, !tbaa !232
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !118
  %i.dq = mul i32 %i.dp, %i.dm
  %i.dr = udiv i32 4096, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dk, i32 %i.dr)
  %i.dt = zext nneg i32 %i.ds to i64
  store i64 %i.dt, ptr %i.j, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  %i.du = zext i32 %.0101.i to i64
  store i64 %i.du, ptr %i.k, align 8, !tbaa !164
  %i.dv = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !207
  %i.dx = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !118
  %i.ea = mul i32 %i.dw, %.099.i
  %i.eb = mul i32 %i.ea, %i.dz
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ec
  %i.ee = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.k, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j)
  %.not148.i = icmp eq i32 %i.ee, 0
  br i1 %.not148.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.ef = load i64, ptr %i.j, align 8, !tbaa !164 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.loopexit.i, label %ma_device_get_master_volume.exit.i.i

ma_device_get_master_volume.exit.i.i:             ; preds = %bb.t
  %i.eh = trunc i64 %i.ef to i32                  ; 5 uses
  %i.ei = load atomic volatile i32, ptr %i.ar seq_cst, align 4
  %i.ej = bitcast i32 %i.ei to float              ; 11 uses
  %i.ek = load ptr, ptr %i.as, align 8, !tbaa !344
  %.not.i.i38 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i38, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %ma_device_get_master_volume.exit.i.i
  %i.el = load i8, ptr %i.at, align 1, !tbaa !345
  %.not.i.i.i = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i, label %bb.v, label %ma_device_disable_denormals.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.b)
  %i.em = load i32, ptr %i.b, align 4             ; 2 uses
  %i.en = or i32 %i.em, 32832
  store i32 %i.en, ptr %i.c, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %ma_device_disable_denormals.exit.i.i

ma_device_disable_denormals.exit.i.i:             ; preds = %bb.v, %bb.u
  %.0.i.i.i = phi i32 [ %i.em, %bb.v ], [ 0, %bb.u ]
  %i.eo = fcmp une float %i.ej, 1.000000e+00
  br i1 %i.eo, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %ma_device_disable_denormals.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.ep = load i32, ptr %i.am, align 4, !tbaa !229
  %i.eq = load i32, ptr %i.an, align 8, !tbaa !230
  %i.er = zext i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !118
  %i.eu = mul i32 %i.et, %i.eq                    ; 2 uses
  %i.ev = load i32, ptr %i.ao, align 4, !tbaa !231
  %i.ew = load i32, ptr %i.ap, align 8, !tbaa !232
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !118
  %i.fa = mul i32 %i.ez, %i.ew
  %.not70.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not70.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.w
  %i.fb = udiv i32 4096, %i.eu
  %broadcast.splatinsert169 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat170 = shufflevector <4 x float> %broadcast.splatinsert169, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat156 = shufflevector <4 x float> %broadcast.splatinsert155, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.ej, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.ej, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, %.lr.ph.i.i39
  %.05369.i.i = phi i32 [ 0, %.lr.ph.i.i39 ], [ %i.jl, %ma_copy_and_apply_volume_factor_pcm_frames.exit.i ] ; 4 uses
  %i.fc = sub i32 %i.eh, %.05369.i.i
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fb) ; 3 uses
  %i.fd = mul i32 %.05369.i.i, %i.eu
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.h, i64 %i.fe   ; 12 uses
  %i.fg = zext nneg i32 %spec.select.i.i to i64   ; 5 uses
  %i.fh = load i32, ptr %i.am, align 4, !tbaa !229
  %i.fi = load i32, ptr %i.an, align 8, !tbaa !230 ; 5 uses
  switch i32 %i.fh, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 4, label %bb.ab
    i32 5, label %.preheader23.i.i.i.i
  ]

bb.y:                                             ; preds = %bb.x
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fg, %i.fj            ; 9 uses
  %.not203.i = icmp eq i64 %i.fk, 0
  br i1 %.not203.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.y
  %min.iters.check120 = icmp samesign ult i64 %i.fk, 4
  br i1 %min.iters.check120, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp samesign ult i64 %i.fk, 16
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %i.fk, 12
  %n.vec123 = and i64 %i.fk, 35184372088816       ; 4 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.ph122, %vector.body124
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next127, %vector.body124 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index125
  %wide.load126 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !119
  %i.fn = uitofp <16 x i8> %wide.load126 to <16 x float>
  %i.fo = fmul <16 x float> %broadcast.splat, %i.fn
  %i.fp = fptoui <16 x float> %i.fo to <16 x i8>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 %index125
  store <16 x i8> %i.fp, ptr %i.fq, align 16, !tbaa !119
  %index.next127 = add nuw i64 %index125, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.fr, label %middle.block128, label %vector.body124, !llvm.loop !1288

middle.block128:                                  ; preds = %vector.body124
  %cmp.n129 = icmp eq i64 %i.fk, %n.vec123
  br i1 %cmp.n129, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.fl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec123, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.fk, 35184372088828       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %index133
  %wide.load134 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !119
  %i.ft = uitofp <4 x i8> %wide.load134 to <4 x float>
  %i.fu = fmul <4 x float> %broadcast.splat132, %i.ft
  %i.fv = fptoui <4 x float> %i.fu to <4 x i8>
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 %index133
  store <4 x i8> %i.fv, ptr %i.fw, align 4, !tbaa !119
  %index.next135 = add nuw i64 %index133, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1289

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.fk, %n.vec130
  br i1 %cmp.n136, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec123, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.012.i.i.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !119
  %i.ga = uitofp i8 %i.fz to float
  %i.gb = fmul float %i.ej, %i.ga
  %i.gc = fptoui float %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.012.i.i.i.i
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !119
  %i.ge = add nuw nsw i64 %.012.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ge, %i.fk
  br i1 %exitcond.not.i.i.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1290

bb.z:                                             ; preds = %bb.x
  %i.gf = zext i32 %i.fi to i64
  %i.gg = mul nuw nsw i64 %i.fg, %i.gf            ; 5 uses
  %.not202.i = icmp eq i64 %i.gg, 0
  br i1 %.not202.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i27.i.i.preheader

.lr.ph.i.i27.i.i.preheader:                       ; preds = %bb.z
  %min.iters.check139 = icmp samesign ult i64 %i.gg, 8
  br i1 %min.iters.check139, label %.lr.ph.i.i27.i.i.preheader179, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i.i27.i.i.preheader
  %n.vec141 = and i64 %i.gg, 35184372088824       ; 3 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %index145
  %wide.load146 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !122
  %i.gi = sitofp <8 x i16> %wide.load146 to <8 x float>
  %i.gj = fmul <8 x float> %broadcast.splat143, %i.gi
  %i.gk = fptosi <8 x float> %i.gj to <8 x i16>
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index145
  store <8 x i16> %i.gk, ptr %i.gl, align 16, !tbaa !122
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.gm, label %middle.block148, label %vector.body144, !llvm.loop !1291

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.gg, %n.vec141
  br i1 %cmp.n149, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i27.i.i.preheader179

.lr.ph.i.i27.i.i.preheader179:                    ; preds = %.lr.ph.i.i27.i.i.preheader, %middle.block148
  %.012.i.i28.i.i.ph = phi i64 [ 0, %.lr.ph.i.i27.i.i.preheader ], [ %n.vec141, %middle.block148 ]
  br label %.lr.ph.i.i27.i.i

.lr.ph.i.i27.i.i:                                 ; preds = %.lr.ph.i.i27.i.i.preheader179, %.lr.ph.i.i27.i.i
  %.012.i.i28.i.i = phi i64 [ %i.gt, %.lr.ph.i.i27.i.i ], [ %.012.i.i28.i.i.ph, %.lr.ph.i.i27.i.i.preheader179 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %.012.i.i28.i.i
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !122
  %i.gp = sitofp i16 %i.go to float
  %i.gq = fmul float %i.ej, %i.gp
  %i.gr = fptosi float %i.gq to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i28.i.i
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !122
  %i.gt = add nuw nsw i64 %.012.i.i28.i.i, 1      ; 2 uses
  %exitcond.not.i.i29.i.i = icmp eq i64 %i.gt, %i.gg
  br i1 %exitcond.not.i.i29.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i27.i.i, !llvm.loop !1292

bb.aa:                                            ; preds = %bb.x
  %i.gu = zext i32 %i.fi to i64
  %i.gv = mul nuw nsw i64 %i.fg, %i.gu            ; 2 uses
  %.not201.i = icmp eq i64 %i.gv, 0
  br i1 %.not201.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i30.i.i

.lr.ph.i.i30.i.i:                                 ; preds = %bb.aa, %.lr.ph.i.i30.i.i
  %.026.i.i.i.i = phi i64 [ %i.hz, %.lr.ph.i.i30.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.gw = mul nuw nsw i64 %.026.i.i.i.i, 3        ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !119
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 8
  %i.hb = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !119
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 16
  %i.hg = or disjoint i32 %i.hf, %i.ha
  %i.hh = add nuw nsw i64 %i.gw, 2                ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !119
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw i32 %i.hk, 24
  %i.hm = or disjoint i32 %i.hg, %i.hl
  %i.hn = sitofp i32 %i.hm to float
  %i.ho = fmul float %i.ej, %i.hn
  %i.hp = fptosi float %i.ho to i32               ; 3 uses
  %i.hq = lshr i32 %i.hp, 8
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gw
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !119
  %i.ht = lshr i32 %i.hp, 16
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hb
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !119
  %i.hw = lshr i32 %i.hp, 24
  %i.hx = trunc nuw i32 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hh
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !119
  %i.hz = add nuw nsw i64 %.026.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i31.i.i = icmp eq i64 %i.hz, %i.gv
  br i1 %exitcond.not.i.i31.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i30.i.i, !llvm.loop !9

bb.ab:                                            ; preds = %bb.x
  %i.ia = zext i32 %i.fi to i64
  %i.ib = mul nuw nsw i64 %i.fg, %i.ia            ; 5 uses
  %.not200.i = icmp eq i64 %i.ib, 0
  br i1 %.not200.i, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i34.i.i.preheader

.lr.ph.i.i34.i.i.preheader:                       ; preds = %bb.ab
  %min.iters.check152 = icmp samesign ult i64 %i.ib, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i34.i.i.preheader182, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.i.i34.i.i.preheader
  %n.vec154 = and i64 %i.ib, 35184372088824       ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body157 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index158 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load159 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !118
  %wide.load160 = load <4 x i32>, ptr %i.id, align 4, !tbaa !118
  %i.ie = sitofp <4 x i32> %wide.load159 to <4 x float>
  %i.if = sitofp <4 x i32> %wide.load160 to <4 x float>
  %i.ig = fmul <4 x float> %broadcast.splat156, %i.ie
  %i.ih = fmul <4 x float> %broadcast.splat156, %i.if
  %i.ii = fptosi <4 x float> %i.ig to <4 x i32>
  %i.ij = fptosi <4 x float> %i.ih to <4 x i32>
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index158 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <4 x i32> %i.ii, ptr %i.ik, align 16, !tbaa !118
  store <4 x i32> %i.ij, ptr %i.il, align 16, !tbaa !118
  %index.next161 = add nuw i64 %index158, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.im, label %middle.block162, label %vector.body157, !llvm.loop !1293

middle.block162:                                  ; preds = %vector.body157
  %cmp.n163 = icmp eq i64 %i.ib, %n.vec154
  br i1 %cmp.n163, label %ma_copy_and_apply_volume_factor_pcm_frames.exit.i, label %.lr.ph.i.i34.i.i.preheader182

.lr.ph.i.i34.i.i.preheader182:                    ; preds = %.lr.ph.i.i34.i.i.preheader, %middle.block162
  %.012.i.i35.i.i.ph = phi i64 [ 0, %.lr.ph.i.i34.i.i.preheader ], [ %n.vec154, %middle.block162 ]
  br label %.lr.ph.i.i34.i.i

.lr.ph.i.i34.i.i:                                 ; preds = %.lr.ph.i.i34.i.i.preheader182, %.lr.ph.i.i34.i.i
  %.012.i.i35.i.i = phi i64 [ %i.it, %.lr.ph.i.i34.i.i ], [ %.012.i.i35.i.i.ph, %.lr.ph.i.i34.i.i.preheader182 ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.012.i.i35.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !118
  %i.ip = sitofp i32 %i.io to float
  %i.iq = fmul float %i.ej, %i.ip
  %i.ir = fptosi float %i.iq to i32
end_hunk_0
begin_hunk_1_@ma_device__read_frames_from_client:bb.a
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !164
  %i.ch = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.398, ptr noundef nonnull %i.e)
  %.not77 = icmp eq i32 %i.ch, 0
  br i1 %.not77, label %bb.n, label %.thread89

bb.n:                                             ; preds = %ma_data_converter_get_required_input_frame_count.exit
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !164 ; 3 uses
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !164
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = icmp eq i64 %i.ci, 0
  %or.cond3 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond3, label %.thread89, label %bb.o

.thread89:                                        ; preds = %ma_data_converter_get_required_input_frame_count.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !214
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !118
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !215
  %i.cr = mul i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul i64 %i.ci, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.398, i64 %i.ct
  %i.cv = add i64 %i.ci, %.36897                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.cw = icmp ult i64 %i.cv, %i.l
  br i1 %i.cw, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.o, %.preheader93, %.preheader, %.thread89, %.thread84, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_calculate_buffer_size_in_frames_from_descriptor(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi i32 [ %i.d, %bb.c ], [ %1, %bb.b ]  ; 2 uses
  %i.e = icmp eq i32 %.012, 0
  %spec.store.select = select i1 %i.e, i32 48000, i32 %.012 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load i32, ptr %i.f, align 8, !tbaa !209  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.j = load i32, ptr %i.i, align 4, !tbaa !213  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i32 %2, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = mul i32 %spec.store.select, 10
  %i.n = udiv i32 %i.m, 1000
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = mul i32 %spec.store.select, 100
  %i.p = udiv i32 %i.o, 1000
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.q = mul i32 %i.j, %spec.store.select
  %i.r = udiv i32 %i.q, 1000
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.g ], [ %i.p, %bb.h ], [ %i.r, %bb.i ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @ma_calculate_buffer_size_in_milliseconds_from_frames(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i32 %0, 1000
  %i.c = add i32 %1, -1
  %i.d = add i32 %i.c, %i.b
  %i.e = udiv i32 %i.d, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_pcm_frames(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %ma_copy_memory_64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = mul i32 %i.d, %4
  %i.f = zext i32 %i.e to i64
  %i.g = mul i64 %2, %i.f                         ; 2 uses
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i10 = phi ptr [ %i.i, %.lr.ph ], [ %0, %bb.b ] ; 2 uses
  %.011.i9 = phi i64 [ %i.h, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.012.i8 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.b ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i9, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8, i64 %spec.store.select.i, i1 false)
  %i.h = sub nuw i64 %.011.i9, %spec.store.select.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i10, i64 %spec.store.select.i
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i8, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

ma_copy_memory_64.exit:                           ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ma_offset_pcm_frames_ptr(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !118
  %i.d = mul i32 %i.c, %3
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ma_offset_pcm_frames_const_ptr(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !118
  %i.d = mul i32 %i.c, %3
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_u8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.a = shl i64 %2, 1
  %scevgep7 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep7
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %2, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !122, !alias.scope !1312
  %wide.load9 = load <8 x i16>, ptr %i.d, align 2, !tbaa !122, !alias.scope !1312
  %i.e = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> splat (i16 -128))
  %i.f = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load9, <8 x i16> splat (i16 -128))
  %i.g = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.e, <8 x i16> splat (i16 127))
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.f, <8 x i16> splat (i16 127))
  %i.i = trunc nsw <8 x i16> %i.g to <8 x i8>
  %i.j = xor <8 x i8> %i.i, splat (i8 -128)
  %i.k = trunc nsw <8 x i16> %i.h to <8 x i8>
  %i.l = xor <8 x i8> %i.k, splat (i8 -128)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <8 x i8> %i.j, ptr %i.m, align 1, !tbaa !119, !alias.scope !1313, !noalias !1312
  store <8 x i8> %i.l, ptr %i.n, align 1, !tbaa !119, !alias.scope !1313, !noalias !1312
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11
  %wide.load12 = load <4 x i16>, ptr %i.p, align 2, !tbaa !122, !alias.scope !1312
  %i.q = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load12, <4 x i16> splat (i16 -128))
  %i.r = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.q, <4 x i16> splat (i16 127))
  %i.s = trunc nsw <4 x i16> %i.r to <4 x i8>
  %i.t = xor <4 x i8> %i.s, splat (i8 -128)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index11
  store <4 x i8> %i.t, ptr %i.u, align 1, !tbaa !119, !alias.scope !1313, !noalias !1312
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %2, %n.vec10
  br i1 %cmp.n14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.ph
  %i.x = load i16, ptr %i.w, align 2, !tbaa !122
  %i.y = tail call i16 @llvm.smax.i16(i16 %i.x, i16 -128)
  %i.z = tail call i16 @llvm.smin.i16(i16 %i.y, i16 127)
  %i.aa = trunc nsw i16 %i.z to i8
  %i.ab = xor i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.06.ph
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !119
  %i.ad = or disjoint i64 %.06.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.06.unr = phi i64 [ %.06.ph, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %i.ae = icmp eq i64 %2, %.neg
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06 = phi i64 [ %i.au, %.lr.ph ], [ %.06.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !122
  %i.ah = tail call i16 @llvm.smax.i16(i16 %i.ag, i16 -128)
  %i.ai = tail call i16 @llvm.smin.i16(i16 %i.ah, i16 127)
  %i.aj = trunc nsw i16 %i.ai to i8
  %i.ak = xor i8 %i.aj, -128
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !119
  %i.am = add nuw i64 %.06, 1                     ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !122
  %i.ap = tail call i16 @llvm.smax.i16(i16 %i.ao, i16 -128)
  %i.aq = tail call i16 @llvm.smin.i16(i16 %i.ap, i16 127)
  %i.ar = trunc nsw i16 %i.aq to i8
  %i.as = xor i8 %i.ar, -128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store i8 %i.as, ptr %i.at, align 1, !tbaa !119
  %i.au = add nuw i64 %.06, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.au, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1311

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <4 x i32>, ptr %i.a, align 4, !tbaa !118
  %wide.load7 = load <4 x i32>, ptr %i.b, align 4, !tbaa !118
  %i.c = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -32768))
  %i.d = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load7, <4 x i32> splat (i32 -32768))
  %i.e = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.c, <4 x i32> splat (i32 32767))
  %i.f = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.d, <4 x i32> splat (i32 32767))
  %i.g = trunc nsw <4 x i32> %i.e to <4 x i16>
  %i.h = trunc nsw <4 x i32> %i.f to <4 x i16>
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <4 x i16> %i.g, ptr %i.i, align 2, !tbaa !122
  store <4 x i16> %i.h, ptr %i.j, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %.06 = phi i64 [ %i.r, %.lr.ph ], [ %.06.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -32768)
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.n, i32 32767)
  %i.p = trunc nsw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06
  store i16 %i.p, ptr %i.q, align 2, !tbaa !122
  %i.r = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1315

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -8388608)
  %i.e = tail call i64 @llvm.smin.i64(i64 %i.d, i64 8388607) ; 3 uses
  %i.f = trunc i64 %i.e to i8
  %i.g = mul i64 %.013, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  store i8 %i.f, ptr %i.h, align 1, !tbaa !119
  %i.i = lshr i64 %i.e, 8
  %i.j = trunc i64 %i.i to i8
  %i.k = getelementptr i8, ptr %i.h, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !119
  %i.l = lshr i64 %i.e, 16
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr i8, ptr %i.h, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !119
  %i.o = or disjoint i64 %.013, 1                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -8388608)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 8388607) ; 3 uses
  %i.t = trunc i64 %i.s to i8
  %i.u = mul i64 %i.o, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 3 uses
  store i8 %i.t, ptr %i.v, align 1, !tbaa !119
  %i.w = lshr i64 %i.s, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr i8, ptr %i.v, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = lshr i64 %i.s, 16
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr i8, ptr %i.v, i64 2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !119
  %i.ac = add nuw i64 %.013, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.epil.init
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !164
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -8388608)
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 8388607) ; 3 uses
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = mul i64 %.013.epil.init, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 3 uses
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !119
  %i.ak = lshr i64 %i.ag, 8
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr i8, ptr %i.aj, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !119
  %i.an = lshr i64 %i.ag, 16
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr i8, ptr %i.aj, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -2147483648)
  %i.e = tail call i64 @llvm.smin.i64(i64 %i.d, i64 2147483647)
  %i.f = trunc nsw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  store i32 %i.f, ptr %i.g, align 4, !tbaa !118
  %i.h = or disjoint i64 %.06, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !164
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %i.l = tail call i64 @llvm.smin.i64(i64 %i.k, i64 2147483647)
  %i.m = trunc nsw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  store i32 %i.m, ptr %i.n, align 4, !tbaa !118
  %i.o = add nuw i64 %.06, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.epil.init
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 2147483647)
  %i.t = trunc nsw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.epil.init
  store i32 %i.t, ptr %i.u, align 4, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !349 ; 3 uses
  %wide.load7 = load <4 x float>, ptr %i.e, align 4, !tbaa !349 ; 3 uses
  %i.f = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.g = fcmp olt <4 x float> %wide.load7, splat (float -1.000000e+00)
  %i.h = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.i = fcmp ogt <4 x float> %wide.load7, splat (float 1.000000e+00)
  %i.j = select <4 x i1> %i.h, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.k = select <4 x i1> %i.i, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load7
  %i.l = select <4 x i1> %i.f, <4 x float> splat (float -1.000000e+00), <4 x float> %i.j
  %i.m = select <4 x i1> %i.g, <4 x float> splat (float -1.000000e+00), <4 x float> %i.k
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %i.l, ptr %i.n, align 4, !tbaa !349
  store <4 x float> %i.m, ptr %i.o, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !349 ; 3 uses
  %i.s = fcmp olt float %i.r, -1.000000e+00
  %i.t = fcmp ogt float %i.r, 1.000000e+00
  %..i.prol = select i1 %i.t, float 1.000000e+00, float %i.r
  %.0.i.prol = select i1 %i.s, float -1.000000e+00, float %..i.prol
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.ph
  store float %.0.i.prol, ptr %i.u, align 4, !tbaa !349
  %i.v = or disjoint i64 %.06.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %.06.unr = phi i64 [ %.06.ph, %.lr.ph.preheader8 ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %2, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06 = phi i64 [ %i.ai, %.lr.ph ], [ %.06.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 3 uses
  %i.z = fcmp olt float %i.y, -1.000000e+00
  %i.aa = fcmp ogt float %i.y, 1.000000e+00
  %..i = select i1 %i.aa, float 1.000000e+00, float %i.y
  %.0.i = select i1 %i.z, float -1.000000e+00, float %..i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  store float %.0.i, ptr %i.ab, align 4, !tbaa !349
  %i.ac = add nuw i64 %.06, 1                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349 ; 3 uses
  %i.af = fcmp olt float %i.ae, -1.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i.1 = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i.1 = select i1 %i.af, float -1.000000e+00, float %..i.1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store float %.0.i.1, ptr %i.ah, align 4, !tbaa !349
  %i.ai = add nuw i64 %.06, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1317

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_pcm_frames(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = zext i32 %4 to i64                       ; 2 uses
  %i.d = mul i64 %2, %i.c                         ; 34 uses
  switch i32 %3, label %ma_clip_samples_u8.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %ma_clip_samples_u8.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check64 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check64, label %.lr.ph.i.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %i.e = mul i64 %2, %i.c
  %i.f = shl i64 %i.e, 1
  %scevgep62 = getelementptr i8, ptr %1, i64 %i.f
  %bound0 = icmp ult ptr %0, %scevgep62
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 12
  %n.vec67 = and i64 %i.d, -16                    ; 4 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.ph66, %vector.body68
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index69 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load70 = load <8 x i16>, ptr %i.h, align 2, !tbaa !122, !alias.scope !1328
  %wide.load71 = load <8 x i16>, ptr %i.i, align 2, !tbaa !122, !alias.scope !1328
  %i.j = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load70, <8 x i16> splat (i16 -128))
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load71, <8 x i16> splat (i16 -128))
  %i.l = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 127))
  %i.m = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.k, <8 x i16> splat (i16 127))
  %i.n = trunc nsw <8 x i16> %i.l to <8 x i8>
  %i.o = xor <8 x i8> %i.n, splat (i8 -128)
  %i.p = trunc nsw <8 x i16> %i.m to <8 x i8>
  %i.q = xor <8 x i8> %i.p, splat (i8 -128)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index69 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <8 x i8> %i.o, ptr %i.r, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  store <8 x i8> %i.q, ptr %i.s, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  %index.next72 = add nuw i64 %index69, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.t, label %middle.block73, label %vector.body68, !llvm.loop !1321

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.d, %n.vec67
  br i1 %cmp.n74, label %ma_clip_samples_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block73
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec67, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.d, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index76
  %wide.load77 = load <4 x i16>, ptr %i.u, align 2, !tbaa !122, !alias.scope !1328
  %i.v = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load77, <4 x i16> splat (i16 -128))
  %i.w = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.v, <4 x i16> splat (i16 127))
  %i.x = trunc nsw <4 x i16> %i.w to <4 x i8>
  %i.y = xor <4 x i8> %i.x, splat (i8 -128)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index76
  store <4 x i8> %i.y, ptr %i.z, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  %index.next78 = add nuw i64 %index76, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1322

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.d, %n.vec75
  br i1 %cmp.n79, label %ma_clip_samples_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck61, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck61 ], [ %n.vec67, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 5 uses
  %.neg99 = or disjoint i64 %.06.i.ph, 1
  %xtraiter97 = and i64 %i.d, 1
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.i.ph
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !122
  %i.ad = tail call i16 @llvm.smax.i16(i16 %i.ac, i16 -128)
  %i.ae = tail call i16 @llvm.smin.i16(i16 %i.ad, i16 127)
  %i.af = trunc nsw i16 %i.ae to i8
  %i.ag = xor i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.ph
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !119
  %i.ai = or disjoint i64 %.06.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %.06.i.ph, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp eq i64 %i.d, %.neg99
  br i1 %i.aj, label %ma_clip_samples_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !122
  %i.am = tail call i16 @llvm.smax.i16(i16 %i.al, i16 -128)
  %i.an = tail call i16 @llvm.smin.i16(i16 %i.am, i16 127)
  %i.ao = trunc nsw i16 %i.an to i8
  %i.ap = xor i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !119
  %i.ar = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !122
  %i.au = tail call i16 @llvm.smax.i16(i16 %i.at, i16 -128)
  %i.av = tail call i16 @llvm.smin.i16(i16 %i.au, i16 127)
  %i.aw = trunc nsw i16 %i.av to i8
  %i.ax = xor i8 %i.aw, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !119
  %i.az = add nuw i64 %.06.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.az, %i.d
  br i1 %exitcond.not.i.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i, !llvm.loop !1323

bb.c:                                             ; preds = %bb.a
  %.not.i17 = icmp eq i64 %i.d, 0
  br i1 %.not.i17, label %ma_clip_samples_u8.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %bb.c
  %min.iters.check50 = icmp ult i64 %i.d, 8
  br i1 %min.iters.check50, label %.lr.ph.i18.preheader83, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.i18.preheader
  %n.vec52 = and i64 %i.d, -8                     ; 3 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body53 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index54 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load55 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !118
  %wide.load56 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !118
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> splat (i32 -32768))
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load56, <4 x i32> splat (i32 -32768))
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bc, <4 x i32> splat (i32 32767))
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bd, <4 x i32> splat (i32 32767))
  %i.bg = trunc nsw <4 x i32> %i.be to <4 x i16>
  %i.bh = trunc nsw <4 x i32> %i.bf to <4 x i16>
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index54 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <4 x i16> %i.bg, ptr %i.bi, align 2, !tbaa !122
  store <4 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !122
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.bk, label %middle.block58, label %vector.body53, !llvm.loop !1324

middle.block58:                                   ; preds = %vector.body53
  %cmp.n59 = icmp eq i64 %i.d, %n.vec52
  br i1 %cmp.n59, label %ma_clip_samples_u8.exit, label %.lr.ph.i18.preheader83

.lr.ph.i18.preheader83:                           ; preds = %.lr.ph.i18.preheader, %middle.block58
  %.06.i19.ph = phi i64 [ 0, %.lr.ph.i18.preheader ], [ %n.vec52, %middle.block58 ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader83, %.lr.ph.i18
  %.06.i19 = phi i64 [ %i.br, %.lr.ph.i18 ], [ %.06.i19.ph, %.lr.ph.i18.preheader83 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i19
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !118
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bm, i32 -32768)
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 32767)
  %i.bp = trunc nsw i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.i19
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !122
  %i.br = add nuw i64 %.06.i19, 1                 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %i.br, %i.d
  br i1 %exitcond.not.i20, label %ma_clip_samples_u8.exit, label %.lr.ph.i18, !llvm.loop !1325

bb.d:                                             ; preds = %bb.a
  %.not.i21 = icmp eq i64 %i.d, 0
  br i1 %.not.i21, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %bb.d
  %xtraiter92 = and i64 %i.d, 1
  %i.bs = icmp eq i64 %i.d, 1
  br i1 %i.bs, label %.lr.ph.i22.epil.preheader, label %.lr.ph.i22.preheader.new

.lr.ph.i22.preheader.new:                         ; preds = %.lr.ph.i22.preheader
  %unroll_iter95 = and i64 %i.d, -2
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.i22.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %i.cu, %.lr.ph.i22 ] ; 4 uses
  %niter96 = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %niter96.next.1, %.lr.ph.i22 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !164
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 -8388608)
  %i.bw = tail call i64 @llvm.smin.i64(i64 %i.bv, i64 8388607) ; 3 uses
  %i.bx = trunc i64 %i.bw to i8
  %i.by = mul i64 %.013.i, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by ; 3 uses
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !119
  %i.ca = lshr i64 %i.bw, 8
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr i8, ptr %i.bz, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !119
  %i.cd = lshr i64 %i.bw, 16
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !119
  %i.cg = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !164
  %i.cj = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 -8388608)
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 8388607) ; 3 uses
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = mul i64 %i.cg, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm ; 3 uses
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !119
  %i.co = lshr i64 %i.ck, 8
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr i8, ptr %i.cn, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !119
  %i.cr = lshr i64 %i.ck, 16
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr i8, ptr %i.cn, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !119
  %i.cu = add nuw i64 %.013.i, 2                  ; 2 uses
  %niter96.next.1 = add i64 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %ma_clip_samples_u8.exit.loopexit85.unr-lcssa, label %.lr.ph.i22, !llvm.loop !13

bb.e:                                             ; preds = %bb.a
  %.not.i24 = icmp eq i64 %i.d, 0
  br i1 %.not.i24, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %bb.e
  %xtraiter89 = and i64 %i.d, 1
  %i.cv = icmp eq i64 %i.d, 1
  br i1 %i.cv, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.06.i26 = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %i.dj, %.lr.ph.i25 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.1, %.lr.ph.i25 ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !164
  %i.cy = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %i.cz = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 2147483647)
  %i.da = trunc nsw i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26
  store i32 %i.da, ptr %i.db, align 4, !tbaa !118
  %i.dc = or disjoint i64 %.06.i26, 1             ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !164
  %i.df = tail call i64 @llvm.smax.i64(i64 %i.de, i64 -2147483648)
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 2147483647)
  %i.dh = trunc nsw i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !118
  %i.dj = add nuw i64 %.06.i26, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, label %.lr.ph.i25, !llvm.loop !14

bb.f:                                             ; preds = %bb.a
  %.not.i28 = icmp eq i64 %i.d, 0
  br i1 %.not.i28, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.dk = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dk, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i29.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i29.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <4 x float>, ptr %i.dl, align 4, !tbaa !349 ; 3 uses
  %wide.load48 = load <4 x float>, ptr %i.dm, align 4, !tbaa !349 ; 3 uses
  %i.dn = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.do = fcmp olt <4 x float> %wide.load48, splat (float -1.000000e+00)
  %i.dp = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.dq = fcmp ogt <4 x float> %wide.load48, splat (float 1.000000e+00)
  %i.dr = select <4 x i1> %i.dp, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.ds = select <4 x i1> %i.dq, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load48
  %i.dt = select <4 x i1> %i.dn, <4 x float> splat (float -1.000000e+00), <4 x float> %i.dr
  %i.du = select <4 x i1> %i.do, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ds
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x float> %i.dt, ptr %i.dv, align 4, !tbaa !349
  store <4 x float> %i.du, ptr %i.dw, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !1326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader87

.lr.ph.i29.preheader87:                           ; preds = %.lr.ph.i29.preheader, %middle.block
  %.06.i30.ph = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.i30.ph, 1
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.prol.loopexit, label %.lr.ph.i29.prol

.lr.ph.i29.prol:                                  ; preds = %.lr.ph.i29.preheader87
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30.ph
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !349 ; 3 uses
  %i.ea = fcmp olt float %i.dz, -1.000000e+00
  %i.eb = fcmp ogt float %i.dz, 1.000000e+00
  %..i.i.prol = select i1 %i.eb, float 1.000000e+00, float %i.dz
  %.0.i.i.prol = select i1 %i.ea, float -1.000000e+00, float %..i.i.prol
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30.ph
  store float %.0.i.i.prol, ptr %i.ec, align 4, !tbaa !349
  %i.ed = or disjoint i64 %.06.i30.ph, 1
  br label %.lr.ph.i29.prol.loopexit

.lr.ph.i29.prol.loopexit:                         ; preds = %.lr.ph.i29.prol, %.lr.ph.i29.preheader87
  %.06.i30.unr = phi i64 [ %.06.i30.ph, %.lr.ph.i29.preheader87 ], [ %i.ed, %.lr.ph.i29.prol ]
  %i.ee = icmp eq i64 %i.d, %.neg
  br i1 %i.ee, label %ma_clip_samples_u8.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29
  %.06.i30 = phi i64 [ %i.eq, %.lr.ph.i29 ], [ %.06.i30.unr, %.lr.ph.i29.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !349 ; 3 uses
  %i.eh = fcmp olt float %i.eg, -1.000000e+00
  %i.ei = fcmp ogt float %i.eg, 1.000000e+00
  %..i.i = select i1 %i.ei, float 1.000000e+00, float %i.eg
  %.0.i.i = select i1 %i.eh, float -1.000000e+00, float %..i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30
  store float %.0.i.i, ptr %i.ej, align 4, !tbaa !349
  %i.ek = add nuw i64 %.06.i30, 1                 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !349 ; 3 uses
  %i.en = fcmp olt float %i.em, -1.000000e+00
  %i.eo = fcmp ogt float %i.em, 1.000000e+00
  %..i.i.1 = select i1 %i.eo, float 1.000000e+00, float %i.em
  %.0.i.i.1 = select i1 %i.en, float -1.000000e+00, float %..i.i.1
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  store float %.0.i.i.1, ptr %i.ep, align 4, !tbaa !349
  %i.eq = add nuw i64 %.06.i30, 2                 ; 2 uses
  %exitcond.not.i31.1 = icmp eq i64 %i.eq, %i.d
  br i1 %exitcond.not.i31.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i29, !llvm.loop !1327

ma_clip_samples_u8.exit.loopexit85.unr-lcssa:     ; preds = %.lr.ph.i22
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit85.unr-lcssa, %.lr.ph.i22.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i22.preheader ], [ %i.cu, %ma_clip_samples_u8.exit.loopexit85.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i.epil.init
  %i.es = load i64, ptr %i.er, align 8, !tbaa !164
  %i.et = tail call i64 @llvm.smax.i64(i64 %i.es, i64 -8388608)
  %i.eu = tail call i64 @llvm.smin.i64(i64 %i.et, i64 8388607) ; 3 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = mul i64 %.013.i.epil.init, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew ; 3 uses
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !119
  %i.ey = lshr i64 %i.eu, 8
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr i8, ptr %i.ex, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !119
  %i.fb = lshr i64 %i.eu, 16
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.ex, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !119
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit.loopexit86.unr-lcssa:     ; preds = %.lr.ph.i25
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i25.preheader
  %.06.i26.epil.init = phi i64 [ 0, %.lr.ph.i25.preheader ], [ %i.dj, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26.epil.init
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !164
  %i.fg = tail call i64 @llvm.smax.i64(i64 %i.ff, i64 -2147483648)
  %i.fh = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 2147483647)
  %i.fi = trunc nsw i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26.epil.init
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !118
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit:                          ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29, %.lr.ph.i25.epil.preheader, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i22.epil.preheader, %ma_clip_samples_u8.exit.loopexit85.unr-lcssa, %.lr.ph.i18, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block58, %middle.block73, %vec.epilog.middle.block, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %2, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !119
  %i.i = uitofp <16 x i8> %wide.load to <16 x float>
  %i.j = fmul <16 x float> %broadcast.splat, %i.i
  %i.k = fptoui <16 x float> %i.j to <16 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.k, ptr %i.l, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119
  %i.o = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.p = fmul <4 x float> %broadcast.splat21, %i.o
  %i.q = fptoui <4 x float> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !119
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec19
  br i1 %cmp.n25, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.012.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul float %3, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012.ph
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = icmp eq i64 %2, %.neg
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ao, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !119
  %i.ah = add nuw i64 %.012, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul float %3, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1, !tbaa !119
  %i.ao = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1332

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !122
  %i.h = sitofp <8 x i16> %wide.load to <8 x float>
  %i.i = fmul <8 x float> %broadcast.splat, %i.h
  %i.j = fptosi <8 x float> %i.i to <8 x i16>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.j, ptr %i.k, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.ph
  %i.n = load i16, ptr %i.m, align 2, !tbaa !122
  %i.o = sitofp i16 %i.n to float
  %i.p = fmul float %3, %i.o
  %i.q = fptosi float %i.p to i16
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.ph
  store i16 %i.q, ptr %i.r, align 2, !tbaa !122
  %i.s = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader18 ], [ %i.s, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ah, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.v = load i16, ptr %i.u, align 2, !tbaa !122
  %i.w = sitofp i16 %i.v to float
  %i.x = fmul float %3, %i.w
  %i.y = fptosi float %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.y, ptr %i.z, align 2, !tbaa !122
  %i.aa = add nuw i64 %.012, 1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !122
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptosi float %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !122
  %i.ah = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1334

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not29 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond27 = and i1 %or.cond.not29, %i.c
  br i1 %or.cond27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = mul i64 %.026, 3                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = add i64 %i.d, 1                          ; 2 uses
end_hunk_1
begin_hunk_2_@ma_copy_and_apply_volume_factor_f32:bb.a
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader23
  %min.iters.check = icmp ult i64 %2, 8
  %i.f = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond51 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond51, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x float>, ptr %i.g, align 4, !tbaa !349
  %wide.load36 = load <4 x float>, ptr %i.h, align 4, !tbaa !349
  %i.i = fmul <4 x float> %broadcast.splat, %wide.load
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load36
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> %i.i, ptr %i.k, align 4, !tbaa !349
  store <4 x float> %i.j, ptr %i.l, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.125.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader54, %.lr.ph.prol
  %.125.prol = phi i64 [ %i.r, %.lr.ph.prol ], [ %.125.ph, %.lr.ph.preheader54 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader54 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.prol
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fmul float %3, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.prol
  store float %i.p, ptr %i.q, align 4, !tbaa !349
  %i.r = add nuw i64 %.125.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1338

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader54
  %.125.unr = phi i64 [ %.125.ph, %.lr.ph.preheader54 ], [ %i.r, %.lr.ph.prol ]
  %i.s = sub i64 %.125.ph, %2
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ne ptr %0, %1
  %i.v = icmp ne i64 %2, 0
  %or.cond28 = and i1 %i.u, %i.v
  br i1 %or.cond28, label %.lr.ph27.preheader, label %.loopexit

.lr.ph27.preheader:                               ; preds = %bb.c
  %min.iters.check40 = icmp ult i64 %2, 8
  %i.w = sub i64 %i.a, %i.b
  %diff.check38 = icmp ugt i64 %i.w, -32
  %or.cond52 = or i1 %min.iters.check40, %diff.check38
  br i1 %or.cond52, label %.lr.ph27.preheader53, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph27.preheader
  %n.vec42 = and i64 %2, -8                       ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body43 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index44 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load45 = load <4 x float>, ptr %i.x, align 4, !tbaa !349
  %wide.load46 = load <4 x float>, ptr %i.y, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x float> %wide.load45, ptr %i.z, align 4, !tbaa !349
  store <4 x float> %wide.load46, ptr %i.aa, align 4, !tbaa !349
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.ab, label %middle.block48, label %vector.body43, !llvm.loop !1339

middle.block48:                                   ; preds = %vector.body43
  %cmp.n49 = icmp eq i64 %2, %n.vec42
  br i1 %cmp.n49, label %.loopexit, label %.lr.ph27.preheader53

.lr.ph27.preheader53:                             ; preds = %.lr.ph27.preheader, %middle.block48
  %.026.ph = phi i64 [ 0, %.lr.ph27.preheader ], [ %n.vec42, %middle.block48 ] ; 3 uses
  %xtraiter56 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol

.lr.ph27.prol:                                    ; preds = %.lr.ph27.preheader53, %.lr.ph27.prol
  %.026.prol = phi i64 [ %i.af, %.lr.ph27.prol ], [ %.026.ph, %.lr.ph27.preheader53 ] ; 3 uses
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.lr.ph27.prol ], [ 0, %.lr.ph27.preheader53 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !349
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.prol
  store float %i.ad, ptr %i.ae, align 4, !tbaa !349
  %i.af = add nuw i64 %.026.prol, 1               ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol, !llvm.loop !1340

.lr.ph27.prol.loopexit:                           ; preds = %.lr.ph27.prol, %.lr.ph27.preheader53
  %.026.unr = phi i64 [ %.026.ph, %.lr.ph27.preheader53 ], [ %i.af, %.lr.ph27.prol ]
  %i.ag = sub i64 %.026.ph, %2
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit, label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.prol.loopexit, %.lr.ph27
  %.026 = phi i64 [ %i.ax, %.lr.ph27 ], [ %.026.unr, %.lr.ph27.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store float %i.aj, ptr %i.ak, align 4, !tbaa !349
  %i.al = add nuw i64 %.026, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !349
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  store float %i.an, ptr %i.ao, align 4, !tbaa !349
  %i.ap = add nuw i64 %.026, 2                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !349
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  store float %i.ar, ptr %i.as, align 4, !tbaa !349
  %i.at = add nuw i64 %.026, 3                    ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !349
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store float %i.av, ptr %i.aw, align 4, !tbaa !349
  %i.ax = add nuw i64 %.026, 4                    ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %i.ax, %2
  br i1 %exitcond30.not.3, label %.loopexit, label %.lr.ph27, !llvm.loop !1341

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.125 = phi i64 [ %i.br, %.lr.ph ], [ %.125.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %3, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125
  store float %i.ba, ptr %i.bb, align 4, !tbaa !349
  %i.bc = add nuw i64 %.125, 1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !349
  %i.bf = fmul float %3, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  store float %i.bf, ptr %i.bg, align 4, !tbaa !349
  %i.bh = add nuw i64 %.125, 2                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !349
  %i.bk = fmul float %3, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  store float %i.bk, ptr %i.bl, align 4, !tbaa !349
  %i.bm = add nuw i64 %.125, 3                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = fmul float %3, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  store float %i.bp, ptr %i.bq, align 4, !tbaa !349
  %i.br = add nuw i64 %.125, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.br, %2
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !1342

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph27.prol.loopexit, %.lr.ph27, %middle.block, %middle.block48, %.preheader23, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_u8(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %iter.check, label %ma_copy_and_apply_volume_factor_u8.exit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %1, 16
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %1, 12
  %n.vec = and i64 %1, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.d, align 1, !tbaa !119
  %i.e = uitofp <16 x i8> %wide.load to <16 x float>
  %i.f = fmul <16 x float> %broadcast.splat, %i.e
  %i.g = fptoui <16 x float> %i.f to <16 x i8>
  store <16 x i8> %i.g, ptr %i.d, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %1, -4                        ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index8 ; 2 uses
  %wide.load9 = load <4 x i8>, ptr %i.i, align 1, !tbaa !119
  %i.j = uitofp <4 x i8> %wide.load9 to <4 x float>
  %i.k = fmul <4 x float> %broadcast.splat7, %i.j
  %i.l = fptoui <4 x float> %i.k to <4 x i8>
  store <4 x i8> %i.l, ptr %i.i, align 1, !tbaa !119
  %index.next10 = add nuw i64 %index8, 4          ; 2 uses
  %i.m = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %1, %n.vec5
  br i1 %cmp.n11, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !119
  %i.p = uitofp i8 %i.o to float
  %i.q = fmul float %2, %i.p
  %i.r = fptoui float %i.q to i8
  store i8 %i.r, ptr %i.n, align 1, !tbaa !119
  %i.s = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !1345

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s16.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !122
  %i.d = sitofp <8 x i16> %wide.load to <8 x float>
  %i.e = fmul <8 x float> %broadcast.splat, %i.d
  %i.f = fptosi <8 x float> %i.e to <8 x i16>
  store <8 x i16> %i.f, ptr %i.c, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader4

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.012.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !122
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul float %2, %i.j
  %i.l = fptosi float %i.k to i16
  store i16 %i.l, ptr %i.h, align 2, !tbaa !122
  %i.m = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1347

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s24(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond27.i = and i1 %i.a, %i.b
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = mul i64 %.026.i, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %2, %i.r
  %i.t = fptosi float %i.s to i32                 ; 3 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.d, align 1, !tbaa !119
  %i.w = lshr i32 %i.t, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.h, align 1, !tbaa !119
  %i.y = lshr i32 %i.t, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.m, align 1, !tbaa !119
  %i.aa = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s24.exit, label %.lr.ph.i, !llvm.loop !9

ma_copy_and_apply_volume_factor_s24.exit:         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s32.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !118
  %wide.load4 = load <4 x i32>, ptr %i.d, align 4, !tbaa !118
  %i.e = sitofp <4 x i32> %wide.load to <4 x float>
  %i.f = sitofp <4 x i32> %wide.load4 to <4 x float>
  %i.g = fmul <4 x float> %broadcast.splat, %i.e
  %i.h = fmul <4 x float> %broadcast.splat, %i.f
  %i.i = fptosi <4 x float> %i.g to <4 x i32>
  %i.j = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.c, align 4, !tbaa !118
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i.preheader5

.lr.ph.i.preheader5:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %.lr.ph.i
  %.012.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %2, %i.n
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.l, align 4, !tbaa !118
  %i.q = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i, !llvm.loop !1349

ma_copy_and_apply_volume_factor_s32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = fcmp oeq float %2, 1.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %.not.i = icmp eq i64 %1, 0
  %or.cond3 = or i1 %.not.i, %or.cond
  br i1 %or.cond3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.c, align 4, !tbaa !349
  %wide.load6 = load <4 x float>, ptr %i.d, align 4, !tbaa !349
  %i.e = fmul <4 x float> %broadcast.splat, %wide.load
  %i.f = fmul <4 x float> %broadcast.splat, %wide.load6
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !349
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.125.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.125.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fmul float %2, %i.i
  store float %i.j, ptr %i.h, align 4, !tbaa !349
  %i.k = add nuw i64 %.125.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !1351

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 11 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %iter.check, label %ma_copy_and_apply_volume_factor_u8.exit

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !119
  %i.k = uitofp <16 x i8> %wide.load to <16 x float>
  %i.l = fmul <16 x float> %broadcast.splat, %i.k
  %i.m = fptoui <16 x float> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %i.q = uitofp <4 x i8> %wide.load11 to <4 x float>
  %i.r = fmul <4 x float> %broadcast.splat9, %i.q
  %i.s = fptoui <4 x float> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index10
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !119
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.b, %n.vec7
  br i1 %cmp.n13, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.ph
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119
  %i.x = uitofp i8 %i.w to float
  %i.y = fmul float %4, %i.x
  %i.z = fptoui float %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.ph
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
  %i.ab = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ac = icmp eq i64 %i.b, %.neg
  br i1 %i.ac, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !119
  %i.aj = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul float %4, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  %i.aq = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !1354

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 7 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s16.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %i.b, 8
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !122
  %i.j = sitofp <8 x i16> %wide.load to <8 x float>
  %i.k = fmul <8 x float> %broadcast.splat, %i.j
  %i.l = fptosi <8 x float> %i.k to <8 x i16>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul float %4, %i.q
  %i.s = fptosi float %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !122
  %i.u = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader6 ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp eq i64 %i.b, %.neg
  br i1 %i.v, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !122
  %i.y = sitofp i16 %i.x to float
  %i.z = fmul float %4, %i.y
  %i.aa = fptosi float %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !122
  %i.ac = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !122
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptosi float %i.ag to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !122
  %i.aj = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1356

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not29.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond27.i = and i1 %or.cond.not29.i, %i.e
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.ai, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = mul i64 %.026.i, 3                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
end_hunk_2
begin_hunk_3_@ma_copy_and_apply_volume_factor_pcm_frames_f32:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !349
  %wide.load11 = load <4 x float>, ptr %i.j, align 4, !tbaa !349
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load
  %i.l = fmul <4 x float> %broadcast.splat, %wide.load11
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x float> %i.k, ptr %i.m, align 4, !tbaa !349
  store <4 x float> %i.l, ptr %i.n, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader28, %.lr.ph.i.prol
  %.125.i.prol = phi i64 [ %i.t, %.lr.ph.i.prol ], [ %.125.i.ph, %.lr.ph.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader28 ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.prol
  %i.q = load float, ptr %i.p, align 4, !tbaa !349
  %i.r = fmul float %4, %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.prol
  store float %i.r, ptr %i.s, align 4, !tbaa !349
  %i.t = add nuw i64 %.125.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1360

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader28
  %.125.i.unr = phi i64 [ %.125.i.ph, %.lr.ph.i.preheader28 ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = sub i64 %.125.i.ph, %i.d
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ne ptr %0, %1
  %i.x = icmp ne i64 %i.d, 0
  %or.cond28.i = and i1 %i.w, %i.x
  br i1 %or.cond28.i, label %.lr.ph27.i.preheader, label %ma_copy_and_apply_volume_factor_f32.exit

.lr.ph27.i.preheader:                             ; preds = %bb.c
  %min.iters.check15 = icmp ult i64 %i.d, 8
  %i.y = sub i64 %i.a, %i.b
  %diff.check13 = icmp ugt i64 %i.y, -32
  %or.cond26 = or i1 %min.iters.check15, %diff.check13
  br i1 %or.cond26, label %.lr.ph27.i.preheader27, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph27.i.preheader
  %n.vec17 = and i64 %i.d, -8                     ; 3 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next22, %vector.body18 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index19 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load20 = load <4 x float>, ptr %i.z, align 4, !tbaa !349
  %wide.load21 = load <4 x float>, ptr %i.aa, align 4, !tbaa !349
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x float> %wide.load20, ptr %i.ab, align 4, !tbaa !349
  store <4 x float> %wide.load21, ptr %i.ac, align 4, !tbaa !349
  %index.next22 = add nuw i64 %index19, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.ad, label %middle.block23, label %vector.body18, !llvm.loop !1361

middle.block23:                                   ; preds = %vector.body18
  %cmp.n24 = icmp eq i64 %i.d, %n.vec17
  br i1 %cmp.n24, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i.preheader27

.lr.ph27.i.preheader27:                           ; preds = %.lr.ph27.i.preheader, %middle.block23
  %.026.i.ph = phi i64 [ 0, %.lr.ph27.i.preheader ], [ %n.vec17, %middle.block23 ] ; 3 uses
  %xtraiter30 = and i64 %i.d, 3                   ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph27.i.prol.loopexit, label %.lr.ph27.i.prol

.lr.ph27.i.prol:                                  ; preds = %.lr.ph27.i.preheader27, %.lr.ph27.i.prol
  %.026.i.prol = phi i64 [ %i.ah, %.lr.ph27.i.prol ], [ %.026.i.ph, %.lr.ph27.i.preheader27 ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph27.i.prol ], [ 0, %.lr.ph27.i.preheader27 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.prol
  %i.af = load float, ptr %i.ae, align 4, !tbaa !349
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.prol
  store float %i.af, ptr %i.ag, align 4, !tbaa !349
  %i.ah = add nuw i64 %.026.i.prol, 1             ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph27.i.prol.loopexit, label %.lr.ph27.i.prol, !llvm.loop !1362

.lr.ph27.i.prol.loopexit:                         ; preds = %.lr.ph27.i.prol, %.lr.ph27.i.preheader27
  %.026.i.unr = phi i64 [ %.026.i.ph, %.lr.ph27.i.preheader27 ], [ %i.ah, %.lr.ph27.i.prol ]
  %i.ai = sub i64 %.026.i.ph, %i.d
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.prol.loopexit, %.lr.ph27.i
  %.026.i = phi i64 [ %i.az, %.lr.ph27.i ], [ %.026.i.unr, %.lr.ph27.i.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !349
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i
  store float %i.al, ptr %i.am, align 4, !tbaa !349
  %i.an = add nuw i64 %.026.i, 1                  ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !349
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  store float %i.ap, ptr %i.aq, align 4, !tbaa !349
  %i.ar = add nuw i64 %.026.i, 2                  ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !349
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  store float %i.at, ptr %i.au, align 4, !tbaa !349
  %i.av = add nuw i64 %.026.i, 3                  ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  store float %i.ax, ptr %i.ay, align 4, !tbaa !349
  %i.az = add nuw i64 %.026.i, 4                  ; 2 uses
  %exitcond30.not.i.3 = icmp eq i64 %i.az, %i.d
  br i1 %exitcond30.not.i.3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i, !llvm.loop !1363

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.125.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.125.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !349
  %i.bc = fmul float %4, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i
  store float %i.bc, ptr %i.bd, align 4, !tbaa !349
  %i.be = add nuw i64 %.125.i, 1                  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !349
  %i.bh = fmul float %4, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  store float %i.bh, ptr %i.bi, align 4, !tbaa !349
  %i.bj = add nuw i64 %.125.i, 2                  ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = fmul float %4, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  store float %i.bm, ptr %i.bn, align 4, !tbaa !349
  %i.bo = add nuw i64 %.125.i, 3                  ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !349
  %i.br = fmul float %4, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  store float %i.br, ptr %i.bs, align 4, !tbaa !349
  %i.bt = add nuw i64 %.125.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bt, %i.d
  br i1 %exitcond.not.i.3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !1364

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph27.i.prol.loopexit, %.lr.ph27.i, %middle.block, %middle.block23, %bb.a, %.preheader23.i, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 5 uses
  switch i32 %3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %4 to i64
  %i.d = mul i64 %2, %i.c                         ; 11 uses
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond.not15.i.i = and i1 %i.e, %i.f
  %i.g = icmp ne i64 %i.d, 0
  %or.cond13.i.i = and i1 %or.cond.not15.i.i, %i.g
  br i1 %or.cond13.i.i, label %iter.check, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check121 = icmp ult i64 %i.d, 4
  %i.h = sub i64 %i.a, %i.b
  %diff.check119 = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check121, %diff.check119
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.d, 12
  %n.vec124 = and i64 %i.d, -16                   ; 4 uses
  %broadcast.splatinsert125 = insertelement <16 x float> poison, float %5, i64 0
  %broadcast.splat126 = shufflevector <16 x float> %broadcast.splatinsert125, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph123, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index128
  %wide.load129 = load <16 x i8>, ptr %i.j, align 1, !tbaa !119
  %i.k = uitofp <16 x i8> %wide.load129 to <16 x float>
  %i.l = fmul <16 x float> %broadcast.splat126, %i.k
  %i.m = fptoui <16 x float> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index128
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !119
  %index.next130 = add nuw i64 %index128, 16      ; 2 uses
  %i.o = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.o, label %middle.block131, label %vector.body127, !llvm.loop !1365

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.d, %n.vec124
  br i1 %cmp.n132, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.d, -4                    ; 3 uses
  %broadcast.splatinsert134 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat135 = shufflevector <4 x float> %broadcast.splatinsert134, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index136
  %wide.load137 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %i.q = uitofp <4 x i8> %wide.load137 to <4 x float>
  %i.r = fmul <4 x float> %broadcast.splat135, %i.q
  %i.s = fptoui <4 x float> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index136
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !119
  %index.next138 = add nuw i64 %index136, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1366

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.d, %n.vec133
  br i1 %cmp.n139, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.iter.check ], [ %n.vec133, %vec.epilog.middle.block ] ; 5 uses
  %.neg167 = or disjoint i64 %.012.i.i.ph, 1
  %xtraiter163 = and i64 %i.d, 1
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i.ph
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119
  %i.x = uitofp i8 %i.w to float
  %i.y = fmul float %5, %i.x
  %i.z = fptoui float %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i.ph
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
  %i.ab = or disjoint i64 %.012.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.prol ]
  %i.ac = icmp eq i64 %i.d, %.neg167
  br i1 %i.ac, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.012.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %5, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !119
  %i.aj = add nuw i64 %.012.i.i, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul float %5, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  %i.aq = add nuw i64 %.012.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not.i.i.1, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i, !llvm.loop !1367

bb.c:                                             ; preds = %bb.a
  %i.ar = zext i32 %4 to i64
  %i.as = mul i64 %2, %i.ar                       ; 7 uses
  %i.at = icmp ne ptr %0, null
  %i.au = icmp ne ptr %1, null
  %or.cond.not15.i.i25 = and i1 %i.at, %i.au
  %i.av = icmp ne i64 %i.as, 0
  %or.cond13.i.i26 = and i1 %or.cond.not15.i.i25, %i.av
  br i1 %or.cond13.i.i26, label %.lr.ph.i.i27.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph.i.i27.preheader:                           ; preds = %bb.c
  %min.iters.check106 = icmp ult i64 %i.as, 8
  %i.aw = sub i64 %i.a, %i.b
  %diff.check104 = icmp ugt i64 %i.aw, -16
  %or.cond141 = or i1 %min.iters.check106, %diff.check104
  br i1 %or.cond141, label %.lr.ph.i.i27.preheader145, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i27.preheader
  %n.vec108 = and i64 %i.as, -8                   ; 3 uses
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph107
  %index112 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body111 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index112
  %wide.load113 = load <8 x i16>, ptr %i.ax, align 2, !tbaa !122
  %i.ay = sitofp <8 x i16> %wide.load113 to <8 x float>
  %i.az = fmul <8 x float> %broadcast.splat110, %i.ay
  %i.ba = fptosi <8 x float> %i.az to <8 x i16>
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index112
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !122
  %index.next114 = add nuw i64 %index112, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.bc, label %middle.block115, label %vector.body111, !llvm.loop !1368

middle.block115:                                  ; preds = %vector.body111
  %cmp.n116 = icmp eq i64 %i.as, %n.vec108
  br i1 %cmp.n116, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27.preheader145

.lr.ph.i.i27.preheader145:                        ; preds = %.lr.ph.i.i27.preheader, %middle.block115
  %.012.i.i28.ph = phi i64 [ 0, %.lr.ph.i.i27.preheader ], [ %n.vec108, %middle.block115 ] ; 5 uses
  %.neg166 = or disjoint i64 %.012.i.i28.ph, 1
  %xtraiter160 = and i64 %i.as, 1
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i.i27.prol.loopexit, label %.lr.ph.i.i27.prol

.lr.ph.i.i27.prol:                                ; preds = %.lr.ph.i.i27.preheader145
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.i28.ph
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !122
  %i.bf = sitofp i16 %i.be to float
  %i.bg = fmul float %5, %i.bf
  %i.bh = fptosi float %i.bg to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.i28.ph
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !122
  %i.bj = or disjoint i64 %.012.i.i28.ph, 1
  br label %.lr.ph.i.i27.prol.loopexit

.lr.ph.i.i27.prol.loopexit:                       ; preds = %.lr.ph.i.i27.prol, %.lr.ph.i.i27.preheader145
  %.012.i.i28.unr = phi i64 [ %.012.i.i28.ph, %.lr.ph.i.i27.preheader145 ], [ %i.bj, %.lr.ph.i.i27.prol ]
  %i.bk = icmp eq i64 %i.as, %.neg166
  br i1 %i.bk, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27
  %.012.i.i28 = phi i64 [ %i.by, %.lr.ph.i.i27 ], [ %.012.i.i28.unr, %.lr.ph.i.i27.prol.loopexit ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.i28
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !122
  %i.bn = sitofp i16 %i.bm to float
  %i.bo = fmul float %5, %i.bn
  %i.bp = fptosi float %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.i28
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !122
  %i.br = add nuw i64 %.012.i.i28, 1              ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !122
  %i.bu = sitofp i16 %i.bt to float
  %i.bv = fmul float %5, %i.bu
  %i.bw = fptosi float %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.br
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !122
  %i.by = add nuw i64 %.012.i.i28, 2              ; 2 uses
  %exitcond.not.i.i29.1 = icmp eq i64 %i.by, %i.as
  br i1 %exitcond.not.i.i29.1, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27, !llvm.loop !1369

bb.d:                                             ; preds = %bb.a
  %i.bz = zext i32 %4 to i64
  %i.ca = mul i64 %2, %i.bz                       ; 2 uses
  %i.cb = icmp ne ptr %0, null
  %i.cc = icmp ne ptr %1, null
  %or.cond.not29.i.i = and i1 %i.cb, %i.cc
  %i.cd = icmp ne i64 %i.ca, 0
  %or.cond27.i.i = and i1 %or.cond.not29.i.i, %i.cd
  br i1 %or.cond27.i.i, label %.lr.ph.i.i30, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph.i.i30:                                     ; preds = %bb.d, %.lr.ph.i.i30
  %.026.i.i = phi i64 [ %i.dh, %.lr.ph.i.i30 ], [ 0, %bb.d ] ; 2 uses
  %i.ce = mul i64 %.026.i.i, 3                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !119
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = add i64 %i.ce, 1                        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !119
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.cn, %i.ci
  %i.cp = add i64 %i.ce, 2                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !119
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 24
end_hunk_3
begin_hunk_4_@ma_copy_and_apply_volume_factor_pcm_frames:bb.a
.lr.ph.i.i37.preheader:                           ; preds = %.preheader23.i.i
  %min.iters.check = icmp ult i64 %i.ew, 8
  %i.fa = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.fa, -32
  %or.cond143 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond143, label %.lr.ph.i.i37.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.ew, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <4 x float>, ptr %i.fb, align 4, !tbaa !349
  %wide.load72 = load <4 x float>, ptr %i.fc, align 4, !tbaa !349
  %i.fd = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fe = fmul <4 x float> %broadcast.splat, %wide.load72
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x float> %i.fd, ptr %i.ff, align 4, !tbaa !349
  store <4 x float> %i.fe, ptr %i.fg, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !1372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37.preheader152

.lr.ph.i.i37.preheader152:                        ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.125.i.i.ph = phi i64 [ 0, %.lr.ph.i.i37.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol

.lr.ph.i.i37.prol:                                ; preds = %.lr.ph.i.i37.preheader152, %.lr.ph.i.i37.prol
  %.125.i.i.prol = phi i64 [ %i.fm, %.lr.ph.i.i37.prol ], [ %.125.i.i.ph, %.lr.ph.i.i37.preheader152 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i37.prol ], [ 0, %.lr.ph.i.i37.preheader152 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.i.prol
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !349
  %i.fk = fmul float %5, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.i.prol
  store float %i.fk, ptr %i.fl, align 4, !tbaa !349
  %i.fm = add nuw i64 %.125.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol, !llvm.loop !1373

.lr.ph.i.i37.prol.loopexit:                       ; preds = %.lr.ph.i.i37.prol, %.lr.ph.i.i37.preheader152
  %.125.i.i.unr = phi i64 [ %.125.i.i.ph, %.lr.ph.i.i37.preheader152 ], [ %i.fm, %.lr.ph.i.i37.prol ]
  %i.fn = sub i64 %.125.i.i.ph, %i.ew
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37

bb.h:                                             ; preds = %bb.g
  %i.fp = icmp ne ptr %0, %1
  %i.fq = icmp ne i64 %i.ew, 0
  %or.cond28.i.i = and i1 %i.fp, %i.fq
  br i1 %or.cond28.i.i, label %.lr.ph27.i.i.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph27.i.i.preheader:                           ; preds = %bb.h
  %min.iters.check76 = icmp ult i64 %i.ew, 8
  %i.fr = sub i64 %i.a, %i.b
  %diff.check74 = icmp ugt i64 %i.fr, -32
  %or.cond144 = or i1 %min.iters.check76, %diff.check74
  br i1 %or.cond144, label %.lr.ph27.i.i.preheader150, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph27.i.i.preheader
  %n.vec78 = and i64 %i.ew, -8                    ; 3 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next83, %vector.body79 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index80 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load81 = load <4 x float>, ptr %i.fs, align 4, !tbaa !349
  %wide.load82 = load <4 x float>, ptr %i.ft, align 4, !tbaa !349
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index80 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x float> %wide.load81, ptr %i.fu, align 4, !tbaa !349
  store <4 x float> %wide.load82, ptr %i.fv, align 4, !tbaa !349
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.fw = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.fw, label %middle.block84, label %vector.body79, !llvm.loop !1374

middle.block84:                                   ; preds = %vector.body79
  %cmp.n85 = icmp eq i64 %i.ew, %n.vec78
  br i1 %cmp.n85, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i.preheader150

.lr.ph27.i.i.preheader150:                        ; preds = %.lr.ph27.i.i.preheader, %middle.block84
  %.026.i.i39.ph = phi i64 [ 0, %.lr.ph27.i.i.preheader ], [ %n.vec78, %middle.block84 ] ; 3 uses
  %xtraiter154 = and i64 %i.ew, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader150, %.lr.ph27.i.i.prol
  %.026.i.i39.prol = phi i64 [ %i.ga, %.lr.ph27.i.i.prol ], [ %.026.i.i39.ph, %.lr.ph27.i.i.preheader150 ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph27.i.i.prol ], [ 0, %.lr.ph27.i.i.preheader150 ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.i39.prol
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !349
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.i39.prol
  store float %i.fy, ptr %i.fz, align 4, !tbaa !349
  %i.ga = add nuw i64 %.026.i.i39.prol, 1         ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol, !llvm.loop !1375

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader150
  %.026.i.i39.unr = phi i64 [ %.026.i.i39.ph, %.lr.ph27.i.i.preheader150 ], [ %i.ga, %.lr.ph27.i.i.prol ]
  %i.gb = sub i64 %.026.i.i39.ph, %i.ew
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %.026.i.i39 = phi i64 [ %i.gs, %.lr.ph27.i.i ], [ %.026.i.i39.unr, %.lr.ph27.i.i.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.i39
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !349
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.i39
  store float %i.ge, ptr %i.gf, align 4, !tbaa !349
  %i.gg = add nuw i64 %.026.i.i39, 1              ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !349
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gg
  store float %i.gi, ptr %i.gj, align 4, !tbaa !349
  %i.gk = add nuw i64 %.026.i.i39, 2              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !349
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gk
  store float %i.gm, ptr %i.gn, align 4, !tbaa !349
  %i.go = add nuw i64 %.026.i.i39, 3              ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !349
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.go
  store float %i.gq, ptr %i.gr, align 4, !tbaa !349
  %i.gs = add nuw i64 %.026.i.i39, 4              ; 2 uses
  %exitcond30.not.i.i.3 = icmp eq i64 %i.gs, %i.ew
  br i1 %exitcond30.not.i.i.3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i, !llvm.loop !1376

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.prol.loopexit, %.lr.ph.i.i37
  %.125.i.i = phi i64 [ %i.hm, %.lr.ph.i.i37 ], [ %.125.i.i.unr, %.lr.ph.i.i37.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !349
  %i.gv = fmul float %5, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.i
  store float %i.gv, ptr %i.gw, align 4, !tbaa !349
  %i.gx = add nuw i64 %.125.i.i, 1                ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !349
  %i.ha = fmul float %5, %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gx
  store float %i.ha, ptr %i.hb, align 4, !tbaa !349
  %i.hc = add nuw i64 %.125.i.i, 2                ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !349
  %i.hf = fmul float %5, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hc
  store float %i.hf, ptr %i.hg, align 4, !tbaa !349
  %i.hh = add nuw i64 %.125.i.i, 3                ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !349
  %i.hk = fmul float %5, %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hh
  store float %i.hk, ptr %i.hl, align 4, !tbaa !349
  %i.hm = add nuw i64 %.125.i.i, 4                ; 2 uses
  %exitcond.not.i.i38.3 = icmp eq i64 %i.hm, %i.ew
  br i1 %exitcond.not.i.i38.3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37, !llvm.loop !1377

ma_copy_and_apply_volume_factor_pcm_frames_u8.exit: ; preds = %.lr.ph.i.i37.prol.loopexit, %.lr.ph.i.i37, %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %.lr.ph.i.i34.prol.loopexit, %.lr.ph.i.i34, %.lr.ph.i.i30, %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %middle.block84, %middle.block100, %middle.block115, %middle.block131, %vec.epilog.middle.block, %bb.h, %.preheader23.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_u8(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, %i.a                         ; 9 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne i64 %i.b, 0
  %or.cond13.i.i = and i1 %i.c, %i.d
  br i1 %or.cond13.i.i, label %iter.check, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !119
  %i.g = uitofp <16 x i8> %wide.load to <16 x float>
  %i.h = fmul <16 x float> %broadcast.splat, %i.g
  %i.i = fptoui <16 x float> %i.h to <16 x i8>
  store <16 x i8> %i.i, ptr %i.f, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !1378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert7 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat8 = shufflevector <4 x float> %broadcast.splatinsert7, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index9 ; 2 uses
  %wide.load10 = load <4 x i8>, ptr %i.k, align 1, !tbaa !119
  %i.l = uitofp <4 x i8> %wide.load10 to <4 x float>
  %i.m = fmul <4 x float> %broadcast.splat8, %i.l
  %i.n = fptoui <4 x float> %i.m to <4 x i8>
  store <4 x i8> %i.n, ptr %i.k, align 1, !tbaa !119
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1379

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.b, %n.vec6
  br i1 %cmp.n12, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %i.r = uitofp i8 %i.q to float
  %i.s = fmul float %3, %i.r
  %i.t = fptoui float %i.s to i8
  store i8 %i.t, ptr %i.p, align 1, !tbaa !119
  %i.u = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.b
  br i1 %exitcond.not.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i, !llvm.loop !1380

ma_copy_and_apply_volume_factor_pcm_frames_u8.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, %i.a                         ; 5 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne i64 %i.b, 0
  %or.cond13.i.i = and i1 %i.c, %i.d
  br i1 %or.cond13.i.i, label %.lr.ph.i.i.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_s16.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !122
  %i.f = sitofp <8 x i16> %wide.load to <8 x float>
  %i.g = fmul <8 x float> %broadcast.splat, %i.f
  %i.h = fptosi <8 x float> %i.g to <8 x i16>
  store <8 x i16> %i.h, ptr %i.e, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !1381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_pcm_frames_s16.exit, label %.lr.ph.i.i.preheader5

.lr.ph.i.i.preheader5:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader5, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader5 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !122
  %i.l = sitofp i16 %i.k to float
  %i.m = fmul float %3, %i.l
  %i.n = fptosi float %i.m to i16
  store i16 %i.n, ptr %i.j, align 2, !tbaa !122
  %i.o = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.b
  br i1 %exitcond.not.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_s16.exit, label %.lr.ph.i.i, !llvm.loop !1382

ma_copy_and_apply_volume_factor_pcm_frames_s16.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_s24(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, %i.a                         ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne i64 %i.b, 0
  %or.cond27.i.i = and i1 %i.c, %i.d
  br i1 %or.cond27.i.i, label %.lr.ph.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_s24.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.026.i.i = phi i64 [ %i.ac, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.026.i.i, 3
  %i.f = getelementptr i8, ptr %0, i64 %i.e       ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !119
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr i8, ptr %i.f, i64 1        ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr i8, ptr %i.f, i64 2        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !119
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.q, 24
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = sitofp i32 %i.s to float
  %i.u = fmul float %3, %i.t
  %i.v = fptosi float %i.u to i32                 ; 3 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.f, align 1, !tbaa !119
  %i.y = lshr i32 %i.v, 16
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %i.j, align 1, !tbaa !119
  %i.aa = lshr i32 %i.v, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  store i8 %i.ab, ptr %i.o, align 1, !tbaa !119
  %i.ac = add nuw i64 %.026.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_s24.exit, label %.lr.ph.i.i, !llvm.loop !9

ma_copy_and_apply_volume_factor_pcm_frames_s24.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, %i.a                         ; 5 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne i64 %i.b, 0
  %or.cond13.i.i = and i1 %i.c, %i.d
  br i1 %or.cond13.i.i, label %.lr.ph.i.i.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_s32.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !118
  %wide.load5 = load <4 x i32>, ptr %i.f, align 4, !tbaa !118
  %i.g = sitofp <4 x i32> %wide.load to <4 x float>
  %i.h = sitofp <4 x i32> %wide.load5 to <4 x float>
  %i.i = fmul <4 x float> %broadcast.splat, %i.g
  %i.j = fmul <4 x float> %broadcast.splat, %i.h
  %i.k = fptosi <4 x float> %i.i to <4 x i32>
  %i.l = fptosi <4 x float> %i.j to <4 x i32>
  store <4 x i32> %i.k, ptr %i.e, align 4, !tbaa !118
  store <4 x i32> %i.l, ptr %i.f, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_4
begin_hunk_5_@ma_mix_pcm_frames_f32:bb.a
  %.132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.132.ph, 1
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader69
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.132.ph
  %i.t = load float, ptr %i.s, align 4, !tbaa !349
  %i.u = fmul float %4, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.132.ph ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !349
  %i.x = fadd float %i.w, %i.u
  store float %i.x, ptr %i.v, align 4, !tbaa !349
  %i.y = or disjoint i64 %.132.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader69
  %.132.unr = phi i64 [ %.132.ph, %.lr.ph.preheader69 ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp eq i64 %i.f, %.neg
  br i1 %i.z, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not35, label %.loopexit, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %.preheader
  %min.iters.check55 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check55, label %.lr.ph34.preheader68, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph34.preheader
  %i.aa = mul i64 %2, %i.e
  %i.ab = shl i64 %i.aa, 2                        ; 2 uses
  %scevgep49 = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.ab
  %bound051 = icmp ult ptr %0, %scevgep50
  %bound152 = icmp ult ptr %1, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph34.preheader68, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.f, -8                     ; 3 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next64, %vector.body58 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index59 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load60 = load <4 x float>, ptr %i.ac, align 4, !tbaa !349, !alias.scope !1424
  %wide.load61 = load <4 x float>, ptr %i.ad, align 4, !tbaa !349, !alias.scope !1424
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index59 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load62 = load <4 x float>, ptr %i.ae, align 4, !tbaa !349, !alias.scope !1425, !noalias !1424
  %wide.load63 = load <4 x float>, ptr %i.af, align 4, !tbaa !349, !alias.scope !1425, !noalias !1424
  %i.ag = fadd <4 x float> %wide.load60, %wide.load62
  %i.ah = fadd <4 x float> %wide.load61, %wide.load63
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !349, !alias.scope !1425, !noalias !1424
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !349, !alias.scope !1425, !noalias !1424
  %index.next64 = add nuw i64 %index59, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.ai, label %middle.block65, label %vector.body58, !llvm.loop !1418

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.f, %n.vec57
  br i1 %cmp.n66, label %.loopexit, label %.lr.ph34.preheader68

.lr.ph34.preheader68:                             ; preds = %vector.memcheck48, %.lr.ph34.preheader, %middle.block65
  %.033.ph = phi i64 [ 0, %vector.memcheck48 ], [ 0, %.lr.ph34.preheader ], [ %n.vec57, %middle.block65 ] ; 3 uses
  %xtraiter71 = and i64 %i.f, 3                   ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.lr.ph34.prol.loopexit, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader68, %.lr.ph34.prol
  %.033.prol = phi i64 [ %i.ao, %.lr.ph34.prol ], [ %.033.ph, %.lr.ph34.preheader68 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph34.prol ], [ 0, %.lr.ph34.preheader68 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.033.prol
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.033.prol ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fadd float %i.ak, %i.am
  store float %i.an, ptr %i.al, align 4, !tbaa !349
  %i.ao = add nuw i64 %.033.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter71
  br i1 %prol.iter.cmp.not, label %.lr.ph34.prol.loopexit, label %.lr.ph34.prol, !llvm.loop !1419

.lr.ph34.prol.loopexit:                           ; preds = %.lr.ph34.prol, %.lr.ph34.preheader68
  %.033.unr = phi i64 [ %.033.ph, %.lr.ph34.preheader68 ], [ %i.ao, %.lr.ph34.prol ]
  %i.ap = sub i64 %.033.ph, %i.f
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.prol.loopexit, %.lr.ph34
  %.033 = phi i64 [ %i.bo, %.lr.ph34 ], [ %.033.unr, %.lr.ph34.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.033
  %i.as = load float, ptr %i.ar, align 4, !tbaa !349
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.033 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !349
  %i.av = fadd float %i.as, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !349
  %i.aw = add nuw i64 %.033, 1                    ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !349
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !349
  %i.bb = fadd float %i.ay, %i.ba
  store float %i.bb, ptr %i.az, align 4, !tbaa !349
  %i.bc = add nuw i64 %.033, 2                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !349
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !349
  %i.bh = fadd float %i.be, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !349
  %i.bi = add nuw i64 %.033, 3                    ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !349
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !349
  %i.bn = fadd float %i.bk, %i.bm
  store float %i.bn, ptr %i.bl, align 4, !tbaa !349
  %i.bo = add nuw i64 %.033, 4                    ; 2 uses
  %exitcond37.not.3 = icmp eq i64 %i.bo, %i.f
  br i1 %exitcond37.not.3, label %.loopexit, label %.lr.ph34, !llvm.loop !1420

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.132 = phi i64 [ %i.cc, %.lr.ph ], [ %.132.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.132
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !349
  %i.br = fmul float %4, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.132 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !349
  %i.bu = fadd float %i.bt, %i.br
  store float %i.bu, ptr %i.bs, align 4, !tbaa !349
  %i.bv = add nuw i64 %.132, 1                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !349
  %i.by = fmul float %4, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !349
  %i.cb = fadd float %i.ca, %i.by
  store float %i.cb, ptr %i.bz, align 4, !tbaa !349
  %i.cc = add nuw i64 %.132, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cc, %i.f
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1421

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph34.prol.loopexit, %.lr.ph34, %middle.block, %middle.block65, %.preheader30, %.preheader, %bb.b, %bb.a
  %.025 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ], [ 0, %.preheader ], [ 0, %.preheader30 ], [ 0, %middle.block65 ], [ 0, %middle.block ], [ 0, %.lr.ph34.prol.loopexit ], [ 0, %.lr.ph34 ], [ 0, %.lr.ph ], [ 0, %.lr.ph.prol.loopexit ]
  ret i32 %.025
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_u8_to_u8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not.i2 = icmp eq i64 %2, 0
  br i1 %.not.i2, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i5 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.011.i4 = phi i64 [ %i.a, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.012.i3 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i4, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i5, ptr noundef nonnull align 1 dereferenceable(1) %.012.i3, i64 %spec.store.select.i, i1 false)
  %i.a = sub nuw i64 %.011.i4, %spec.store.select.i ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i5, i64 %spec.store.select.i
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i3, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

ma_copy_memory_64.exit:                           ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_u8_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_u8_to_s16__reference.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.a = shl i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep8 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %2, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load = load <8 x i8>, ptr %i.c, align 1, !tbaa !119, !alias.scope !1433
  %wide.load10 = load <8 x i8>, ptr %i.d, align 1, !tbaa !119, !alias.scope !1433
  %i.e = zext <8 x i8> %wide.load to <8 x i16>
  %i.f = zext <8 x i8> %wide.load10 to <8 x i16>
  %i.g = shl nuw <8 x i16> %i.e, splat (i16 8)
  %i.h = shl nuw <8 x i16> %i.f, splat (i16 8)
  %i.i = xor <8 x i16> %i.g, splat (i16 -32768)
  %i.j = xor <8 x i16> %i.h, splat (i16 -32768)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <8 x i16> %i.i, ptr %i.k, align 2, !tbaa !122, !alias.scope !1434, !noalias !1433
  store <8 x i16> %i.j, ptr %i.l, align 2, !tbaa !122, !alias.scope !1434, !noalias !1433
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1429

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_u8_to_s16__reference.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119, !alias.scope !1433
  %i.o = zext <4 x i8> %wide.load13 to <4 x i16>
  %i.p = shl nuw <4 x i16> %i.o, splat (i16 8)
  %i.q = xor <4 x i16> %i.p, splat (i16 -32768)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12
  store <4 x i16> %i.q, ptr %i.r, align 2, !tbaa !122, !alias.scope !1434, !noalias !1433
  %index.next14 = add nuw i64 %index12, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next14, %n.vec11
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1430

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %2, %n.vec11
  br i1 %cmp.n15, label %ma_pcm_u8_to_s16__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i7.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i7.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.0.i7.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i7.prol
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = zext i8 %i.u to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = xor i16 %i.w, -32768
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.i7.prol
  store i16 %i.x, ptr %i.y, align 2, !tbaa !122
  %i.z = add nuw i64 %.0.i7.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1431

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i7.unr = phi i64 [ %.0.i7.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = sub i64 %.0.i7.ph, %2
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %ma_pcm_u8_to_s16__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i7 = phi i64 [ %i.bd, %.lr.ph ], [ %.0.i7.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %i.ae = zext i8 %i.ad to i16
  %i.af = shl nuw i16 %i.ae, 8
  %i.ag = xor i16 %i.af, -32768
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.i7
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !122
  %i.ai = add nuw i64 %.0.i7, 1                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !119
  %i.al = zext i8 %i.ak to i16
  %i.am = shl nuw i16 %i.al, 8
  %i.an = xor i16 %i.am, -32768
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !122
  %i.ap = add nuw i64 %.0.i7, 2                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !119
  %i.as = zext i8 %i.ar to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = xor i16 %i.at, -32768
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  store i16 %i.au, ptr %i.av, align 2, !tbaa !122
  %i.aw = add nuw i64 %.0.i7, 3                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !119
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = xor i16 %i.ba, -32768
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !122
  %i.bd = add nuw i64 %.0.i7, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bd, %2
  br i1 %exitcond.not.3, label %ma_pcm_u8_to_s16__reference.exit, label %.lr.ph, !llvm.loop !1432

ma_pcm_u8_to_s16__reference.exit:                 ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_u8_to_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_u8_to_s24__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i7 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i7
  %i.c = load i8, ptr %i.b, align 1, !tbaa !119
  %i.d = xor i8 %i.c, -128
  %i.e = mul i64 %.0.i7, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  store i8 0, ptr %i.f, align 1, !tbaa !119
  %i.g = getelementptr i8, ptr %i.f, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !119
  %i.h = getelementptr i8, ptr %i.f, i64 2
  store i8 %i.d, ptr %i.h, align 1, !tbaa !119
  %i.i = or disjoint i64 %.0.i7, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = xor i8 %i.k, -128
  %i.m = mul i64 %i.i, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !119
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !119
  %i.p = getelementptr i8, ptr %i.n, i64 2
  store i8 %i.l, ptr %i.p, align 1, !tbaa !119
  %i.q = add nuw i64 %.0.i7, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_pcm_u8_to_s24__reference.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

ma_pcm_u8_to_s24__reference.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_pcm_u8_to_s24__reference.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %ma_pcm_u8_to_s24__reference.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.q, %ma_pcm_u8_to_s24__reference.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i7.epil.init
  %i.s = load i8, ptr %i.r, align 1, !tbaa !119
  %i.t = xor i8 %i.s, -128
  %i.u = mul i64 %.0.i7.epil.init, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !119
  %i.w = getelementptr i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !119
  %i.x = getelementptr i8, ptr %i.v, i64 2
  store i8 %i.t, ptr %i.x, align 1, !tbaa !119
  br label %ma_pcm_u8_to_s24__reference.exit

ma_pcm_u8_to_s24__reference.exit:                 ; preds = %.lr.ph.epil.preheader, %ma_pcm_u8_to_s24__reference.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_u8_to_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_u8_to_s32__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep8 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !119, !alias.scope !1441
  %wide.load9 = load <4 x i8>, ptr %i.c, align 1, !tbaa !119, !alias.scope !1441
  %i.d = zext <4 x i8> %wide.load to <4 x i32>
  %i.e = zext <4 x i8> %wide.load9 to <4 x i32>
  %i.f = shl nuw <4 x i32> %i.d, splat (i32 24)
  %i.g = shl nuw <4 x i32> %i.e, splat (i32 24)
  %i.h = xor <4 x i32> %i.f, splat (i32 -2147483648)
  %i.i = xor <4 x i32> %i.g, splat (i32 -2147483648)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %i.h, ptr %i.j, align 4, !tbaa !118, !alias.scope !1442, !noalias !1441
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !118, !alias.scope !1442, !noalias !1441
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_u8_to_s32__reference.exit, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0.i7.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader10, %.lr.ph.prol
  %.0.i7.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.0.i7.ph, %.lr.ph.preheader10 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader10 ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i7.prol
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = xor i32 %i.p, -2147483648
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.i7.prol
  store i32 %i.q, ptr %i.r, align 4, !tbaa !118
  %i.s = add nuw i64 %.0.i7.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_5
begin_hunk_6_@ma_pcm_interleave_u8:bb.a
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !369
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.030.i15
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !119
  %i.as = getelementptr i8, ptr %i.ad, i64 %indvars.iv.next.1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !119
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !369
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i15
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !119
  %i.ax = getelementptr i8, ptr %i.ad, i64 %indvars.iv.next.2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !119
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter36.next.3 = add i64 %niter36, 4           ; 2 uses
  %niter36.ncmp.3 = icmp eq i64 %niter36.next.3, %unroll_iter35
  br i1 %niter36.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1451

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod33.not, label %._crit_edge, label %.epil.preheader31

.epil.preheader31:                                ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader31
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader31 ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader31 ], [ %epil.iter.next, %bb.d ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !369
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !119
  %i.bc = getelementptr i8, ptr %i.ad, i64 %indvars.iv.epil
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !119
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter32
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !1452

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.unr-lcssa
  %i.bd = add nuw i64 %.030.i15, 1                ; 2 uses
  %exitcond22.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond22.not, label %ma_pcm_interleave_u8__optimized.exit, label %.preheader, !llvm.loop !1453

ma_pcm_interleave_u8__optimized.exit.loopexit29.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_pcm_interleave_u8__optimized.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_pcm_interleave_u8__optimized.exit.loopexit29.unr-lcssa, %.lr.ph
  %.031.i7.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ab, %ma_pcm_interleave_u8__optimized.exit.loopexit29.unr-lcssa ] ; 3 uses
  %lcmp.mod30 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.be = load ptr, ptr %1, align 8, !tbaa !369
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.031.i7.epil.init
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !119
  %i.bh = shl i64 %.031.i7.epil.init, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !119
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !369
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.031.i7.epil.init
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !119
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !119
  br label %ma_pcm_interleave_u8__optimized.exit

ma_pcm_interleave_u8__optimized.exit:             ; preds = %.epil.preheader, %ma_pcm_interleave_u8__optimized.exit.loopexit29.unr-lcssa, %.lr.ph12, %._crit_edge, %.preheader5, %bb.b, %.preheader3, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_deinterleave_u8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_deinterleave_u8__reference.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not5 = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not5, label %ma_pcm_deinterleave_u8__reference.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.014.i4 = phi i64 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.c = mul i64 %.014.i4, %i.a
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.e = getelementptr i8, ptr %i.d, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !369
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.014.i4
  store i8 %i.f, ptr %i.i, align 1, !tbaa !119
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !369
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.014.i4
  store i8 %i.k, ptr %i.n, align 1, !tbaa !119
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr i8, ptr %i.d, i64 %indvars.iv.next.1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !119
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !369
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.014.i4
  store i8 %i.p, ptr %i.s, align 1, !tbaa !119
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.t = getelementptr i8, ptr %i.d, i64 %indvars.iv.next.2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !369
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.014.i4
  store i8 %i.u, ptr %i.x, align 1, !tbaa !119
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1454

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr i8, ptr %i.d, i64 %indvars.iv.epil
  %i.z = load i8, ptr %i.y, align 1, !tbaa !119
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !369
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.014.i4
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !119
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1455

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.ad = add nuw i64 %.014.i4, 1                 ; 2 uses
  %exitcond7.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond7.not, label %ma_pcm_deinterleave_u8__reference.exit, label %.preheader, !llvm.loop !1456

ma_pcm_deinterleave_u8__reference.exit:           ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_s16_to_u8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %.not21 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.a
  br i1 %.not21, label %ma_pcm_s16_to_u8__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader11
  %g_maLCG.promoted = load i32, ptr @g_maLCG.0, align 4 ; 2 uses
  switch i32 %3, label %iter.check [
    i32 1, label %ma_dither_s32.exit.us
    i32 2, label %ma_dither_s32.exit.us16
  ]

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %ma_dither_s32.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.b = shl i64 %2, 1
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep33
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %ma_dither_s32.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %2, 16
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <8 x i16>, ptr %i.d, align 2, !tbaa !122, !alias.scope !1472
  %wide.load35 = load <8 x i16>, ptr %i.e, align 2, !tbaa !122, !alias.scope !1472
  %i.f = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.g = lshr <8 x i16> %wide.load35, splat (i16 8)
  %i.h = trunc nuw <8 x i16> %i.f to <8 x i8>
  %i.i = xor <8 x i8> %i.h, splat (i8 -128)
  %i.j = trunc nuw <8 x i16> %i.g to <8 x i8>
  %i.k = xor <8 x i8> %i.j, splat (i8 -128)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store <8 x i8> %i.i, ptr %i.l, align 1, !tbaa !119, !alias.scope !1473, !noalias !1472
  store <8 x i8> %i.k, ptr %i.m, align 1, !tbaa !119, !alias.scope !1473, !noalias !1472
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_s16_to_u8__reference.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %ma_dither_s32.exit.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index37
  %wide.load38 = load <4 x i16>, ptr %i.o, align 2, !tbaa !122, !alias.scope !1472
  %i.p = lshr <4 x i16> %wide.load38, splat (i16 8)
  %i.q = trunc nuw <4 x i16> %i.p to <4 x i8>
  %i.r = xor <4 x i8> %i.q, splat (i8 -128)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index37
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !119, !alias.scope !1473, !noalias !1472
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1461

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %2, %n.vec36
  br i1 %cmp.n40, label %ma_pcm_s16_to_u8__reference.exit, label %ma_dither_s32.exit.preheader

ma_dither_s32.exit.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.i13.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_dither_s32.exit.prol.loopexit, label %ma_dither_s32.exit.prol

ma_dither_s32.exit.prol:                          ; preds = %ma_dither_s32.exit.preheader, %ma_dither_s32.exit.prol
  %.027.i13.prol = phi i64 [ %i.aa, %ma_dither_s32.exit.prol ], [ %.027.i13.ph, %ma_dither_s32.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_dither_s32.exit.prol ], [ 0, %ma_dither_s32.exit.preheader ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.027.i13.prol
  %i.v = load i16, ptr %i.u, align 2, !tbaa !122
  %i.w = lshr i16 %i.v, 8
  %i.x = trunc nuw i16 %i.w to i8
  %i.y = xor i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.027.i13.prol
  store i8 %i.y, ptr %i.z, align 1, !tbaa !119
  %i.aa = add nuw i64 %.027.i13.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %ma_dither_s32.exit.prol.loopexit, label %ma_dither_s32.exit.prol, !llvm.loop !1462

ma_dither_s32.exit.prol.loopexit:                 ; preds = %ma_dither_s32.exit.prol, %ma_dither_s32.exit.preheader
  %.027.i13.unr = phi i64 [ %.027.i13.ph, %ma_dither_s32.exit.preheader ], [ %i.aa, %ma_dither_s32.exit.prol ]
  %i.ab = sub i64 %.027.i13.ph, %2
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %ma_pcm_s16_to_u8__reference.exit, label %ma_dither_s32.exit

ma_dither_s32.exit.us:                            ; preds = %.lr.ph, %ma_dither_s32.exit.us
  %.027.i13.us = phi i64 [ %i.aq, %ma_dither_s32.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.ad = phi i32 [ %i.ah, %ma_dither_s32.exit.us ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.027.i13.us
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !122
  %i.ag = mul i32 %i.ad, 48271
  %i.ah = urem i32 %i.ag, 2147483647              ; 3 uses
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = or disjoint i32 %i.ai, 65408
  %i.ak = zext i16 %i.af to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = lshr i32 %i.al, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = xor i8 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.027.i13.us
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  %i.aq = add nuw i64 %.027.i13.us, 1             ; 2 uses
  %exitcond24.not = icmp eq i64 %i.aq, %2
  br i1 %exitcond24.not, label %ma_pcm_s16_to_u8__reference.exit.sink.split, label %ma_dither_s32.exit.us, !llvm.loop !1463

ma_dither_s32.exit.us16:                          ; preds = %.lr.ph, %ma_dither_s32.exit.us16
  %.027.i13.us15 = phi i64 [ %i.bi, %ma_dither_s32.exit.us16 ], [ 0, %.lr.ph ] ; 3 uses
  %i.ar = phi i32 [ %i.az, %ma_dither_s32.exit.us16 ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.027.i13.us15
  %i.at = load i16, ptr %i.as, align 2, !tbaa !122
  %i.au = mul i32 %i.ar, 48271
  %i.av = urem i32 %i.au, 2147483647              ; 2 uses
  %i.aw = udiv i32 %i.av, 33294321
  %i.ax = or disjoint i32 %i.aw, 65408
  %i.ay = mul i32 %i.av, 48271
  %i.az = urem i32 %i.ay, 2147483647              ; 3 uses
  %i.ba = lshr i32 %i.az, 25
  %i.bb = add nuw nsw i32 %i.ax, %i.ba
  %i.bc = zext i16 %i.at to i32
  %i.bd = add nuw nsw i32 %i.bb, %i.bc
  %i.be = lshr i32 %i.bd, 8
  %i.bf = trunc i32 %i.be to i8
  %i.bg = xor i8 %i.bf, -128
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.027.i13.us15
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !119
  %i.bi = add nuw i64 %.027.i13.us15, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not, label %ma_pcm_s16_to_u8__reference.exit.sink.split, label %ma_dither_s32.exit.us16, !llvm.loop !1463

.preheader:                                       ; preds = %bb.a
  br i1 %.not21, label %ma_pcm_s16_to_u8__reference.exit, label %iter.check60

iter.check60:                                     ; preds = %.preheader
  %min.iters.check47 = icmp ult i64 %2, 4
  br i1 %min.iters.check47, label %.lr.ph20.preheader, label %vector.memcheck41

vector.memcheck41:                                ; preds = %iter.check60
  %scevgep42 = getelementptr i8, ptr %0, i64 %2
  %i.bj = shl i64 %2, 1
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.bj
  %bound044 = icmp ult ptr %0, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep42
  %found.conflict46 = and i1 %bound044, %bound145
  br i1 %found.conflict46, label %.lr.ph20.preheader, label %vector.main.loop.iter.check48

vector.main.loop.iter.check48:                    ; preds = %vector.memcheck41
  %min.iters.check49 = icmp ult i64 %2, 16
  br i1 %min.iters.check49, label %vec.epilog.ph64, label %vector.ph50

vector.ph50:                                      ; preds = %vector.main.loop.iter.check48
  %i.bk = and i64 %2, 12
  %n.vec51 = and i64 %2, -16                      ; 4 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.ph50, %vector.body52
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next56, %vector.body52 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index53 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load54 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !122, !alias.scope !1474
  %wide.load55 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !122, !alias.scope !1474
  %i.bn = lshr <8 x i16> %wide.load54, splat (i16 8)
  %i.bo = lshr <8 x i16> %wide.load55, splat (i16 8)
  %i.bp = trunc nuw <8 x i16> %i.bn to <8 x i8>
  %i.bq = xor <8 x i8> %i.bp, splat (i8 -128)
  %i.br = trunc nuw <8 x i16> %i.bo to <8 x i8>
  %i.bs = xor <8 x i8> %i.br, splat (i8 -128)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %index53 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store <8 x i8> %i.bq, ptr %i.bt, align 1, !tbaa !119, !alias.scope !1475, !noalias !1474
  store <8 x i8> %i.bs, ptr %i.bu, align 1, !tbaa !119, !alias.scope !1475, !noalias !1474
  %index.next56 = add nuw i64 %index53, 16        ; 2 uses
  %i.bv = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.bv, label %middle.block57, label %vector.body52, !llvm.loop !1467

middle.block57:                                   ; preds = %vector.body52
  %cmp.n58 = icmp eq i64 %2, %n.vec51
  br i1 %cmp.n58, label %ma_pcm_s16_to_u8__reference.exit, label %vec.epilog.iter.check62

vec.epilog.iter.check62:                          ; preds = %middle.block57
  %min.epilog.iters.check63 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check63, label %.lr.ph20.preheader, label %vec.epilog.ph64, !prof !348

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check48, %vec.epilog.iter.check62
  %vec.epilog.resume.val59 = phi i64 [ %n.vec51, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check48 ]
  %n.vec65 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph64 ], [ %index.next69, %vec.epilog.vector.body66 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index67
  %wide.load68 = load <4 x i16>, ptr %i.bw, align 2, !tbaa !122, !alias.scope !1474
  %i.bx = lshr <4 x i16> %wide.load68, splat (i16 8)
  %i.by = trunc nuw <4 x i16> %i.bx to <4 x i8>
  %i.bz = xor <4 x i8> %i.by, splat (i8 -128)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %index67
  store <4 x i8> %i.bz, ptr %i.ca, align 1, !tbaa !119, !alias.scope !1475, !noalias !1474
  %index.next69 = add nuw i64 %index67, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.cb, label %vec.epilog.middle.block70, label %vec.epilog.vector.body66, !llvm.loop !1468

vec.epilog.middle.block70:                        ; preds = %vec.epilog.vector.body66
  %cmp.n71 = icmp eq i64 %2, %n.vec65
  br i1 %cmp.n71, label %ma_pcm_s16_to_u8__reference.exit, label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %iter.check60, %vector.memcheck41, %vec.epilog.iter.check62, %vec.epilog.middle.block70
  %.028.i19.ph = phi i64 [ 0, %iter.check60 ], [ 0, %vector.memcheck41 ], [ %n.vec51, %vec.epilog.iter.check62 ], [ %n.vec65, %vec.epilog.middle.block70 ] ; 3 uses
  %xtraiter81 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph20.prol.loopexit, label %.lr.ph20.prol

.lr.ph20.prol:                                    ; preds = %.lr.ph20.preheader, %.lr.ph20.prol
  %.028.i19.prol = phi i64 [ %i.ci, %.lr.ph20.prol ], [ %.028.i19.ph, %.lr.ph20.preheader ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %.lr.ph20.prol ], [ 0, %.lr.ph20.preheader ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.028.i19.prol
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !122
  %i.ce = lshr i16 %i.cd, 8
  %i.cf = trunc nuw i16 %i.ce to i8
  %i.cg = xor i8 %i.cf, -128
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i19.prol
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !119
  %i.ci = add nuw i64 %.028.i19.prol, 1           ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %.lr.ph20.prol.loopexit, label %.lr.ph20.prol, !llvm.loop !1469

.lr.ph20.prol.loopexit:                           ; preds = %.lr.ph20.prol, %.lr.ph20.preheader
  %.028.i19.unr = phi i64 [ %.028.i19.ph, %.lr.ph20.preheader ], [ %i.ci, %.lr.ph20.prol ]
  %i.cj = sub i64 %.028.i19.ph, %2
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %ma_pcm_s16_to_u8__reference.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.prol.loopexit, %.lr.ph20
  %.028.i19 = phi i64 [ %i.dm, %.lr.ph20 ], [ %.028.i19.unr, %.lr.ph20.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.028.i19
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !122
  %i.cn = lshr i16 %i.cm, 8
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = xor i8 %i.co, -128
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i19
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !119
  %i.cr = add nuw i64 %.028.i19, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !122
  %i.cu = lshr i16 %i.ct, 8
  %i.cv = trunc nuw i16 %i.cu to i8
  %i.cw = xor i8 %i.cv, -128
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !119
  %i.cy = add nuw i64 %.028.i19, 2                ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !122
  %i.db = lshr i16 %i.da, 8
  %i.dc = trunc nuw i16 %i.db to i8
  %i.dd = xor i8 %i.dc, -128
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !119
  %i.df = add nuw i64 %.028.i19, 3                ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !122
  %i.di = lshr i16 %i.dh, 8
  %i.dj = trunc nuw i16 %i.di to i8
  %i.dk = xor i8 %i.dj, -128
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !119
  %i.dm = add nuw i64 %.028.i19, 4                ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.dm, %2
  br i1 %exitcond26.not.3, label %ma_pcm_s16_to_u8__reference.exit, label %.lr.ph20, !llvm.loop !1470

ma_dither_s32.exit:                               ; preds = %ma_dither_s32.exit.prol.loopexit, %ma_dither_s32.exit
  %.027.i13 = phi i64 [ %i.eo, %ma_dither_s32.exit ], [ %.027.i13.unr, %ma_dither_s32.exit.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.027.i13
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !122
  %i.dp = lshr i16 %i.do, 8
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = xor i8 %i.dq, -128
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %.027.i13
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !119
  %i.dt = add nuw i64 %.027.i13, 1                ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !122
  %i.dw = lshr i16 %i.dv, 8
  %i.dx = trunc nuw i16 %i.dw to i8
  %i.dy = xor i8 %i.dx, -128
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !119
  %i.ea = add nuw i64 %.027.i13, 2                ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !122
  %i.ed = lshr i16 %i.ec, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  %i.ef = xor i8 %i.ee, -128
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !119
  %i.eh = add nuw i64 %.027.i13, 3                ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !122
  %i.ek = lshr i16 %i.ej, 8
  %i.el = trunc nuw i16 %i.ek to i8
  %i.em = xor i8 %i.el, -128
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh
  store i8 %i.em, ptr %i.en, align 1, !tbaa !119
  %i.eo = add nuw i64 %.027.i13, 4                ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.eo, %2
  br i1 %exitcond25.not.3, label %ma_pcm_s16_to_u8__reference.exit, label %ma_dither_s32.exit, !llvm.loop !1471

ma_pcm_s16_to_u8__reference.exit.sink.split:      ; preds = %ma_dither_s32.exit.us16, %ma_dither_s32.exit.us
  %.lcssa29.sink = phi i32 [ %i.ah, %ma_dither_s32.exit.us ], [ %i.az, %ma_dither_s32.exit.us16 ]
  store i32 %.lcssa29.sink, ptr @g_maLCG.0, align 4, !tbaa !156
  br label %ma_pcm_s16_to_u8__reference.exit

ma_pcm_s16_to_u8__reference.exit:                 ; preds = %ma_dither_s32.exit.prol.loopexit, %ma_dither_s32.exit, %.lr.ph20.prol.loopexit, %.lr.ph20, %middle.block, %vec.epilog.middle.block, %middle.block57, %vec.epilog.middle.block70, %ma_pcm_s16_to_u8__reference.exit.sink.split, %.preheader11, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_s16_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 2 uses
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i5 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.011.i4 = phi i64 [ %i.b, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.012.i3 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i4, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i5, ptr noundef nonnull align 1 dereferenceable(1) %.012.i3, i64 %spec.store.select.i, i1 false)
  %i.b = sub nuw i64 %.011.i4, %spec.store.select.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i5, i64 %spec.store.select.i
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i3, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

ma_copy_memory_64.exit:                           ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_pcm_s16_to_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_s16_to_s24__reference.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i7 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = mul i64 %.0.i7, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  store i8 0, ptr %i.c, align 1, !tbaa !119
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i7 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !122
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr i8, ptr %i.c, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !119
  %i.h = load i16, ptr %i.d, align 2, !tbaa !122
  %i.i = lshr i16 %i.h, 8
  %i.j = trunc nuw i16 %i.i to i8
  %i.k = getelementptr i8, ptr %i.c, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !119
  %i.l = or disjoint i64 %.0.i7, 1                ; 2 uses
  %i.m = mul i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !119
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = trunc i16 %i.p to i8
  %i.r = getelementptr i8, ptr %i.n, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !119
  %i.s = load i16, ptr %i.o, align 2, !tbaa !122
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr i8, ptr %i.n, i64 2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !119
  %i.w = add nuw i64 %.0.i7, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_pcm_s16_to_s24__reference.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

ma_pcm_s16_to_s24__reference.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_pcm_s16_to_s24__reference.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %ma_pcm_s16_to_s24__reference.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %ma_pcm_s16_to_s24__reference.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.x = mul i64 %.0.i7.epil.init, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !119
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i7.epil.init ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !122
  %i.ab = trunc i16 %i.aa to i8
  %i.ac = getelementptr i8, ptr %i.y, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !119
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !122
  %i.ae = lshr i16 %i.ad, 8
end_hunk_6
begin_hunk_7_@ma_pcm_interleave_s16:bb.a
  store i16 %i.h, ptr %i.i, align 2, !tbaa !122
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !371
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.014.i4
  %i.m = load i16, ptr %i.l, align 2, !tbaa !122
  %i.n = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next
  store i16 %i.m, ptr %i.n, align 2, !tbaa !122
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !371
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.014.i4
  %i.r = load i16, ptr %i.q, align 2, !tbaa !122
  %i.s = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store i16 %i.r, ptr %i.s, align 2, !tbaa !122
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !371
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %.014.i4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !122
  %i.x = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !122
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1480

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !371
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.014.i4
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !122
  %i.ac = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.epil
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !122
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1481

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.ad = add nuw i64 %.014.i4, 1                 ; 2 uses
  %exitcond7.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond7.not, label %ma_pcm_interleave_s16__reference.exit, label %.preheader, !llvm.loop !1482

ma_pcm_interleave_s16__reference.exit:            ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_deinterleave_s16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ma_pcm_deinterleave_s16__reference.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not5 = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not5, label %ma_pcm_deinterleave_s16__reference.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.014.i4 = phi i64 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.c = mul i64 %.014.i4, %i.a
  %i.d = getelementptr [2 x i8], ptr %1, i64 %i.c ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.e = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i16, ptr %i.e, align 2, !tbaa !122
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.014.i4
  store i16 %i.f, ptr %i.i, align 2, !tbaa !122
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.k = load i16, ptr %i.j, align 2, !tbaa !122
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !371
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.014.i4
  store i16 %i.k, ptr %i.n, align 2, !tbaa !122
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !371
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.014.i4
  store i16 %i.p, ptr %i.s, align 2, !tbaa !122
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.t = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !122
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.014.i4
  store i16 %i.u, ptr %i.x, align 2, !tbaa !122
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1483

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.z = load i16, ptr %i.y, align 2, !tbaa !122
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !371
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.014.i4
  store i16 %i.z, ptr %i.ac, align 2, !tbaa !122
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1484

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.ad = add nuw i64 %.014.i4, 1                 ; 2 uses
  %exitcond7.not = icmp eq i64 %i.ad, %2
  br i1 %exitcond7.not, label %ma_pcm_deinterleave_s16__reference.exit, label %.preheader, !llvm.loop !1485

ma_pcm_deinterleave_s16__reference.exit:          ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_s24_to_u8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %.not17 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader7

.preheader7:                                      ; preds = %bb.a
  br i1 %.not17, label %ma_pcm_s24_to_u8__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader7
  %g_maLCG.promoted = load i32, ptr @g_maLCG.0, align 4 ; 2 uses
  switch i32 %3, label %iter.check [
    i32 1, label %ma_dither_s32.exit.i.us
    i32 2, label %ma_dither_s32.exit.i.us12
  ]

iter.check:                                       ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %ma_dither_s32.exit.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.b = add i64 %2, -1
  %scevgep = getelementptr i8, ptr %1, i64 2      ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 3) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.c = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.d = icmp ult ptr %i.c, %scevgep
  %i.e = or i1 %i.d, %mul.overflow
  br i1 %i.e, label %ma_dither_s32.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep29 = getelementptr i8, ptr %0, i64 %2
  %scevgep30 = getelementptr i8, ptr %1, i64 2
  %i.f = mul i64 %2, 3
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.f
  %bound0 = icmp ult ptr %0, %scevgep31
  %bound1 = icmp ult ptr %scevgep30, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %ma_dither_s32.exit.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %2, 16
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.h = mul i64 %index, 3
  %i.i = mul i64 %index, 3
  %i.j = mul i64 %index, 3
  %i.k = mul i64 %index, 3
  %i.l = mul i64 %index, 3
  %i.m = mul i64 %index, 3
  %i.n = mul i64 %index, 3
  %i.o = mul i64 %index, 3
  %i.p = mul i64 %index, 3
  %i.q = mul i64 %index, 3
  %i.r = mul i64 %index, 3
  %i.s = mul i64 %index, 3
  %i.t = mul i64 %index, 3
  %i.u = mul i64 %index, 3
  %i.v = mul i64 %index, 3
  %i.w = mul i64 %index, 3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.ad = getelementptr i8, ptr %1, i64 %i.n
  %i.ae = getelementptr i8, ptr %1, i64 %i.o
  %i.af = getelementptr i8, ptr %1, i64 %i.p
  %i.ag = getelementptr i8, ptr %1, i64 %i.q
  %i.ah = getelementptr i8, ptr %1, i64 %i.r
  %i.ai = getelementptr i8, ptr %1, i64 %i.s
  %i.aj = getelementptr i8, ptr %1, i64 %i.t
  %i.ak = getelementptr i8, ptr %1, i64 %i.u
  %i.al = getelementptr i8, ptr %1, i64 %i.v
  %i.am = getelementptr i8, ptr %1, i64 %i.w
  %i.an = getelementptr i8, ptr %i.x, i64 2
  %i.ao = getelementptr i8, ptr %i.y, i64 5
  %i.ap = getelementptr i8, ptr %i.z, i64 8
  %i.aq = getelementptr i8, ptr %i.aa, i64 11
  %i.ar = getelementptr i8, ptr %i.ab, i64 14
  %i.as = getelementptr i8, ptr %i.ac, i64 17
  %i.at = getelementptr i8, ptr %i.ad, i64 20
  %i.au = getelementptr i8, ptr %i.ae, i64 23
  %i.av = getelementptr i8, ptr %i.af, i64 26
  %i.aw = getelementptr i8, ptr %i.ag, i64 29
  %i.ax = getelementptr i8, ptr %i.ah, i64 32
  %i.ay = getelementptr i8, ptr %i.ai, i64 35
  %i.az = getelementptr i8, ptr %i.aj, i64 38
  %i.ba = getelementptr i8, ptr %i.ak, i64 41
  %i.bb = getelementptr i8, ptr %i.al, i64 44
  %i.bc = getelementptr i8, ptr %i.am, i64 47
  %i.bd = load i8, ptr %i.an, align 1, !tbaa !119, !alias.scope !1501
  %i.be = load i8, ptr %i.ao, align 1, !tbaa !119, !alias.scope !1501
  %i.bf = load i8, ptr %i.ap, align 1, !tbaa !119, !alias.scope !1501
  %i.bg = load i8, ptr %i.aq, align 1, !tbaa !119, !alias.scope !1501
  %i.bh = load i8, ptr %i.ar, align 1, !tbaa !119, !alias.scope !1501
  %i.bi = load i8, ptr %i.as, align 1, !tbaa !119, !alias.scope !1501
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !119, !alias.scope !1501
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !119, !alias.scope !1501
  %i.bl = load i8, ptr %i.av, align 1, !tbaa !119, !alias.scope !1501
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !119, !alias.scope !1501
  %i.bn = load i8, ptr %i.ax, align 1, !tbaa !119, !alias.scope !1501
  %i.bo = load i8, ptr %i.ay, align 1, !tbaa !119, !alias.scope !1501
  %i.bp = load i8, ptr %i.az, align 1, !tbaa !119, !alias.scope !1501
  %i.bq = load i8, ptr %i.ba, align 1, !tbaa !119, !alias.scope !1501
  %i.br = load i8, ptr %i.bb, align 1, !tbaa !119, !alias.scope !1501
  %i.bs = load i8, ptr %i.bc, align 1, !tbaa !119, !alias.scope !1501
  %i.bt = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 1
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 2
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 3
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 4
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 5
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 6
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 7
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 8
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 9
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 10
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 11
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 12
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 13
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 14
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 15
  %i.cj = xor <16 x i8> %i.ci, splat (i8 -128)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !119, !alias.scope !1502, !noalias !1501
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ma_pcm_s24_to_u8__reference.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %ma_dither_s32.exit.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 6 uses
  %i.cm = mul i64 %index34, 3
  %i.cn = mul i64 %index34, 3
  %i.co = mul i64 %index34, 3
  %i.cp = mul i64 %index34, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cs = getelementptr i8, ptr %1, i64 %i.co
  %i.ct = getelementptr i8, ptr %1, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.cq, i64 2
  %i.cv = getelementptr i8, ptr %i.cr, i64 5
  %i.cw = getelementptr i8, ptr %i.cs, i64 8
  %i.cx = getelementptr i8, ptr %i.ct, i64 11
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !119, !alias.scope !1501
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !119, !alias.scope !1501
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !119, !alias.scope !1501
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !119, !alias.scope !1501
  %i.dc = insertelement <4 x i8> poison, i8 %i.cy, i64 0
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 1
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 2
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 3
  %i.dg = xor <4 x i8> %i.df, splat (i8 -128)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  store <4 x i8> %i.dg, ptr %i.dh, align 1, !tbaa !119, !alias.scope !1502, !noalias !1501
  %index.next35 = add nuw i64 %index34, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next35, %n.vec33
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1490

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %2, %n.vec33
  br i1 %cmp.n36, label %ma_pcm_s24_to_u8__reference.exit, label %ma_dither_s32.exit.i.preheader

ma_dither_s32.exit.i.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.i9.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ma_dither_s32.exit.i.prol.loopexit, label %ma_dither_s32.exit.i.prol

ma_dither_s32.exit.i.prol:                        ; preds = %ma_dither_s32.exit.i.preheader, %ma_dither_s32.exit.i.prol
  %.028.i9.prol = phi i64 [ %i.dp, %ma_dither_s32.exit.i.prol ], [ %.028.i9.ph, %ma_dither_s32.exit.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %ma_dither_s32.exit.i.prol ], [ 0, %ma_dither_s32.exit.i.preheader ]
  %i.dj = mul i64 %.028.i9.prol, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !119
  %i.dn = xor i8 %i.dm, -128
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i9.prol
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !119
  %i.dp = add nuw i64 %.028.i9.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %ma_dither_s32.exit.i.prol.loopexit, label %ma_dither_s32.exit.i.prol, !llvm.loop !1491

ma_dither_s32.exit.i.prol.loopexit:               ; preds = %ma_dither_s32.exit.i.prol, %ma_dither_s32.exit.i.preheader
  %.028.i9.unr = phi i64 [ %.028.i9.ph, %ma_dither_s32.exit.i.preheader ], [ %i.dp, %ma_dither_s32.exit.i.prol ]
  %i.dq = sub i64 %.028.i9.ph, %2
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %ma_pcm_s24_to_u8__reference.exit, label %ma_dither_s32.exit.i

ma_dither_s32.exit.i.us:                          ; preds = %.lr.ph, %ma_dither_s32.exit.i.us
  %.028.i9.us = phi i64 [ %i.em, %ma_dither_s32.exit.i.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.ds = phi i32 [ %i.ee, %ma_dither_s32.exit.i.us ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.dt = mul i64 %.028.i9.us, 3
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt ; 2 uses
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = zext i16 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = getelementptr i8, ptr %i.du, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !119
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 24
  %i.ec = or disjoint i32 %i.eb, %i.dx
  %i.ed = mul i32 %i.ds, 48271
  %i.ee = urem i32 %i.ed, 2147483647              ; 3 uses
  %i.ef = lshr i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.ef, -8388608
  %i.eh = add nsw i32 %i.eg, %i.ec
  %i.ei = lshr i32 %i.eh, 24
  %i.ej = trunc nuw i32 %i.ei to i8
  %i.ek = xor i8 %i.ej, -128
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i9.us
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !119
  %i.em = add nuw i64 %.028.i9.us, 1              ; 2 uses
  %exitcond20.not = icmp eq i64 %i.em, %2
  br i1 %exitcond20.not, label %ma_pcm_s24_to_u8__reference.exit.sink.split, label %ma_dither_s32.exit.i.us, !llvm.loop !1492

ma_dither_s32.exit.i.us12:                        ; preds = %.lr.ph, %ma_dither_s32.exit.i.us12
  %.028.i9.us11 = phi i64 [ %i.fl, %ma_dither_s32.exit.i.us12 ], [ 0, %.lr.ph ] ; 3 uses
  %i.en = phi i32 [ %i.fd, %ma_dither_s32.exit.i.us12 ], [ %g_maLCG.promoted, %.lr.ph ]
  %i.eo = mul i64 %.028.i9.us11, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.eo ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 1
  %i.er = zext i16 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = getelementptr i8, ptr %i.ep, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !119
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw i32 %i.ev, 24
  %i.ex = or disjoint i32 %i.ew, %i.es
  %i.ey = mul i32 %i.en, 48271
  %i.ez = urem i32 %i.ey, 2147483647              ; 2 uses
  %i.fa = lshr i32 %i.ez, 9
  %i.fb = or disjoint i32 %i.fa, -8388608
  %i.fc = mul i32 %i.ez, 48271
  %i.fd = urem i32 %i.fc, 2147483647              ; 3 uses
  %i.fe = lshr i32 %i.fd, 9
  %i.ff = add nuw nsw i32 %i.fb, %i.fe
  %i.fg = add nsw i32 %i.ff, %i.ex
  %i.fh = lshr i32 %i.fg, 24
  %i.fi = trunc nuw i32 %i.fh to i8
  %i.fj = xor i8 %i.fi, -128
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i9.us11
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !119
  %i.fl = add nuw i64 %.028.i9.us11, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %2
  br i1 %exitcond.not, label %ma_pcm_s24_to_u8__reference.exit.sink.split, label %ma_dither_s32.exit.i.us12, !llvm.loop !1492

.preheader:                                       ; preds = %bb.a
  br i1 %.not17, label %ma_pcm_s24_to_u8__reference.exit, label %iter.check60

iter.check60:                                     ; preds = %.preheader
  %min.iters.check49 = icmp ult i64 %2, 4
  br i1 %min.iters.check49, label %.lr.ph16.preheader, label %vector.scevcheck37

vector.scevcheck37:                               ; preds = %iter.check60
  %i.fm = add i64 %2, -1
  %scevgep38 = getelementptr i8, ptr %1, i64 2    ; 2 uses
  %mul39 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fm, i64 3) ; 2 uses
  %mul.result40 = extractvalue { i64, i1 } %mul39, 0
  %mul.overflow41 = extractvalue { i64, i1 } %mul39, 1
  %i.fn = getelementptr i8, ptr %scevgep38, i64 %mul.result40
  %i.fo = icmp ult ptr %i.fn, %scevgep38
  %i.fp = or i1 %i.fo, %mul.overflow41
  br i1 %i.fp, label %.lr.ph16.preheader, label %vector.memcheck42

vector.memcheck42:                                ; preds = %vector.scevcheck37
  %scevgep43 = getelementptr i8, ptr %0, i64 %2
  %scevgep44 = getelementptr i8, ptr %1, i64 2
  %i.fq = mul i64 %2, 3
  %scevgep45 = getelementptr i8, ptr %1, i64 %i.fq
  %bound046 = icmp ult ptr %0, %scevgep45
  %bound147 = icmp ult ptr %scevgep44, %scevgep43
  %found.conflict48 = and i1 %bound046, %bound147
  br i1 %found.conflict48, label %.lr.ph16.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %vector.memcheck42
  %min.iters.check51 = icmp ult i64 %2, 16
  br i1 %min.iters.check51, label %vec.epilog.ph64, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.fr = and i64 %2, 12
  %n.vec53 = and i64 %2, -16                      ; 4 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.ph52, %vector.body54
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next56, %vector.body54 ] ; 18 uses
  %i.fs = mul i64 %index55, 3
  %i.ft = mul i64 %index55, 3
  %i.fu = mul i64 %index55, 3
  %i.fv = mul i64 %index55, 3
  %i.fw = mul i64 %index55, 3
  %i.fx = mul i64 %index55, 3
  %i.fy = mul i64 %index55, 3
  %i.fz = mul i64 %index55, 3
  %i.ga = mul i64 %index55, 3
  %i.gb = mul i64 %index55, 3
  %i.gc = mul i64 %index55, 3
  %i.gd = mul i64 %index55, 3
  %i.ge = mul i64 %index55, 3
  %i.gf = mul i64 %index55, 3
  %i.gg = mul i64 %index55, 3
  %i.gh = mul i64 %index55, 3
  %i.gi = getelementptr i8, ptr %1, i64 %i.fs
  %i.gj = getelementptr i8, ptr %1, i64 %i.ft
  %i.gk = getelementptr i8, ptr %1, i64 %i.fu
  %i.gl = getelementptr i8, ptr %1, i64 %i.fv
  %i.gm = getelementptr i8, ptr %1, i64 %i.fw
  %i.gn = getelementptr i8, ptr %1, i64 %i.fx
  %i.go = getelementptr i8, ptr %1, i64 %i.fy
  %i.gp = getelementptr i8, ptr %1, i64 %i.fz
  %i.gq = getelementptr i8, ptr %1, i64 %i.ga
  %i.gr = getelementptr i8, ptr %1, i64 %i.gb
  %i.gs = getelementptr i8, ptr %1, i64 %i.gc
  %i.gt = getelementptr i8, ptr %1, i64 %i.gd
  %i.gu = getelementptr i8, ptr %1, i64 %i.ge
  %i.gv = getelementptr i8, ptr %1, i64 %i.gf
  %i.gw = getelementptr i8, ptr %1, i64 %i.gg
  %i.gx = getelementptr i8, ptr %1, i64 %i.gh
  %i.gy = getelementptr i8, ptr %i.gi, i64 2
  %i.gz = getelementptr i8, ptr %i.gj, i64 5
  %i.ha = getelementptr i8, ptr %i.gk, i64 8
  %i.hb = getelementptr i8, ptr %i.gl, i64 11
  %i.hc = getelementptr i8, ptr %i.gm, i64 14
  %i.hd = getelementptr i8, ptr %i.gn, i64 17
  %i.he = getelementptr i8, ptr %i.go, i64 20
  %i.hf = getelementptr i8, ptr %i.gp, i64 23
  %i.hg = getelementptr i8, ptr %i.gq, i64 26
  %i.hh = getelementptr i8, ptr %i.gr, i64 29
  %i.hi = getelementptr i8, ptr %i.gs, i64 32
  %i.hj = getelementptr i8, ptr %i.gt, i64 35
  %i.hk = getelementptr i8, ptr %i.gu, i64 38
  %i.hl = getelementptr i8, ptr %i.gv, i64 41
  %i.hm = getelementptr i8, ptr %i.gw, i64 44
  %i.hn = getelementptr i8, ptr %i.gx, i64 47
  %i.ho = load i8, ptr %i.gy, align 1, !tbaa !119, !alias.scope !1503
  %i.hp = load i8, ptr %i.gz, align 1, !tbaa !119, !alias.scope !1503
  %i.hq = load i8, ptr %i.ha, align 1, !tbaa !119, !alias.scope !1503
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !119, !alias.scope !1503
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !119, !alias.scope !1503
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !119, !alias.scope !1503
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !119, !alias.scope !1503
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !119, !alias.scope !1503
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !119, !alias.scope !1503
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !119, !alias.scope !1503
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !119, !alias.scope !1503
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !119, !alias.scope !1503
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !119, !alias.scope !1503
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !119, !alias.scope !1503
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !119, !alias.scope !1503
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !119, !alias.scope !1503
  %i.ie = insertelement <16 x i8> poison, i8 %i.ho, i64 0
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 1
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 2
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 3
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 4
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 5
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 6
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 7
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 8
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 9
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 10
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 11
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 12
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 13
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 14
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 15
  %i.iu = xor <16 x i8> %i.it, splat (i8 -128)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %index55
  store <16 x i8> %i.iu, ptr %i.iv, align 1, !tbaa !119, !alias.scope !1504, !noalias !1503
  %index.next56 = add nuw i64 %index55, 16        ; 2 uses
  %i.iw = icmp eq i64 %index.next56, %n.vec53
  br i1 %i.iw, label %middle.block57, label %vector.body54, !llvm.loop !1496

middle.block57:                                   ; preds = %vector.body54
  %cmp.n58 = icmp eq i64 %2, %n.vec53
  br i1 %cmp.n58, label %ma_pcm_s24_to_u8__reference.exit, label %vec.epilog.iter.check62

vec.epilog.iter.check62:                          ; preds = %middle.block57
  %min.epilog.iters.check63 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check63, label %.lr.ph16.preheader, label %vec.epilog.ph64, !prof !348

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check62
  %vec.epilog.resume.val59 = phi i64 [ %n.vec53, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check50 ]
  %n.vec65 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph64 ], [ %index.next68, %vec.epilog.vector.body66 ] ; 6 uses
  %i.ix = mul i64 %index67, 3
  %i.iy = mul i64 %index67, 3
  %i.iz = mul i64 %index67, 3
  %i.ja = mul i64 %index67, 3
  %i.jb = getelementptr i8, ptr %1, i64 %i.ix
  %i.jc = getelementptr i8, ptr %1, i64 %i.iy
  %i.jd = getelementptr i8, ptr %1, i64 %i.iz
  %i.je = getelementptr i8, ptr %1, i64 %i.ja
  %i.jf = getelementptr i8, ptr %i.jb, i64 2
  %i.jg = getelementptr i8, ptr %i.jc, i64 5
  %i.jh = getelementptr i8, ptr %i.jd, i64 8
  %i.ji = getelementptr i8, ptr %i.je, i64 11
  %i.jj = load i8, ptr %i.jf, align 1, !tbaa !119, !alias.scope !1503
  %i.jk = load i8, ptr %i.jg, align 1, !tbaa !119, !alias.scope !1503
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !119, !alias.scope !1503
  %i.jm = load i8, ptr %i.ji, align 1, !tbaa !119, !alias.scope !1503
  %i.jn = insertelement <4 x i8> poison, i8 %i.jj, i64 0
  %i.jo = insertelement <4 x i8> %i.jn, i8 %i.jk, i64 1
  %i.jp = insertelement <4 x i8> %i.jo, i8 %i.jl, i64 2
  %i.jq = insertelement <4 x i8> %i.jp, i8 %i.jm, i64 3
  %i.jr = xor <4 x i8> %i.jq, splat (i8 -128)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 %index67
  store <4 x i8> %i.jr, ptr %i.js, align 1, !tbaa !119, !alias.scope !1504, !noalias !1503
  %index.next68 = add nuw i64 %index67, 4         ; 2 uses
  %i.jt = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.jt, label %vec.epilog.middle.block69, label %vec.epilog.vector.body66, !llvm.loop !1497

vec.epilog.middle.block69:                        ; preds = %vec.epilog.vector.body66
  %cmp.n70 = icmp eq i64 %2, %n.vec65
  br i1 %cmp.n70, label %ma_pcm_s24_to_u8__reference.exit, label %.lr.ph16.preheader

.lr.ph16.preheader:                               ; preds = %iter.check60, %vector.scevcheck37, %vector.memcheck42, %vec.epilog.iter.check62, %vec.epilog.middle.block69
  %.029.i15.ph = phi i64 [ 0, %iter.check60 ], [ 0, %vector.scevcheck37 ], [ 0, %vector.memcheck42 ], [ %n.vec53, %vec.epilog.iter.check62 ], [ %n.vec65, %vec.epilog.middle.block69 ] ; 3 uses
  %xtraiter75 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.preheader, %.lr.ph16.prol
  %.029.i15.prol = phi i64 [ %i.ka, %.lr.ph16.prol ], [ %.029.i15.ph, %.lr.ph16.preheader ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph16.prol ], [ 0, %.lr.ph16.preheader ]
  %i.ju = mul i64 %.029.i15.prol, 3
  %i.jv = getelementptr i8, ptr %1, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 2
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !119
  %i.jy = xor i8 %i.jx, -128
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i15.prol
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !119
  %i.ka = add nuw i64 %.029.i15.prol, 1           ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol, !llvm.loop !1498

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.prol, %.lr.ph16.preheader
  %.029.i15.unr = phi i64 [ %.029.i15.ph, %.lr.ph16.preheader ], [ %i.ka, %.lr.ph16.prol ]
  %i.kb = sub i64 %.029.i15.ph, %2
  %i.kc = icmp ugt i64 %i.kb, -4
  br i1 %i.kc, label %ma_pcm_s24_to_u8__reference.exit, label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16
  %.029.i15 = phi i64 [ %i.le, %.lr.ph16 ], [ %.029.i15.unr, %.lr.ph16.prol.loopexit ] ; 6 uses
  %i.kd = mul i64 %.029.i15, 3
  %i.ke = getelementptr i8, ptr %1, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 2
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !119
  %i.kh = xor i8 %i.kg, -128
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %.029.i15
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !119
  %i.kj = add nuw i64 %.029.i15, 1                ; 2 uses
  %i.kk = mul i64 %i.kj, 3
  %i.kl = getelementptr i8, ptr %1, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 2
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !119
  %i.ko = xor i8 %i.kn, -128
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %i.kj
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !119
  %i.kq = add nuw i64 %.029.i15, 2                ; 2 uses
  %i.kr = mul i64 %i.kq, 3
  %i.ks = getelementptr i8, ptr %1, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 2
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !119
  %i.kv = xor i8 %i.ku, -128
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !119
  %i.kx = add nuw i64 %.029.i15, 3                ; 2 uses
  %i.ky = mul i64 %i.kx, 3
  %i.kz = getelementptr i8, ptr %1, i64 %i.ky
  %i.la = getelementptr i8, ptr %i.kz, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !119
  %i.lc = xor i8 %i.lb, -128
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 %i.kx
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !119
  %i.le = add nuw i64 %.029.i15, 4                ; 2 uses
  %exitcond22.not.3 = icmp eq i64 %i.le, %2
  br i1 %exitcond22.not.3, label %ma_pcm_s24_to_u8__reference.exit, label %.lr.ph16, !llvm.loop !1499

ma_dither_s32.exit.i:                             ; preds = %ma_dither_s32.exit.i.prol.loopexit, %ma_dither_s32.exit.i
  %.028.i9 = phi i64 [ %i.mg, %ma_dither_s32.exit.i ], [ %.028.i9.unr, %ma_dither_s32.exit.i.prol.loopexit ] ; 6 uses
  %i.lf = mul i64 %.028.i9, 3
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 2
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !119
  %i.lj = xor i8 %i.li, -128
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i9
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !119
  %i.ll = add nuw i64 %.028.i9, 1                 ; 2 uses
  %i.lm = mul i64 %i.ll, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 2
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !119
  %i.lq = xor i8 %i.lp, -128
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.ll
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !119
  %i.ls = add nuw i64 %.028.i9, 2                 ; 2 uses
  %i.lt = mul i64 %i.ls, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.lt
  %i.lv = getelementptr i8, ptr %i.lu, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !119
  %i.lx = xor i8 %i.lw, -128
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 %i.ls
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !119
  %i.lz = add nuw i64 %.028.i9, 3                 ; 2 uses
  %i.ma = mul i64 %i.lz, 3
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !119
  %i.me = xor i8 %i.md, -128
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 %i.lz
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !119
  %i.mg = add nuw i64 %.028.i9, 4                 ; 2 uses
  %exitcond21.not.3 = icmp eq i64 %i.mg, %2
  br i1 %exitcond21.not.3, label %ma_pcm_s24_to_u8__reference.exit, label %ma_dither_s32.exit.i, !llvm.loop !1500

ma_pcm_s24_to_u8__reference.exit.sink.split:      ; preds = %ma_dither_s32.exit.i.us12, %ma_dither_s32.exit.i.us
  %.lcssa25.sink = phi i32 [ %i.ee, %ma_dither_s32.exit.i.us ], [ %i.fd, %ma_dither_s32.exit.i.us12 ]
  store i32 %.lcssa25.sink, ptr @g_maLCG.0, align 4, !tbaa !156
  br label %ma_pcm_s24_to_u8__reference.exit

ma_pcm_s24_to_u8__reference.exit:                 ; preds = %ma_dither_s32.exit.i.prol.loopexit, %ma_dither_s32.exit.i, %.lr.ph16.prol.loopexit, %.lr.ph16, %middle.block, %vec.epilog.middle.block, %middle.block57, %vec.epilog.middle.block69, %ma_pcm_s24_to_u8__reference.exit.sink.split, %.preheader7, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_s24_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %.not17 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader7

.preheader7:                                      ; preds = %bb.a
  br i1 %.not17, label %ma_pcm_s24_to_s16__reference.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader7
  %g_maLCG.promoted = load i32, ptr @g_maLCG.0, align 4 ; 2 uses
  switch i32 %3, label %ma_dither_s32.exit.i.preheader [
    i32 1, label %ma_dither_s32.exit.i.us
    i32 2, label %ma_dither_s32.exit.i.us12
  ]

ma_dither_s32.exit.i.preheader:                   ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %2, 16
  br i1 %min.iters.check, label %ma_dither_s32.exit.i.preheader54, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %ma_dither_s32.exit.i.preheader
  %i.b = add i64 %2, -1
  %scevgep = getelementptr i8, ptr %1, i64 2      ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.b, i64 3) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.c = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.d = icmp ult ptr %i.c, %scevgep
  %i.e = or i1 %i.d, %mul.overflow
  br i1 %i.e, label %ma_dither_s32.exit.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.f = shl i64 %2, 1
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.f
  %i.g = mul i64 %2, 3
  %scevgep30 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %0, %scevgep30
  %bound1 = icmp ult ptr %1, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %ma_dither_s32.exit.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.h = mul i64 %index, 3
  %i.i = mul i64 %index, 3
  %i.j = mul i64 %index, 3
  %i.k = mul i64 %index, 3
  %i.l = mul i64 %index, 3
  %i.m = mul i64 %index, 3
  %i.n = mul i64 %index, 3
  %i.o = mul i64 %index, 3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = getelementptr i8, ptr %1, i64 %i.k       ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 9
  %i.w = getelementptr i8, ptr %1, i64 %i.l       ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = getelementptr i8, ptr %1, i64 %i.m       ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 15
  %i.aa = getelementptr i8, ptr %1, i64 %i.n      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 18
  %i.ac = getelementptr i8, ptr %1, i64 %i.o      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 21
  %i.ae = load i16, ptr %i.p, align 1, !alias.scope !1517
  %i.af = load i16, ptr %i.r, align 1, !alias.scope !1517
  %i.ag = load i16, ptr %i.t, align 1, !alias.scope !1517
  %i.ah = load i16, ptr %i.v, align 1, !alias.scope !1517
  %i.ai = load i16, ptr %i.x, align 1, !alias.scope !1517
  %i.aj = load i16, ptr %i.z, align 1, !alias.scope !1517
  %i.ak = load i16, ptr %i.ab, align 1, !alias.scope !1517
  %i.al = load i16, ptr %i.ad, align 1, !alias.scope !1517
  %i.am = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 1
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 2
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 3
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 4
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 5
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 6
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 7
  %i.au = zext <8 x i16> %i.at to <8 x i32>
  %i.av = shl nuw nsw <8 x i32> %i.au, splat (i32 8)
  %i.aw = getelementptr i8, ptr %i.p, i64 2
  %i.ax = getelementptr i8, ptr %i.q, i64 5
end_hunk_7
begin_hunk_8_@ma_pcm_interleave_f32:bb.a
  %i.w = load float, ptr %i.v, align 4, !tbaa !349
  %i.x = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.2
  store float %i.w, ptr %i.x, align 4, !tbaa !349
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !1584

._crit_edge.i.i.unr-lcssa:                        ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !373
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.01417.i.i
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !349
  %i.ac = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.epil
  store float %i.ab, ptr %i.ac, align 4, !tbaa !349
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1585

._crit_edge.i.i:                                  ; preds = %bb.b, %._crit_edge.i.i.unr-lcssa
  %i.ad = add nuw i64 %.01417.i.i, 1              ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond21.not.i.i, label %ma_pcm_interleave_f32__optimized.exit, label %.preheader.i.i, !llvm.loop !1586

ma_pcm_interleave_f32__optimized.exit:            ; preds = %._crit_edge.i.i, %bb.a, %.preheader.lr.ph.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_deinterleave_f32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #26 {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %ma_pcm_deinterleave_f32__optimized.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %.not19.i.i = icmp eq i32 %3, 0
  %i.a = zext i32 %3 to i64                       ; 3 uses
  br i1 %.not19.i.i, label %ma_pcm_deinterleave_f32__optimized.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.lr.ph.i.i
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.b = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.a, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.01417.i.i = phi i64 [ %i.ad, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 7 uses
  %i.c = mul i64 %.01417.i.i, %i.a
  %i.d = getelementptr [4 x i8], ptr %1, i64 %i.c ; 5 uses
  br i1 %i.b, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.f = load float, ptr %i.e, align 4, !tbaa !349
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !373
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.01417.i.i
  store float %i.f, ptr %i.i, align 4, !tbaa !349
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !349
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !373
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01417.i.i
  store float %i.k, ptr %i.n, align 4, !tbaa !349
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.1
  %i.p = load float, ptr %i.o, align 4, !tbaa !349
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.i.1
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !373
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.01417.i.i
  store float %i.p, ptr %i.s, align 4, !tbaa !349
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.2
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.i.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !373
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.01417.i.i
  store float %i.u, ptr %i.x, align 4, !tbaa !349
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !1587

._crit_edge.i.i.unr-lcssa:                        ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.y = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !349
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.i.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !373
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01417.i.i
  store float %i.z, ptr %i.ac, align 4, !tbaa !349
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1588

._crit_edge.i.i:                                  ; preds = %bb.b, %._crit_edge.i.i.unr-lcssa
  %i.ad = add nuw i64 %.01417.i.i, 1              ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond21.not.i.i, label %ma_pcm_deinterleave_f32__optimized.exit, label %.preheader.i.i, !llvm.loop !1589

ma_pcm_deinterleave_f32__optimized.exit:          ; preds = %._crit_edge.i.i, %bb.a, %.preheader.lr.ph.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ma_pcm_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !118
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %4, %i.e                         ; 2 uses
  %.not.i152 = icmp eq i64 %i.f, 0
  br i1 %.not.i152, label %ma_copy_memory_64.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i155 = phi ptr [ %i.h, %.lr.ph ], [ %0, %bb.b ] ; 2 uses
  %.011.i154 = phi i64 [ %i.g, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.012.i153 = phi ptr [ %i.i, %.lr.ph ], [ %2, %bb.b ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.011.i154, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i155, ptr noundef nonnull align 1 dereferenceable(1) %.012.i153, i64 %spec.store.select.i, i1 false)
  %i.g = sub nuw i64 %.011.i154, %spec.store.select.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i155, i64 %spec.store.select.i
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i153, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %ma_copy_memory_64.exit, label %.lr.ph, !llvm.loop !12

bb.c:                                             ; preds = %bb.a
  switch i32 %3, label %ma_copy_memory_64.exit [
    i32 1, label %bb.d
    i32 2, label %bb.i
    i32 3, label %bb.n
    i32 4, label %bb.s
    i32 5, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  switch i32 %1, label %ma_copy_memory_64.exit [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %.not.i92 = icmp eq i64 %4, 0
  br i1 %.not.i92, label %ma_copy_memory_64.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check315 = icmp ult i64 %4, 4
  br i1 %min.iters.check315, label %.lr.ph.i.preheader, label %vector.memcheck308

vector.memcheck308:                               ; preds = %iter.check
  %i.j = shl i64 %4, 1
  %scevgep309 = getelementptr i8, ptr %0, i64 %i.j
  %scevgep310 = getelementptr i8, ptr %2, i64 %4
  %bound0311 = icmp ult ptr %0, %scevgep310
  %bound1312 = icmp ult ptr %2, %scevgep309
  %found.conflict313 = and i1 %bound0311, %bound1312
  br i1 %found.conflict313, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck308
  %min.iters.check316 = icmp ult i64 %4, 16
  br i1 %min.iters.check316, label %vec.epilog.ph, label %vector.ph317

vector.ph317:                                     ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %4, 12
  %n.vec318 = and i64 %4, -16                     ; 4 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.ph317, %vector.body319
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next323, %vector.body319 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %index320 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load321 = load <8 x i8>, ptr %i.l, align 1, !tbaa !119, !alias.scope !1626
  %wide.load322 = load <8 x i8>, ptr %i.m, align 1, !tbaa !119, !alias.scope !1626
  %i.n = zext <8 x i8> %wide.load321 to <8 x i16>
  %i.o = zext <8 x i8> %wide.load322 to <8 x i16>
  %i.p = shl nuw <8 x i16> %i.n, splat (i16 8)
  %i.q = shl nuw <8 x i16> %i.o, splat (i16 8)
  %i.r = xor <8 x i16> %i.p, splat (i16 -32768)
  %i.s = xor <8 x i16> %i.q, splat (i16 -32768)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index320 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %i.r, ptr %i.t, align 2, !tbaa !122, !alias.scope !1627, !noalias !1626
  store <8 x i16> %i.s, ptr %i.u, align 2, !tbaa !122, !alias.scope !1627, !noalias !1626
  %index.next323 = add nuw i64 %index320, 16      ; 2 uses
  %i.v = icmp eq i64 %index.next323, %n.vec318
  br i1 %i.v, label %middle.block324, label %vector.body319, !llvm.loop !1593

middle.block324:                                  ; preds = %vector.body319
  %cmp.n325 = icmp eq i64 %4, %n.vec318
  br i1 %cmp.n325, label %ma_copy_memory_64.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block324
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec318, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec326 = and i64 %4, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index327 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next329, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %index327
  %wide.load328 = load <4 x i8>, ptr %i.w, align 1, !tbaa !119, !alias.scope !1626
  %i.x = zext <4 x i8> %wide.load328 to <4 x i16>
  %i.y = shl nuw <4 x i16> %i.x, splat (i16 8)
  %i.z = xor <4 x i16> %i.y, splat (i16 -32768)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index327
  store <4 x i16> %i.z, ptr %i.aa, align 2, !tbaa !122, !alias.scope !1627, !noalias !1626
  %index.next329 = add nuw i64 %index327, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next329, %n.vec326
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1594

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n330 = icmp eq i64 %4, %n.vec326
  br i1 %cmp.n330, label %ma_copy_memory_64.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck308, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i7.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck308 ], [ %n.vec318, %vec.epilog.iter.check ], [ %n.vec326, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter372 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i7.i.prol = phi i64 [ %i.ai, %.lr.ph.i.prol ], [ %.0.i7.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i7.i.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %i.ae = zext i8 %i.ad to i16
  %i.af = shl nuw i16 %i.ae, 8
  %i.ag = xor i16 %i.af, -32768
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.i7.i.prol
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !122
  %i.ai = add nuw i64 %.0.i7.i.prol, 1            ; 2 uses
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1595

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i7.i.unr = phi i64 [ %.0.i7.i.ph, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = sub i64 %.0.i7.i.ph, %4
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %ma_copy_memory_64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i7.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.0.i7.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i7.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !119
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = xor i16 %i.ao, -32768
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.i7.i
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !122
  %i.ar = add nuw i64 %.0.i7.i, 1                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !119
  %i.au = zext i8 %i.at to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = xor i16 %i.av, -32768
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ar
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !122
  %i.ay = add nuw i64 %.0.i7.i, 2                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !119
  %i.bb = zext i8 %i.ba to i16
  %i.bc = shl nuw i16 %i.bb, 8
  %i.bd = xor i16 %i.bc, -32768
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ay
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !122
  %i.bf = add nuw i64 %.0.i7.i, 3                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !119
  %i.bi = zext i8 %i.bh to i16
  %i.bj = shl nuw i16 %i.bi, 8
  %i.bk = xor i16 %i.bj, -32768
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bf
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !122
  %i.bm = add nuw i64 %.0.i7.i, 4                 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bm, %4
  br i1 %exitcond.not.i.3, label %ma_copy_memory_64.exit, label %.lr.ph.i, !llvm.loop !1596

bb.f:                                             ; preds = %bb.d
  %.not.i93 = icmp eq i64 %4, 0
  br i1 %.not.i93, label %ma_copy_memory_64.exit, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %bb.f
  %xtraiter367 = and i64 %4, 1
  %i.bn = icmp eq i64 %4, 1
  br i1 %i.bn, label %.lr.ph.i94.epil.preheader, label %.lr.ph.i94.preheader.new

.lr.ph.i94.preheader.new:                         ; preds = %.lr.ph.i94.preheader
  %unroll_iter370 = and i64 %4, -2
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94, %.lr.ph.i94.preheader.new
  %.0.i7.i95 = phi i64 [ 0, %.lr.ph.i94.preheader.new ], [ %i.cd, %.lr.ph.i94 ] ; 4 uses
  %niter371 = phi i64 [ 0, %.lr.ph.i94.preheader.new ], [ %niter371.next.1, %.lr.ph.i94 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i7.i95
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !119
  %i.bq = xor i8 %i.bp, -128
  %i.br = mul i64 %.0.i7.i95, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 3 uses
  store i8 0, ptr %i.bs, align 1, !tbaa !119
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !119
  %i.bu = getelementptr i8, ptr %i.bs, i64 2
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !119
  %i.bv = or disjoint i64 %.0.i7.i95, 1           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !119
  %i.by = xor i8 %i.bx, -128
  %i.bz = mul i64 %i.bv, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 3 uses
  store i8 0, ptr %i.ca, align 1, !tbaa !119
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 0, ptr %i.cb, align 1, !tbaa !119
  %i.cc = getelementptr i8, ptr %i.ca, i64 2
  store i8 %i.by, ptr %i.cc, align 1, !tbaa !119
  %i.cd = add nuw i64 %.0.i7.i95, 2               ; 2 uses
  %niter371.next.1 = add nuw i64 %niter371, 2     ; 2 uses
  %niter371.ncmp.1 = icmp eq i64 %niter371.next.1, %unroll_iter370
  br i1 %niter371.ncmp.1, label %ma_copy_memory_64.exit.loopexit333.unr-lcssa, label %.lr.ph.i94, !llvm.loop !18

bb.g:                                             ; preds = %bb.d
  %.not.i97 = icmp eq i64 %4, 0
  br i1 %.not.i97, label %ma_copy_memory_64.exit, label %.lr.ph.i98.preheader

.lr.ph.i98.preheader:                             ; preds = %bb.g
  %min.iters.check297 = icmp ult i64 %4, 8
  br i1 %min.iters.check297, label %.lr.ph.i98.preheader334, label %vector.memcheck290

vector.memcheck290:                               ; preds = %.lr.ph.i98.preheader
  %i.ce = shl i64 %4, 2
  %scevgep291 = getelementptr i8, ptr %0, i64 %i.ce
  %scevgep292 = getelementptr i8, ptr %2, i64 %4
  %bound0293 = icmp ult ptr %0, %scevgep292
  %bound1294 = icmp ult ptr %2, %scevgep291
  %found.conflict295 = and i1 %bound0293, %bound1294
  br i1 %found.conflict295, label %.lr.ph.i98.preheader334, label %vector.ph298

vector.ph298:                                     ; preds = %vector.memcheck290
  %n.vec299 = and i64 %4, -8                      ; 3 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next304, %vector.body300 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %index301 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load302 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !119, !alias.scope !1628
  %wide.load303 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !119, !alias.scope !1628
  %i.ch = zext <4 x i8> %wide.load302 to <4 x i32>
  %i.ci = zext <4 x i8> %wide.load303 to <4 x i32>
  %i.cj = shl nuw <4 x i32> %i.ch, splat (i32 24)
  %i.ck = shl nuw <4 x i32> %i.ci, splat (i32 24)
  %i.cl = xor <4 x i32> %i.cj, splat (i32 -2147483648)
  %i.cm = xor <4 x i32> %i.ck, splat (i32 -2147483648)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index301 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> %i.cl, ptr %i.cn, align 4, !tbaa !118, !alias.scope !1629, !noalias !1628
  store <4 x i32> %i.cm, ptr %i.co, align 4, !tbaa !118, !alias.scope !1629, !noalias !1628
  %index.next304 = add nuw i64 %index301, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.cp, label %middle.block305, label %vector.body300, !llvm.loop !1600

middle.block305:                                  ; preds = %vector.body300
  %cmp.n306 = icmp eq i64 %4, %n.vec299
  br i1 %cmp.n306, label %ma_copy_memory_64.exit, label %.lr.ph.i98.preheader334

.lr.ph.i98.preheader334:                          ; preds = %vector.memcheck290, %.lr.ph.i98.preheader, %middle.block305
  %.0.i7.i99.ph = phi i64 [ 0, %vector.memcheck290 ], [ 0, %.lr.ph.i98.preheader ], [ %n.vec299, %middle.block305 ] ; 3 uses
  %xtraiter365 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i98.prol.loopexit, label %.lr.ph.i98.prol

.lr.ph.i98.prol:                                  ; preds = %.lr.ph.i98.preheader334, %.lr.ph.i98.prol
  %.0.i7.i99.prol = phi i64 [ %i.cw, %.lr.ph.i98.prol ], [ %.0.i7.i99.ph, %.lr.ph.i98.preheader334 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i98.prol ], [ 0, %.lr.ph.i98.preheader334 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i7.i99.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !119
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 24
  %i.cu = xor i32 %i.ct, -2147483648
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.i7.i99.prol
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !118
  %i.cw = add nuw i64 %.0.i7.i99.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter365
  br i1 %prol.iter.cmp.not, label %.lr.ph.i98.prol.loopexit, label %.lr.ph.i98.prol, !llvm.loop !1601

.lr.ph.i98.prol.loopexit:                         ; preds = %.lr.ph.i98.prol, %.lr.ph.i98.preheader334
  %.0.i7.i99.unr = phi i64 [ %.0.i7.i99.ph, %.lr.ph.i98.preheader334 ], [ %i.cw, %.lr.ph.i98.prol ]
  %i.cx = sub i64 %.0.i7.i99.ph, %4
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %ma_copy_memory_64.exit, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.prol.loopexit, %.lr.ph.i98
  %.0.i7.i99 = phi i64 [ %i.ea, %.lr.ph.i98 ], [ %.0.i7.i99.unr, %.lr.ph.i98.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i7.i99
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !119
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 24
  %i.dd = xor i32 %i.dc, -2147483648
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.i7.i99
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !118
  %i.df = add nuw i64 %.0.i7.i99, 1               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !119
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw i32 %i.di, 24
  %i.dk = xor i32 %i.dj, -2147483648
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !118
  %i.dm = add nuw i64 %.0.i7.i99, 2               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !119
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 24
  %i.dr = xor i32 %i.dq, -2147483648
end_hunk_8
begin_hunk_9_@ma_channel_converter_process_pcm_frames:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %.0107154.i
  %.pre202.i = load i8, ptr %i.hi, align 1, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph152.i
  %indvars.iv196.i = phi i64 [ 0, %.lr.ph152.i ], [ %indvars.iv.next197.i, %bb.j ] ; 2 uses
  %i.hj = phi i32 [ %i.hh, %.lr.ph152.i ], [ %i.ho, %bb.j ]
  %i.hk = zext i32 %i.hj to i64
  %i.hl = mul i64 %.0107154.i, %i.hk
  %i.hm = getelementptr i8, ptr %1, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 %indvars.iv196.i
  store i8 %.pre202.i, ptr %i.hn, align 1, !tbaa !119
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %i.ho = load i32, ptr %i.he, align 8, !tbaa !555 ; 3 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign ult i64 %indvars.iv.next197.i, %i.hp
  br i1 %i.hq, label %bb.j, label %._crit_edge153.i, !llvm.loop !2098

._crit_edge153.i:                                 ; preds = %bb.j, %.preheader.i49
  %i.hr = phi i32 [ 0, %.preheader.i49 ], [ %i.ho, %bb.j ] ; 2 uses
  %i.hs = or disjoint i64 %.0107154.i, 1          ; 2 uses
  %.not168.i.1 = icmp eq i32 %i.hr, 0
  br i1 %.not168.i.1, label %._crit_edge153.i.1, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %._crit_edge153.i
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 %i.hs
  %.pre202.i.1 = load i8, ptr %i.ht, align 1, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph152.i.1
  %indvars.iv196.i.1 = phi i64 [ 0, %.lr.ph152.i.1 ], [ %indvars.iv.next197.i.1, %bb.k ] ; 2 uses
  %i.hu = phi i32 [ %i.hr, %.lr.ph152.i.1 ], [ %i.hz, %bb.k ]
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul i64 %i.hs, %i.hv
  %i.hx = getelementptr i8, ptr %1, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 %indvars.iv196.i.1
  store i8 %.pre202.i.1, ptr %i.hy, align 1, !tbaa !119
  %indvars.iv.next197.i.1 = add nuw nsw i64 %indvars.iv196.i.1, 1 ; 2 uses
  %i.hz = load i32, ptr %i.he, align 8, !tbaa !555 ; 3 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = icmp samesign ult i64 %indvars.iv.next197.i.1, %i.ia
  br i1 %i.ib, label %bb.k, label %._crit_edge153.i.1, !llvm.loop !2098

._crit_edge153.i.1:                               ; preds = %bb.k, %._crit_edge153.i
  %i.ic = phi i32 [ 0, %._crit_edge153.i ], [ %i.hz, %bb.k ] ; 2 uses
  %i.id = add nuw i64 %.0107154.i, 2              ; 2 uses
  %niter402.next.1 = add nuw i64 %niter402, 2     ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %ma_zero_memory_64.exit.loopexit378.unr-lcssa, label %.preheader.i49, !llvm.loop !2099

bb.l:                                             ; preds = %bb.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !555 ; 5 uses
  %i.ig = icmp eq i32 %i.if, 2
  %.not165.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %i.ig, label %.preheader118.i, label %.preheader121.i

.preheader121.i:                                  ; preds = %bb.l
  br i1 %.not165.i, label %ma_zero_memory_64.exit, label %.preheader120.lr.ph.i

.preheader120.lr.ph.i:                            ; preds = %.preheader121.i
  %.not164.i = icmp eq i32 %i.if, 0
  %i.ih = zext i32 %i.if to i64                   ; 7 uses
  br i1 %.not164.i, label %ma_zero_memory_64.exit, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader120.lr.ph.i
  %min.iters.check255 = icmp ult i32 %i.if, 4
  %min.iters.check256 = icmp ult i32 %i.if, 16
  %i.ii = and i64 %i.ih, 12
  %n.vec258 = and i64 %i.ih, 4294967280           ; 4 uses
  %cmp.n265 = icmp eq i64 %n.vec258, %i.ih
  %min.epilog.iters.check = icmp eq i64 %i.ii, 0
  %n.vec266 = and i64 %i.ih, 4294967292           ; 3 uses
  %cmp.n271 = icmp eq i64 %n.vec266, %i.ih
  br label %iter.check

.preheader118.i:                                  ; preds = %bb.l
  br i1 %.not165.i, label %ma_zero_memory_64.exit, label %.lr.ph150.i.preheader

.lr.ph150.i.preheader:                            ; preds = %.preheader118.i
  %min.iters.check280 = icmp ult i64 %3, 12
  br i1 %min.iters.check280, label %.lr.ph150.i.preheader380, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.lr.ph150.i.preheader
  %i.ij = shl i64 %3, 2
  %scevgep274 = getelementptr i8, ptr %1, i64 %i.ij
  %i.ik = shl i64 %3, 1
  %scevgep275 = getelementptr i8, ptr %2, i64 %i.ik
  %bound0276 = icmp ult ptr %1, %scevgep275
  %bound1277 = icmp ult ptr %2, %scevgep274
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %.lr.ph150.i.preheader380, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck273
  %n.vec282 = and i64 %3, -8                      ; 3 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next289, %vector.body283 ] ; 4 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index284 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %wide.load285 = load <4 x i16>, ptr %i.il, align 2, !tbaa !122, !alias.scope !2138
  %wide.load286 = load <4 x i16>, ptr %i.im, align 2, !tbaa !122, !alias.scope !2138
  %i.in = shl i64 %index284, 2
  %i.io = shl i64 %index284, 2
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %i.in
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %i.io
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %interleaved.vec287 = shufflevector <4 x i16> %wide.load285, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec287, ptr %i.ip, align 2, !tbaa !122, !alias.scope !2139, !noalias !2138
  %interleaved.vec288 = shufflevector <4 x i16> %wide.load286, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec288, ptr %i.ir, align 2, !tbaa !122, !alias.scope !2139, !noalias !2138
  %index.next289 = add nuw i64 %index284, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.is, label %middle.block290, label %vector.body283, !llvm.loop !2103

middle.block290:                                  ; preds = %vector.body283
  %cmp.n291 = icmp eq i64 %3, %n.vec282
  br i1 %cmp.n291, label %ma_zero_memory_64.exit, label %.lr.ph150.i.preheader380

.lr.ph150.i.preheader380:                         ; preds = %vector.memcheck273, %.lr.ph150.i.preheader, %middle.block290
  %.1149.i.ph = phi i64 [ 0, %vector.memcheck273 ], [ 0, %.lr.ph150.i.preheader ], [ %n.vec282, %middle.block290 ] ; 3 uses
  %xtraiter393 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph150.i.prol.loopexit, label %.lr.ph150.i.prol

.lr.ph150.i.prol:                                 ; preds = %.lr.ph150.i.preheader380, %.lr.ph150.i.prol
  %.1149.i.prol = phi i64 [ %i.ix, %.lr.ph150.i.prol ], [ %.1149.i.ph, %.lr.ph150.i.preheader380 ] ; 3 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %.lr.ph150.i.prol ], [ 0, %.lr.ph150.i.preheader380 ]
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.1149.i.prol
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !122 ; 2 uses
  %.idx116.i.prol = shl i64 %.1149.i.prol, 2
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.i.prol ; 2 uses
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !122
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  store i16 %i.iu, ptr %i.iw, align 2, !tbaa !122
  %i.ix = add nuw i64 %.1149.i.prol, 1            ; 2 uses
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %.lr.ph150.i.prol.loopexit, label %.lr.ph150.i.prol, !llvm.loop !2104

.lr.ph150.i.prol.loopexit:                        ; preds = %.lr.ph150.i.prol, %.lr.ph150.i.preheader380
  %.1149.i.unr = phi i64 [ %.1149.i.ph, %.lr.ph150.i.preheader380 ], [ %i.ix, %.lr.ph150.i.prol ]
  %i.iy = sub i64 %.1149.i.ph, %3
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %ma_zero_memory_64.exit, label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.prol.loopexit, %.lr.ph150.i
  %.1149.i = phi i64 [ %i.jt, %.lr.ph150.i ], [ %.1149.i.unr, %.lr.ph150.i.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.1149.i
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !122 ; 2 uses
  %.idx116.i = shl i64 %.1149.i, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.i ; 2 uses
  store i16 %i.jb, ptr %i.jc, align 2, !tbaa !122
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i16 %i.jb, ptr %i.jd, align 2, !tbaa !122
  %i.je = add nuw i64 %.1149.i, 1                 ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !122 ; 2 uses
  %.idx116.i.1 = shl i64 %i.je, 2
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.i.1 ; 2 uses
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !122
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i16 %i.jg, ptr %i.ji, align 2, !tbaa !122
  %i.jj = add nuw i64 %.1149.i, 2                 ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !122 ; 2 uses
  %.idx116.i.2 = shl i64 %i.jj, 2
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.i.2 ; 2 uses
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !122
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  store i16 %i.jl, ptr %i.jn, align 2, !tbaa !122
  %i.jo = add nuw i64 %.1149.i, 3                 ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !122 ; 2 uses
  %.idx116.i.3 = shl i64 %i.jo, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.i.3 ; 2 uses
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !122
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  store i16 %i.jq, ptr %i.js, align 2, !tbaa !122
  %i.jt = add nuw i64 %.1149.i, 4                 ; 2 uses
  %exitcond195.not.i46.3 = icmp eq i64 %i.jt, %3
  br i1 %exitcond195.not.i46.3, label %ma_zero_memory_64.exit, label %.lr.ph150.i, !llvm.loop !2105

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge147.i44
  %.2148.i = phi i64 [ %i.kd, %._crit_edge147.i44 ], [ 0, %iter.check.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.2148.i
  %i.jv = mul i64 %.2148.i, %i.ih
  %i.jw = getelementptr [2 x i8], ptr %1, i64 %i.jv ; 3 uses
  %.pre201.i = load i16, ptr %i.ju, align 2, !tbaa !122 ; 3 uses
  br i1 %min.iters.check255, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check256, label %vec.epilog.ph, label %vector.ph257

vector.ph257:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert259 = insertelement <8 x i16> poison, i16 %.pre201.i, i64 0
  %broadcast.splat260 = shufflevector <8 x i16> %broadcast.splatinsert259, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.ph257, %vector.body261
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next263, %vector.body261 ] ; 2 uses
  %i.jx = getelementptr [2 x i8], ptr %i.jw, i64 %index262 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 16
  store <8 x i16> %broadcast.splat260, ptr %i.jx, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat260, ptr %i.jy, align 2, !tbaa !122
  %index.next263 = add nuw i64 %index262, 16      ; 2 uses
  %i.jz = icmp eq i64 %index.next263, %n.vec258
  br i1 %i.jz, label %middle.block264, label %vector.body261, !llvm.loop !2106

middle.block264:                                  ; preds = %vector.body261
  br i1 %cmp.n265, label %._crit_edge147.i44, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block264
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec258, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert267 = insertelement <4 x i16> poison, i16 %.pre201.i, i64 0
  %broadcast.splat268 = shufflevector <4 x i16> %broadcast.splatinsert267, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index269 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next270, %vec.epilog.vector.body ] ; 2 uses
  %i.ka = getelementptr [2 x i8], ptr %i.jw, i64 %index269
  store <4 x i16> %broadcast.splat268, ptr %i.ka, align 2, !tbaa !122
  %index.next270 = add nuw i64 %index269, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next270, %n.vec266
  br i1 %i.kb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n271, label %._crit_edge147.i44, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec258, %vec.epilog.iter.check ], [ %n.vec266, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %vec.epilog.scalar.ph ], [ %indvars.iv189.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.kc = getelementptr [2 x i8], ptr %i.jw, i64 %indvars.iv189.i
  store i16 %.pre201.i, ptr %i.kc, align 2, !tbaa !122
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %i.ih
  br i1 %exitcond193.not.i, label %._crit_edge147.i44, label %vec.epilog.scalar.ph, !llvm.loop !2108

._crit_edge147.i44:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block264
  %i.kd = add nuw i64 %.2148.i, 1                 ; 2 uses
  %exitcond194.not.i45 = icmp eq i64 %i.kd, %3
  br i1 %exitcond194.not.i45, label %ma_zero_memory_64.exit, label %iter.check, !llvm.loop !2109

.preheader123.i:                                  ; preds = %.preheader123.lr.ph.i, %._crit_edge143.i
  %i.ke = phi i32 [ %i.kx, %._crit_edge143.i ], [ %i.hd, %.preheader123.lr.ph.i ] ; 2 uses
  %.3144.i = phi i64 [ %i.ky, %._crit_edge143.i ], [ 0, %.preheader123.lr.ph.i ] ; 3 uses
  %.not162.i = icmp eq i32 %i.ke, 0
  br i1 %.not162.i, label %._crit_edge143.i, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %.preheader123.i
  %i.kf = mul i64 %.3144.i, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 %i.kf ; 3 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 1
  %i.ki = getelementptr i8, ptr %i.kg, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph142.i
  %indvars.iv185.i = phi i64 [ 0, %.lr.ph142.i ], [ %indvars.iv.next186.i, %bb.m ] ; 2 uses
  %i.kj = phi i32 [ %i.ke, %.lr.ph142.i ], [ %i.ku, %bb.m ]
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul i64 %.3144.i, %i.kk
  %i.km = add i64 %i.kl, %indvars.iv185.i
  %i.kn = load i8, ptr %i.kg, align 1, !tbaa !119
  %i.ko = mul i64 %i.km, 3
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ko ; 3 uses
  store i8 %i.kn, ptr %i.kp, align 1, !tbaa !119
  %i.kq = load i8, ptr %i.kh, align 1, !tbaa !119
  %i.kr = getelementptr i8, ptr %i.kp, i64 1
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !119
  %i.ks = load i8, ptr %i.ki, align 1, !tbaa !119
  %i.kt = getelementptr i8, ptr %i.kp, i64 2
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !119
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %i.ku = load i32, ptr %i.hc, align 8, !tbaa !555 ; 3 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = icmp samesign ult i64 %indvars.iv.next186.i, %i.kv
  br i1 %i.kw, label %bb.m, label %._crit_edge143.i, !llvm.loop !2110

._crit_edge143.i:                                 ; preds = %bb.m, %.preheader123.i
  %i.kx = phi i32 [ 0, %.preheader123.i ], [ %i.ku, %bb.m ]
  %i.ky = add nuw i64 %.3144.i, 1                 ; 2 uses
  %exitcond188.not.i43 = icmp eq i64 %i.ky, %3
  br i1 %exitcond188.not.i43, label %ma_zero_memory_64.exit, label %.preheader123.i, !llvm.loop !2111

.preheader126.i:                                  ; preds = %._crit_edge139.i.1, %.preheader126.i.preheader.new
  %i.kz = phi i32 [ %i.ha, %.preheader126.i.preheader.new ], [ %i.lu, %._crit_edge139.i.1 ] ; 2 uses
  %.4140.i = phi i64 [ 0, %.preheader126.i.preheader.new ], [ %i.lv, %._crit_edge139.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader126.i.preheader.new ], [ %niter.next.1, %._crit_edge139.i.1 ]
  %.not159.i = icmp eq i32 %i.kz, 0
  br i1 %.not159.i, label %._crit_edge139.i, label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %.preheader126.i
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.4140.i
  %.pre200.i = load i32, ptr %i.la, align 4, !tbaa !118
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph138.i
  %indvars.iv181.i = phi i64 [ 0, %.lr.ph138.i ], [ %indvars.iv.next182.i, %bb.n ] ; 2 uses
  %i.lb = phi i32 [ %i.kz, %.lr.ph138.i ], [ %i.lg, %bb.n ]
  %i.lc = zext i32 %i.lb to i64
  %i.ld = mul i64 %.4140.i, %i.lc
  %i.le = getelementptr [4 x i8], ptr %1, i64 %i.ld
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %indvars.iv181.i
  store i32 %.pre200.i, ptr %i.lf, align 4, !tbaa !118
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %i.lg = load i32, ptr %i.gz, align 8, !tbaa !555 ; 3 uses
  %i.lh = zext i32 %i.lg to i64
  %i.li = icmp samesign ult i64 %indvars.iv.next182.i, %i.lh
  br i1 %i.li, label %bb.n, label %._crit_edge139.i, !llvm.loop !2112

._crit_edge139.i:                                 ; preds = %bb.n, %.preheader126.i
  %i.lj = phi i32 [ 0, %.preheader126.i ], [ %i.lg, %bb.n ] ; 2 uses
  %i.lk = or disjoint i64 %.4140.i, 1             ; 2 uses
  %.not159.i.1 = icmp eq i32 %i.lj, 0
  br i1 %.not159.i.1, label %._crit_edge139.i.1, label %.lr.ph138.i.1

.lr.ph138.i.1:                                    ; preds = %._crit_edge139.i
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lk
  %.pre200.i.1 = load i32, ptr %i.ll, align 4, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph138.i.1
  %indvars.iv181.i.1 = phi i64 [ 0, %.lr.ph138.i.1 ], [ %indvars.iv.next182.i.1, %bb.o ] ; 2 uses
  %i.lm = phi i32 [ %i.lj, %.lr.ph138.i.1 ], [ %i.lr, %bb.o ]
  %i.ln = zext i32 %i.lm to i64
  %i.lo = mul i64 %i.lk, %i.ln
  %i.lp = getelementptr [4 x i8], ptr %1, i64 %i.lo
  %i.lq = getelementptr [4 x i8], ptr %i.lp, i64 %indvars.iv181.i.1
  store i32 %.pre200.i.1, ptr %i.lq, align 4, !tbaa !118
  %indvars.iv.next182.i.1 = add nuw nsw i64 %indvars.iv181.i.1, 1 ; 2 uses
  %i.lr = load i32, ptr %i.gz, align 8, !tbaa !555 ; 3 uses
  %i.ls = zext i32 %i.lr to i64
  %i.lt = icmp samesign ult i64 %indvars.iv.next182.i.1, %i.ls
  br i1 %i.lt, label %bb.o, label %._crit_edge139.i.1, !llvm.loop !2112

._crit_edge139.i.1:                               ; preds = %bb.o, %._crit_edge139.i
  %i.lu = phi i32 [ 0, %._crit_edge139.i ], [ %i.lr, %bb.o ] ; 2 uses
  %i.lv = add nuw i64 %.4140.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_zero_memory_64.exit.loopexit385.unr-lcssa, label %.preheader126.i, !llvm.loop !2113

bb.p:                                             ; preds = %bb.i
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !555 ; 4 uses
  %i.ly = icmp eq i32 %i.lx, 2
  %.not156.i34 = icmp eq i64 %3, 0                ; 2 uses
  br i1 %i.ly, label %.preheader129.i, label %.preheader132.i

.preheader132.i:                                  ; preds = %bb.p
  br i1 %.not156.i34, label %ma_zero_memory_64.exit, label %.preheader131.lr.ph.i

.preheader131.lr.ph.i:                            ; preds = %.preheader132.i
  %.not155.i35 = icmp eq i32 %i.lx, 0
  %i.lz = zext i32 %i.lx to i64                   ; 4 uses
  br i1 %.not155.i35, label %ma_zero_memory_64.exit, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %.preheader131.lr.ph.i
  %min.iters.check = icmp ult i32 %i.lx, 8
  %n.vec = and i64 %i.lz, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lz
  br label %.preheader131.i

.preheader129.i:                                  ; preds = %bb.p
  br i1 %.not156.i34, label %ma_zero_memory_64.exit, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %.preheader129.i
  %min.iters.check243 = icmp ult i64 %3, 10
  br i1 %min.iters.check243, label %.lr.ph.i40.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.preheader
  %i.ma = shl i64 %3, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.ma
  %i.mb = shl i64 %3, 2
  %scevgep241 = getelementptr i8, ptr %2, i64 %i.mb
  %bound0 = icmp ult ptr %1, %scevgep241
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.preheader387, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck
  %n.vec245 = and i64 %3, -4                      ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next250, %vector.body246 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index247 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %wide.load = load <2 x float>, ptr %i.mc, align 4, !tbaa !349, !alias.scope !2140
  %wide.load248 = load <2 x float>, ptr %i.md, align 4, !tbaa !349, !alias.scope !2140
  %i.me = shl i64 %index247, 3
  %i.mf = shl i64 %index247, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf
end_hunk_9
begin_hunk_10_@ma_dr_wav_read_pcm_frames_f32:bb.a
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph.i.i72.epil

.lr.ph.i.i72.epil:                                ; preds = %.lr.ph.i.i72.epil, %.lr.ph.i.i72.epil.preheader
  %.012.i.i73.epil = phi i64 [ %i.rd, %.lr.ph.i.i72.epil ], [ %.012.i.i73.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %.0811.i.i74.epil = phi ptr [ %i.rc, %.lr.ph.i.i72.epil ], [ %.0811.i.i74.epil.init, %.lr.ph.i.i72.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i72.epil ], [ 0, %.lr.ph.i.i72.epil.preheader ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.012.i.i73.epil
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !119
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_wav_gMulawTable, i64 %i.qx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !122
  %i.ra = sitofp i16 %i.qz to float
  %i.rb = fmul nnan float %i.ra, f0x38000000
  %i.rc = getelementptr inbounds nuw i8, ptr %.0811.i.i74.epil, i64 4
  store float %i.rb, ptr %.0811.i.i74.epil, align 4, !tbaa !349
  %i.rd = add nuw nsw i64 %.012.i.i73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i76, label %.lr.ph.i.i72.epil, !llvm.loop !2225

.loopexit.i76:                                    ; preds = %.loopexit.i76.loopexit.unr-lcssa, %.lr.ph.i.i72.epil, %bb.aw
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.03046.i68, i64 %i.ph
  %i.rf = sub i64 %.03245.i69, %i.pd              ; 2 uses
  %i.rg = add i64 %i.pd, %.02947.i67              ; 2 uses
  %.not39.i77 = icmp eq i64 %i.rf, 0
  br i1 %.not39.i77, label %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, label %bb.au

ma_dr_wav_read_pcm_frames_f32__mulaw.exit:        ; preds = %bb.au, %bb.av, %.loopexit.i76, %bb.as, %bb.at
  %.034.i65 = phi i64 [ 0, %bb.at ], [ 0, %bb.as ], [ %.02947.i67, %bb.au ], [ %i.rg, %.loopexit.i76 ], [ %.02947.i67, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.f, %bb.a, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit, %ma_dr_wav_read_pcm_frames_f32__alaw.exit, %ma_dr_wav_read_pcm_frames_f32__ieee.exit, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, %ma_dr_wav_read_pcm_frames_f32__pcm.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %.035.i, %ma_dr_wav_read_pcm_frames_f32__pcm.exit ], [ %.019.lcssa.i, %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit ], [ %.040.i, %ma_dr_wav_read_pcm_frames_f32__ieee.exit ], [ %.034.i, %ma_dr_wav_read_pcm_frames_f32__alaw.exit ], [ %.034.i65, %ma_dr_wav_read_pcm_frames_f32__mulaw.exit ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 9 uses
  %i.d = alloca [4096 x i8], align 16             ; 20 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !692  ; 10 uses
  %i.k = zext i16 %i.j to i64
  %i.l = mul i64 %1, %i.k
  %i.m = and i64 %i.l, 9223372034707292160
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc87 = zext i16 %i.j to i32
  %i.n = udiv i32 2147483647, %.rhs.trunc87
  %.zext88 = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033 = phi i64 [ %.zext88, %bb.e ], [ %1, %bb.d ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = load i16, ptr %i.o, align 4, !tbaa !693
  switch i16 %i.p, label %bb.az [
    i16 1, label %bb.g
    i16 3, label %bb.t
    i16 6, label %bb.ah
    i16 7, label %bb.ap
    i16 2, label %bb.ax
    i16 17, label %bb.ay
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.r = load i16, ptr %i.q, align 2, !tbaa !694  ; 2 uses
  %i.s = icmp eq i16 %i.r, 16
  br i1 %i.s, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.g
  %i.t = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.033, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.g
  %i.u = zext i16 %i.r to i32                     ; 2 uses
  %i.v = and i32 %i.u, 7
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.y = load i16, ptr %i.x, align 2, !tbaa !695
  %i.z = zext i16 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, %i.u
  %i.ab = lshr exact i32 %i.aa, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !696
  %i.ae = zext i16 %i.ad to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i
  %i.af = zext i16 %i.j to i32                    ; 3 uses
  %i.ag = udiv i32 %.0.i.i, %i.af                 ; 5 uses
  %i.ah = urem i32 %.0.i.i, %i.af
  %i.ai = icmp samesign uge i32 %.0.i.i, %i.af
  %.not.i = icmp eq i32 %i.ah, 0
  %or.cond220 = and i1 %i.ai, %.not.i
  br i1 %or.cond220, label %.preheader.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.j
  %i.aj = udiv i32 4096, %.0.i.i
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.am = icmp samesign ugt i32 %i.ag, 8
  %i.an = shl nuw nsw i32 %i.ag, 3
  %i.ao = sub nuw nsw i32 64, %i.an               ; 2 uses
  %xtraiter208 = and i64 %i.al, 3                 ; 3 uses
  %i.ap = add nsw i32 %i.ag, -1
  %i.aq = icmp ult i32 %i.ap, 3
  %unroll_iter213 = and i64 %i.al, 12
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod212 = icmp ne i64 %xtraiter208, 0
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.ge, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.gc, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %.033, %.preheader.i ], [ %i.gd, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ak)
  %i.ar = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i16, ptr %i.i, align 8, !tbaa !692
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = mul i64 %i.ar, %i.au                    ; 25 uses
  %i.aw = mul i64 %i.av, %i.al
  %i.ax = icmp ugt i64 %i.aw, 4096
  br i1 %i.ax, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.ag, label %bb.q [
    i32 1, label %bb.n
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.o
    i32 4, label %bb.p
  ]

.preheader51.i.i:                                 ; preds = %bb.m
  %.not.i49.i = icmp eq i64 %i.av, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.ay = shl i64 %i.ar, 1
  %i.az = mul i64 %i.ay, %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.az, i1 false), !tbaa !122
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check152 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check152, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.av, 12
  %n.vec155 = and i64 %i.av, -16                  ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %index157 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load158 = load <8 x i8>, ptr %i.bb, align 16, !tbaa !119
  %wide.load159 = load <8 x i8>, ptr %i.bc, align 8, !tbaa !119
  %i.bd = zext <8 x i8> %wide.load158 to <8 x i16>
  %i.be = zext <8 x i8> %wide.load159 to <8 x i16>
  %i.bf = shl nuw <8 x i16> %i.bd, splat (i16 8)
  %i.bg = shl nuw <8 x i16> %i.be, splat (i16 8)
  %i.bh = xor <8 x i16> %i.bf, splat (i16 -32768)
  %i.bi = xor <8 x i16> %i.bg, splat (i16 -32768)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index157 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <8 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !122
  store <8 x i16> %i.bi, ptr %i.bk, align 2, !tbaa !122
  %index.next160 = add nuw i64 %index157, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.bl, label %middle.block161, label %vector.body156, !llvm.loop !2226

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.av, %n.vec155
  br i1 %cmp.n162, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec155, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.av, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %index164
  %wide.load165 = load <4 x i8>, ptr %i.bm, align 4, !tbaa !119
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  %i.bo = shl nuw <4 x i16> %i.bn, splat (i16 8)
  %i.bp = xor <4 x i16> %i.bo, splat (i16 -32768)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index164
  store <4 x i16> %i.bp, ptr %i.bq, align 2, !tbaa !122
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.av, %n.vec163
  br i1 %cmp.n167, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.iter.check ], [ %n.vec163, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !119
  %i.bu = zext i8 %i.bt to i16
  %i.bv = shl nuw i16 %i.bu, 8
  %i.bw = xor i16 %i.bv, -32768
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !122
  %i.by = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.av
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2228

bb.o:                                             ; preds = %bb.m
  %.not.i44.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check170 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check170, label %.lr.ph.i45.i.i.preheader192, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec172 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next175, %vector.body173 ] ; 10 uses
  %i.bz = mul i64 %index174, 3
  %i.ca = mul i64 %index174, 3
  %i.cb = mul i64 %index174, 3
  %i.cc = mul i64 %index174, 3
  %i.cd = mul i64 %index174, 3
  %i.ce = mul i64 %index174, 3
  %i.cf = mul i64 %index174, 3
  %i.cg = mul i64 %index174, 3
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.ch, i64 1
  %i.cq = getelementptr i8, ptr %i.ci, i64 4
  %i.cr = getelementptr i8, ptr %i.cj, i64 7
  %i.cs = getelementptr i8, ptr %i.ck, i64 10
  %i.ct = getelementptr i8, ptr %i.cl, i64 13
  %i.cu = getelementptr i8, ptr %i.cm, i64 16
  %i.cv = getelementptr i8, ptr %i.cn, i64 19
  %i.cw = getelementptr i8, ptr %i.co, i64 22
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 4
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = load i16, ptr %i.ct, align 1
  %i.dc = load i16, ptr %i.cu, align 8
  %i.dd = load i16, ptr %i.cv, align 1
  %i.de = load i16, ptr %i.cw, align 2
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index174
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !122
  %index.next175 = add nuw i64 %index174, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next175, %n.vec172
  br i1 %i.do, label %middle.block176, label %vector.body173, !llvm.loop !2229

middle.block176:                                  ; preds = %vector.body173
  %cmp.n177 = icmp eq i64 %i.av, %n.vec172
  br i1 %cmp.n177, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader192

.lr.ph.i45.i.i.preheader192:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block176
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec172, %middle.block176 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader192, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.du, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader192 ] ; 3 uses
  %i.dp = mul i64 %.012.i.i.i, 3
  %i.dq = getelementptr i8, ptr %i.d, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !122
  %i.du = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.du, %i.av
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !2230

bb.p:                                             ; preds = %bb.m
  %.not.i47.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check180 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check180, label %.lr.ph.i48.i.i.preheader194, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec182 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index184 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load185 = load <4 x i32>, ptr %i.dv, align 16, !tbaa !118
  %wide.load186 = load <4 x i32>, ptr %i.dw, align 16, !tbaa !118
  %i.dx = lshr <4 x i32> %wide.load185, splat (i32 16)
  %i.dy = lshr <4 x i32> %wide.load186, splat (i32 16)
  %i.dz = trunc nuw <4 x i32> %i.dx to <4 x i16>
  %i.ea = trunc nuw <4 x i32> %i.dy to <4 x i16>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index184 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <4 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !122
  store <4 x i16> %i.ea, ptr %i.ec, align 2, !tbaa !122
  %index.next187 = add nuw i64 %index184, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.ed, label %middle.block188, label %vector.body183, !llvm.loop !2231

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec182
  br i1 %cmp.n189, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader194

.lr.ph.i48.i.i.preheader194:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block188
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec182, %middle.block188 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader194, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ej, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader194 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !118
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !122
  %i.ej = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ej, %i.av
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !2232

bb.q:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
end_hunk_10
begin_hunk_11_@ma_waveform_init:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !2532
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !848
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load double, ptr %i.j, align 8, !tbaa !849
  %i.l = uitofp i32 %i.i to double
  %i.m = fdiv double %i.l, %i.k
  %i.n = fdiv double 1.000000e+00, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double %i.n, ptr %i.o, align 8, !tbaa !850
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !851
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_waveform_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_waveform_set_amplitude(ptr nofree noundef writeonly captures(address_is_null) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %1, ptr %i.b, align 8, !tbaa !852
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_waveform_set_frequency(ptr nofree noundef captures(address_is_null) %0, double noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %1, ptr %i.b, align 8, !tbaa !849
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !848
  %i.e = uitofp i32 %i.d to double
  %i.f = fdiv double %i.e, %1
  %i.g = fdiv double 1.000000e+00, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.g, ptr %i.h, align 8, !tbaa !850
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_waveform_set_type(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.b, align 4, !tbaa !853
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_waveform_set_sample_rate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.b, align 8, !tbaa !848
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load double, ptr %i.c, align 8, !tbaa !849
  %i.e = uitofp i32 %1 to double
  %i.f = fdiv double %i.e, %i.d
  %i.g = fdiv double 1.000000e+00, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.g, ptr %i.h, align 8, !tbaa !850
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 -3, 1) i32 @ma_waveform_read_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #47 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !853
  switch i32 %i.d, label %bb.u [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !854  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !855  ; 9 uses
  switch i32 %i.f, label %.preheader.i [
    i32 5, label %.preheader64.i
    i32 2, label %.preheader66.i
  ]

.preheader66.i:                                   ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load double, ptr %i.j, align 8, !tbaa !852
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load double, ptr %i.l, align 8, !tbaa !850 ; 4 uses
  %i.n = zext i32 %i.h to i64                     ; 7 uses
  %.not.i = icmp eq i32 %i.h, 0
  %.promoted.i = load double, ptr %i.i, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i, label %.preheader66.split.i.preheader, label %iter.check340.preheader

iter.check340.preheader:                          ; preds = %.preheader66.i
  %min.iters.check327 = icmp ult i32 %i.h, 4
  %min.iters.check329 = icmp ult i32 %i.h, 16
  %i.o = and i64 %i.n, 12
  %n.vec331 = and i64 %i.n, 4294967280            ; 4 uses
  %cmp.n338 = icmp eq i64 %n.vec331, %i.n
  %min.epilog.iters.check343 = icmp eq i64 %i.o, 0
  %n.vec345 = and i64 %i.n, 4294967292            ; 3 uses
  %cmp.n352 = icmp eq i64 %n.vec345, %i.n
  br label %iter.check340

.preheader66.split.i.preheader:                   ; preds = %.preheader66.i
  %xtraiter423 = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %.preheader66.split.i.epil.preheader, label %.preheader66.split.i.preheader.new

.preheader66.split.i.preheader.new:               ; preds = %.preheader66.split.i.preheader
  %unroll_iter430 = and i64 %2, -2
  br label %.preheader66.split.i

iter.check340:                                    ; preds = %iter.check340.preheader, %._crit_edge.us.i
  %.15369.us.i = phi i64 [ %i.ah, %._crit_edge.us.i ], [ 0, %iter.check340.preheader ] ; 2 uses
  %i.q = phi double [ %i.ag, %._crit_edge.us.i ], [ %.promoted.i, %iter.check340.preheader ] ; 2 uses
  %i.r = fmul double %i.q, f0x401921FB54442D18
  %i.s = tail call double @sin(double noundef %i.r) #55
  %i.t = fmul double %i.k, %i.s
  %i.u = fptrunc double %i.t to float
  %i.v = fmul float %i.u, 3.276700e+04
  %i.w = fptosi float %i.v to i16                 ; 3 uses
  %i.x = mul i64 %.15369.us.i, %i.n
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.x ; 3 uses
  br i1 %min.iters.check327, label %vec.epilog.scalar.ph341.preheader, label %vector.main.loop.iter.check328

vector.main.loop.iter.check328:                   ; preds = %iter.check340
  br i1 %min.iters.check329, label %vec.epilog.ph344, label %vector.ph330

vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %broadcast.splatinsert332 = insertelement <8 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat333 = shufflevector <8 x i16> %broadcast.splatinsert332, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.ph330, %vector.body334
  %index335 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body334 ] ; 2 uses
  %i.z = getelementptr [2 x i8], ptr %i.y, i64 %index335 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <8 x i16> %broadcast.splat333, ptr %i.z, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat333, ptr %i.aa, align 2, !tbaa !122
  %index.next336 = add nuw i64 %index335, 16      ; 2 uses
  %i.ab = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ab, label %middle.block337, label %vector.body334, !llvm.loop !2533

middle.block337:                                  ; preds = %vector.body334
  br i1 %cmp.n338, label %._crit_edge.us.i, label %vec.epilog.iter.check342

vec.epilog.iter.check342:                         ; preds = %middle.block337
  br i1 %min.epilog.iters.check343, label %vec.epilog.scalar.ph341.preheader, label %vec.epilog.ph344, !prof !348

vec.epilog.ph344:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check342
  %vec.epilog.resume.val339 = phi i64 [ %n.vec331, %vec.epilog.iter.check342 ], [ 0, %vector.main.loop.iter.check328 ]
  %broadcast.splatinsert346 = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat347 = shufflevector <4 x i16> %broadcast.splatinsert346, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph344
  %index349 = phi i64 [ %vec.epilog.resume.val339, %vec.epilog.ph344 ], [ %index.next350, %vec.epilog.vector.body348 ] ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %i.y, i64 %index349
  store <4 x i16> %broadcast.splat347, ptr %i.ac, align 2, !tbaa !122
  %index.next350 = add nuw i64 %index349, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next350, %n.vec345
  br i1 %i.ad, label %vec.epilog.middle.block351, label %vec.epilog.vector.body348, !llvm.loop !2534

vec.epilog.middle.block351:                       ; preds = %vec.epilog.vector.body348
  br i1 %cmp.n352, label %._crit_edge.us.i, label %vec.epilog.scalar.ph341.preheader

vec.epilog.scalar.ph341.preheader:                ; preds = %iter.check340, %vec.epilog.iter.check342, %vec.epilog.middle.block351
  %.168.us.i.ph = phi i64 [ 0, %iter.check340 ], [ %n.vec331, %vec.epilog.iter.check342 ], [ %n.vec345, %vec.epilog.middle.block351 ]
  br label %vec.epilog.scalar.ph341

vec.epilog.scalar.ph341:                          ; preds = %vec.epilog.scalar.ph341.preheader, %vec.epilog.scalar.ph341
  %.168.us.i = phi i64 [ %i.af, %vec.epilog.scalar.ph341 ], [ %.168.us.i.ph, %vec.epilog.scalar.ph341.preheader ] ; 2 uses
  %i.ae = getelementptr [2 x i8], ptr %i.y, i64 %.168.us.i
  store i16 %i.w, ptr %i.ae, align 2, !tbaa !122
  %i.af = add nuw nsw i64 %.168.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph341, !llvm.loop !2535

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph341, %vec.epilog.middle.block351, %middle.block337
  %i.ag = fadd double %i.m, %i.q                  ; 2 uses
  %i.ah = add nuw i64 %.15369.us.i, 1             ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond98.not.i, label %.loopexit67.i, label %iter.check340, !llvm.loop !2536

.preheader64.i:                                   ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !852
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !850 ; 4 uses
  %i.an = zext i32 %i.h to i64                    ; 4 uses
  %.not80.i = icmp eq i32 %i.h, 0
  %.promoted71.i = load double, ptr %i.ai, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i, label %.preheader64.split.i.preheader, label %.lr.ph.us74.i.preheader

.lr.ph.us74.i.preheader:                          ; preds = %.preheader64.i
  %min.iters.check355 = icmp ult i32 %i.h, 8
  %n.vec357 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n364 = icmp eq i64 %n.vec357, %i.an
  br label %.lr.ph.us74.i

.preheader64.split.i.preheader:                   ; preds = %.preheader64.i
  %xtraiter432 = and i64 %2, 1
  %i.ao = icmp eq i64 %2, 1
  br i1 %i.ao, label %.preheader64.split.i.epil.preheader, label %.preheader64.split.i.preheader.new

.preheader64.split.i.preheader.new:               ; preds = %.preheader64.split.i.preheader
  %unroll_iter439 = and i64 %2, -2
  br label %.preheader64.split.i

.lr.ph.us74.i:                                    ; preds = %.lr.ph.us74.i.preheader, %._crit_edge.us75.i
  %.05273.us.i = phi i64 [ %i.bc, %._crit_edge.us75.i ], [ 0, %.lr.ph.us74.i.preheader ] ; 2 uses
  %i.ap = phi double [ %i.bb, %._crit_edge.us75.i ], [ %.promoted71.i, %.lr.ph.us74.i.preheader ] ; 2 uses
  %i.aq = fmul double %i.ap, f0x401921FB54442D18
  %i.ar = tail call double @sin(double noundef %i.aq) #55
  %i.as = fmul double %i.ak, %i.ar
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = mul i64 %.05273.us.i, %i.an
  %i.av = getelementptr [4 x i8], ptr %1, i64 %i.au ; 2 uses
  br i1 %min.iters.check355, label %scalar.ph354.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.us74.i
  %broadcast.splatinsert358 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat359 = shufflevector <4 x float> %broadcast.splatinsert358, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph356
  %index361 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index361 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %broadcast.splat359, ptr %i.aw, align 4, !tbaa !349
  store <4 x float> %broadcast.splat359, ptr %i.ax, align 4, !tbaa !349
  %index.next362 = add nuw i64 %index361, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.ay, label %middle.block363, label %vector.body360, !llvm.loop !2537

middle.block363:                                  ; preds = %vector.body360
  br i1 %cmp.n364, label %._crit_edge.us75.i, label %scalar.ph354.preheader

scalar.ph354.preheader:                           ; preds = %.lr.ph.us74.i, %middle.block363
  %.070.us.i.ph = phi i64 [ 0, %.lr.ph.us74.i ], [ %n.vec357, %middle.block363 ]
  br label %scalar.ph354

scalar.ph354:                                     ; preds = %scalar.ph354.preheader, %scalar.ph354
  %.070.us.i = phi i64 [ %i.ba, %scalar.ph354 ], [ %.070.us.i.ph, %scalar.ph354.preheader ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %.070.us.i
  store float %i.at, ptr %i.az, align 4, !tbaa !349
  %i.ba = add nuw nsw i64 %.070.us.i, 1           ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.ba, %i.an
  br i1 %exitcond100.not.i, label %._crit_edge.us75.i, label %scalar.ph354, !llvm.loop !2538

._crit_edge.us75.i:                               ; preds = %scalar.ph354, %middle.block363
  %i.bb = fadd double %i.am, %i.ap                ; 2 uses
  %i.bc = add nuw i64 %.05273.us.i, 1             ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.bc, %2
  br i1 %exitcond101.not.i, label %.loopexit65.i, label %.lr.ph.us74.i, !llvm.loop !2539

.preheader.i:                                     ; preds = %bb.f
  %i.bd = zext i32 %i.f to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118 ; 2 uses
  %i.bg = mul i32 %i.bf, %i.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = zext i32 %i.bg to i64
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  br label %bb.g

.preheader64.split.i:                             ; preds = %cdce.end.1, %.preheader64.split.i.preheader.new
  %i.bm = phi double [ %.promoted71.i, %.preheader64.split.i.preheader.new ], [ %i.bw, %cdce.end.1 ] ; 2 uses
  %niter440 = phi i64 [ 0, %.preheader64.split.i.preheader.new ], [ %niter440.next.1, %cdce.end.1 ]
  %i.bn = fmul double %i.bm, f0x401921FB54442D18  ; 2 uses
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp oeq double %i.bo, +inf
  br i1 %i.bp, label %cdce.call, label %cdce.end, !prof !390

cdce.call:                                        ; preds = %.preheader64.split.i
  %i.bq = tail call double @sin(double noundef %i.bn) #55 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %.preheader64.split.i, %cdce.call
  %i.br = fadd double %i.am, %i.bm                ; 2 uses
  %i.bs = fmul double %i.br, f0x401921FB54442D18  ; 2 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp oeq double %i.bt, +inf
  br i1 %i.bu, label %cdce.call.1, label %cdce.end.1, !prof !390

cdce.call.1:                                      ; preds = %cdce.end
  %i.bv = tail call double @sin(double noundef %i.bs) #55 ; 0 uses
  br label %cdce.end.1

cdce.end.1:                                       ; preds = %cdce.call.1, %cdce.end
  %i.bw = fadd double %i.am, %i.br                ; 3 uses
  %niter440.next.1 = add nuw i64 %niter440, 2     ; 2 uses
  %niter440.ncmp.1 = icmp eq i64 %niter440.next.1, %unroll_iter439
  br i1 %niter440.ncmp.1, label %.loopexit65.i.loopexit.unr-lcssa, label %.preheader64.split.i, !llvm.loop !2539

.preheader66.split.i:                             ; preds = %cdce.end132.1, %.preheader66.split.i.preheader.new
  %i.bx = phi double [ %.promoted.i, %.preheader66.split.i.preheader.new ], [ %i.ch, %cdce.end132.1 ] ; 2 uses
  %niter431 = phi i64 [ 0, %.preheader66.split.i.preheader.new ], [ %niter431.next.1, %cdce.end132.1 ]
  %i.by = fmul double %i.bx, f0x401921FB54442D18  ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp oeq double %i.bz, +inf
  br i1 %i.ca, label %cdce.call131, label %cdce.end132, !prof !390

cdce.call131:                                     ; preds = %.preheader66.split.i
  %i.cb = tail call double @sin(double noundef %i.by) #55 ; 0 uses
  br label %cdce.end132

cdce.end132:                                      ; preds = %.preheader66.split.i, %cdce.call131
  %i.cc = fadd double %i.m, %i.bx                 ; 2 uses
  %i.cd = fmul double %i.cc, f0x401921FB54442D18  ; 2 uses
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp oeq double %i.ce, +inf
  br i1 %i.cf, label %cdce.call131.1, label %cdce.end132.1, !prof !390

cdce.call131.1:                                   ; preds = %cdce.end132
  %i.cg = tail call double @sin(double noundef %i.cd) #55 ; 0 uses
  br label %cdce.end132.1

cdce.end132.1:                                    ; preds = %cdce.call131.1, %cdce.end132
  %i.ch = fadd double %i.m, %i.cc                 ; 3 uses
  %niter431.next.1 = add nuw i64 %niter431, 2     ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %.loopexit67.i.loopexit.unr-lcssa, label %.preheader66.split.i, !llvm.loop !2536

bb.g:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.ci = phi i32 [ %i.h, %.preheader.i ], [ %i.ei, %._crit_edge.i ]
  %.25478.i = phi i64 [ 0, %.preheader.i ], [ %i.ej, %._crit_edge.i ] ; 2 uses
  %i.cj = load double, ptr %i.bh, align 8, !tbaa !851 ; 2 uses
  %i.ck = load double, ptr %i.bi, align 8, !tbaa !852
  %i.cl = fmul double %i.cj, f0x401921FB54442D18
  %i.cm = tail call double @sin(double noundef %i.cl) #55
end_hunk_11
begin_hunk_12_@ma_waveform_read_pcm_frames:bb.a
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !119
  %i.du = getelementptr i8, ptr %i.dr, i64 2
  store i8 %i.dp, ptr %i.du, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i.us

bb.h:                                             ; preds = %.lr.ph.i.split.us
  store i16 -32767, ptr %i.dr, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i.us

ma_dither_f32.exit.i.preheader.i.us:              ; preds = %.lr.ph.i.split.us
  store i8 %spec.select.i, ptr %i.dr, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.loopexit.i.us:                ; preds = %.lr.ph.i.split.us
  store float %i.cq, ptr %i.dr, align 1
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.i.us:                         ; preds = %bb.h, %ma_pcm_convert.exit.loopexit.i.us, %ma_dither_f32.exit.i.preheader.i.us, %.lr.ph.i134.i.preheader.i.us, %.lr.ph.i138.i.preheader.i.us, %.lr.ph.i.split.us
  %i.dv = add nuw nsw i64 %.277.i.us, 1           ; 2 uses
  %i.dw = load i32, ptr %i.g, align 4, !tbaa !855 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp samesign ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.lr.ph.i.split.us, label %._crit_edge.i, !llvm.loop !2540

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %ma_pcm_convert.exit.i
  %.277.i = phi i64 [ %i.ee, %ma_pcm_convert.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dz = mul nuw i64 %.277.i, %i.bl
  %i.ea = getelementptr i8, ptr %i.cs, i64 %i.dz  ; 7 uses
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !854
  switch i32 %i.eb, label %ma_pcm_convert.exit.i [
    i32 5, label %ma_pcm_convert.exit.loopexit.i
    i32 1, label %ma_dither_f32.exit.i.preheader.i
    i32 2, label %bb.i
    i32 3, label %.lr.ph.i134.i.preheader.i
    i32 4, label %.lr.ph.i138.i.preheader.i
  ]

.lr.ph.i134.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i8 %i.dl, ptr %i.ea, align 1, !tbaa !119
  %i.ec = getelementptr i8, ptr %i.ea, i64 1
  store i8 %i.dn, ptr %i.ec, align 1, !tbaa !119
  %i.ed = getelementptr i8, ptr %i.ea, i64 2
  store i8 %i.dp, ptr %i.ed, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i

ma_dither_f32.exit.i.preheader.i:                 ; preds = %.lr.ph.i.split
  store i8 %spec.select.i, ptr %i.ea, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i

.lr.ph.i138.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i32 %i.cy, ptr %i.ea, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i

bb.i:                                             ; preds = %.lr.ph.i.split
  store i16 %i.dh, ptr %i.ea, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.loopexit.i:                   ; preds = %.lr.ph.i.split
  store float %i.cq, ptr %i.ea, align 1
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.i:                            ; preds = %bb.i, %ma_pcm_convert.exit.loopexit.i, %.lr.ph.i138.i.preheader.i, %ma_dither_f32.exit.i.preheader.i, %.lr.ph.i134.i.preheader.i, %.lr.ph.i.split
  %i.ee = add nuw nsw i64 %.277.i, 1              ; 2 uses
  %i.ef = load i32, ptr %i.g, align 4, !tbaa !855 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i.split, label %._crit_edge.i, !llvm.loop !2540

._crit_edge.i:                                    ; preds = %ma_pcm_convert.exit.i, %ma_pcm_convert.exit.i.us, %bb.g
  %i.ei = phi i32 [ 0, %bb.g ], [ %i.dw, %ma_pcm_convert.exit.i.us ], [ %i.ef, %ma_pcm_convert.exit.i ]
  %i.ej = add nuw i64 %.25478.i, 1                ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.ej, %2
  br i1 %exitcond103.not.i, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.g, !llvm.loop !2541

.loopexit65.i.loopexit.unr-lcssa:                 ; preds = %cdce.end.1
  %lcmp.mod436.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod436.not, label %.loopexit65.i, label %.preheader64.split.i.epil.preheader

.preheader64.split.i.epil.preheader:              ; preds = %.loopexit65.i.loopexit.unr-lcssa, %.preheader64.split.i.preheader
  %.epil.init435 = phi double [ %.promoted71.i, %.preheader64.split.i.preheader ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod438 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod438)
  %i.ek = fmul double %.epil.init435, f0x401921FB54442D18 ; 2 uses
  %i.el = tail call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp oeq double %i.el, +inf
  br i1 %i.em, label %cdce.call.epil, label %cdce.end.epil, !prof !390

cdce.call.epil:                                   ; preds = %.preheader64.split.i.epil.preheader
  %i.en = tail call double @sin(double noundef %i.ek) #55 ; 0 uses
  br label %cdce.end.epil

cdce.end.epil:                                    ; preds = %cdce.call.epil, %.preheader64.split.i.epil.preheader
  %i.eo = fadd double %i.am, %.epil.init435
  br label %.loopexit65.i

.loopexit65.i:                                    ; preds = %._crit_edge.us75.i, %cdce.end.epil, %.loopexit65.i.loopexit.unr-lcssa
  %.us-phi76.i = phi double [ %i.eo, %cdce.end.epil ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ], [ %i.bb, %._crit_edge.us75.i ]
  store double %.us-phi76.i, ptr %i.ai, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i.loopexit.unr-lcssa:                 ; preds = %cdce.end132.1
  %lcmp.mod427.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod427.not, label %.loopexit67.i, label %.preheader66.split.i.epil.preheader

.preheader66.split.i.epil.preheader:              ; preds = %.loopexit67.i.loopexit.unr-lcssa, %.preheader66.split.i.preheader
  %.epil.init426 = phi double [ %.promoted.i, %.preheader66.split.i.preheader ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod429)
  %i.ep = fmul double %.epil.init426, f0x401921FB54442D18 ; 2 uses
  %i.eq = tail call double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp oeq double %i.eq, +inf
  br i1 %i.er, label %cdce.call131.epil, label %cdce.end132.epil, !prof !390

cdce.call131.epil:                                ; preds = %.preheader66.split.i.epil.preheader
  %i.es = tail call double @sin(double noundef %i.ep) #55 ; 0 uses
  br label %cdce.end132.epil

cdce.end132.epil:                                 ; preds = %cdce.call131.epil, %.preheader66.split.i.epil.preheader
  %i.et = fadd double %i.m, %.epil.init426
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %._crit_edge.us.i, %cdce.end132.epil, %.loopexit67.i.loopexit.unr-lcssa
  %.us-phi.i = phi double [ %i.et, %cdce.end132.epil ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ], [ %i.ag, %._crit_edge.us.i ]
  store double %.us-phi.i, ptr %i.i, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @ma_waveform_read_pcm_frames__square(ptr noundef %0, double noundef 5.000000e-01, ptr noundef %1, i64 noundef %2)
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.k:                                             ; preds = %bb.e
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !854 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.ev, label %.preheader.i57 [
    i32 5, label %.preheader64.i43
    i32 2, label %.preheader66.i29
  ]

.preheader66.i29:                                 ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !852
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !850 ; 10 uses
  %i.fd = zext i32 %i.ex to i64                   ; 7 uses
  %.not.i30 = icmp eq i32 %i.ex, 0
  %.promoted.i31 = load double, ptr %i.ey, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i30, label %.preheader66.split.i40.preheader, label %iter.check300.preheader

iter.check300.preheader:                          ; preds = %.preheader66.i29
  %min.iters.check287 = icmp ult i32 %i.ex, 4
  %min.iters.check289 = icmp ult i32 %i.ex, 16
  %i.fe = and i64 %i.fd, 12
  %n.vec291 = and i64 %i.fd, 4294967280           ; 4 uses
  %cmp.n298 = icmp eq i64 %n.vec291, %i.fd
  %min.epilog.iters.check303 = icmp eq i64 %i.fe, 0
  %n.vec305 = and i64 %i.fd, 4294967292           ; 3 uses
  %cmp.n312 = icmp eq i64 %n.vec305, %i.fd
  br label %iter.check300

.preheader66.split.i40.preheader:                 ; preds = %.preheader66.i29
  %i.ff = add i64 %2, -1
  %xtraiter405 = and i64 %2, 7                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 7
  br i1 %i.fg, label %.preheader66.split.i40.epil.preheader, label %.preheader66.split.i40.preheader.new

.preheader66.split.i40.preheader.new:             ; preds = %.preheader66.split.i40.preheader
  %unroll_iter412 = and i64 %2, -8
  br label %.preheader66.split.i40

iter.check300:                                    ; preds = %iter.check300.preheader, %._crit_edge.us.i36
  %.15369.us.i33 = phi i64 [ %i.gf, %._crit_edge.us.i36 ], [ 0, %iter.check300.preheader ] ; 2 uses
  %i.fh = phi double [ %i.ge, %._crit_edge.us.i36 ], [ %.promoted.i31, %iter.check300.preheader ] ; 3 uses
  %i.fi = fptosi double %i.fh to i64
  %i.fj = sitofp i64 %i.fi to double
  %i.fk = fsub double %i.fh, %i.fj
  %i.fl = fadd double %i.fk, -5.000000e-01
  %i.fm = fmul double %i.fl, 2.000000e+00         ; 3 uses
  %i.fn = fcmp ogt double %i.fm, 0.000000e+00
  %i.fo = fneg double %i.fm
  %i.fp = select i1 %i.fn, double %i.fm, double %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 2.000000e+00, double -1.000000e+00)
  %i.fr = fmul double %i.fa, %i.fq
  %i.fs = fptrunc double %i.fr to float
  %i.ft = fmul float %i.fs, 3.276700e+04
  %i.fu = fptosi float %i.ft to i16               ; 3 uses
  %i.fv = mul i64 %.15369.us.i33, %i.fd
  %i.fw = getelementptr [2 x i8], ptr %1, i64 %i.fv ; 3 uses
  br i1 %min.iters.check287, label %vec.epilog.scalar.ph301.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %iter.check300
  br i1 %min.iters.check289, label %vec.epilog.ph304, label %vector.ph290

vector.ph290:                                     ; preds = %vector.main.loop.iter.check288
  %broadcast.splatinsert292 = insertelement <8 x i16> poison, i16 %i.fu, i64 0
  %broadcast.splat293 = shufflevector <8 x i16> %broadcast.splatinsert292, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.ph290, %vector.body294
  %index295 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body294 ] ; 2 uses
  %i.fx = getelementptr [2 x i8], ptr %i.fw, i64 %index295 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store <8 x i16> %broadcast.splat293, ptr %i.fx, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat293, ptr %i.fy, align 2, !tbaa !122
  %index.next296 = add nuw i64 %index295, 16      ; 2 uses
  %i.fz = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.fz, label %middle.block297, label %vector.body294, !llvm.loop !2542

middle.block297:                                  ; preds = %vector.body294
  br i1 %cmp.n298, label %._crit_edge.us.i36, label %vec.epilog.iter.check302

vec.epilog.iter.check302:                         ; preds = %middle.block297
  br i1 %min.epilog.iters.check303, label %vec.epilog.scalar.ph301.preheader, label %vec.epilog.ph304, !prof !348

vec.epilog.ph304:                                 ; preds = %vector.main.loop.iter.check288, %vec.epilog.iter.check302
  %vec.epilog.resume.val299 = phi i64 [ %n.vec291, %vec.epilog.iter.check302 ], [ 0, %vector.main.loop.iter.check288 ]
  %broadcast.splatinsert306 = insertelement <4 x i16> poison, i16 %i.fu, i64 0
  %broadcast.splat307 = shufflevector <4 x i16> %broadcast.splatinsert306, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph304
  %index309 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph304 ], [ %index.next310, %vec.epilog.vector.body308 ] ; 2 uses
  %i.ga = getelementptr [2 x i8], ptr %i.fw, i64 %index309
  store <4 x i16> %broadcast.splat307, ptr %i.ga, align 2, !tbaa !122
  %index.next310 = add nuw i64 %index309, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.gb, label %vec.epilog.middle.block311, label %vec.epilog.vector.body308, !llvm.loop !2543

vec.epilog.middle.block311:                       ; preds = %vec.epilog.vector.body308
  br i1 %cmp.n312, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301.preheader

vec.epilog.scalar.ph301.preheader:                ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block311
  %.168.us.i34.ph = phi i64 [ 0, %iter.check300 ], [ %n.vec291, %vec.epilog.iter.check302 ], [ %n.vec305, %vec.epilog.middle.block311 ]
  br label %vec.epilog.scalar.ph301

vec.epilog.scalar.ph301:                          ; preds = %vec.epilog.scalar.ph301.preheader, %vec.epilog.scalar.ph301
  %.168.us.i34 = phi i64 [ %i.gd, %vec.epilog.scalar.ph301 ], [ %.168.us.i34.ph, %vec.epilog.scalar.ph301.preheader ] ; 2 uses
  %i.gc = getelementptr [2 x i8], ptr %i.fw, i64 %.168.us.i34
  store i16 %i.fu, ptr %i.gc, align 2, !tbaa !122
  %i.gd = add nuw nsw i64 %.168.us.i34, 1         ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gd, %i.fd
  br i1 %exitcond.not.i35, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301, !llvm.loop !2544

._crit_edge.us.i36:                               ; preds = %vec.epilog.scalar.ph301, %vec.epilog.middle.block311, %middle.block297
  %i.ge = fadd double %i.fc, %i.fh                ; 2 uses
  %i.gf = add nuw i64 %.15369.us.i33, 1           ; 2 uses
  %exitcond98.not.i37 = icmp eq i64 %i.gf, %2
  br i1 %exitcond98.not.i37, label %.loopexit67.i38, label %iter.check300, !llvm.loop !2545

.preheader64.i43:                                 ; preds = %bb.k
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !852
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !850 ; 10 uses
  %i.gl = zext i32 %i.ex to i64                   ; 4 uses
  %.not80.i44 = icmp eq i32 %i.ex, 0
  %.promoted71.i45 = load double, ptr %i.gg, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i44, label %.preheader64.split.i54.preheader, label %.lr.ph.us74.i46.preheader

.lr.ph.us74.i46.preheader:                        ; preds = %.preheader64.i43
  %min.iters.check315 = icmp ult i32 %i.ex, 8
  %n.vec317 = and i64 %i.gl, 4294967288           ; 3 uses
  %cmp.n324 = icmp eq i64 %n.vec317, %i.gl
  br label %.lr.ph.us74.i46

.preheader64.split.i54.preheader:                 ; preds = %.preheader64.i43
  %i.gm = add i64 %2, -1
  %xtraiter414 = and i64 %2, 7                    ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 7
  br i1 %i.gn, label %.preheader64.split.i54.epil.preheader, label %.preheader64.split.i54.preheader.new

.preheader64.split.i54.preheader.new:             ; preds = %.preheader64.split.i54.preheader
  %unroll_iter421 = and i64 %2, -8
  br label %.preheader64.split.i54

.lr.ph.us74.i46:                                  ; preds = %.lr.ph.us74.i46.preheader, %._crit_edge.us75.i50
  %.05273.us.i47 = phi i64 [ %i.hi, %._crit_edge.us75.i50 ], [ 0, %.lr.ph.us74.i46.preheader ] ; 2 uses
  %i.go = phi double [ %i.hh, %._crit_edge.us75.i50 ], [ %.promoted71.i45, %.lr.ph.us74.i46.preheader ] ; 3 uses
  %i.gp = fptosi double %i.go to i64
  %i.gq = sitofp i64 %i.gp to double
  %i.gr = fsub double %i.go, %i.gq
  %i.gs = fadd double %i.gr, -5.000000e-01
  %i.gt = fmul double %i.gs, 2.000000e+00         ; 3 uses
  %i.gu = fcmp ogt double %i.gt, 0.000000e+00
  %i.gv = fneg double %i.gt
  %i.gw = select i1 %i.gu, double %i.gt, double %i.gv
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double 2.000000e+00, double -1.000000e+00)
  %i.gy = fmul double %i.gi, %i.gx
  %i.gz = fptrunc double %i.gy to float           ; 2 uses
  %i.ha = mul i64 %.05273.us.i47, %i.gl
  %i.hb = getelementptr [4 x i8], ptr %1, i64 %i.ha ; 2 uses
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.us74.i46
  %broadcast.splatinsert318 = insertelement <4 x float> poison, float %i.gz, i64 0
  %broadcast.splat319 = shufflevector <4 x float> %broadcast.splatinsert318, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body320 ] ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %index321 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  store <4 x float> %broadcast.splat319, ptr %i.hc, align 4, !tbaa !349
  store <4 x float> %broadcast.splat319, ptr %i.hd, align 4, !tbaa !349
  %index.next322 = add nuw i64 %index321, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.he, label %middle.block323, label %vector.body320, !llvm.loop !2546

middle.block323:                                  ; preds = %vector.body320
  br i1 %cmp.n324, label %._crit_edge.us75.i50, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph.us74.i46, %middle.block323
  %.070.us.i48.ph = phi i64 [ 0, %.lr.ph.us74.i46 ], [ %n.vec317, %middle.block323 ]
  br label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.preheader, %scalar.ph314
  %.070.us.i48 = phi i64 [ %i.hg, %scalar.ph314 ], [ %.070.us.i48.ph, %scalar.ph314.preheader ] ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.hb, i64 %.070.us.i48
  store float %i.gz, ptr %i.hf, align 4, !tbaa !349
  %i.hg = add nuw nsw i64 %.070.us.i48, 1         ; 2 uses
  %exitcond100.not.i49 = icmp eq i64 %i.hg, %i.gl
  br i1 %exitcond100.not.i49, label %._crit_edge.us75.i50, label %scalar.ph314, !llvm.loop !2547

._crit_edge.us75.i50:                             ; preds = %scalar.ph314, %middle.block323
  %i.hh = fadd double %i.gk, %i.go                ; 2 uses
  %i.hi = add nuw i64 %.05273.us.i47, 1           ; 2 uses
  %exitcond101.not.i51 = icmp eq i64 %i.hi, %2
  br i1 %exitcond101.not.i51, label %.loopexit65.i52, label %.lr.ph.us74.i46, !llvm.loop !2548

.preheader.i57:                                   ; preds = %bb.k
  %i.hj = zext i32 %i.ev to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !118 ; 2 uses
  %i.hm = mul i32 %i.hl, %i.ex
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hq = zext i32 %i.hm to i64
  %i.hr = zext i32 %i.hl to i64                   ; 2 uses
  br label %bb.l

.preheader64.split.i54:                           ; preds = %.preheader64.split.i54, %.preheader64.split.i54.preheader.new
  %i.hs = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader.new ], [ %i.ia, %.preheader64.split.i54 ]
  %niter422 = phi i64 [ 0, %.preheader64.split.i54.preheader.new ], [ %niter422.next.7, %.preheader64.split.i54 ]
  %i.ht = fadd double %i.gk, %i.hs
  %i.hu = fadd double %i.gk, %i.ht
  %i.hv = fadd double %i.gk, %i.hu
  %i.hw = fadd double %i.gk, %i.hv
  %i.hx = fadd double %i.gk, %i.hw
  %i.hy = fadd double %i.gk, %i.hx
  %i.hz = fadd double %i.gk, %i.hy
  %i.ia = fadd double %i.gk, %i.hz                ; 3 uses
  %niter422.next.7 = add nuw i64 %niter422, 8     ; 2 uses
  %niter422.ncmp.7 = icmp eq i64 %niter422.next.7, %unroll_iter421
  br i1 %niter422.ncmp.7, label %.loopexit65.i52.loopexit.unr-lcssa, label %.preheader64.split.i54, !llvm.loop !2548

.preheader66.split.i40:                           ; preds = %.preheader66.split.i40, %.preheader66.split.i40.preheader.new
  %i.ib = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader.new ], [ %i.ij, %.preheader66.split.i40 ]
  %niter413 = phi i64 [ 0, %.preheader66.split.i40.preheader.new ], [ %niter413.next.7, %.preheader66.split.i40 ]
  %i.ic = fadd double %i.fc, %i.ib
  %i.id = fadd double %i.fc, %i.ic
  %i.ie = fadd double %i.fc, %i.id
  %i.if = fadd double %i.fc, %i.ie
  %i.ig = fadd double %i.fc, %i.if
  %i.ih = fadd double %i.fc, %i.ig
  %i.ii = fadd double %i.fc, %i.ih
  %i.ij = fadd double %i.fc, %i.ii                ; 3 uses
  %niter413.next.7 = add nuw i64 %niter413, 8     ; 2 uses
  %niter413.ncmp.7 = icmp eq i64 %niter413.next.7, %unroll_iter412
  br i1 %niter413.ncmp.7, label %.loopexit67.i38.loopexit.unr-lcssa, label %.preheader66.split.i40, !llvm.loop !2545

bb.l:                                             ; preds = %._crit_edge.i67, %.preheader.i57
  %i.ik = phi i32 [ %i.ex, %.preheader.i57 ], [ %i.kr, %._crit_edge.i67 ]
  %.25478.i58 = phi i64 [ 0, %.preheader.i57 ], [ %i.ks, %._crit_edge.i67 ] ; 2 uses
  %i.il = load double, ptr %i.hn, align 8, !tbaa !851 ; 3 uses
  %i.im = load double, ptr %i.ho, align 8, !tbaa !852
  %i.in = load double, ptr %i.hp, align 8, !tbaa !850
  %i.io = fadd double %i.il, %i.in
  store double %i.io, ptr %i.hn, align 8, !tbaa !851
  %.not81.i59 = icmp eq i32 %i.ik, 0
  br i1 %.not81.i59, label %._crit_edge.i67, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l
  %i.ip = fptosi double %i.il to i64
  %i.iq = sitofp i64 %i.ip to double
  %i.ir = fsub double %i.il, %i.iq
  %i.is = fadd double %i.ir, -5.000000e-01
  %i.it = fmul double %i.is, 2.000000e+00         ; 3 uses
  %i.iu = fcmp ogt double %i.it, 0.000000e+00
  %i.iv = fneg double %i.it
  %i.iw = select i1 %i.iu, double %i.it, double %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.iw, double 2.000000e+00, double -1.000000e+00)
  %i.iy = fmul double %i.im, %i.ix
  %.fr = freeze double %i.iy                      ; 2 uses
  %i.iz = fptrunc double %.fr to float            ; 6 uses
  %i.ja = mul i64 %.25478.i58, %i.hq
  %i.jb = getelementptr i8, ptr %1, i64 %i.ja     ; 2 uses
  %i.jc = fcmp olt double %.fr, f0xBFF0000010000000 ; 3 uses
end_hunk_12
begin_hunk_13_@ma_waveform_read_pcm_frames:bb.a
    i32 5, label %ma_pcm_convert.exit.loopexit.i79.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i78.us
    i32 2, label %bb.m
    i32 3, label %.lr.ph.i134.i.preheader.i70.us
    i32 4, label %.lr.ph.i138.i.preheader.i64.us
  ]

.lr.ph.i138.i.preheader.i64.us:                   ; preds = %.lr.ph.i60.split.us
  store i32 -2147483647, ptr %i.ka, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66.us

.lr.ph.i134.i.preheader.i70.us:                   ; preds = %.lr.ph.i60.split.us
  store i8 %i.ju, ptr %i.ka, align 1, !tbaa !119
  %i.kc = getelementptr i8, ptr %i.ka, i64 1
  store i8 %i.jw, ptr %i.kc, align 1, !tbaa !119
  %i.kd = getelementptr i8, ptr %i.ka, i64 2
  store i8 %i.jy, ptr %i.kd, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

bb.m:                                             ; preds = %.lr.ph.i60.split.us
  store i16 -32767, ptr %i.ka, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66.us

ma_dither_f32.exit.i.preheader.i78.us:            ; preds = %.lr.ph.i60.split.us
  store i8 %spec.select.i62, ptr %i.ka, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.loopexit.i79.us:              ; preds = %.lr.ph.i60.split.us
  store float %i.iz, ptr %i.ka, align 1
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.i66.us:                       ; preds = %bb.m, %ma_pcm_convert.exit.loopexit.i79.us, %ma_dither_f32.exit.i.preheader.i78.us, %.lr.ph.i134.i.preheader.i70.us, %.lr.ph.i138.i.preheader.i64.us, %.lr.ph.i60.split.us
  %i.ke = add nuw nsw i64 %.277.i63.us, 1         ; 2 uses
  %i.kf = load i32, ptr %i.ew, align 4, !tbaa !855 ; 2 uses
  %i.kg = zext i32 %i.kf to i64
  %i.kh = icmp samesign ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph.i60.split.us, label %._crit_edge.i67, !llvm.loop !2549

.lr.ph.i60.split:                                 ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i66
  %.277.i63 = phi i64 [ %i.kn, %ma_pcm_convert.exit.i66 ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.ki = mul nuw i64 %.277.i63, %i.hr
  %i.kj = getelementptr i8, ptr %i.jb, i64 %i.ki  ; 7 uses
  %i.kk = load i32, ptr %i.eu, align 8, !tbaa !854
  switch i32 %i.kk, label %ma_pcm_convert.exit.i66 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i79
    i32 1, label %ma_dither_f32.exit.i.preheader.i78
    i32 2, label %bb.n
    i32 3, label %.lr.ph.i134.i.preheader.i70
    i32 4, label %.lr.ph.i138.i.preheader.i64
  ]

.lr.ph.i134.i.preheader.i70:                      ; preds = %.lr.ph.i60.split
  store i8 %i.ju, ptr %i.kj, align 1, !tbaa !119
  %i.kl = getelementptr i8, ptr %i.kj, i64 1
  store i8 %i.jw, ptr %i.kl, align 1, !tbaa !119
  %i.km = getelementptr i8, ptr %i.kj, i64 2
  store i8 %i.jy, ptr %i.km, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

ma_dither_f32.exit.i.preheader.i78:               ; preds = %.lr.ph.i60.split
  store i8 %spec.select.i62, ptr %i.kj, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

.lr.ph.i138.i.preheader.i64:                      ; preds = %.lr.ph.i60.split
  store i32 %i.jh, ptr %i.kj, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66

bb.n:                                             ; preds = %.lr.ph.i60.split
  store i16 %i.jq, ptr %i.kj, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.loopexit.i79:                 ; preds = %.lr.ph.i60.split
  store float %i.iz, ptr %i.kj, align 1
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.i66:                          ; preds = %bb.n, %ma_pcm_convert.exit.loopexit.i79, %.lr.ph.i138.i.preheader.i64, %ma_dither_f32.exit.i.preheader.i78, %.lr.ph.i134.i.preheader.i70, %.lr.ph.i60.split
  %i.kn = add nuw nsw i64 %.277.i63, 1            ; 2 uses
  %i.ko = load i32, ptr %i.ew, align 4, !tbaa !855 ; 2 uses
  %i.kp = zext i32 %i.ko to i64
  %i.kq = icmp samesign ult i64 %i.kn, %i.kp
  br i1 %i.kq, label %.lr.ph.i60.split, label %._crit_edge.i67, !llvm.loop !2549

._crit_edge.i67:                                  ; preds = %ma_pcm_convert.exit.i66, %ma_pcm_convert.exit.i66.us, %bb.l
  %i.kr = phi i32 [ 0, %bb.l ], [ %i.kf, %ma_pcm_convert.exit.i66.us ], [ %i.ko, %ma_pcm_convert.exit.i66 ]
  %i.ks = add nuw i64 %.25478.i58, 1              ; 2 uses
  %exitcond103.not.i68 = icmp eq i64 %i.ks, %2
  br i1 %exitcond103.not.i68, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.l, !llvm.loop !2550

.loopexit65.i52.loopexit.unr-lcssa:               ; preds = %.preheader64.split.i54
  %lcmp.mod418.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod418.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil.preheader

.preheader64.split.i54.epil.preheader:            ; preds = %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.preheader
  %.epil.init417 = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader ], [ %i.ia, %.loopexit65.i52.loopexit.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.preheader64.split.i54.epil

.preheader64.split.i54.epil:                      ; preds = %.preheader64.split.i54.epil, %.preheader64.split.i54.epil.preheader
  %i.kt = phi double [ %i.ku, %.preheader64.split.i54.epil ], [ %.epil.init417, %.preheader64.split.i54.epil.preheader ]
  %epil.iter415 = phi i64 [ %epil.iter415.next, %.preheader64.split.i54.epil ], [ 0, %.preheader64.split.i54.epil.preheader ]
  %i.ku = fadd double %i.gk, %i.kt                ; 2 uses
  %epil.iter415.next = add i64 %epil.iter415, 1   ; 2 uses
  %epil.iter415.cmp.not = icmp eq i64 %epil.iter415.next, %xtraiter414
  br i1 %epil.iter415.cmp.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil, !llvm.loop !2551

.loopexit65.i52:                                  ; preds = %._crit_edge.us75.i50, %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.epil
  %.us-phi76.i53 = phi double [ %i.ku, %.preheader64.split.i54.epil ], [ %i.ia, %.loopexit65.i52.loopexit.unr-lcssa ], [ %i.hh, %._crit_edge.us75.i50 ]
  store double %.us-phi76.i53, ptr %i.gg, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i38.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i40
  %lcmp.mod409.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod409.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil.preheader

.preheader66.split.i40.epil.preheader:            ; preds = %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.preheader
  %.epil.init408 = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader ], [ %i.ij, %.loopexit67.i38.loopexit.unr-lcssa ]
  %lcmp.mod411 = icmp ne i64 %xtraiter405, 0
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.preheader66.split.i40.epil

.preheader66.split.i40.epil:                      ; preds = %.preheader66.split.i40.epil, %.preheader66.split.i40.epil.preheader
  %i.kv = phi double [ %i.kw, %.preheader66.split.i40.epil ], [ %.epil.init408, %.preheader66.split.i40.epil.preheader ]
  %epil.iter406 = phi i64 [ %epil.iter406.next, %.preheader66.split.i40.epil ], [ 0, %.preheader66.split.i40.epil.preheader ]
  %i.kw = fadd double %i.fc, %i.kv                ; 2 uses
  %epil.iter406.next = add i64 %epil.iter406, 1   ; 2 uses
  %epil.iter406.cmp.not = icmp eq i64 %epil.iter406.next, %xtraiter405
  br i1 %epil.iter406.cmp.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil, !llvm.loop !2552

.loopexit67.i38:                                  ; preds = %._crit_edge.us.i36, %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.epil
  %.us-phi.i39 = phi double [ %i.kw, %.preheader66.split.i40.epil ], [ %i.ij, %.loopexit67.i38.loopexit.unr-lcssa ], [ %i.ge, %._crit_edge.us.i36 ]
  store double %.us-phi.i39, ptr %i.ey, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.o:                                             ; preds = %bb.e
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !854 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.ky, label %.preheader.i108 [
    i32 5, label %.preheader64.i94
    i32 2, label %.preheader66.i80
  ]

.preheader66.i80:                                 ; preds = %bb.o
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !852
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lf = load double, ptr %i.le, align 8, !tbaa !850 ; 10 uses
  %i.lg = zext i32 %i.la to i64                   ; 7 uses
  %.not.i81 = icmp eq i32 %i.la, 0
  %.promoted.i82 = load double, ptr %i.lb, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i81, label %.preheader66.split.i91.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader66.i80
  %min.iters.check = icmp ult i32 %i.la, 4
  %min.iters.check268 = icmp ult i32 %i.la, 16
  %i.lh = and i64 %i.lg, 12
  %n.vec = and i64 %i.lg, 4294967280              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lg
  %min.epilog.iters.check = icmp eq i64 %i.lh, 0
  %n.vec269 = and i64 %i.lg, 4294967292           ; 3 uses
  %cmp.n274 = icmp eq i64 %n.vec269, %i.lg
  br label %iter.check

.preheader66.split.i91.preheader:                 ; preds = %.preheader66.i80
  %i.li = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.lj = icmp ult i64 %i.li, 7
  br i1 %i.lj, label %.preheader66.split.i91.epil.preheader, label %.preheader66.split.i91.preheader.new

.preheader66.split.i91.preheader.new:             ; preds = %.preheader66.split.i91.preheader
  %unroll_iter = and i64 %2, -8
  br label %.preheader66.split.i91

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us.i87
  %.15369.us.i84 = phi i64 [ %i.me, %._crit_edge.us.i87 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.lk = phi double [ %i.md, %._crit_edge.us.i87 ], [ %.promoted.i82, %iter.check.preheader ] ; 3 uses
  %i.ll = fptosi double %i.lk to i64
  %i.lm = sitofp i64 %i.ll to double
  %i.ln = fsub double %i.lk, %i.lm
  %i.lo = fadd double %i.ln, -5.000000e-01
  %i.lp = fmul double %i.lo, 2.000000e+00
  %i.lq = fmul double %i.ld, %i.lp
  %i.lr = fptrunc double %i.lq to float
  %i.ls = fmul float %i.lr, 3.276700e+04
  %i.lt = fptosi float %i.ls to i16               ; 3 uses
  %i.lu = mul i64 %.15369.us.i84, %i.lg
  %i.lv = getelementptr [2 x i8], ptr %1, i64 %i.lu ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check268, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lw = getelementptr [2 x i8], ptr %i.lv, i64 %index ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.lw, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.lx, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ly = icmp eq i64 %index.next, %n.vec
  br i1 %i.ly, label %middle.block, label %vector.body, !llvm.loop !2553

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert270 = insertelement <4 x i16> poison, i16 %i.lt, i64 0
  %broadcast.splat271 = shufflevector <4 x i16> %broadcast.splatinsert270, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index272 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = getelementptr [2 x i8], ptr %i.lv, i64 %index272
  store <4 x i16> %broadcast.splat271, ptr %i.lz, align 2, !tbaa !122
  %index.next273 = add nuw i64 %index272, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next273, %n.vec269
  br i1 %i.ma, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n274, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.168.us.i85.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec269, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.168.us.i85 = phi i64 [ %i.mc, %vec.epilog.scalar.ph ], [ %.168.us.i85.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.mb = getelementptr [2 x i8], ptr %i.lv, i64 %.168.us.i85
  store i16 %i.lt, ptr %i.mb, align 2, !tbaa !122
  %i.mc = add nuw nsw i64 %.168.us.i85, 1         ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %i.mc, %i.lg
  br i1 %exitcond.not.i86, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph, !llvm.loop !2555

._crit_edge.us.i87:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.md = fadd double %i.lf, %i.lk                ; 2 uses
  %i.me = add nuw i64 %.15369.us.i84, 1           ; 2 uses
  %exitcond98.not.i88 = icmp eq i64 %i.me, %2
  br i1 %exitcond98.not.i88, label %.loopexit67.i89, label %iter.check, !llvm.loop !2556

.preheader64.i94:                                 ; preds = %bb.o
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !852
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !850 ; 10 uses
  %i.mk = zext i32 %i.la to i64                   ; 4 uses
  %.not80.i95 = icmp eq i32 %i.la, 0
  %.promoted71.i96 = load double, ptr %i.mf, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i95, label %.preheader64.split.i105.preheader, label %.lr.ph.us74.i97.preheader

.lr.ph.us74.i97.preheader:                        ; preds = %.preheader64.i94
  %min.iters.check275 = icmp ult i32 %i.la, 8
  %n.vec277 = and i64 %i.mk, 4294967288           ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec277, %i.mk
  br label %.lr.ph.us74.i97

.preheader64.split.i105.preheader:                ; preds = %.preheader64.i94
  %i.ml = add i64 %2, -1
  %xtraiter396 = and i64 %2, 7                    ; 3 uses
  %i.mm = icmp ult i64 %i.ml, 7
  br i1 %i.mm, label %.preheader64.split.i105.epil.preheader, label %.preheader64.split.i105.preheader.new

.preheader64.split.i105.preheader.new:            ; preds = %.preheader64.split.i105.preheader
  %unroll_iter403 = and i64 %2, -8
  br label %.preheader64.split.i105

.lr.ph.us74.i97:                                  ; preds = %.lr.ph.us74.i97.preheader, %._crit_edge.us75.i101
  %.05273.us.i98 = phi i64 [ %i.nd, %._crit_edge.us75.i101 ], [ 0, %.lr.ph.us74.i97.preheader ] ; 2 uses
  %i.mn = phi double [ %i.nc, %._crit_edge.us75.i101 ], [ %.promoted71.i96, %.lr.ph.us74.i97.preheader ] ; 3 uses
  %i.mo = fptosi double %i.mn to i64
  %i.mp = sitofp i64 %i.mo to double
  %i.mq = fsub double %i.mn, %i.mp
  %i.mr = fadd double %i.mq, -5.000000e-01
  %i.ms = fmul double %i.mr, 2.000000e+00
  %i.mt = fmul double %i.mh, %i.ms
  %i.mu = fptrunc double %i.mt to float           ; 2 uses
  %i.mv = mul i64 %.05273.us.i98, %i.mk
  %i.mw = getelementptr [4 x i8], ptr %1, i64 %i.mv ; 2 uses
  br i1 %min.iters.check275, label %scalar.ph.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.us74.i97
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %i.mu, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body280 ] ; 2 uses
  %i.mx = getelementptr [4 x i8], ptr %i.mw, i64 %index281 ; 2 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  store <4 x float> %broadcast.splat279, ptr %i.mx, align 4, !tbaa !349
  store <4 x float> %broadcast.splat279, ptr %i.my, align 4, !tbaa !349
  %index.next282 = add nuw i64 %index281, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.mz, label %middle.block283, label %vector.body280, !llvm.loop !2557

middle.block283:                                  ; preds = %vector.body280
  br i1 %cmp.n284, label %._crit_edge.us75.i101, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us74.i97, %middle.block283
  %.070.us.i99.ph = phi i64 [ 0, %.lr.ph.us74.i97 ], [ %n.vec277, %middle.block283 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.us.i99 = phi i64 [ %i.nb, %scalar.ph ], [ %.070.us.i99.ph, %scalar.ph.preheader ] ; 2 uses
  %i.na = getelementptr [4 x i8], ptr %i.mw, i64 %.070.us.i99
  store float %i.mu, ptr %i.na, align 4, !tbaa !349
  %i.nb = add nuw nsw i64 %.070.us.i99, 1         ; 2 uses
  %exitcond100.not.i100 = icmp eq i64 %i.nb, %i.mk
  br i1 %exitcond100.not.i100, label %._crit_edge.us75.i101, label %scalar.ph, !llvm.loop !2558

._crit_edge.us75.i101:                            ; preds = %scalar.ph, %middle.block283
  %i.nc = fadd double %i.mj, %i.mn                ; 2 uses
  %i.nd = add nuw i64 %.05273.us.i98, 1           ; 2 uses
  %exitcond101.not.i102 = icmp eq i64 %i.nd, %2
  br i1 %exitcond101.not.i102, label %.loopexit65.i103, label %.lr.ph.us74.i97, !llvm.loop !2559

.preheader.i108:                                  ; preds = %bb.o
  %i.ne = zext i32 %i.ky to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !118 ; 2 uses
  %i.nh = mul i32 %i.ng, %i.la
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nl = zext i32 %i.nh to i64
  %i.nm = zext i32 %i.ng to i64                   ; 2 uses
  br label %bb.p

.preheader64.split.i105:                          ; preds = %.preheader64.split.i105, %.preheader64.split.i105.preheader.new
  %i.nn = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader.new ], [ %i.nv, %.preheader64.split.i105 ]
  %niter404 = phi i64 [ 0, %.preheader64.split.i105.preheader.new ], [ %niter404.next.7, %.preheader64.split.i105 ]
  %i.no = fadd double %i.mj, %i.nn
  %i.np = fadd double %i.mj, %i.no
  %i.nq = fadd double %i.mj, %i.np
  %i.nr = fadd double %i.mj, %i.nq
  %i.ns = fadd double %i.mj, %i.nr
  %i.nt = fadd double %i.mj, %i.ns
  %i.nu = fadd double %i.mj, %i.nt
  %i.nv = fadd double %i.mj, %i.nu                ; 3 uses
  %niter404.next.7 = add nuw i64 %niter404, 8     ; 2 uses
  %niter404.ncmp.7 = icmp eq i64 %niter404.next.7, %unroll_iter403
  br i1 %niter404.ncmp.7, label %.loopexit65.i103.loopexit.unr-lcssa, label %.preheader64.split.i105, !llvm.loop !2559

.preheader66.split.i91:                           ; preds = %.preheader66.split.i91, %.preheader66.split.i91.preheader.new
  %i.nw = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader.new ], [ %i.oe, %.preheader66.split.i91 ]
  %niter = phi i64 [ 0, %.preheader66.split.i91.preheader.new ], [ %niter.next.7, %.preheader66.split.i91 ]
  %i.nx = fadd double %i.lf, %i.nw
  %i.ny = fadd double %i.lf, %i.nx
  %i.nz = fadd double %i.lf, %i.ny
  %i.oa = fadd double %i.lf, %i.nz
  %i.ob = fadd double %i.lf, %i.oa
  %i.oc = fadd double %i.lf, %i.ob
  %i.od = fadd double %i.lf, %i.oc
  %i.oe = fadd double %i.lf, %i.od                ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit67.i89.loopexit.unr-lcssa, label %.preheader66.split.i91, !llvm.loop !2556

bb.p:                                             ; preds = %._crit_edge.i118, %.preheader.i108
  %i.of = phi i32 [ %i.la, %.preheader.i108 ], [ %i.qi, %._crit_edge.i118 ]
  %.25478.i109 = phi i64 [ 0, %.preheader.i108 ], [ %i.qj, %._crit_edge.i118 ] ; 2 uses
  %i.og = load double, ptr %i.ni, align 8, !tbaa !851 ; 3 uses
  %i.oh = load double, ptr %i.nj, align 8, !tbaa !852
  %i.oi = load double, ptr %i.nk, align 8, !tbaa !850
  %i.oj = fadd double %i.og, %i.oi
  store double %i.oj, ptr %i.ni, align 8, !tbaa !851
  %.not81.i110 = icmp eq i32 %i.of, 0
  br i1 %.not81.i110, label %._crit_edge.i118, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.p
  %i.ok = fptosi double %i.og to i64
  %i.ol = sitofp i64 %i.ok to double
  %i.om = fsub double %i.og, %i.ol
  %i.on = fadd double %i.om, -5.000000e-01
  %i.oo = fmul double %i.on, 2.000000e+00
  %i.op = fmul double %i.oh, %i.oo
  %.fr159 = freeze double %i.op                   ; 2 uses
  %i.oq = fptrunc double %.fr159 to float         ; 6 uses
  %i.or = mul i64 %.25478.i109, %i.nl
  %i.os = getelementptr i8, ptr %1, i64 %i.or     ; 2 uses
  %i.ot = fcmp olt double %.fr159, f0xBFF0000010000000 ; 3 uses
  %i.ou = fpext float %i.oq to double             ; 2 uses
  %i.ov = fcmp ogt double %i.ou, 1.000000e+00
  %i.ow = select i1 %i.ov, double 1.000000e+00, double %i.ou
  %i.ox = fmul double %i.ow, f0x41DFFFFFFFC00000
  %i.oy = fptosi double %i.ox to i32
  %i.oz = fcmp ogt float %i.oq, 1.000000e+00
  %i.pa = select i1 %i.oz, float 1.000000e+00, float %i.oq
  %i.pb = fmul float %i.pa, f0x4AFFFFFE
end_hunk_13
begin_hunk_14_@ma_waveform_read_pcm_frames:bb.a
  store i8 %spec.select.i113, ptr %i.pr, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.loopexit.i130.us:             ; preds = %.lr.ph.i111.split.us
  store float %i.oq, ptr %i.pr, align 1
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.i117.us:                      ; preds = %bb.q, %ma_pcm_convert.exit.loopexit.i130.us, %ma_dither_f32.exit.i.preheader.i129.us, %.lr.ph.i134.i.preheader.i121.us, %.lr.ph.i138.i.preheader.i115.us, %.lr.ph.i111.split.us
  %i.pv = add nuw nsw i64 %.277.i114.us, 1        ; 2 uses
  %i.pw = load i32, ptr %i.kz, align 4, !tbaa !855 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %i.py = icmp samesign ult i64 %i.pv, %i.px
  br i1 %i.py, label %.lr.ph.i111.split.us, label %._crit_edge.i118, !llvm.loop !2560

.lr.ph.i111.split:                                ; preds = %.lr.ph.i111, %ma_pcm_convert.exit.i117
  %.277.i114 = phi i64 [ %i.qe, %ma_pcm_convert.exit.i117 ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %i.pz = mul nuw i64 %.277.i114, %i.nm
  %i.qa = getelementptr i8, ptr %i.os, i64 %i.pz  ; 7 uses
  %i.qb = load i32, ptr %i.kx, align 8, !tbaa !854
  switch i32 %i.qb, label %ma_pcm_convert.exit.i117 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i130
    i32 1, label %ma_dither_f32.exit.i.preheader.i129
    i32 2, label %bb.r
    i32 3, label %.lr.ph.i134.i.preheader.i121
    i32 4, label %.lr.ph.i138.i.preheader.i115
  ]

.lr.ph.i134.i.preheader.i121:                     ; preds = %.lr.ph.i111.split
  store i8 %i.pl, ptr %i.qa, align 1, !tbaa !119
  %i.qc = getelementptr i8, ptr %i.qa, i64 1
  store i8 %i.pn, ptr %i.qc, align 1, !tbaa !119
  %i.qd = getelementptr i8, ptr %i.qa, i64 2
  store i8 %i.pp, ptr %i.qd, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

ma_dither_f32.exit.i.preheader.i129:              ; preds = %.lr.ph.i111.split
  store i8 %spec.select.i113, ptr %i.qa, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

.lr.ph.i138.i.preheader.i115:                     ; preds = %.lr.ph.i111.split
  store i32 %i.oy, ptr %i.qa, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i117

bb.r:                                             ; preds = %.lr.ph.i111.split
  store i16 %i.ph, ptr %i.qa, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.loopexit.i130:                ; preds = %.lr.ph.i111.split
  store float %i.oq, ptr %i.qa, align 1
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.i117:                         ; preds = %bb.r, %ma_pcm_convert.exit.loopexit.i130, %.lr.ph.i138.i.preheader.i115, %ma_dither_f32.exit.i.preheader.i129, %.lr.ph.i134.i.preheader.i121, %.lr.ph.i111.split
  %i.qe = add nuw nsw i64 %.277.i114, 1           ; 2 uses
  %i.qf = load i32, ptr %i.kz, align 4, !tbaa !855 ; 2 uses
  %i.qg = zext i32 %i.qf to i64
  %i.qh = icmp samesign ult i64 %i.qe, %i.qg
  br i1 %i.qh, label %.lr.ph.i111.split, label %._crit_edge.i118, !llvm.loop !2560

._crit_edge.i118:                                 ; preds = %ma_pcm_convert.exit.i117, %ma_pcm_convert.exit.i117.us, %bb.p
  %i.qi = phi i32 [ 0, %bb.p ], [ %i.pw, %ma_pcm_convert.exit.i117.us ], [ %i.qf, %ma_pcm_convert.exit.i117 ]
  %i.qj = add nuw i64 %.25478.i109, 1             ; 2 uses
  %exitcond103.not.i119 = icmp eq i64 %i.qj, %2
  br i1 %exitcond103.not.i119, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.p, !llvm.loop !2561

.loopexit65.i103.loopexit.unr-lcssa:              ; preds = %.preheader64.split.i105
  %lcmp.mod400.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod400.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil.preheader

.preheader64.split.i105.epil.preheader:           ; preds = %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.preheader
  %.epil.init399 = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader ], [ %i.nv, %.loopexit65.i103.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter396, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %.preheader64.split.i105.epil

.preheader64.split.i105.epil:                     ; preds = %.preheader64.split.i105.epil, %.preheader64.split.i105.epil.preheader
  %i.qk = phi double [ %i.ql, %.preheader64.split.i105.epil ], [ %.epil.init399, %.preheader64.split.i105.epil.preheader ]
  %epil.iter397 = phi i64 [ %epil.iter397.next, %.preheader64.split.i105.epil ], [ 0, %.preheader64.split.i105.epil.preheader ]
  %i.ql = fadd double %i.mj, %i.qk                ; 2 uses
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil, !llvm.loop !2562

.loopexit65.i103:                                 ; preds = %._crit_edge.us75.i101, %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.epil
  %.us-phi76.i104 = phi double [ %i.ql, %.preheader64.split.i105.epil ], [ %i.nv, %.loopexit65.i103.loopexit.unr-lcssa ], [ %i.nc, %._crit_edge.us75.i101 ]
  store double %.us-phi76.i104, ptr %i.mf, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i89.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil.preheader

.preheader66.split.i91.epil.preheader:            ; preds = %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.preheader
  %.epil.init = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader ], [ %i.oe, %.loopexit67.i89.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod395)
  br label %.preheader66.split.i91.epil

.preheader66.split.i91.epil:                      ; preds = %.preheader66.split.i91.epil, %.preheader66.split.i91.epil.preheader
  %i.qm = phi double [ %i.qn, %.preheader66.split.i91.epil ], [ %.epil.init, %.preheader66.split.i91.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader66.split.i91.epil ], [ 0, %.preheader66.split.i91.epil.preheader ]
  %i.qn = fadd double %i.lf, %i.qm                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil, !llvm.loop !2563

.loopexit67.i89:                                  ; preds = %._crit_edge.us.i87, %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.epil
  %.us-phi.i90 = phi double [ %i.qn, %.preheader66.split.i91.epil ], [ %i.oe, %.loopexit67.i89.loopexit.unr-lcssa ], [ %i.md, %._crit_edge.us.i87 ]
  store double %.us-phi.i90, ptr %i.lb, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.s:                                             ; preds = %bb.d
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !850
  %i.qq = sitofp i64 %2 to double
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !851
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qp, double %i.qq, double %i.qs)
  store double %i.qt, ptr %i.qr, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

ma_waveform_read_pcm_frames__sine.exit:           ; preds = %._crit_edge.i118, %._crit_edge.i67, %._crit_edge.i, %.loopexit67.i89, %.loopexit65.i103, %.loopexit67.i38, %.loopexit65.i52, %.loopexit67.i, %.loopexit65.i, %bb.j, %bb.s
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ma_waveform_read_pcm_frames__sine.exit
  store i64 %2, ptr %3, align 8, !tbaa !164
  br label %bb.u

bb.u:                                             ; preds = %ma_waveform_read_pcm_frames__sine.exit, %bb.t, %bb.e, %bb.c
  %.0 = phi i32 [ -3, %bb.e ], [ -2, %bb.c ], [ 0, %ma_waveform_read_pcm_frames__sine.exit ], [ 0, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ma_waveform_read_pcm_frames__square(ptr nofree noundef nonnull captures(none) %0, double noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #48 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !854  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !855  ; 9 uses
  switch i32 %i.c, label %.preheader [
    i32 5, label %.preheader68
    i32 2, label %.preheader70
  ]

.preheader70:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load double, ptr %i.g, align 8, !tbaa !852 ; 2 uses
  %i.i = fneg double %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load double, ptr %i.j, align 8, !tbaa !850 ; 10 uses
  %i.l = zext i32 %i.e to i64                     ; 7 uses
  %.not = icmp eq i32 %i.e, 0
  %.promoted = load double, ptr %i.f, align 8, !tbaa !851 ; 3 uses
  br i1 %.not, label %.preheader70.split.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader70
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check123 = icmp ult i32 %i.e, 16
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 4294967280               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec124 = and i64 %i.l, 4294967292            ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec124, %i.l
  br label %iter.check

.preheader70.split.preheader:                     ; preds = %.preheader70
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.n = icmp ult i64 %3, 8
  br i1 %i.n, label %.preheader70.split.epil.preheader, label %.preheader70.split.preheader.new

.preheader70.split.preheader.new:                 ; preds = %.preheader70.split.preheader
  %unroll_iter = and i64 %3, -8
  br label %.preheader70.split

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us
  %.15673.us = phi i64 [ %i.ag, %._crit_edge.us ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.o = phi double [ %i.af, %._crit_edge.us ], [ %.promoted, %iter.check.preheader ] ; 3 uses
  %i.p = fptosi double %i.o to i64
  %i.q = sitofp i64 %i.p to double
  %i.r = fsub double %i.o, %i.q
  %i.s = fcmp olt double %i.r, %1
  %.0.i.i.us = select i1 %i.s, double %i.h, double %i.i
  %i.t = fptrunc double %.0.i.i.us to float
  %i.u = fmul float %i.t, 3.276700e+04
  %i.v = fptosi float %i.u to i16                 ; 3 uses
  %i.w = mul i64 %.15673.us, %i.l
  %i.x = getelementptr [2 x i8], ptr %2, i64 %i.w ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2564

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert125 = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat126 = shufflevector <4 x i16> %broadcast.splatinsert125, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = getelementptr [2 x i8], ptr %i.x, i64 %index127
  store <4 x i16> %broadcast.splat126, ptr %i.ab, align 2, !tbaa !122
  %index.next128 = add nuw i64 %index127, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2565

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n129, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.172.us = phi i64 [ %i.ae, %vec.epilog.scalar.ph ], [ %.172.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.x, i64 %.172.us
  store i16 %i.v, ptr %i.ad, align 2, !tbaa !122
  %i.ae = add nuw nsw i64 %.172.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.l
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !2566

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.af = fadd double %i.o, %i.k                  ; 2 uses
  %i.ag = add nuw i64 %.15673.us, 1               ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond102.not, label %.loopexit71, label %iter.check, !llvm.loop !2567

.preheader68:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !852 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !850 ; 10 uses
  %i.an = zext i32 %i.e to i64                    ; 4 uses
  %.not84 = icmp eq i32 %i.e, 0
  %.promoted75 = load double, ptr %i.ah, align 8, !tbaa !851 ; 3 uses
  br i1 %.not84, label %.preheader68.split.preheader, label %.lr.ph.us78.preheader

.lr.ph.us78.preheader:                            ; preds = %.preheader68
  %min.iters.check130 = icmp ult i32 %i.e, 8
  %n.vec132 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec132, %i.an
  br label %.lr.ph.us78

.preheader68.split.preheader:                     ; preds = %.preheader68
  %xtraiter149 = and i64 %3, 7                    ; 3 uses
  %i.ao = icmp ult i64 %3, 8
  br i1 %i.ao, label %.preheader68.split.epil.preheader, label %.preheader68.split.preheader.new

.preheader68.split.preheader.new:                 ; preds = %.preheader68.split.preheader
  %unroll_iter156 = and i64 %3, -8
  br label %.preheader68.split

.lr.ph.us78:                                      ; preds = %.lr.ph.us78.preheader, %._crit_edge.us79
  %.05577.us = phi i64 [ %i.bd, %._crit_edge.us79 ], [ 0, %.lr.ph.us78.preheader ] ; 2 uses
  %i.ap = phi double [ %i.bc, %._crit_edge.us79 ], [ %.promoted75, %.lr.ph.us78.preheader ] ; 3 uses
  %i.aq = fptosi double %i.ap to i64
  %i.ar = sitofp i64 %i.aq to double
  %i.as = fsub double %i.ap, %i.ar
  %i.at = fcmp olt double %i.as, %1
  %.0.i.us = select i1 %i.at, double %i.aj, double %i.ak
  %i.au = fptrunc double %.0.i.us to float        ; 2 uses
  %i.av = mul i64 %.05577.us, %i.an
  %i.aw = getelementptr [4 x i8], ptr %2, i64 %i.av ; 2 uses
  br i1 %min.iters.check130, label %scalar.ph.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.us78
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat134 = shufflevector <4 x float> %broadcast.splatinsert133, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body135 ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %index136 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <4 x float> %broadcast.splat134, ptr %i.ax, align 4, !tbaa !349
  store <4 x float> %broadcast.splat134, ptr %i.ay, align 4, !tbaa !349
  %index.next137 = add nuw i64 %index136, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.az, label %middle.block138, label %vector.body135, !llvm.loop !2568

middle.block138:                                  ; preds = %vector.body135
  br i1 %cmp.n139, label %._crit_edge.us79, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us78, %middle.block138
  %.074.us.ph = phi i64 [ 0, %.lr.ph.us78 ], [ %n.vec132, %middle.block138 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.074.us = phi i64 [ %i.bb, %scalar.ph ], [ %.074.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %.074.us
  store float %i.au, ptr %i.ba, align 4, !tbaa !349
  %i.bb = add nuw nsw i64 %.074.us, 1             ; 2 uses
  %exitcond104.not = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond104.not, label %._crit_edge.us79, label %scalar.ph, !llvm.loop !2569

._crit_edge.us79:                                 ; preds = %scalar.ph, %middle.block138
  %i.bc = fadd double %i.ap, %i.am                ; 2 uses
  %i.bd = add nuw i64 %.05577.us, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond105.not, label %.loopexit69, label %.lr.ph.us78, !llvm.loop !2570

.preheader:                                       ; preds = %bb.a
  %i.be = zext i32 %i.c to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118 ; 2 uses
  %i.bh = mul i32 %i.e, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = zext i32 %i.bh to i64
  %i.bm = zext i32 %i.bg to i64
  %i.bn = ptrtoint ptr %i.a to i64
  br label %bb.b

.preheader68.split:                               ; preds = %.preheader68.split, %.preheader68.split.preheader.new
  %i.bo = phi double [ %.promoted75, %.preheader68.split.preheader.new ], [ %i.bw, %.preheader68.split ]
  %niter157 = phi i64 [ 0, %.preheader68.split.preheader.new ], [ %niter157.next.7, %.preheader68.split ]
  %i.bp = fadd double %i.bo, %i.am
  %i.bq = fadd double %i.bp, %i.am
  %i.br = fadd double %i.bq, %i.am
  %i.bs = fadd double %i.br, %i.am
  %i.bt = fadd double %i.bs, %i.am
  %i.bu = fadd double %i.bt, %i.am
  %i.bv = fadd double %i.bu, %i.am
  %i.bw = fadd double %i.bv, %i.am                ; 3 uses
  %niter157.next.7 = add nuw i64 %niter157, 8     ; 2 uses
  %niter157.ncmp.7 = icmp eq i64 %niter157.next.7, %unroll_iter156
  br i1 %niter157.ncmp.7, label %.loopexit69.loopexit.unr-lcssa, label %.preheader68.split, !llvm.loop !2570

.preheader70.split:                               ; preds = %.preheader70.split, %.preheader70.split.preheader.new
  %i.bx = phi double [ %.promoted, %.preheader70.split.preheader.new ], [ %i.cf, %.preheader70.split ]
  %niter = phi i64 [ 0, %.preheader70.split.preheader.new ], [ %niter.next.7, %.preheader70.split ]
  %i.by = fadd double %i.bx, %i.k
  %i.bz = fadd double %i.by, %i.k
  %i.ca = fadd double %i.bz, %i.k
  %i.cb = fadd double %i.ca, %i.k
  %i.cc = fadd double %i.cb, %i.k
  %i.cd = fadd double %i.cc, %i.k
  %i.ce = fadd double %i.cd, %i.k
  %i.cf = fadd double %i.ce, %i.k                 ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit71.loopexit.unr-lcssa, label %.preheader70.split, !llvm.loop !2567

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %i.cg = phi i32 [ %i.e, %.preheader ], [ %i.ed, %._crit_edge ]
  %.25782 = phi i64 [ 0, %.preheader ], [ %i.ee, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ch = load double, ptr %i.bi, align 8, !tbaa !851 ; 3 uses
  %i.ci = load double, ptr %i.bj, align 8, !tbaa !852 ; 2 uses
  %i.cj = fptosi double %i.ch to i64
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fsub double %i.ch, %i.ck
  %i.cm = fcmp olt double %i.cl, %1
  %i.cn = fneg double %i.ci
  %.0.i61 = select i1 %i.cm, double %i.ci, double %i.cn ; 2 uses
  %i.co = fptrunc double %.0.i61 to float         ; 5 uses
  store float %i.co, ptr %i.a, align 4, !tbaa !349
  %i.cp = load double, ptr %i.bk, align 8, !tbaa !850
  %i.cq = fadd double %i.ch, %i.cp
  store double %i.cq, ptr %i.bi, align 8, !tbaa !851
  %.not85 = icmp eq i32 %i.cg, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cr = mul i64 %.25782, %i.bl
  %i.cs = getelementptr i8, ptr %2, i64 %i.cr
  %i.ct = fcmp olt double %.0.i61, f0xBFF0000010000000 ; 5 uses
  %i.cu = fpext float %i.co to double             ; 2 uses
  %i.cv = fcmp ogt double %i.cu, 1.000000e+00
  %i.cw = select i1 %i.cv, double 1.000000e+00, double %i.cu
  %i.cx = fmul double %i.cw, f0x41DFFFFFFFC00000
  %i.cy = fptosi double %i.cx to i32
  %i.cz = fcmp ogt float %i.co, 1.000000e+00
  %i.da = select i1 %i.cz, float 1.000000e+00, float %i.co
end_hunk_14
begin_hunk_15_@ma_noise_set_seed:bb.a
  store i32 %1, ptr %i.b, align 8, !tbaa !2586
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -3, -1) i32 @ma_noise_set_type(ptr nofree noundef readnone captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %. = select i1 %i.a, i32 -2, i32 -3
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define range(i32 -3, 1) i32 @ma_noise_read_pcm_frames(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #29 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp eq ptr %0, null
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %ma_noise_read_pcm_frames__white.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !864
  switch i32 %i.k, label %bb.aw [
    i32 0, label %bb.f
    i32 1, label %bb.r
    i32 2, label %bb.aj
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !869  ; 8 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i32, ptr %i.l, align 8, !tbaa !870  ; 2 uses
  switch i32 %i.p, label %bb.m [
    i32 5, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !2632
  %.not96.i = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load double, ptr %i.t, align 8, !tbaa !868 ; 2 uses
  %i.v = zext i32 %i.n to i64                     ; 6 uses
  %.promoted213 = load i32, ptr %i.s, align 8, !tbaa !156 ; 2 uses
  br i1 %.not96.i, label %.preheader114, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %bb.g
  %min.iters.check504 = icmp ult i32 %i.n, 8
  %n.vec506 = and i64 %i.v, 4294967288            ; 3 uses
  %cmp.n513 = icmp eq i64 %n.vec506, %i.v
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.loopexit
  %i.w = phi i32 [ %i.y, %.loopexit ], [ %.promoted213, %.lr.ph206.preheader ]
  %.084.i205 = phi i64 [ %i.aj, %.loopexit ], [ 0, %.lr.ph206.preheader ] ; 2 uses
  %i.x = mul i32 %i.w, 48271
  %i.y = urem i32 %i.x, 2147483647                ; 3 uses
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = fdiv nnan double %i.z, f0x41DFFFFFFFC00000
  %i.ab = fmul double %i.u, %i.aa
  %i.ac = fptrunc double %i.ab to float           ; 2 uses
  %i.ad = mul i64 %.084.i205, %i.v
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  br i1 %min.iters.check504, label %scalar.ph503.preheader, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206
  %broadcast.splatinsert507 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat508 = shufflevector <4 x float> %broadcast.splatinsert507, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph505
  %index510 = phi i64 [ 0, %vector.ph505 ], [ %index.next511, %vector.body509 ] ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %index510 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  store <4 x float> %broadcast.splat508, ptr %i.af, align 4, !tbaa !349
  store <4 x float> %broadcast.splat508, ptr %i.ag, align 4, !tbaa !349
  %index.next511 = add nuw i64 %index510, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next511, %n.vec506
  br i1 %i.ah, label %middle.block512, label %vector.body509, !llvm.loop !2587

middle.block512:                                  ; preds = %vector.body509
  br i1 %cmp.n513, label %.loopexit, label %scalar.ph503.preheader

scalar.ph503.preheader:                           ; preds = %.lr.ph206, %middle.block512
  %indvars.iv334.ph = phi i64 [ 0, %.lr.ph206 ], [ %n.vec506, %middle.block512 ]
  br label %scalar.ph503

scalar.ph503:                                     ; preds = %scalar.ph503.preheader, %scalar.ph503
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %scalar.ph503 ], [ %indvars.iv334.ph, %scalar.ph503.preheader ] ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv334
  store float %i.ac, ptr %i.ai, align 4, !tbaa !349
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %i.v
  br i1 %exitcond338.not, label %.loopexit, label %scalar.ph503, !llvm.loop !2588

.loopexit:                                        ; preds = %scalar.ph503, %middle.block512
  %i.aj = add nuw i64 %.084.i205, 1               ; 2 uses
  %exitcond339.not = icmp eq i64 %i.aj, %2
  br i1 %exitcond339.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit118_crit_edge, label %.lr.ph206, !llvm.loop !2589

.preheader114:                                    ; preds = %bb.g, %bb.i
  %.lcssa211214 = phi i32 [ %i.ao, %bb.i ], [ %.promoted213, %bb.g ]
  %.185.i212 = phi i64 [ %i.au, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.ak = mul i64 %.185.i212, %i.v
  %i.al = getelementptr [4 x i8], ptr %1, i64 %i.ak
  br label %bb.h

bb.h:                                             ; preds = %.preheader114, %bb.h
  %indvars.iv340 = phi i64 [ 0, %.preheader114 ], [ %indvars.iv.next341, %bb.h ] ; 2 uses
  %i.am = phi i32 [ %.lcssa211214, %.preheader114 ], [ %i.ao, %bb.h ]
  %i.an = mul i32 %i.am, 48271
  %i.ao = urem i32 %i.an, 2147483647              ; 4 uses
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = fdiv nnan double %i.ap, f0x41DFFFFFFFC00000
  %i.ar = fmul double %i.u, %i.aq
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv340
  store float %i.as, ptr %i.at, align 4, !tbaa !349
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next341, %i.v
  br i1 %exitcond344.not, label %bb.i, label %bb.h, !llvm.loop !2590

bb.i:                                             ; preds = %bb.h
  %i.au = add nuw i64 %.185.i212, 1               ; 2 uses
  %exitcond345.not = icmp eq i64 %i.au, %2
  br i1 %exitcond345.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit116_crit_edge, label %.preheader114, !llvm.loop !2591

bb.j:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !2632
  %.not95.i = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load double, ptr %i.ay, align 8, !tbaa !868 ; 2 uses
  %i.ba = zext i32 %i.n to i64                    ; 9 uses
  %.promoted202 = load i32, ptr %i.ax, align 8, !tbaa !156 ; 2 uses
  br i1 %.not95.i, label %.preheader119, label %iter.check489.preheader

iter.check489.preheader:                          ; preds = %bb.j
  %min.iters.check476 = icmp ult i32 %i.n, 4
  %min.iters.check478 = icmp ult i32 %i.n, 16
  %i.bb = and i64 %i.ba, 12
  %n.vec480 = and i64 %i.ba, 4294967280           ; 4 uses
  %cmp.n487 = icmp eq i64 %n.vec480, %i.ba
  %min.epilog.iters.check492 = icmp eq i64 %i.bb, 0
  %n.vec494 = and i64 %i.ba, 4294967292           ; 3 uses
  %cmp.n501 = icmp eq i64 %n.vec494, %i.ba
  br label %iter.check489

iter.check489:                                    ; preds = %iter.check489.preheader, %.loopexit515
  %i.bc = phi i32 [ %i.be, %.loopexit515 ], [ %.promoted202, %iter.check489.preheader ]
  %.286.i194 = phi i64 [ %i.bt, %.loopexit515 ], [ 0, %iter.check489.preheader ] ; 2 uses
  %i.bd = mul i32 %i.bc, 48271
  %i.be = urem i32 %i.bd, 2147483647              ; 3 uses
  %i.bf = uitofp nneg i32 %i.be to double
  %i.bg = fdiv nnan double %i.bf, f0x41DFFFFFFFC00000
  %i.bh = fmul double %i.az, %i.bg
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fmul float %i.bi, 3.276700e+04
  %i.bk = fptosi float %i.bj to i16               ; 3 uses
  %i.bl = mul i64 %.286.i194, %i.ba
  %i.bm = getelementptr [2 x i8], ptr %1, i64 %i.bl ; 3 uses
  br i1 %min.iters.check476, label %vec.epilog.scalar.ph490.preheader, label %vector.main.loop.iter.check477

vector.main.loop.iter.check477:                   ; preds = %iter.check489
  br i1 %min.iters.check478, label %vec.epilog.ph493, label %vector.ph479

vector.ph479:                                     ; preds = %vector.main.loop.iter.check477
  %broadcast.splatinsert481 = insertelement <8 x i16> poison, i16 %i.bk, i64 0
  %broadcast.splat482 = shufflevector <8 x i16> %broadcast.splatinsert481, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.ph479, %vector.body483
  %index484 = phi i64 [ 0, %vector.ph479 ], [ %index.next485, %vector.body483 ] ; 2 uses
  %i.bn = getelementptr [2 x i8], ptr %i.bm, i64 %index484 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store <8 x i16> %broadcast.splat482, ptr %i.bn, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat482, ptr %i.bo, align 2, !tbaa !122
  %index.next485 = add nuw i64 %index484, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.bp, label %middle.block486, label %vector.body483, !llvm.loop !2592

middle.block486:                                  ; preds = %vector.body483
  br i1 %cmp.n487, label %.loopexit515, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  br i1 %min.epilog.iters.check492, label %vec.epilog.scalar.ph490.preheader, label %vec.epilog.ph493, !prof !348

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check477, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec480, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check477 ]
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next499, %vec.epilog.vector.body497 ] ; 2 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bm, i64 %index498
  store <4 x i16> %broadcast.splat496, ptr %i.bq, align 2, !tbaa !122
  %index.next499 = add nuw i64 %index498, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.br, label %vec.epilog.middle.block500, label %vec.epilog.vector.body497, !llvm.loop !2593

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body497
  br i1 %cmp.n501, label %.loopexit515, label %vec.epilog.scalar.ph490.preheader

vec.epilog.scalar.ph490.preheader:                ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block500
  %indvars.iv322.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec480, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block500 ]
  br label %vec.epilog.scalar.ph490

vec.epilog.scalar.ph490:                          ; preds = %vec.epilog.scalar.ph490.preheader, %vec.epilog.scalar.ph490
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %vec.epilog.scalar.ph490 ], [ %indvars.iv322.ph, %vec.epilog.scalar.ph490.preheader ] ; 2 uses
  %i.bs = getelementptr [2 x i8], ptr %i.bm, i64 %indvars.iv322
  store i16 %i.bk, ptr %i.bs, align 2, !tbaa !122
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %i.ba
  br i1 %exitcond326.not, label %.loopexit515, label %vec.epilog.scalar.ph490, !llvm.loop !2594

.loopexit515:                                     ; preds = %vec.epilog.scalar.ph490, %vec.epilog.middle.block500, %middle.block486
  %i.bt = add nuw i64 %.286.i194, 1               ; 2 uses
  %exitcond327.not = icmp eq i64 %i.bt, %2
  br i1 %exitcond327.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit123_crit_edge, label %iter.check489, !llvm.loop !2595

.preheader119:                                    ; preds = %bb.j, %bb.l
  %.lcssa200203 = phi i32 [ %i.by, %bb.l ], [ %.promoted202, %bb.j ]
  %.387.i201 = phi i64 [ %i.cg, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.bu = mul i64 %.387.i201, %i.ba
  %i.bv = getelementptr [2 x i8], ptr %1, i64 %i.bu
  br label %bb.k

bb.k:                                             ; preds = %.preheader119, %bb.k
  %indvars.iv328 = phi i64 [ 0, %.preheader119 ], [ %indvars.iv.next329, %bb.k ] ; 2 uses
  %i.bw = phi i32 [ %.lcssa200203, %.preheader119 ], [ %i.by, %bb.k ]
  %i.bx = mul i32 %i.bw, 48271
  %i.by = urem i32 %i.bx, 2147483647              ; 4 uses
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = fdiv nnan double %i.bz, f0x41DFFFFFFFC00000
  %i.cb = fmul double %i.az, %i.ca
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fmul float %i.cc, 3.276700e+04
  %i.ce = fptosi float %i.cd to i16
  %i.cf = getelementptr [2 x i8], ptr %i.bv, i64 %indvars.iv328
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !122
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %i.ba
  br i1 %exitcond332.not, label %bb.l, label %bb.k, !llvm.loop !2596

bb.l:                                             ; preds = %bb.k
  %i.cg = add nuw i64 %.387.i201, 1               ; 2 uses
  %exitcond333.not = icmp eq i64 %i.cg, %2
  br i1 %exitcond333.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit121_crit_edge, label %.preheader119, !llvm.loop !2597

bb.m:                                             ; preds = %bb.f
  %i.ch = zext i32 %i.p to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !118 ; 3 uses
  %i.ck = mul i32 %i.cj, %i.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2632
  %.not.i = icmp eq i32 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cp = zext i32 %i.ck to i64                   ; 2 uses
  %wide.trip.count355 = zext i32 %i.n to i64      ; 2 uses
  br i1 %.not.i, label %.preheader, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.m, %bb.o
  %.488.i216 = phi i64 [ %i.df, %bb.o ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !156
  %i.cr = mul i32 %i.cq, 48271
  %i.cs = urem i32 %i.cr, 2147483647              ; 2 uses
  store i32 %i.cs, ptr %i.cn, align 8, !tbaa !156
  %i.ct = uitofp nneg i32 %i.cs to double
  %i.cu = fdiv nnan double %i.ct, f0x41DFFFFFFFC00000
  %i.cv = load double, ptr %i.co, align 8, !tbaa !868
  %i.cw = fmul double %i.cv, %i.cu
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %i.e, align 4, !tbaa !349
  %i.cy = mul i64 %.488.i216, %i.cp
  %i.cz = getelementptr i8, ptr %1, i64 %i.cy
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph217, %bb.n
  %indvars.iv346 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next347, %bb.n ] ; 2 uses
  %i.da = trunc nuw i64 %indvars.iv346 to i32
  %i.db = mul i32 %i.cj, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.dc
  %i.de = load i32, ptr %i.l, align 8, !tbaa !870
  call void @ma_pcm_convert(ptr noundef %i.dd, i32 noundef %i.de, ptr noundef nonnull %i.e, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count355
  br i1 %exitcond350.not, label %bb.o, label %bb.n, !llvm.loop !2598

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  %i.df = add nuw i64 %.488.i216, 1               ; 2 uses
  %exitcond351.not = icmp eq i64 %i.df, %2
  br i1 %exitcond351.not, label %ma_noise_read_pcm_frames__white.exit, label %.lr.ph217, !llvm.loop !2599

.preheader:                                       ; preds = %bb.m, %bb.q
  %.589.i219 = phi i64 [ %i.dv, %bb.q ], [ 0, %bb.m ] ; 2 uses
  %i.dg = mul i64 %.589.i219, %i.cp
  %i.dh = getelementptr i8, ptr %1, i64 %i.dg
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %indvars.iv352 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next353, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.di = load i32, ptr %i.cn, align 8, !tbaa !156
  %i.dj = mul i32 %i.di, 48271
  %i.dk = urem i32 %i.dj, 2147483647              ; 2 uses
  store i32 %i.dk, ptr %i.cn, align 8, !tbaa !156
  %i.dl = uitofp nneg i32 %i.dk to double
  %i.dm = fdiv nnan double %i.dl, f0x41DFFFFFFFC00000
  %i.dn = load double, ptr %i.co, align 8, !tbaa !868
  %i.do = fmul double %i.dn, %i.dm
  %i.dp = fptrunc double %i.do to float
  store float %i.dp, ptr %i.f, align 4, !tbaa !349
  %i.dq = trunc nuw i64 %indvars.iv352 to i32
  %i.dr = mul i32 %i.cj, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.dh, i64 %i.ds
  %i.du = load i32, ptr %i.l, align 8, !tbaa !870
  call void @ma_pcm_convert(ptr noundef %i.dt, i32 noundef %i.du, ptr noundef nonnull %i.f, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count355
  br i1 %exitcond356.not, label %bb.q, label %bb.p, !llvm.loop !2600

bb.q:                                             ; preds = %bb.p
  %i.dv = add nuw i64 %.589.i219, 1               ; 2 uses
  %exitcond357.not = icmp eq i64 %i.dv, %2
  br i1 %exitcond357.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader, !llvm.loop !2601

bb.r:                                             ; preds = %bb.e
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !869 ; 8 uses
  %i.dz = icmp ne i32 %i.dy, 0
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load i32, ptr %i.dw, align 8, !tbaa !870 ; 2 uses
  switch i32 %i.ea, label %bb.ac [
    i32 5, label %bb.s
    i32 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !2632
  %.not99.i = icmp eq i32 %i.ec, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ei = zext i32 %i.dy to i64                   ; 6 uses
  br i1 %.not99.i, label %.preheader129, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.s
  %min.iters.check464 = icmp ult i32 %i.dy, 8
  %n.vec466 = and i64 %i.ei, 4294967288           ; 3 uses
  %cmp.n473 = icmp eq i64 %n.vec466, %i.ei
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.loopexit516
  %.087.i184 = phi i64 [ %i.gn, %.loopexit516 ], [ 0, %.lr.ph185.preheader ] ; 2 uses
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !119
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !118 ; 5 uses
  %.not.i61 = trunc i32 %i.ek to i1
  %i.el = icmp eq i32 %i.ek, 0
  %or.cond105 = or i1 %i.el, %.not.i61
  br i1 %or.cond105, label %ma_tzcnt32.exit71, label %bb.t
end_hunk_15
begin_hunk_16_@ma_noise_read_pcm_frames:bb.a
  %indvars.iv304 = phi i64 [ 0, %.preheader129 ], [ %indvars.iv.next305, %ma_tzcnt32.exit82 ] ; 7 uses
  %i.gq = load ptr, ptr %i.ee, align 8, !tbaa !119
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv304
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !118 ; 5 uses
  %.not.i72 = trunc i32 %i.gs to i1
  %i.gt = icmp eq i32 %i.gs, 0
  %or.cond106 = or i1 %i.gt, %.not.i72
  br i1 %or.cond106, label %ma_tzcnt32.exit82, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = and i32 %i.gs, 65534
  %i.gv = icmp eq i32 %i.gu, 0                    ; 2 uses
  %i.gw = lshr exact i32 %i.gs, 16
  %spec.select.i74 = select i1 %i.gv, i32 %i.gw, i32 %i.gs ; 3 uses
  %spec.select24.i75 = select i1 %i.gv, i32 17, i32 1 ; 2 uses
  %i.gx = and i32 %spec.select.i74, 255
  %i.gy = icmp eq i32 %i.gx, 0                    ; 2 uses
  %i.gz = lshr exact i32 %spec.select.i74, 8
  %i.ha = or disjoint i32 %spec.select24.i75, 8
  %.119.i76 = select i1 %i.gy, i32 %i.gz, i32 %spec.select.i74 ; 3 uses
  %.1.i77 = select i1 %i.gy, i32 %i.ha, i32 %spec.select24.i75 ; 2 uses
  %i.hb = and i32 %.119.i76, 15
  %i.hc = icmp eq i32 %i.hb, 0                    ; 2 uses
  %i.hd = lshr exact i32 %.119.i76, 4
  %i.he = or disjoint i32 %.1.i77, 4
  %.220.i78 = select i1 %i.hc, i32 %i.hd, i32 %.119.i76 ; 3 uses
  %.2.i79 = select i1 %i.hc, i32 %i.he, i32 %.1.i77 ; 2 uses
  %i.hf = and i32 %.220.i78, 3
  %i.hg = icmp eq i32 %i.hf, 0                    ; 2 uses
  %i.hh = lshr exact i32 %.220.i78, 2
  %i.hi = or disjoint i32 %.2.i79, 2
  %.321.i80 = select i1 %i.hg, i32 %i.hh, i32 %.220.i78
  %.3.i81 = select i1 %i.hg, i32 %i.hi, i32 %.2.i79
  %i.hj = and i32 %.321.i80, 1
  %i.hk = sub nuw nsw i32 %.3.i81, %i.hj
  %i.hl = and i32 %i.hk, 15
  %i.hm = zext nneg i32 %i.hl to i64
  br label %ma_tzcnt32.exit82

ma_tzcnt32.exit82:                                ; preds = %bb.u, %bb.v
  %.022.i73 = phi i64 [ %i.hm, %bb.v ], [ 0, %bb.u ]
  %i.hn = load ptr, ptr %i.ed, align 8, !tbaa !119
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv304
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !866
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.022.i73 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !404
  %i.hs = load i32, ptr %i.ef, align 8, !tbaa !156
  %i.ht = mul i32 %i.hs, 48271
  %i.hu = urem i32 %i.ht, 2147483647              ; 2 uses
  store i32 %i.hu, ptr %i.ef, align 8, !tbaa !156
  %i.hv = uitofp nneg i32 %i.hu to double
  %i.hw = fdiv double %i.hv, f0x41DFFFFFFFC00000  ; 2 uses
  store double %i.hw, ptr %i.hq, align 8, !tbaa !404
  %i.hx = fsub double %i.hw, %i.hr
  %i.hy = load ptr, ptr %i.eg, align 8, !tbaa !119
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv304 ; 2 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !404
  %i.ib = fadd double %i.ia, %i.hx
  store double %i.ib, ptr %i.hz, align 8, !tbaa !404
  %i.ic = load ptr, ptr %i.ee, align 8, !tbaa !119
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv304 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !118
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.id, align 4, !tbaa !118
  %i.ig = load i32, ptr %i.ef, align 8, !tbaa !156
  %i.ih = mul i32 %i.ig, 48271
  %i.ii = urem i32 %i.ih, 2147483647              ; 2 uses
  store i32 %i.ii, ptr %i.ef, align 8, !tbaa !156
  %i.ij = uitofp nneg i32 %i.ii to double
  %i.ik = fdiv nnan double %i.ij, f0x41DFFFFFFFC00000
  %i.il = load ptr, ptr %i.eg, align 8, !tbaa !119
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv304
  %i.in = load double, ptr %i.im, align 8, !tbaa !404
  %i.io = fadd double %i.in, %i.ik
  %i.ip = fdiv double %i.io, 1.000000e+01
  %i.iq = load double, ptr %i.eh, align 8, !tbaa !868
  %i.ir = fmul double %i.iq, %i.ip
  %i.is = fptrunc double %i.ir to float
  %i.it = getelementptr [4 x i8], ptr %i.gp, i64 %indvars.iv304
  store float %i.is, ptr %i.it, align 4, !tbaa !349
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %i.ei
  br i1 %exitcond308.not, label %bb.w, label %bb.u, !llvm.loop !2605

bb.w:                                             ; preds = %ma_tzcnt32.exit82
  %i.iu = add nuw i64 %.188.i187, 1               ; 2 uses
  %exitcond309.not = icmp eq i64 %i.iu, %2
  br i1 %exitcond309.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader129, !llvm.loop !2606

bb.x:                                             ; preds = %bb.r
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !2632
  %.not98.i = icmp eq i32 %i.iw, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jc = zext i32 %i.dy to i64                   ; 9 uses
  br i1 %.not98.i, label %.preheader134, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %bb.x
  %min.iters.check436 = icmp ult i32 %i.dy, 4
  %min.iters.check438 = icmp ult i32 %i.dy, 16
  %i.jd = and i64 %i.jc, 12
  %n.vec440 = and i64 %i.jc, 4294967280           ; 4 uses
  %cmp.n447 = icmp eq i64 %n.vec440, %i.jc
  %min.epilog.iters.check452 = icmp eq i64 %i.jd, 0
  %n.vec454 = and i64 %i.jc, 4294967292           ; 3 uses
  %cmp.n461 = icmp eq i64 %n.vec454, %i.jc
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.loopexit517
  %.289.i179 = phi i64 [ %i.lm, %.loopexit517 ], [ 0, %.lr.ph180.preheader ] ; 2 uses
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !119
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !118 ; 5 uses
  %.not.i46 = trunc i32 %i.jf to i1
  %i.jg = icmp eq i32 %i.jf, 0
  %or.cond107 = or i1 %i.jg, %.not.i46
  br i1 %or.cond107, label %iter.check449, label %bb.y

bb.y:                                             ; preds = %.lr.ph180
  %i.jh = and i32 %i.jf, 65534
  %i.ji = icmp eq i32 %i.jh, 0                    ; 2 uses
  %i.jj = lshr exact i32 %i.jf, 16
  %spec.select.i = select i1 %i.ji, i32 %i.jj, i32 %i.jf ; 3 uses
  %spec.select24.i = select i1 %i.ji, i32 17, i32 1 ; 2 uses
  %i.jk = and i32 %spec.select.i, 255
  %i.jl = icmp eq i32 %i.jk, 0                    ; 2 uses
  %i.jm = lshr exact i32 %spec.select.i, 8
  %i.jn = or disjoint i32 %spec.select24.i, 8
  %.119.i = select i1 %i.jl, i32 %i.jm, i32 %spec.select.i ; 3 uses
  %.1.i47 = select i1 %i.jl, i32 %i.jn, i32 %spec.select24.i ; 2 uses
  %i.jo = and i32 %.119.i, 15
  %i.jp = icmp eq i32 %i.jo, 0                    ; 2 uses
  %i.jq = lshr exact i32 %.119.i, 4
  %i.jr = or disjoint i32 %.1.i47, 4
  %.220.i = select i1 %i.jp, i32 %i.jq, i32 %.119.i ; 3 uses
  %.2.i48 = select i1 %i.jp, i32 %i.jr, i32 %.1.i47 ; 2 uses
  %i.js = and i32 %.220.i, 3
  %i.jt = icmp eq i32 %i.js, 0                    ; 2 uses
  %i.ju = lshr exact i32 %.220.i, 2
  %i.jv = or disjoint i32 %.2.i48, 2
  %.321.i = select i1 %i.jt, i32 %i.ju, i32 %.220.i
  %.3.i49 = select i1 %i.jt, i32 %i.jv, i32 %.2.i48
  %i.jw = and i32 %.321.i, 1
  %i.jx = sub nuw nsw i32 %.3.i49, %i.jw
  %i.jy = and i32 %i.jx, 15
  %i.jz = zext nneg i32 %i.jy to i64
  br label %iter.check449

iter.check449:                                    ; preds = %.lr.ph180, %bb.y
  %.022.i = phi i64 [ %i.jz, %bb.y ], [ 0, %.lr.ph180 ]
  %i.ka = load ptr, ptr %i.ix, align 8, !tbaa !119
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !866
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.022.i ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !404
  %i.ke = load i32, ptr %i.iz, align 8, !tbaa !156
  %i.kf = mul i32 %i.ke, 48271
  %i.kg = urem i32 %i.kf, 2147483647              ; 2 uses
  store i32 %i.kg, ptr %i.iz, align 8, !tbaa !156
  %i.kh = uitofp nneg i32 %i.kg to double
  %i.ki = fdiv double %i.kh, f0x41DFFFFFFFC00000  ; 2 uses
  store double %i.ki, ptr %i.kc, align 8, !tbaa !404
  %i.kj = fsub double %i.ki, %i.kd
  %i.kk = load ptr, ptr %i.ja, align 8, !tbaa !119 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !404
  %i.km = fadd double %i.kl, %i.kj
  store double %i.km, ptr %i.kk, align 8, !tbaa !404
  %i.kn = load ptr, ptr %i.iy, align 8, !tbaa !119 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !118
  %i.kp = add i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !118
  %i.kq = load i32, ptr %i.iz, align 8, !tbaa !156
  %i.kr = mul i32 %i.kq, 48271
  %i.ks = urem i32 %i.kr, 2147483647              ; 2 uses
  store i32 %i.ks, ptr %i.iz, align 8, !tbaa !156
  %i.kt = uitofp nneg i32 %i.ks to double
  %i.ku = fdiv nnan double %i.kt, f0x41DFFFFFFFC00000
  %i.kv = load ptr, ptr %i.ja, align 8, !tbaa !119
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !404
  %i.kx = fadd double %i.kw, %i.ku
  %i.ky = fdiv double %i.kx, 1.000000e+01
  %i.kz = load double, ptr %i.jb, align 8, !tbaa !868
  %i.la = fmul double %i.kz, %i.ky
  %i.lb = fptrunc double %i.la to float
  %i.lc = fmul float %i.lb, 3.276700e+04
  %i.ld = fptosi float %i.lc to i16               ; 3 uses
  %i.le = mul i64 %.289.i179, %i.jc
  %i.lf = getelementptr [2 x i8], ptr %1, i64 %i.le ; 3 uses
  br i1 %min.iters.check436, label %vec.epilog.scalar.ph450.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check449
  br i1 %min.iters.check438, label %vec.epilog.ph453, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body443 ] ; 2 uses
  %i.lg = getelementptr [2 x i8], ptr %i.lf, i64 %index444 ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 16
  store <8 x i16> %broadcast.splat442, ptr %i.lg, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat442, ptr %i.lh, align 2, !tbaa !122
  %index.next445 = add nuw i64 %index444, 16      ; 2 uses
  %i.li = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.li, label %middle.block446, label %vector.body443, !llvm.loop !2607

middle.block446:                                  ; preds = %vector.body443
  br i1 %cmp.n447, label %.loopexit517, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block446
  br i1 %min.epilog.iters.check452, label %vec.epilog.scalar.ph450.preheader, label %vec.epilog.ph453, !prof !348

vec.epilog.ph453:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check451
  %vec.epilog.resume.val448 = phi i64 [ %n.vec440, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check437 ]
  %broadcast.splatinsert455 = insertelement <4 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat456 = shufflevector <4 x i16> %broadcast.splatinsert455, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body457

vec.epilog.vector.body457:                        ; preds = %vec.epilog.vector.body457, %vec.epilog.ph453
  %index458 = phi i64 [ %vec.epilog.resume.val448, %vec.epilog.ph453 ], [ %index.next459, %vec.epilog.vector.body457 ] ; 2 uses
  %i.lj = getelementptr [2 x i8], ptr %i.lf, i64 %index458
  store <4 x i16> %broadcast.splat456, ptr %i.lj, align 2, !tbaa !122
  %index.next459 = add nuw i64 %index458, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.lk, label %vec.epilog.middle.block460, label %vec.epilog.vector.body457, !llvm.loop !2608

vec.epilog.middle.block460:                       ; preds = %vec.epilog.vector.body457
  br i1 %cmp.n461, label %.loopexit517, label %vec.epilog.scalar.ph450.preheader

vec.epilog.scalar.ph450.preheader:                ; preds = %iter.check449, %vec.epilog.iter.check451, %vec.epilog.middle.block460
  %indvars.iv286.ph = phi i64 [ 0, %iter.check449 ], [ %n.vec440, %vec.epilog.iter.check451 ], [ %n.vec454, %vec.epilog.middle.block460 ]
  br label %vec.epilog.scalar.ph450

vec.epilog.scalar.ph450:                          ; preds = %vec.epilog.scalar.ph450.preheader, %vec.epilog.scalar.ph450
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %vec.epilog.scalar.ph450 ], [ %indvars.iv286.ph, %vec.epilog.scalar.ph450.preheader ] ; 2 uses
  %i.ll = getelementptr [2 x i8], ptr %i.lf, i64 %indvars.iv286
  store i16 %i.ld, ptr %i.ll, align 2, !tbaa !122
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %i.jc
  br i1 %exitcond290.not, label %.loopexit517, label %vec.epilog.scalar.ph450, !llvm.loop !2609

.loopexit517:                                     ; preds = %vec.epilog.scalar.ph450, %vec.epilog.middle.block460, %middle.block446
  %i.lm = add nuw i64 %.289.i179, 1               ; 2 uses
  %exitcond291.not = icmp eq i64 %i.lm, %2
  br i1 %exitcond291.not, label %ma_noise_read_pcm_frames__white.exit, label %.lr.ph180, !llvm.loop !2610

.preheader134:                                    ; preds = %bb.x, %bb.ab
  %.390.i182 = phi i64 [ %i.nv, %bb.ab ], [ 0, %bb.x ] ; 2 uses
  %i.ln = mul i64 %.390.i182, %i.jc
  %i.lo = getelementptr [2 x i8], ptr %1, i64 %i.ln
  br label %bb.z

bb.z:                                             ; preds = %.preheader134, %ma_tzcnt32.exit60
  %indvars.iv292 = phi i64 [ 0, %.preheader134 ], [ %indvars.iv.next293, %ma_tzcnt32.exit60 ] ; 7 uses
  %i.lp = load ptr, ptr %i.iy, align 8, !tbaa !119
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv292
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !118 ; 5 uses
  %.not.i50 = trunc i32 %i.lr to i1
  %i.ls = icmp eq i32 %i.lr, 0
  %or.cond108 = or i1 %i.ls, %.not.i50
  br i1 %or.cond108, label %ma_tzcnt32.exit60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lt = and i32 %i.lr, 65534
  %i.lu = icmp eq i32 %i.lt, 0                    ; 2 uses
  %i.lv = lshr exact i32 %i.lr, 16
  %spec.select.i52 = select i1 %i.lu, i32 %i.lv, i32 %i.lr ; 3 uses
  %spec.select24.i53 = select i1 %i.lu, i32 17, i32 1 ; 2 uses
  %i.lw = and i32 %spec.select.i52, 255
  %i.lx = icmp eq i32 %i.lw, 0                    ; 2 uses
  %i.ly = lshr exact i32 %spec.select.i52, 8
  %i.lz = or disjoint i32 %spec.select24.i53, 8
  %.119.i54 = select i1 %i.lx, i32 %i.ly, i32 %spec.select.i52 ; 3 uses
  %.1.i55 = select i1 %i.lx, i32 %i.lz, i32 %spec.select24.i53 ; 2 uses
  %i.ma = and i32 %.119.i54, 15
  %i.mb = icmp eq i32 %i.ma, 0                    ; 2 uses
  %i.mc = lshr exact i32 %.119.i54, 4
  %i.md = or disjoint i32 %.1.i55, 4
  %.220.i56 = select i1 %i.mb, i32 %i.mc, i32 %.119.i54 ; 3 uses
  %.2.i57 = select i1 %i.mb, i32 %i.md, i32 %.1.i55 ; 2 uses
  %i.me = and i32 %.220.i56, 3
  %i.mf = icmp eq i32 %i.me, 0                    ; 2 uses
  %i.mg = lshr exact i32 %.220.i56, 2
  %i.mh = or disjoint i32 %.2.i57, 2
  %.321.i58 = select i1 %i.mf, i32 %i.mg, i32 %.220.i56
  %.3.i59 = select i1 %i.mf, i32 %i.mh, i32 %.2.i57
  %i.mi = and i32 %.321.i58, 1
  %i.mj = sub nuw nsw i32 %.3.i59, %i.mi
  %i.mk = and i32 %i.mj, 15
  %i.ml = zext nneg i32 %i.mk to i64
  br label %ma_tzcnt32.exit60

ma_tzcnt32.exit60:                                ; preds = %bb.z, %bb.aa
  %.022.i51 = phi i64 [ %i.ml, %bb.aa ], [ 0, %bb.z ]
  %i.mm = load ptr, ptr %i.ix, align 8, !tbaa !119
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv292
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !866
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.022.i51 ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !404
  %i.mr = load i32, ptr %i.iz, align 8, !tbaa !156
  %i.ms = mul i32 %i.mr, 48271
  %i.mt = urem i32 %i.ms, 2147483647              ; 2 uses
  store i32 %i.mt, ptr %i.iz, align 8, !tbaa !156
  %i.mu = uitofp nneg i32 %i.mt to double
  %i.mv = fdiv double %i.mu, f0x41DFFFFFFFC00000  ; 2 uses
  store double %i.mv, ptr %i.mp, align 8, !tbaa !404
  %i.mw = fsub double %i.mv, %i.mq
  %i.mx = load ptr, ptr %i.ja, align 8, !tbaa !119
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv292 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !404
  %i.na = fadd double %i.mz, %i.mw
  store double %i.na, ptr %i.my, align 8, !tbaa !404
  %i.nb = load ptr, ptr %i.iy, align 8, !tbaa !119
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv292 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !118
  %i.ne = add i32 %i.nd, 1
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !118
  %i.nf = load i32, ptr %i.iz, align 8, !tbaa !156
  %i.ng = mul i32 %i.nf, 48271
  %i.nh = urem i32 %i.ng, 2147483647              ; 2 uses
  store i32 %i.nh, ptr %i.iz, align 8, !tbaa !156
  %i.ni = uitofp nneg i32 %i.nh to double
  %i.nj = fdiv nnan double %i.ni, f0x41DFFFFFFFC00000
  %i.nk = load ptr, ptr %i.ja, align 8, !tbaa !119
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv292
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !404
  %i.nn = fadd double %i.nm, %i.nj
  %i.no = fdiv double %i.nn, 1.000000e+01
  %i.np = load double, ptr %i.jb, align 8, !tbaa !868
  %i.nq = fmul double %i.np, %i.no
  %i.nr = fptrunc double %i.nq to float
  %i.ns = fmul float %i.nr, 3.276700e+04
  %i.nt = fptosi float %i.ns to i16
  %i.nu = getelementptr [2 x i8], ptr %i.lo, i64 %indvars.iv292
  store i16 %i.nt, ptr %i.nu, align 2, !tbaa !122
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %i.jc
  br i1 %exitcond296.not, label %bb.ab, label %bb.z, !llvm.loop !2611

bb.ab:                                            ; preds = %ma_tzcnt32.exit60
  %i.nv = add nuw i64 %.390.i182, 1               ; 2 uses
  %exitcond297.not = icmp eq i64 %i.nv, %2
  br i1 %exitcond297.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader134, !llvm.loop !2612

bb.ac:                                            ; preds = %bb.r
  %i.nw = zext i32 %i.ea to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !118 ; 3 uses
  %i.nz = mul i32 %i.ny, %i.dy
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !2632
  %.not.i28 = icmp eq i32 %i.ob, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oh = zext i32 %i.nz to i64                   ; 2 uses
  %wide.trip.count319 = zext i32 %i.dy to i64     ; 2 uses
  br i1 %.not.i28, label %.preheader124, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.ac, %bb.af
  %.491.i189 = phi i64 [ %i.qn, %bb.af ], [ 0, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.oi = load ptr, ptr %i.od, align 8, !tbaa !119
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !118 ; 5 uses
  %.not.i83 = trunc i32 %i.oj to i1
  %i.ok = icmp eq i32 %i.oj, 0
  %or.cond109 = or i1 %i.ok, %.not.i83
  br i1 %or.cond109, label %ma_tzcnt32.exit93, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph190
  %i.ol = and i32 %i.oj, 65534
  %i.om = icmp eq i32 %i.ol, 0                    ; 2 uses
  %i.on = lshr exact i32 %i.oj, 16
  %spec.select.i85 = select i1 %i.om, i32 %i.on, i32 %i.oj ; 3 uses
  %spec.select24.i86 = select i1 %i.om, i32 17, i32 1 ; 2 uses
  %i.oo = and i32 %spec.select.i85, 255
  %i.op = icmp eq i32 %i.oo, 0                    ; 2 uses
  %i.oq = lshr exact i32 %spec.select.i85, 8
  %i.or = or disjoint i32 %spec.select24.i86, 8
  %.119.i87 = select i1 %i.op, i32 %i.oq, i32 %spec.select.i85 ; 3 uses
  %.1.i88 = select i1 %i.op, i32 %i.or, i32 %spec.select24.i86 ; 2 uses
  %i.os = and i32 %.119.i87, 15
  %i.ot = icmp eq i32 %i.os, 0                    ; 2 uses
  %i.ou = lshr exact i32 %.119.i87, 4
  %i.ov = or disjoint i32 %.1.i88, 4
  %.220.i89 = select i1 %i.ot, i32 %i.ou, i32 %.119.i87 ; 3 uses
  %.2.i90 = select i1 %i.ot, i32 %i.ov, i32 %.1.i88 ; 2 uses
  %i.ow = and i32 %.220.i89, 3
  %i.ox = icmp eq i32 %i.ow, 0                    ; 2 uses
  %i.oy = lshr exact i32 %.220.i89, 2
  %i.oz = or disjoint i32 %.2.i90, 2
  %.321.i91 = select i1 %i.ox, i32 %i.oy, i32 %.220.i89
  %.3.i92 = select i1 %i.ox, i32 %i.oz, i32 %.2.i90
  %i.pa = and i32 %.321.i91, 1
  %i.pb = sub nuw nsw i32 %.3.i92, %i.pa
end_hunk_16
begin_hunk_17_@ma_noise_read_pcm_frames:bb.a
  %i.si = urem i32 %i.sh, 2147483647              ; 2 uses
  store i32 %i.si, ptr %i.oe, align 8, !tbaa !156
  %i.sj = uitofp nneg i32 %i.si to double
  %i.sk = fdiv nnan double %i.sj, f0x41DFFFFFFFC00000
  %i.sl = load ptr, ptr %i.of, align 8, !tbaa !119
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv316
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !404
  %i.so = fadd double %i.sn, %i.sk
  %i.sp = fdiv double %i.so, 1.000000e+01
  %i.sq = load double, ptr %i.og, align 8, !tbaa !868
  %i.sr = fmul double %i.sq, %i.sp
  %i.ss = fptrunc double %i.sr to float
  store float %i.ss, ptr %i.d, align 4, !tbaa !349
  %i.st = trunc nuw i64 %indvars.iv316 to i32
  %i.su = mul i32 %i.ny, %i.st
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr i8, ptr %i.qp, i64 %i.sv
  %i.sx = load i32, ptr %i.dw, align 8, !tbaa !870
  call void @ma_pcm_convert(ptr noundef %i.sw, i32 noundef %i.sx, ptr noundef nonnull %i.d, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count319
  br i1 %exitcond320.not, label %bb.ai, label %bb.ag, !llvm.loop !2615

bb.ai:                                            ; preds = %ma_tzcnt32.exit104
  %i.sy = add nuw i64 %.592.i192, 1               ; 2 uses
  %exitcond321.not = icmp eq i64 %i.sy, %2
  br i1 %exitcond321.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader124, !llvm.loop !2616

bb.aj:                                            ; preds = %bb.e
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !869 ; 8 uses
  %i.tc = icmp ne i32 %i.tb, 0
  tail call void @llvm.assume(i1 %i.tc)
  %i.td = load i32, ptr %i.sz, align 8, !tbaa !870 ; 2 uses
  switch i32 %i.td, label %bb.aq [
    i32 5, label %bb.ak
    i32 2, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !2632
  %.not99.i36 = icmp eq i32 %i.tf, 0
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.tj = zext i32 %i.tb to i64                   ; 6 uses
  %.promoted171 = load i32, ptr %i.tg, align 8, !tbaa !156 ; 2 uses
  br i1 %.not99.i36, label %.preheader144, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.ak
  %min.iters.check424 = icmp ult i32 %i.tb, 8
  %n.vec426 = and i64 %i.tj, 4294967288           ; 3 uses
  %cmp.n433 = icmp eq i64 %n.vec426, %i.tj
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %.loopexit518
  %i.tk = phi i32 [ %i.tm, %.loopexit518 ], [ %.promoted171, %.lr.ph164.preheader ]
  %.087.i37163 = phi i64 [ %i.ud, %.loopexit518 ], [ 0, %.lr.ph164.preheader ] ; 2 uses
  %i.tl = mul i32 %i.tk, 48271
  %i.tm = urem i32 %i.tl, 2147483647              ; 3 uses
  %i.tn = uitofp nneg i32 %i.tm to double
  %i.to = fdiv double %i.tn, f0x41DFFFFFFFC00000
  %i.tp = load ptr, ptr %i.th, align 8, !tbaa !119 ; 2 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !404
  %i.tr = fadd double %i.tq, %i.to
  %i.ts = fdiv double %i.tr, 1.005000e+00         ; 2 uses
  store double %i.ts, ptr %i.tp, align 8, !tbaa !404
  %i.tt = fdiv double %i.ts, 2.000000e+01
  %i.tu = load double, ptr %i.ti, align 8, !tbaa !868
  %i.tv = fmul double %i.tu, %i.tt
  %i.tw = fptrunc double %i.tv to float           ; 2 uses
  %i.tx = mul i64 %.087.i37163, %i.tj
  %i.ty = getelementptr [4 x i8], ptr %1, i64 %i.tx ; 2 uses
  br i1 %min.iters.check424, label %scalar.ph.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %.lr.ph164
  %broadcast.splatinsert427 = insertelement <4 x float> poison, float %i.tw, i64 0
  %broadcast.splat428 = shufflevector <4 x float> %broadcast.splatinsert427, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph425
  %index430 = phi i64 [ 0, %vector.ph425 ], [ %index.next431, %vector.body429 ] ; 2 uses
  %i.tz = getelementptr [4 x i8], ptr %i.ty, i64 %index430 ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 16
  store <4 x float> %broadcast.splat428, ptr %i.tz, align 4, !tbaa !349
  store <4 x float> %broadcast.splat428, ptr %i.ua, align 4, !tbaa !349
  %index.next431 = add nuw i64 %index430, 8       ; 2 uses
  %i.ub = icmp eq i64 %index.next431, %n.vec426
  br i1 %i.ub, label %middle.block432, label %vector.body429, !llvm.loop !2617

middle.block432:                                  ; preds = %vector.body429
  br i1 %cmp.n433, label %.loopexit518, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph164, %middle.block432
  %indvars.iv262.ph = phi i64 [ 0, %.lr.ph164 ], [ %n.vec426, %middle.block432 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %scalar.ph ], [ %indvars.iv262.ph, %scalar.ph.preheader ] ; 2 uses
  %i.uc = getelementptr [4 x i8], ptr %i.ty, i64 %indvars.iv262
  store float %i.tw, ptr %i.uc, align 4, !tbaa !349
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %i.tj
  br i1 %exitcond266.not, label %.loopexit518, label %scalar.ph, !llvm.loop !2618

.loopexit518:                                     ; preds = %scalar.ph, %middle.block432
  %i.ud = add nuw i64 %.087.i37163, 1             ; 2 uses
  %exitcond267.not = icmp eq i64 %i.ud, %2
  br i1 %exitcond267.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit148_crit_edge, label %.lr.ph164, !llvm.loop !2619

.preheader144:                                    ; preds = %bb.ak, %bb.am
  %.lcssa169172 = phi i32 [ %i.ui, %bb.am ], [ %.promoted171, %bb.ak ]
  %.188.i39170 = phi i64 [ %i.uv, %bb.am ], [ 0, %bb.ak ] ; 2 uses
  %i.ue = mul i64 %.188.i39170, %i.tj
  %i.uf = getelementptr [4 x i8], ptr %1, i64 %i.ue
  br label %bb.al

bb.al:                                            ; preds = %.preheader144, %bb.al
  %indvars.iv268 = phi i64 [ 0, %.preheader144 ], [ %indvars.iv.next269, %bb.al ] ; 3 uses
  %i.ug = phi i32 [ %.lcssa169172, %.preheader144 ], [ %i.ui, %bb.al ]
  %i.uh = mul i32 %i.ug, 48271
  %i.ui = urem i32 %i.uh, 2147483647              ; 4 uses
  %i.uj = uitofp nneg i32 %i.ui to double
  %i.uk = fdiv double %i.uj, f0x41DFFFFFFFC00000
  %i.ul = load ptr, ptr %i.th, align 8, !tbaa !119
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %indvars.iv268 ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !404
  %i.uo = fadd double %i.un, %i.uk
  %i.up = fdiv double %i.uo, 1.005000e+00         ; 2 uses
  store double %i.up, ptr %i.um, align 8, !tbaa !404
  %i.uq = fdiv double %i.up, 2.000000e+01
  %i.ur = load double, ptr %i.ti, align 8, !tbaa !868
  %i.us = fmul double %i.ur, %i.uq
  %i.ut = fptrunc double %i.us to float
  %i.uu = getelementptr [4 x i8], ptr %i.uf, i64 %indvars.iv268
  store float %i.ut, ptr %i.uu, align 4, !tbaa !349
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %i.tj
  br i1 %exitcond272.not, label %bb.am, label %bb.al, !llvm.loop !2620

bb.am:                                            ; preds = %bb.al
  %i.uv = add nuw i64 %.188.i39170, 1             ; 2 uses
  %exitcond273.not = icmp eq i64 %i.uv, %2
  br i1 %exitcond273.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit146_crit_edge, label %.preheader144, !llvm.loop !2621

bb.an:                                            ; preds = %bb.aj
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !2632
  %.not98.i31 = icmp eq i32 %i.ux, 0
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.vb = zext i32 %i.tb to i64                   ; 9 uses
  %.promoted160 = load i32, ptr %i.uy, align 8, !tbaa !156 ; 2 uses
  br i1 %.not98.i31, label %.preheader149, label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.an
  %min.iters.check = icmp ult i32 %i.tb, 4
  %min.iters.check417 = icmp ult i32 %i.tb, 16
  %i.vc = and i64 %i.vb, 12
  %n.vec = and i64 %i.vb, 4294967280              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.vb
  %min.epilog.iters.check = icmp eq i64 %i.vc, 0
  %n.vec418 = and i64 %i.vb, 4294967292           ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec418, %i.vb
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit519
  %i.vd = phi i32 [ %i.vf, %.loopexit519 ], [ %.promoted160, %iter.check.preheader ]
  %.289.i32155 = phi i64 [ %i.wa, %.loopexit519 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.ve = mul i32 %i.vd, 48271
  %i.vf = urem i32 %i.ve, 2147483647              ; 3 uses
  %i.vg = uitofp nneg i32 %i.vf to double
  %i.vh = fdiv double %i.vg, f0x41DFFFFFFFC00000
  %i.vi = load ptr, ptr %i.uz, align 8, !tbaa !119 ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !404
  %i.vk = fadd double %i.vj, %i.vh
  %i.vl = fdiv double %i.vk, 1.005000e+00         ; 2 uses
  store double %i.vl, ptr %i.vi, align 8, !tbaa !404
  %i.vm = fdiv double %i.vl, 2.000000e+01
  %i.vn = load double, ptr %i.va, align 8, !tbaa !868
  %i.vo = fmul double %i.vn, %i.vm
  %i.vp = fptrunc double %i.vo to float
  %i.vq = fmul float %i.vp, 3.276700e+04
  %i.vr = fptosi float %i.vq to i16               ; 3 uses
  %i.vs = mul i64 %.289.i32155, %i.vb
  %i.vt = getelementptr [2 x i8], ptr %1, i64 %i.vs ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.vr, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vu = getelementptr [2 x i8], ptr %i.vt, i64 %index ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.vu, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.vv, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.vw = icmp eq i64 %index.next, %n.vec
  br i1 %i.vw, label %middle.block, label %vector.body, !llvm.loop !2622

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit519, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert419 = insertelement <4 x i16> poison, i16 %i.vr, i64 0
  %broadcast.splat420 = shufflevector <4 x i16> %broadcast.splatinsert419, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index421 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next422, %vec.epilog.vector.body ] ; 2 uses
  %i.vx = getelementptr [2 x i8], ptr %i.vt, i64 %index421
  store <4 x i16> %broadcast.splat420, ptr %i.vx, align 2, !tbaa !122
  %index.next422 = add nuw i64 %index421, 4       ; 2 uses
  %i.vy = icmp eq i64 %index.next422, %n.vec418
  br i1 %i.vy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2623

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n423, label %.loopexit519, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec418, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.vz = getelementptr [2 x i8], ptr %i.vt, i64 %indvars.iv
  store i16 %i.vr, ptr %i.vz, align 2, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.vb
  br i1 %exitcond.not, label %.loopexit519, label %vec.epilog.scalar.ph, !llvm.loop !2624

.loopexit519:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.wa = add nuw i64 %.289.i32155, 1             ; 2 uses
  %exitcond255.not = icmp eq i64 %i.wa, %2
  br i1 %exitcond255.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit153_crit_edge, label %iter.check, !llvm.loop !2625

.preheader149:                                    ; preds = %bb.an, %bb.ap
  %.lcssa158161 = phi i32 [ %i.wf, %bb.ap ], [ %.promoted160, %bb.an ]
  %.390.i34159 = phi i64 [ %i.wu, %bb.ap ], [ 0, %bb.an ] ; 2 uses
  %i.wb = mul i64 %.390.i34159, %i.vb
  %i.wc = getelementptr [2 x i8], ptr %1, i64 %i.wb
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader149, %bb.ao
  %indvars.iv256 = phi i64 [ 0, %.preheader149 ], [ %indvars.iv.next257, %bb.ao ] ; 3 uses
  %i.wd = phi i32 [ %.lcssa158161, %.preheader149 ], [ %i.wf, %bb.ao ]
  %i.we = mul i32 %i.wd, 48271
  %i.wf = urem i32 %i.we, 2147483647              ; 4 uses
  %i.wg = uitofp nneg i32 %i.wf to double
  %i.wh = fdiv double %i.wg, f0x41DFFFFFFFC00000
  %i.wi = load ptr, ptr %i.uz, align 8, !tbaa !119
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv256 ; 2 uses
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !404
  %i.wl = fadd double %i.wk, %i.wh
  %i.wm = fdiv double %i.wl, 1.005000e+00         ; 2 uses
  store double %i.wm, ptr %i.wj, align 8, !tbaa !404
  %i.wn = fdiv double %i.wm, 2.000000e+01
  %i.wo = load double, ptr %i.va, align 8, !tbaa !868
  %i.wp = fmul double %i.wo, %i.wn
  %i.wq = fptrunc double %i.wp to float
  %i.wr = fmul float %i.wq, 3.276700e+04
  %i.ws = fptosi float %i.wr to i16
  %i.wt = getelementptr [2 x i8], ptr %i.wc, i64 %indvars.iv256
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !122
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %i.vb
  br i1 %exitcond260.not, label %bb.ap, label %bb.ao, !llvm.loop !2626

bb.ap:                                            ; preds = %bb.ao
  %i.wu = add nuw i64 %.390.i34159, 1             ; 2 uses
  %exitcond261.not = icmp eq i64 %i.wu, %2
  br i1 %exitcond261.not, label %.ma_noise_read_pcm_frames__white.exit.loopexit151_crit_edge, label %.preheader149, !llvm.loop !2627

bb.aq:                                            ; preds = %bb.aj
  %i.wv = zext i32 %i.td to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !118 ; 3 uses
  %i.wy = mul i32 %i.wx, %i.tb
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !2632
  %.not.i41 = icmp eq i32 %i.xa, 0
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.xe = zext i32 %i.wy to i64                   ; 2 uses
  %wide.trip.count283 = zext i32 %i.tb to i64     ; 2 uses
  br i1 %.not.i41, label %.preheader139, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.aq, %bb.as
  %.491.i42174 = phi i64 [ %i.xz, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.xf = load i32, ptr %i.xb, align 8, !tbaa !156
  %i.xg = mul i32 %i.xf, 48271
  %i.xh = urem i32 %i.xg, 2147483647              ; 2 uses
  store i32 %i.xh, ptr %i.xb, align 8, !tbaa !156
  %i.xi = uitofp nneg i32 %i.xh to double
  %i.xj = fdiv double %i.xi, f0x41DFFFFFFFC00000
  %i.xk = load ptr, ptr %i.xc, align 8, !tbaa !119 ; 2 uses
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !404
  %i.xm = fadd double %i.xl, %i.xj
  %i.xn = fdiv double %i.xm, 1.005000e+00         ; 2 uses
  store double %i.xn, ptr %i.xk, align 8, !tbaa !404
  %i.xo = fdiv double %i.xn, 2.000000e+01
  %i.xp = load double, ptr %i.xd, align 8, !tbaa !868
  %i.xq = fmul double %i.xp, %i.xo
  %i.xr = fptrunc double %i.xq to float
  store float %i.xr, ptr %i.a, align 4, !tbaa !349
  %i.xs = mul i64 %.491.i42174, %i.xe
  %i.xt = getelementptr i8, ptr %1, i64 %i.xs
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph175, %bb.ar
  %indvars.iv274 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next275, %bb.ar ] ; 2 uses
  %i.xu = trunc nuw i64 %indvars.iv274 to i32
  %i.xv = mul i32 %i.wx, %i.xu
  %i.xw = zext i32 %i.xv to i64
  %i.xx = getelementptr i8, ptr %i.xt, i64 %i.xw
  %i.xy = load i32, ptr %i.sz, align 8, !tbaa !870
  call void @ma_pcm_convert(ptr noundef %i.xx, i32 noundef %i.xy, ptr noundef nonnull %i.a, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count283
  br i1 %exitcond278.not, label %bb.as, label %bb.ar, !llvm.loop !2628

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.xz = add nuw i64 %.491.i42174, 1             ; 2 uses
  %exitcond279.not = icmp eq i64 %i.xz, %2
  br i1 %exitcond279.not, label %ma_noise_read_pcm_frames__white.exit, label %.lr.ph175, !llvm.loop !2629

.preheader139:                                    ; preds = %bb.aq, %bb.au
  %.592.i44177 = phi i64 [ %i.yv, %bb.au ], [ 0, %bb.aq ] ; 2 uses
  %i.ya = mul i64 %.592.i44177, %i.xe
  %i.yb = getelementptr i8, ptr %1, i64 %i.ya
  br label %bb.at

bb.at:                                            ; preds = %.preheader139, %bb.at
  %indvars.iv280 = phi i64 [ 0, %.preheader139 ], [ %indvars.iv.next281, %bb.at ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.yc = load i32, ptr %i.xb, align 8, !tbaa !156
  %i.yd = mul i32 %i.yc, 48271
  %i.ye = urem i32 %i.yd, 2147483647              ; 2 uses
  store i32 %i.ye, ptr %i.xb, align 8, !tbaa !156
  %i.yf = uitofp nneg i32 %i.ye to double
  %i.yg = fdiv double %i.yf, f0x41DFFFFFFFC00000
  %i.yh = load ptr, ptr %i.xc, align 8, !tbaa !119
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv280 ; 2 uses
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !404
  %i.yk = fadd double %i.yj, %i.yg
  %i.yl = fdiv double %i.yk, 1.005000e+00         ; 2 uses
  store double %i.yl, ptr %i.yi, align 8, !tbaa !404
  %i.ym = fdiv double %i.yl, 2.000000e+01
  %i.yn = load double, ptr %i.xd, align 8, !tbaa !868
  %i.yo = fmul double %i.yn, %i.ym
  %i.yp = fptrunc double %i.yo to float
  store float %i.yp, ptr %i.b, align 4, !tbaa !349
  %i.yq = trunc nuw i64 %indvars.iv280 to i32
  %i.yr = mul i32 %i.wx, %i.yq
  %i.ys = zext i32 %i.yr to i64
  %i.yt = getelementptr i8, ptr %i.yb, i64 %i.ys
  %i.yu = load i32, ptr %i.sz, align 8, !tbaa !870
  call void @ma_pcm_convert(ptr noundef %i.yt, i32 noundef %i.yu, ptr noundef nonnull %i.b, i32 noundef 5, i64 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %bb.au, label %bb.at, !llvm.loop !2630

bb.au:                                            ; preds = %bb.at
  %i.yv = add nuw i64 %.592.i44177, 1             ; 2 uses
  %exitcond285.not = icmp eq i64 %i.yv, %2
  br i1 %exitcond285.not, label %ma_noise_read_pcm_frames__white.exit, label %.preheader139, !llvm.loop !2631

.ma_noise_read_pcm_frames__white.exit.loopexit116_crit_edge: ; preds = %bb.i
  store i32 %i.ao, ptr %i.s, align 8, !tbaa !156
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit118_crit_edge: ; preds = %.loopexit
  store i32 %i.y, ptr %i.s, align 8, !tbaa !156
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit121_crit_edge: ; preds = %bb.l
  store i32 %i.by, ptr %i.ax, align 8, !tbaa !156
  br label %ma_noise_read_pcm_frames__white.exit

.ma_noise_read_pcm_frames__white.exit.loopexit123_crit_edge: ; preds = %.loopexit515
  store i32 %i.be, ptr %i.ax, align 8, !tbaa !156
  br label %ma_noise_read_pcm_frames__white.exit

end_hunk_17
begin_hunk_18_@ma_dr_wav_read_pcm_frames_be:bb.a
  switch i16 %i.d, label %bb.c [
    i16 17, label %ma_dr_wav_read_pcm_frames_le.exit
    i16 2, label %ma_dr_wav_read_pcm_frames_le.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8, !tbaa !698
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load i64, ptr %i.g, align 8, !tbaa !699
  %i.i = sub i64 %i.f, %i.h
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.k = load i16, ptr %i.j, align 2, !tbaa !694
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.p = load i16, ptr %i.o, align 2, !tbaa !695
  %i.q = zext i16 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, %i.l
  %i.s = lshr exact i32 %i.r, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i16, ptr %i.t, align 8, !tbaa !696
  %i.v = zext i16 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 5 uses
  %i.w = and i16 %i.d, -2
  %switch.i.i = icmp eq i16 %i.w, 6
  br i1 %switch.i.i, label %bb.g, label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.y = load i16, ptr %i.x, align 2, !tbaa !695
  %i.z = zext i16 %i.y to i32
  %.not.i.i = icmp ne i32 %.0.i.i, %i.z
  %i.aa = icmp eq i32 %.0.i.i, 0
  %or.cond31.i = or i1 %i.aa, %.not.i.i
  br i1 %or.cond31.i, label %ma_dr_wav_read_pcm_frames_le.exit, label %bb.h

ma_dr_wav_get_bytes_per_pcm_frame.exit.i:         ; preds = %bb.f
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %ma_dr_wav_read_pcm_frames_le.exit, label %bb.h

bb.h:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.g
  %i.ab = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.ac = mul i64 %spec.select.i, %i.ab           ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 4294967295
  br i1 %i.ad, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.h
  %i.ae = urem i32 -1, %.0.i.i
  %i.af = xor i32 %i.ae, -1
  %i.ag = zext i32 %i.af to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %ma_dr_wav_read_pcm_frames_le.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i
  %.030.i = phi i64 [ %i.ag, %.thread.i ], [ %i.ac, %bb.i ]
  %i.ai = tail call i64 @ma_dr_wav_read_raw(ptr noundef nonnull %0, i64 noundef %.030.i, ptr noundef %2)
  %i.aj = udiv i64 %i.ai, %i.ab
  br label %ma_dr_wav_read_pcm_frames_le.exit

ma_dr_wav_read_pcm_frames_le.exit:                ; preds = %bb.a, %bb.b, %bb.b, %bb.g, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.i, %bb.j
  %.021.i = phi i64 [ %i.aj, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.b ] ; 16 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %ma_dr_wav_read_pcm_frames_le.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !694
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 7
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !695
  %i.ar = zext i16 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, %i.am
  %i.at = lshr exact i32 %i.as, 3
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load i16, ptr %i.au, align 4, !tbaa !696
  %i.aw = zext i16 %i.av to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i20 = phi i32 [ %i.at, %bb.l ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !693
  %i.az = and i16 %i.ay, -2
  %switch.i = icmp eq i16 %i.az, 6
  br i1 %switch.i, label %bb.o, label %ma_dr_wav_get_bytes_per_pcm_frame.exit

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !695
  %i.bc = zext i16 %i.bb to i32
  %.not.i = icmp ne i32 %.0.i20, %i.bc
  %.not16 = icmp eq i32 %.0.i20, 0
  %or.cond = or i1 %.not16, %.not.i
  br i1 %or.cond, label %.critedge, label %bb.p

ma_dr_wav_get_bytes_per_pcm_frame.exit:           ; preds = %bb.n
  %.not16.old = icmp eq i32 %.0.i20, 0
  br i1 %.not16.old, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o, %ma_dr_wav_get_bytes_per_pcm_frame.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !692 ; 2 uses
  %i.bf = zext i16 %i.be to i64
  %i.bg = mul i64 %.021.i, %i.bf                  ; 24 uses
  %i.bh = zext i16 %i.be to i32
  %i.bi = udiv i32 %.0.i20, %i.bh
  switch i32 %i.bi, label %.critedge [
    i32 8, label %.preheader
    i32 2, label %.preheader23
    i32 3, label %.preheader25
    i32 4, label %.preheader27
  ]

.preheader27:                                     ; preds = %bb.p
  %.not36 = icmp eq i64 %i.bg, 0
  br i1 %.not36, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader27
  %min.iters.check = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !118
  %wide.load57 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !118
  %i.bl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.bm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load57)
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !118
  store <4 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !2832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.critedge, label %.lr.ph.preheader91

.lr.ph.preheader91:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i1729.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader25:                                     ; preds = %bb.p
  %.not37 = icmp eq i64 %i.bg, 0
  br i1 %.not37, label %.critedge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %.preheader25
  %xtraiter = and i64 %i.bg, 1
  %i.bo = icmp eq i64 %i.bg, 1
  br i1 %i.bo, label %.lr.ph31.epil.preheader, label %.lr.ph31.preheader.new

.lr.ph31.preheader.new:                           ; preds = %.lr.ph31.preheader
  %unroll_iter = and i64 %i.bg, -2
  br label %.lr.ph31

.preheader23:                                     ; preds = %bb.p
  %.not38 = icmp eq i64 %i.bg, 0
  br i1 %.not38, label %.critedge, label %iter.check

iter.check:                                       ; preds = %.preheader23
  %min.iters.check59 = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check59, label %.lr.ph33.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i64 %i.bg, 16
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bg, 12
  %n.vec62 = and i64 %i.bg, -16                   ; 4 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.ph61, %vector.body63
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body63 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index64 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load65 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !122
  %wide.load66 = load <8 x i16>, ptr %i.br, align 2, !tbaa !122
  %i.bs = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load65)
  %i.bt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load66)
  store <8 x i16> %i.bs, ptr %i.bq, align 2, !tbaa !122
  store <8 x i16> %i.bt, ptr %i.br, align 2, !tbaa !122
  %index.next67 = add nuw i64 %index64, 16        ; 2 uses
  %i.bu = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.bu, label %middle.block68, label %vector.body63, !llvm.loop !2833

middle.block68:                                   ; preds = %vector.body63
  %cmp.n69 = icmp eq i64 %i.bg, %n.vec62
  br i1 %cmp.n69, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block68
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph33.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec62, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.bg, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index71 ; 2 uses
  %wide.load72 = load <4 x i16>, ptr %i.bv, align 2, !tbaa !122
  %i.bw = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load72)
  store <4 x i16> %i.bw, ptr %i.bv, align 2, !tbaa !122
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next73, %n.vec70
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2834

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.bg, %n.vec70
  br i1 %cmp.n74, label %.critedge, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i32.ph = phi i64 [ 0, %iter.check ], [ %n.vec62, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %.lr.ph33

.preheader:                                       ; preds = %bb.p
  %.not39 = icmp eq i64 %i.bg, 0
  br i1 %.not39, label %.critedge, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.preheader
  %min.iters.check77 = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check77, label %.lr.ph35.preheader88, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph35.preheader
  %n.vec79 = and i64 %i.bg, -4                    ; 3 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index81 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.by, align 8, !tbaa !164
  %wide.load83 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !164
  %i.ca = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load82)
  %i.cb = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load83)
  store <2 x i64> %i.ca, ptr %i.by, align 8, !tbaa !164
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !164
  %index.next84 = add nuw i64 %index81, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.cc, label %middle.block85, label %vector.body80, !llvm.loop !2835

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %i.bg, %n.vec79
  br i1 %cmp.n86, label %.critedge, label %.lr.ph35.preheader88

.lr.ph35.preheader88:                             ; preds = %.lr.ph35.preheader, %middle.block85
  %.0.i1934.ph = phi i64 [ 0, %.lr.ph35.preheader ], [ %n.vec79, %middle.block85 ]
  br label %.lr.ph35

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %.0.i32 = phi i64 [ %i.cg, %.lr.ph33 ], [ %.0.i32.ph, %.lr.ph33.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0.i32 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !122
  %i.cf = tail call i16 @llvm.bswap.i16(i16 %i.ce)
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !122
  %i.cg = add nuw i64 %.0.i32, 1                  ; 2 uses
  %exitcond44.not = icmp eq i64 %i.cg, %i.bg
  br i1 %exitcond44.not, label %.critedge, label %.lr.ph33, !llvm.loop !2836

.lr.ph31:                                         ; preds = %.lr.ph31, %.lr.ph31.preheader.new
  %.0.i1830 = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %i.cs, %.lr.ph31 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %niter.next.1, %.lr.ph31 ]
  %i.ch = mul i64 %.0.i1830, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !119
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !119
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !119
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !119
  %i.cm = mul i64 %.0.i1830, 3
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm     ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 3      ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !119
  %i.cq = getelementptr i8, ptr %i.cn, i64 5      ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !119
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !119
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !119
  %i.cs = add nuw i64 %.0.i1830, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit90.unr-lcssa, label %.lr.ph31, !llvm.loop !91

.lr.ph:                                           ; preds = %.lr.ph.preheader91, %.lr.ph
  %.0.i1729 = phi i64 [ %i.cw, %.lr.ph ], [ %.0.i1729.ph, %.lr.ph.preheader91 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i1729 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !118
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !118
  %i.cw = add nuw i64 %.0.i1729, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %i.bg
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2837

.lr.ph35:                                         ; preds = %.lr.ph35.preheader88, %.lr.ph35
  %.0.i1934 = phi i64 [ %i.da, %.lr.ph35 ], [ %.0.i1934.ph, %.lr.ph35.preheader88 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i1934 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !164
  %i.cz = tail call i64 @llvm.bswap.i64(i64 %i.cy)
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !164
  %i.da = add nuw i64 %.0.i1934, 1                ; 2 uses
  %exitcond45.not = icmp eq i64 %i.da, %i.bg
  br i1 %exitcond45.not, label %.critedge, label %.lr.ph35, !llvm.loop !2838

.critedge.loopexit90.unr-lcssa:                   ; preds = %.lr.ph31
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %.critedge.loopexit90.unr-lcssa, %.lr.ph31.preheader
  %.0.i1830.epil.init = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.cs, %.critedge.loopexit90.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.db = mul i64 %.0.i1830.epil.init, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !119
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !119
  store i8 %i.df, ptr %i.dc, align 1, !tbaa !119
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !119
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph31.epil.preheader, %.critedge.loopexit90.unr-lcssa, %.lr.ph33, %.lr.ph35, %middle.block, %middle.block68, %vec.epilog.middle.block, %middle.block85, %.preheader27, %.preheader25, %.preheader23, %.preheader, %bb.o, %bb.p, %ma_dr_wav_read_pcm_frames_le.exit, %ma_dr_wav_get_bytes_per_pcm_frame.exit
  %.1 = phi i64 [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit ], [ %.021.i, %bb.p ], [ %.021.i, %ma_dr_wav_read_pcm_frames_le.exit ], [ 0, %bb.o ], [ %.021.i, %.preheader23 ], [ %.021.i, %.preheader ], [ %.021.i, %.preheader25 ], [ %.021.i, %.preheader27 ], [ %.021.i, %middle.block68 ], [ %.021.i, %.lr.ph35 ], [ %.021.i, %middle.block85 ], [ %.021.i, %middle.block ], [ %.021.i, %.lr.ph31.epil.preheader ], [ %.021.i, %vec.epilog.middle.block ], [ %.021.i, %.lr.ph33 ], [ %.021.i, %.critedge.loopexit90.unr-lcssa ], [ %.021.i, %.lr.ph ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_seek_to_first_pcm_frame(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !674
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !676
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !688
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 %i.d(ptr noundef %i.f, i32 noundef %i.i, i32 noundef 0) #55
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = load i16, ptr %i.k, align 4, !tbaa !693
  switch i16 %i.l, label %bb.f [
    i16 2, label %bb.d
    i16 17, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.m, i8 0, i64 52, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.n, i8 0, i64 88, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.o, align 8, !tbaa !699
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load i64, ptr %i.p, align 8, !tbaa !684
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.q, ptr %i.r, align 8, !tbaa !701
  br label %bb.g

end_hunk_18
begin_hunk_19_@ma_dr_wav_write_pcm_frames_be:bb.a
  %i.bt = mul nuw i64 %.0.i5372, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !119
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 5 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !119
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !119
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !119
  %i.bz = add nuw nsw i64 %.0.i5372, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %ma_dr_wav_write_raw.exit.loopexit136.unr-lcssa, label %.lr.ph73, !llvm.loop !91

.lr.ph:                                           ; preds = %.lr.ph.preheader137, %.lr.ph
  %.0.i5271 = phi i64 [ %i.cd, %.lr.ph ], [ %.0.i5271.ph, %.lr.ph.preheader137 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i5271 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !118
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.cb)
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !118
  %i.cd = add nuw nsw i64 %.0.i5271, 1            ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, %i.ak
  br i1 %i.ce, label %.lr.ph, label %ma_dr_wav_write_raw.exit, !llvm.loop !2856

.lr.ph77:                                         ; preds = %.lr.ph77.preheader134, %.lr.ph77
  %.0.i5476 = phi i64 [ %i.ci, %.lr.ph77 ], [ %.0.i5476.ph, %.lr.ph77.preheader134 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i5476 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !164
  %i.ch = call i64 @llvm.bswap.i64(i64 %i.cg)
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !164
  %i.ci = add nuw nsw i64 %.0.i5476, 1            ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ci, %i.ak
  br i1 %i.cj, label %.lr.ph77, label %ma_dr_wav_write_raw.exit, !llvm.loop !2857

ma_dr_wav__bswap_samples.exit:                    ; preds = %bb.i
  br i1 %.not83, label %.thread, label %ma_dr_wav_write_raw.exit

ma_dr_wav_write_raw.exit.loopexit136.unr-lcssa:   ; preds = %.lr.ph73
  br i1 %lcmp.mod.not, label %ma_dr_wav_write_raw.exit, label %.lr.ph73.epil.preheader

.lr.ph73.epil.preheader:                          ; preds = %ma_dr_wav_write_raw.exit.loopexit136.unr-lcssa, %.lr.ph73.preheader
  %.0.i5372.epil.init = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.bz, %ma_dr_wav_write_raw.exit.loopexit136.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.ck = mul nuw nsw i64 %.0.i5372.epil.init, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !119
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !119
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !119
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !119
  br label %ma_dr_wav_write_raw.exit

ma_dr_wav_write_raw.exit:                         ; preds = %.lr.ph, %.lr.ph73.epil.preheader, %ma_dr_wav_write_raw.exit.loopexit136.unr-lcssa, %.lr.ph75, %.lr.ph77, %middle.block131, %middle.block114, %vec.epilog.middle.block, %middle.block, %ma_dr_wav__bswap_samples.exit
  %i.cp = load ptr, ptr %i.am, align 8, !tbaa !682
  %i.cq = load ptr, ptr %i.an, align 8, !tbaa !676
  %i.cr = call i64 %i.cp(ptr noundef %i.cq, ptr noundef nonnull %i.a, i64 noundef %spec.select) #55, !inline_history !1092 ; 5 uses
  %i.cs = load i64, ptr %i.ao, align 8, !tbaa !684
  %i.ct = add i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.ao, align 8, !tbaa !684
  %i.cu = icmp eq i64 %i.cr, 0
  br i1 %i.cu, label %.thread, label %bb.j

.thread:                                          ; preds = %ma_dr_wav_write_raw.exit, %ma_dr_wav__bswap_samples.exit
  %.04180.lcssa = phi i64 [ %.04180, %ma_dr_wav_write_raw.exit ], [ 0, %ma_dr_wav__bswap_samples.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

bb.j:                                             ; preds = %ma_dr_wav_write_raw.exit
  %i.cv = sub i64 %.04379, %i.cr                  ; 2 uses
  %i.cw = add i64 %i.cr, %.04180                  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04081, i64 %i.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.j, %.preheader68, %.thread
  %.04170 = phi i64 [ %.04180.lcssa, %.thread ], [ 0, %.preheader68 ], [ %i.cw, %bb.j ]
  %i.cy = shl i64 %.04170, 3
  %i.cz = load i16, ptr %i.i, align 2, !tbaa !694
  %i.da = zext i16 %i.cz to i64
  %i.db = load i16, ptr %i.e, align 8, !tbaa !692
  %i.dc = zext i16 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, %i.da
  %i.de = udiv i64 %i.cy, %i.dd
  br label %bb.k

bb.k:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit, %bb.b, %bb.a, %.loopexit
  %.045 = phi i64 [ %i.de, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit ]
  ret i64 %.045
}

; Function Attrs: nounwind uwtable
define range(i64 0, -7) i64 @ma_dr_wav_write_pcm_frames(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ma_dr_wav_write_pcm_frames_le.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !692
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = mul i64 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !694
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %i.g, %i.j                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, 34359738367
  br i1 %i.l, label %ma_dr_wav_write_pcm_frames_le.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.k, 3                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not44.i = icmp eq i64 %i.m, 0
  br i1 %.not44.i, label %.thread.i, label %ma_dr_wav_write_raw.exit.lr.ph.i

ma_dr_wav_write_raw.exit.lr.ph.i:                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %ma_dr_wav_write_raw.exit.i

ma_dr_wav_write_raw.exit.i:                       ; preds = %bb.d, %ma_dr_wav_write_raw.exit.lr.ph.i
  %.02747.i = phi ptr [ %2, %ma_dr_wav_write_raw.exit.lr.ph.i ], [ %i.y, %bb.d ] ; 2 uses
  %.02846.i = phi i64 [ 0, %ma_dr_wav_write_raw.exit.lr.ph.i ], [ %i.x, %bb.d ] ; 2 uses
  %.03045.i = phi i64 [ %i.m, %ma_dr_wav_write_raw.exit.lr.ph.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !682
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !676
  %i.s = tail call i64 %i.q(ptr noundef %i.r, ptr noundef nonnull %.02747.i, i64 noundef %.03045.i) #55, !inline_history !2858 ; 5 uses
  %i.t = load i64, ptr %i.p, align 8, !tbaa !684
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.p, align 8, !tbaa !684
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %.thread.loopexit.i, label %bb.d

bb.d:                                             ; preds = %ma_dr_wav_write_raw.exit.i
  %i.w = sub i64 %.03045.i, %i.s                  ; 2 uses
  %i.x = add i64 %i.s, %.02846.i                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02747.i, i64 %i.s
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.thread.loopexit.i, label %ma_dr_wav_write_raw.exit.i

.thread.loopexit.i:                               ; preds = %bb.d, %ma_dr_wav_write_raw.exit.i
  %.028.lcssa.ph.i = phi i64 [ %i.x, %bb.d ], [ %.02846.i, %ma_dr_wav_write_raw.exit.i ]
  %.pre.i = load i16, ptr %i.h, align 2, !tbaa !694
  %.pre49.i = load i16, ptr %i.d, align 8, !tbaa !692
  %.pre50.i = zext i16 %.pre.i to i64
  %.pre51.i = zext i16 %.pre49.i to i64
  %i.z = shl i64 %.028.lcssa.ph.i, 3
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.c
  %.pre-phi52.i = phi i64 [ %.pre51.i, %.thread.loopexit.i ], [ %i.f, %bb.c ]
  %.pre-phi.i = phi i64 [ %.pre50.i, %.thread.loopexit.i ], [ %i.j, %bb.c ]
  %.028.lcssa.i = phi i64 [ %i.z, %.thread.loopexit.i ], [ 0, %bb.c ]
  %i.aa = mul nuw nsw i64 %.pre-phi.i, %.pre-phi52.i
  %i.ab = udiv i64 %.028.lcssa.i, %i.aa
  br label %ma_dr_wav_write_pcm_frames_le.exit

ma_dr_wav_write_pcm_frames_le.exit:               ; preds = %bb.a, %bb.b, %.thread.i
  %.032.i = phi i64 [ %i.ab, %.thread.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.032.i
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s16le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_read_pcm_frames_s16be(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %ma_dr_wav__bswap_samples_s16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i16, ptr %i.b, align 8, !tbaa !692
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %i.a, %i.d                       ; 9 uses
  %.not8 = icmp eq i64 %i.e, 0
  br i1 %.not8, label %ma_dr_wav__bswap_samples_s16.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !122
  %wide.load11 = load <8 x i16>, ptr %i.h, align 2, !tbaa !122
  %i.i = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.j = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load11)
  store <8 x i16> %i.i, ptr %i.g, align 2, !tbaa !122
  store <8 x i16> %i.j, ptr %i.h, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !2859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %ma_dr_wav__bswap_samples_s16.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.e, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index13 ; 2 uses
  %wide.load14 = load <4 x i16>, ptr %i.l, align 2, !tbaa !122
  %i.m = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load14)
  store <4 x i16> %i.m, ptr %i.l, align 2, !tbaa !122
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2860

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.e, %n.vec12
  br i1 %cmp.n16, label %ma_dr_wav__bswap_samples_s16.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i7.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i7 = phi i64 [ %i.r, %.lr.ph ], [ %.0.i7.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0.i7 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.q, ptr %i.o, align 2, !tbaa !122
  %i.r = add nuw i64 %.0.i7, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.e
  br i1 %exitcond.not, label %ma_dr_wav__bswap_samples_s16.exit, label %.lr.ph, !llvm.loop !2861

ma_dr_wav__bswap_samples_s16.exit:                ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_dr_wav_u8_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.a = shl i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep10 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep10
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %2, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load = load <8 x i8>, ptr %i.c, align 1, !tbaa !119, !alias.scope !2869
  %wide.load12 = load <8 x i8>, ptr %i.d, align 1, !tbaa !119, !alias.scope !2869
  %i.e = zext <8 x i8> %wide.load to <8 x i16>
  %i.f = zext <8 x i8> %wide.load12 to <8 x i16>
  %i.g = shl nuw <8 x i16> %i.e, splat (i16 8)
  %i.h = shl nuw <8 x i16> %i.f, splat (i16 8)
  %i.i = xor <8 x i16> %i.g, splat (i16 -32768)
  %i.j = xor <8 x i16> %i.h, splat (i16 -32768)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <8 x i16> %i.i, ptr %i.k, align 2, !tbaa !122, !alias.scope !2870, !noalias !2869
  store <8 x i16> %i.j, ptr %i.l, align 2, !tbaa !122, !alias.scope !2870, !noalias !2869
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !2865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119, !alias.scope !2869
  %i.o = zext <4 x i8> %wide.load15 to <4 x i16>
  %i.p = shl nuw <4 x i16> %i.o, splat (i16 8)
  %i.q = xor <4 x i16> %i.p, splat (i16 -32768)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index14
  store <4 x i16> %i.q, ptr %i.r, align 2, !tbaa !122, !alias.scope !2870, !noalias !2869
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2866

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %2, %n.vec13
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.09.prol = phi i64 [ %i.z, %.lr.ph.prol ], [ %.09.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.09.prol
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = zext i8 %i.u to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = xor i16 %i.w, -32768
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.prol
  store i16 %i.x, ptr %i.y, align 2, !tbaa !122
  %i.z = add nuw i64 %.09.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2867

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = sub i64 %.09.ph, %2
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.bd, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.09
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %i.ae = zext i8 %i.ad to i16
  %i.af = shl nuw i16 %i.ae, 8
  %i.ag = xor i16 %i.af, -32768
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !122
  %i.ai = add nuw i64 %.09, 1                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !119
  %i.al = zext i8 %i.ak to i16
  %i.am = shl nuw i16 %i.al, 8
  %i.an = xor i16 %i.am, -32768
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !122
  %i.ap = add nuw i64 %.09, 2                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !119
  %i.as = zext i8 %i.ar to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = xor i16 %i.at, -32768
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  store i16 %i.au, ptr %i.av, align 2, !tbaa !122
  %i.aw = add nuw i64 %.09, 3                     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !119
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = xor i16 %i.ba, -32768
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !122
  %i.bd = add nuw i64 %.09, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bd, %2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2868

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_dr_wav_s24_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %2, -1
  %scevgep = getelementptr i8, ptr %1, i64 1      ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 3) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.b = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.c = icmp ult ptr %i.b, %scevgep
  %i.d = or i1 %i.c, %mul.overflow
  br i1 %i.d, label %.lr.ph.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.e = shl i64 %2, 1
  %scevgep13 = getelementptr i8, ptr %0, i64 %i.e
  %scevgep14 = getelementptr i8, ptr %1, i64 1
  %i.f = mul i64 %2, 3
  %scevgep15 = getelementptr i8, ptr %1, i64 %i.f
  %bound0 = icmp ult ptr %0, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.g = mul i64 %index, 3
  %i.h = mul i64 %index, 3
  %i.i = mul i64 %index, 3
  %i.j = mul i64 %index, 3
  %i.k = mul i64 %index, 3
  %i.l = mul i64 %index, 3
  %i.m = mul i64 %index, 3
  %i.n = mul i64 %index, 3
  %i.o = getelementptr i8, ptr %1, i64 %i.g
  %i.p = getelementptr i8, ptr %1, i64 %i.h
  %i.q = getelementptr i8, ptr %1, i64 %i.i
  %i.r = getelementptr i8, ptr %1, i64 %i.j
  %i.s = getelementptr i8, ptr %1, i64 %i.k
  %i.t = getelementptr i8, ptr %1, i64 %i.l
  %i.u = getelementptr i8, ptr %1, i64 %i.m
  %i.v = getelementptr i8, ptr %1, i64 %i.n
  %i.w = getelementptr i8, ptr %i.o, i64 1
  %i.x = getelementptr i8, ptr %i.p, i64 4
  %i.y = getelementptr i8, ptr %i.q, i64 7
  %i.z = getelementptr i8, ptr %i.r, i64 10
  %i.aa = getelementptr i8, ptr %i.s, i64 13
  %i.ab = getelementptr i8, ptr %i.t, i64 16
  %i.ac = getelementptr i8, ptr %i.u, i64 19
  %i.ad = getelementptr i8, ptr %i.v, i64 22
  %i.ae = load i16, ptr %i.w, align 1, !alias.scope !2877
  %i.af = load i16, ptr %i.x, align 1, !alias.scope !2877
  %i.ag = load i16, ptr %i.y, align 1, !alias.scope !2877
  %i.ah = load i16, ptr %i.z, align 1, !alias.scope !2877
  %i.ai = load i16, ptr %i.aa, align 1, !alias.scope !2877
  %i.aj = load i16, ptr %i.ab, align 1, !alias.scope !2877
  %i.ak = load i16, ptr %i.ac, align 1, !alias.scope !2877
  %i.al = load i16, ptr %i.ad, align 1, !alias.scope !2877
  %i.am = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 1
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 2
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 3
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 4
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 5
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 6
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 7
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.at, ptr %i.au, align 2, !tbaa !122, !alias.scope !2878, !noalias !2877
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !2874

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader16, %.lr.ph.prol
  %.012.prol = phi i64 [ %i.bb, %.lr.ph.prol ], [ %.012.ph, %.lr.ph.preheader16 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader16 ]
  %i.aw = mul i64 %.012.prol, 3
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.prol
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !122
  %i.bb = add nuw i64 %.012.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2875

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader16 ], [ %i.bb, %.lr.ph.prol ]
  %i.bc = sub i64 %.012.ph, %2
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.cb, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.be = mul i64 %.012, 3
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !122
  %i.bj = add nuw i64 %.012, 1                    ; 2 uses
  %i.bk = mul i64 %i.bj, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !122
  %i.bp = add nuw i64 %.012, 2                    ; 2 uses
  %i.bq = mul i64 %i.bp, 3
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 1
end_hunk_19
begin_hunk_20_@ma_dr_mp3dec_decode_frame:bb.a
  %i.bjs = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 4 ; 2 uses
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !349
  %i.bju = fneg float %i.bjt
  store float %i.bju, ptr %i.bjs, align 4, !tbaa !349
  %i.bjv = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 12 ; 2 uses
  %i.bjw = load float, ptr %i.bjv, align 4, !tbaa !349
  %i.bjx = fneg float %i.bjw
  store float %i.bjx, ptr %i.bjv, align 4, !tbaa !349
  %i.bjy = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 20 ; 2 uses
  %i.bjz = load float, ptr %i.bjy, align 4, !tbaa !349
  %i.bka = fneg float %i.bjz
  store float %i.bka, ptr %i.bjy, align 4, !tbaa !349
  %i.bkb = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 28 ; 2 uses
  %i.bkc = load float, ptr %i.bkb, align 4, !tbaa !349
  %i.bkd = fneg float %i.bkc
  store float %i.bkd, ptr %i.bkb, align 4, !tbaa !349
  %i.bke = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 36 ; 2 uses
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !349
  %i.bkg = fneg float %i.bkf
  store float %i.bkg, ptr %i.bke, align 4, !tbaa !349
  %i.bkh = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 44 ; 2 uses
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !349
  %i.bkj = fneg float %i.bki
  store float %i.bkj, ptr %i.bkh, align 4, !tbaa !349
  %i.bkk = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 52 ; 2 uses
  %i.bkl = load float, ptr %i.bkk, align 4, !tbaa !349
  %i.bkm = fneg float %i.bkl
  store float %i.bkm, ptr %i.bkk, align 4, !tbaa !349
  %i.bkn = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 60 ; 2 uses
  %i.bko = load float, ptr %i.bkn, align 4, !tbaa !349
  %i.bkp = fneg float %i.bko
  store float %i.bkp, ptr %i.bkn, align 4, !tbaa !349
  %i.bkq = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 68 ; 2 uses
  %i.bkr = load float, ptr %i.bkq, align 4, !tbaa !349
  %i.bks = fneg float %i.bkr
  store float %i.bks, ptr %i.bkq, align 4, !tbaa !349
  %i.bkt = add nuw nsw i32 %.0913.i.i, 2
  %i.bku = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 144
  %i.bkv = icmp samesign ult i32 %.0913.i.i, 30
  br i1 %i.bkv, label %.preheader.i92.i, label %ma_dr_mp3_L3_change_sign.exit.i, !llvm.loop !3011

ma_dr_mp3_L3_change_sign.exit.i:                  ; preds = %.preheader.i92.i
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %.054151.i, i64 32
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %ma_dr_mp3_L3_decode.exit, label %bb.ed, !llvm.loop !3012

ma_dr_mp3_L3_decode.exit:                         ; preds = %ma_dr_mp3_L3_change_sign.exit.i, %ma_dr_mp3_L3_midside_stereo.exit.i
  %i.bkx = load i32, ptr %i.kq, align 4, !tbaa !840
  tail call fastcc void @ma_dr_mp3d_synth_granule(ptr noundef nonnull %i.od, ptr noundef nonnull %i.no, i32 noundef 18, i32 noundef %i.bkx, ptr noundef %.0100323, ptr noundef nonnull %i.ob)
  %i.bky = load i32, ptr %i.kq, align 4, !tbaa !840
  %i.bkz = sext i32 %i.bky to i64
  %i.bla = mul nsw i64 %i.bkz, 1152
  %i.blb = getelementptr inbounds nuw i8, ptr %.0100323, i64 %i.bla
  %i.blc = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.bld = and i8 %i.blc, 8
  %.not115 = icmp ne i8 %i.bld, 0
  %i.ble = and i1 %.not115, %i.og
  br i1 %i.ble, label %bb.ak, label %.loopexit.loopexit, !llvm.loop !3013

.loopexit.loopexit:                               ; preds = %ma_dr_mp3_L3_decode.exit
  %.pre = load i32, ptr %i.nh, align 8, !tbaa !3030
  %.pre407 = load i32, ptr %i.nj, align 4, !tbaa !3031
  %i.blf = add nsw i32 %.pre, 7
  %i.blg = lshr i32 %i.blf, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %i.blh = phi i32 [ %.pre407, %.loopexit.loopexit ], [ %i.ni, %bb.aj ]
  %i.bli = phi i32 [ %i.blg, %.loopexit.loopexit ], [ 0, %bb.aj ] ; 2 uses
  %i.blj = lshr i32 %i.blh, 3                     ; 2 uses
  %i.blk = sub nsw i32 %i.blj, %i.bli             ; 3 uses
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.blk, i32 511) ; 2 uses
  %i.bll = icmp sgt i32 %i.blk, 0
  br i1 %i.bll, label %bb.en, label %ma_dr_mp3_L3_save_reservoir.exit

bb.en:                                            ; preds = %.loopexit
  %i.blm = icmp samesign ugt i32 %i.blk, 511
  %i.bln = add nsw i32 %i.blj, -511
  %spec.select.i159 = select i1 %i.blm, i32 %i.bln, i32 %i.bli
  %i.blo = zext nneg i32 %spec.select.i159 to i64
  %i.blp = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.blo
  %i.blq = zext nneg i32 %spec.select14.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 1 %i.blp, i64 %i.blq, i1 false)
  br label %ma_dr_mp3_L3_save_reservoir.exit

ma_dr_mp3_L3_save_reservoir.exit:                 ; preds = %.loopexit, %bb.en
  store i32 %spec.select14.i, ptr %i.mq, align 8, !tbaa !3029
  br label %bb.fy

bb.eo:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.blr = icmp eq ptr %3, null
  br i1 %i.blr, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bls = zext i8 %.fr to i32                    ; 2 uses
  %i.blt = and i32 %i.bls, 6
  %i.blu = icmp eq i32 %i.blt, 6
  %i.blv = and i32 %i.bls, 14
  %i.blw = icmp eq i32 %i.blv, 2
  %i.blx = zext i1 %i.blw to i32
  %i.bly = lshr exact i32 1152, %i.blx
  %i.blz = select i1 %i.blu, i32 384, i32 %i.bly
  br label %.thread224

bb.eq:                                            ; preds = %bb.eo
  %i.bma = load i8, ptr %i.km, align 1, !tbaa !119
  %i.bmb = zext i8 %i.bma to i32                  ; 2 uses
  %i.bmc = lshr i32 %i.bmb, 6                     ; 2 uses
  switch i32 %i.bmc, label %.fold.split.i.i [
    i32 3, label %bb.es
    i32 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.bmd = lshr i32 %i.bmb, 2
  %i.bme = and i32 %i.bmd, 12
  %i.bmf = add nuw nsw i32 %i.bme, 4
  br label %bb.es

.fold.split.i.i:                                  ; preds = %bb.eq
  br label %bb.es

bb.es:                                            ; preds = %.fold.split.i.i, %bb.er, %bb.eq
  %i.bmg = phi i32 [ 0, %bb.eq ], [ %i.bmf, %bb.er ], [ 32, %.fold.split.i.i ] ; 3 uses
  %i.bmh = zext i8 %.fr to i32                    ; 3 uses
  %i.bmi = and i32 %i.bmh, 6
  %i.bmj = icmp eq i32 %i.bmi, 6
  br i1 %i.bmj, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bmk = and i32 %i.bmh, 8
  %.not.i.i160 = icmp eq i32 %i.bmk, 0
  br i1 %.not.i.i160, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bml = load i8, ptr %i.ks, align 1, !tbaa !119 ; 2 uses
  %i.bmm = lshr i8 %i.bml, 2
  %i.bmn = and i8 %i.bmm, 3                       ; 2 uses
  %i.bmo = lshr i32 %i.bmh, 1
  %i.bmp = and i32 %i.bmo, 3
  %i.bmq = zext nneg i32 %i.bmp to i64
  %i.bmr = getelementptr [15 x i8], ptr getelementptr inbounds nuw (i8, ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 45), i64 %i.bmq
  %i.bms = getelementptr i8, ptr %i.bmr, i64 -15
  %i.bmt = lshr i8 %i.bml, 4
  %i.bmu = zext nneg i8 %i.bmt to i64
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bms, i64 %i.bmu
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !119 ; 2 uses
  %i.bmx = zext i8 %i.bmw to i32
  %i.bmy = shl nuw nsw i32 %i.bmx, 1
  %i.bmz = icmp ne i32 %i.bmc, 3
  %i.bna = zext i1 %i.bmz to i32
  %i.bnb = lshr exact i32 %i.bmy, %i.bna
  %.not25.i.i = icmp eq i8 %i.bmw, 0
  %spec.store.select.i.i = select i1 %.not25.i.i, i32 192, i32 %i.bnb ; 2 uses
  %i.bnc = icmp samesign ult i32 %spec.store.select.i.i, 56
  br i1 %i.bnc, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bnd = icmp eq i8 %i.bmn, 2
  %i.bne = select i1 %i.bnd, i32 12, i32 8
  br label %ma_dr_mp3_L12_subband_alloc_table.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.bnf = icmp samesign ugt i32 %spec.store.select.i.i, 95
  %i.bng = icmp ne i8 %i.bmn, 1
  %or.cond.i.i161 = and i1 %i.bng, %i.bnf
  %spec.select.i.i162 = select i1 %or.cond.i.i161, i32 30, i32 27
  br label %ma_dr_mp3_L12_subband_alloc_table.exit.i

ma_dr_mp3_L12_subband_alloc_table.exit.i:         ; preds = %bb.ew, %bb.ev, %bb.et, %bb.es
  %.123.i.i = phi ptr [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L1, %bb.es ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M2, %bb.et ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1_lowrate, %bb.ev ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1, %bb.ew ]
  %.1.i.i163 = phi i32 [ 32, %bb.es ], [ 30, %bb.et ], [ %i.bne, %bb.ev ], [ %spec.select.i.i162, %bb.ew ] ; 8 uses
  %i.bnh = trunc nuw nsw i32 %.1.i.i163 to i8
  %i.bni = getelementptr inbounds nuw i8, ptr %6, i64 768
  store i8 %i.bnh, ptr %i.bni, align 16, !tbaa !3033
  %i.bnj = tail call i32 @llvm.umin.i32(i32 %i.bmg, i32 %.1.i.i163) ; 2 uses
  %i.bnk = trunc nuw nsw i32 %i.bnj to i8
  %i.bnl = getelementptr inbounds nuw i8, ptr %6, i64 769 ; 2 uses
  store i8 %i.bnk, ptr %i.bnl, align 1, !tbaa !3034
  %i.bnm = getelementptr inbounds nuw i8, ptr %6, i64 770 ; 16 uses
  %.not56.i = icmp eq i32 %i.bmg, 0
  %i.bnn = zext nneg i32 %i.bnj to i64            ; 5 uses
  %wide.trip.count.i164 = zext nneg i32 %.1.i.i163 to i64 ; 4 uses
  br label %bb.ex

.preheader.i:                                     ; preds = %bb.fd
  %i.bno = shl nuw nsw i32 %.1.i.i163, 1
  %i.bnp = getelementptr inbounds nuw i8, ptr %6, i64 834 ; 5 uses
  %wide.trip.count111.i = zext nneg i32 %i.bno to i64 ; 8 uses
  %i.bnq = and i8 %.fr, 6
  %i.bnr = icmp eq i8 %i.bnq, 6
  br i1 %i.bnr, label %vector.ph, label %.preheader.i.split

vector.ph:                                        ; preds = %.preheader.i
  %i.bns = and i64 %wide.trip.count111.i, 12
  %n.vec = and i64 %wide.trip.count111.i, 112     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bnt, align 2, !tbaa !119
  %i.bnu = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.bnv = select <16 x i1> %i.bnu, <16 x i8> splat (i8 6), <16 x i8> splat (i8 2)
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %index
  store <16 x i8> %i.bnv, ptr %i.bnw, align 2, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bnx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bnx, label %middle.block, label %vector.body, !llvm.loop !3014

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count111.i
  br i1 %cmp.n, label %.lr.ph.i81.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bns, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.split.us.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %n.vec642 = and i64 %wide.trip.count111.i, 124  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index643 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next645, %vec.epilog.vector.body ] ; 3 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %index643
  %wide.load644 = load <4 x i8>, ptr %i.bny, align 2, !tbaa !119
  %i.bnz = icmp eq <4 x i8> %wide.load644, zeroinitializer
  %i.boa = select <4 x i1> %i.bnz, <4 x i8> splat (i8 6), <4 x i8> splat (i8 2)
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %index643
  store <4 x i8> %i.boa, ptr %i.bob, align 2, !tbaa !119
  %index.next645 = add nuw i64 %index643, 4       ; 2 uses
  %i.boc = icmp eq i64 %index.next645, %n.vec642
  br i1 %i.boc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3015

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n646 = icmp eq i64 %n.vec642, %wide.trip.count111.i
  br i1 %cmp.n646, label %.lr.ph.i81.i.preheader, label %.preheader.i.split.us.preheader

.preheader.i.split.us.preheader:                  ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv108.i.us.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec642, %vec.epilog.middle.block ]
  br label %.preheader.i.split.us

.preheader.i.split.us:                            ; preds = %.preheader.i.split.us.preheader, %.preheader.i.split.us
  %indvars.iv108.i.us = phi i64 [ %indvars.iv.next109.i.us, %.preheader.i.split.us ], [ %indvars.iv108.i.us.ph, %.preheader.i.split.us.preheader ] ; 3 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %indvars.iv108.i.us
  %i.boe = load i8, ptr %i.bod, align 1, !tbaa !119
  %.not.i172.us = icmp eq i8 %i.boe, 0
  %spec.select325 = select i1 %.not.i172.us, i8 6, i8 2
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %indvars.iv108.i.us
  store i8 %spec.select325, ptr %i.bof, align 1, !tbaa !119
  %indvars.iv.next109.i.us = add nuw nsw i64 %indvars.iv108.i.us, 1 ; 2 uses
  %exitcond112.not.i.us = icmp eq i64 %indvars.iv.next109.i.us, %wide.trip.count111.i
  br i1 %exitcond112.not.i.us, label %.lr.ph.i81.i.preheader, label %.preheader.i.split.us, !llvm.loop !3016

bb.ex:                                            ; preds = %bb.fd, %ma_dr_mp3_L12_subband_alloc_table.exit.i
  %i.bog = phi i32 [ %.promoted, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %.promoted305, %bb.fd ] ; 3 uses
  %indvars.iv.i165 = phi i64 [ 0, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %indvars.iv.next.i170, %bb.fd ] ; 4 uses
  %.04698.i = phi ptr [ @ma_dr_mp3_L12_read_scale_info.g_bitalloc_code_tab, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %.1.i, %bb.fd ]
  %.04797.i = phi i32 [ 0, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %.148.i, %bb.fd ]
  %.04996.i = phi i32 [ 0, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %.150.i, %bb.fd ] ; 3 uses
  %.05394.i = phi ptr [ %.123.i.i, %ma_dr_mp3_L12_subband_alloc_table.exit.i ], [ %.154.i, %bb.fd ] ; 5 uses
  %i.boh = zext i32 %.04996.i to i64
  %i.boi = icmp eq i64 %indvars.iv.i165, %i.boh
  br i1 %i.boi, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.boj = getelementptr inbounds nuw i8, ptr %.05394.i, i64 2
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !3036
  %i.bol = zext i8 %i.bok to i32
  %i.bom = add nuw nsw i32 %.04996.i, %i.bol
  %i.bon = getelementptr inbounds nuw i8, ptr %.05394.i, i64 1
  %i.boo = load i8, ptr %i.bon, align 1, !tbaa !3037
  %i.bop = zext i8 %i.boo to i32
  %i.boq = load i8, ptr %.05394.i, align 1, !tbaa !3038
  %i.bor = zext i8 %i.boq to i64
  %i.bos = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L12_read_scale_info.g_bitalloc_code_tab, i64 %i.bor
  %i.bot = getelementptr inbounds nuw i8, ptr %.05394.i, i64 3
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.154.i = phi ptr [ %i.bot, %bb.ey ], [ %.05394.i, %bb.ex ]
  %.150.i = phi i32 [ %i.bom, %bb.ey ], [ %.04996.i, %bb.ex ]
  %.148.i = phi i32 [ %i.bop, %bb.ey ], [ %.04797.i, %bb.ex ] ; 5 uses
  %.1.i = phi ptr [ %i.bos, %bb.ey ], [ %.04698.i, %bb.ex ] ; 3 uses
  %i.bou = add nsw i32 %i.bog, %.148.i            ; 5 uses
  %i.bov = icmp sgt i32 %i.bou, %i.me
  br i1 %i.bov, label %ma_dr_mp3_bs_get_bits.exit.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bow = ashr i32 %i.bog, 3
  %i.box = sext i32 %i.bow to i64
  %i.boy = getelementptr inbounds i8, ptr %i.mb, i64 %i.box ; 2 uses
  %i.boz = and i32 %i.bog, 7                      ; 2 uses
  %i.bpa = add nuw nsw i32 %i.boz, %.148.i        ; 3 uses
  %i.bpb = load i8, ptr %i.boy, align 1, !tbaa !119
  %i.bpc = zext i8 %i.bpb to i32
  %i.bpd = lshr i32 255, %i.boz
  %i.bpe = and i32 %i.bpd, %i.bpc                 ; 2 uses
  %i.bpf = icmp samesign ugt i32 %i.bpa, 8
  br i1 %i.bpf, label %.lr.ph.i.i178, label %._crit_edge.i.i166

.lr.ph.i.i178:                                    ; preds = %bb.fa, %.lr.ph.i.i178
  %.pn26.i.i = phi ptr [ %.0.i.i179, %.lr.ph.i.i178 ], [ %i.boy, %bb.fa ]
  %.01825.i.i = phi i32 [ %i.bpg, %.lr.ph.i.i178 ], [ %i.bpa, %bb.fa ] ; 2 uses
  %.01924.i.i = phi i32 [ %i.bpi, %.lr.ph.i.i178 ], [ 0, %bb.fa ]
  %.02023.i.i = phi i32 [ %i.bpk, %.lr.ph.i.i178 ], [ %i.bpe, %bb.fa ]
  %.0.i.i179 = getelementptr inbounds nuw i8, ptr %.pn26.i.i, i64 1 ; 2 uses
  %i.bpg = add nsw i32 %.01825.i.i, -8            ; 3 uses
  %i.bph = shl i32 %.02023.i.i, %i.bpg
  %i.bpi = or i32 %i.bph, %.01924.i.i             ; 2 uses
  %i.bpj = load i8, ptr %.0.i.i179, align 1, !tbaa !119
  %i.bpk = zext i8 %i.bpj to i32                  ; 2 uses
  %i.bpl = icmp samesign ugt i32 %.01825.i.i, 16
  br i1 %i.bpl, label %.lr.ph.i.i178, label %._crit_edge.i.i166, !llvm.loop !2977

._crit_edge.i.i166:                               ; preds = %.lr.ph.i.i178, %bb.fa
  %.020.lcssa.i.i = phi i32 [ %i.bpe, %bb.fa ], [ %i.bpk, %.lr.ph.i.i178 ]
  %.019.lcssa.i.i = phi i32 [ 0, %bb.fa ], [ %i.bpi, %.lr.ph.i.i178 ]
  %.018.lcssa.i.i = phi i32 [ %i.bpa, %bb.fa ], [ %i.bpg, %.lr.ph.i.i178 ]
  %i.bpm = sub nuw nsw i32 8, %.018.lcssa.i.i
  %i.bpn = lshr i32 %.020.lcssa.i.i, %i.bpm
  %i.bpo = or i32 %i.bpn, %.019.lcssa.i.i
  %i.bpp = zext i32 %i.bpo to i64
  br label %ma_dr_mp3_bs_get_bits.exit.i

ma_dr_mp3_bs_get_bits.exit.i:                     ; preds = %._crit_edge.i.i166, %bb.ez
  %.021.i.i167 = phi i64 [ %i.bpp, %._crit_edge.i.i166 ], [ 0, %bb.ez ]
  %i.bpq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.021.i.i167
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !119 ; 2 uses
  %i.bps = shl nuw nsw i64 %indvars.iv.i165, 1
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %i.bps ; 2 uses
  store i8 %i.bpr, ptr %i.bpt, align 2, !tbaa !119
  %i.bpu = icmp samesign ult i64 %indvars.iv.i165, %i.bnn
  br i1 %i.bpu, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.i
  %i.bpv = add nsw i32 %i.bou, %.148.i            ; 2 uses
  %i.bpw = icmp sgt i32 %i.bpv, %i.me
  br i1 %i.bpw, label %ma_dr_mp3_bs_get_bits.exit68.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bpx = ashr i32 %i.bou, 3
  %i.bpy = sext i32 %i.bpx to i64
  %i.bpz = getelementptr inbounds i8, ptr %i.mb, i64 %i.bpy ; 2 uses
  %i.bqa = and i32 %i.bou, 7                      ; 2 uses
  %i.bqb = add nuw nsw i32 %i.bqa, %.148.i        ; 3 uses
  %i.bqc = load i8, ptr %i.bpz, align 1, !tbaa !119
  %i.bqd = zext i8 %i.bqc to i32
  %i.bqe = lshr i32 255, %i.bqa
  %i.bqf = and i32 %i.bqe, %i.bqd                 ; 2 uses
  %i.bqg = icmp samesign ugt i32 %i.bqb, 8
  br i1 %i.bqg, label %.lr.ph.i62.i, label %._crit_edge.i57.i

.lr.ph.i62.i:                                     ; preds = %bb.fc, %.lr.ph.i62.i
  %.pn26.i63.i = phi ptr [ %.0.i67.i, %.lr.ph.i62.i ], [ %i.bpz, %bb.fc ]
  %.01825.i64.i = phi i32 [ %i.bqh, %.lr.ph.i62.i ], [ %i.bqb, %bb.fc ] ; 2 uses
  %.01924.i65.i = phi i32 [ %i.bqj, %.lr.ph.i62.i ], [ 0, %bb.fc ]
  %.02023.i66.i = phi i32 [ %i.bql, %.lr.ph.i62.i ], [ %i.bqf, %bb.fc ]
  %.0.i67.i = getelementptr inbounds nuw i8, ptr %.pn26.i63.i, i64 1 ; 2 uses
  %i.bqh = add nsw i32 %.01825.i64.i, -8          ; 3 uses
  %i.bqi = shl i32 %.02023.i66.i, %i.bqh
  %i.bqj = or i32 %i.bqi, %.01924.i65.i           ; 2 uses
  %i.bqk = load i8, ptr %.0.i67.i, align 1, !tbaa !119
  %i.bql = zext i8 %i.bqk to i32                  ; 2 uses
  %i.bqm = icmp samesign ugt i32 %.01825.i64.i, 16
  br i1 %i.bqm, label %.lr.ph.i62.i, label %._crit_edge.i57.i, !llvm.loop !2977

._crit_edge.i57.i:                                ; preds = %.lr.ph.i62.i, %bb.fc
  %.020.lcssa.i58.i = phi i32 [ %i.bqf, %bb.fc ], [ %i.bql, %.lr.ph.i62.i ]
  %.019.lcssa.i59.i = phi i32 [ 0, %bb.fc ], [ %i.bqj, %.lr.ph.i62.i ]
  %.018.lcssa.i60.i = phi i32 [ %i.bqb, %bb.fc ], [ %i.bqh, %.lr.ph.i62.i ]
  %i.bqn = sub nuw nsw i32 8, %.018.lcssa.i60.i
  %i.bqo = lshr i32 %.020.lcssa.i58.i, %i.bqn
  %i.bqp = or i32 %i.bqo, %.019.lcssa.i59.i
  %i.bqq = zext i32 %i.bqp to i64
  br label %ma_dr_mp3_bs_get_bits.exit68.i

ma_dr_mp3_bs_get_bits.exit68.i:                   ; preds = %._crit_edge.i57.i, %bb.fb
  %.021.i61.i = phi i64 [ %i.bqq, %._crit_edge.i57.i ], [ 0, %bb.fb ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.021.i61.i
  %i.bqs = load i8, ptr %i.bqr, align 1, !tbaa !119
  br label %bb.fd

bb.fd:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit68.i, %ma_dr_mp3_bs_get_bits.exit.i
  %.promoted305 = phi i32 [ %i.bpv, %ma_dr_mp3_bs_get_bits.exit68.i ], [ %i.bou, %ma_dr_mp3_bs_get_bits.exit.i ] ; 5 uses
  %.0.i168 = phi i8 [ %i.bqs, %ma_dr_mp3_bs_get_bits.exit68.i ], [ %i.bpr, %ma_dr_mp3_bs_get_bits.exit.i ]
  %narrow.i169 = select i1 %.not56.i, i8 0, i8 %.0.i168
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bpt, i64 1
  store i8 %narrow.i169, ptr %i.bqt, align 1, !tbaa !119
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i164
  br i1 %exitcond.not.i171, label %.preheader.i, label %bb.ex, !llvm.loop !3017

.preheader.i.split:                               ; preds = %.preheader.i, %ma_dr_mp3_bs_get_bits.exit80.i
  %i.bqu = phi i32 [ %i.brq, %ma_dr_mp3_bs_get_bits.exit80.i ], [ %.promoted305, %.preheader.i ] ; 4 uses
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %ma_dr_mp3_bs_get_bits.exit80.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bnm, i64 %indvars.iv108.i
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !119
  %.not.i172 = icmp eq i8 %i.bqw, 0
end_hunk_20
