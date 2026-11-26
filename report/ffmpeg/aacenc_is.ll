Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacenc_is?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ff_aac_search_for_is:bb.a
bb.p:                                             ; preds = %bb.o
  %i.dk = load i8, ptr %i.cl, align 1, !tbaa !21  ; 2 uses
  %.not232 = icmp eq i8 %i.dk, 0
  br i1 %.not232, label %._crit_edge205, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.dl = load ptr, ptr %i.bx, align 16, !tbaa !48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv247
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !21  ; 2 uses
  %.not233 = icmp eq i8 %i.dn, 0
  br i1 %.not233, label %._crit_edge205, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.do = zext nneg i32 %.0157213 to i64
  %wide.trip.count245 = zext i8 %i.dk to i64
  %wide.trip.count = zext i8 %i.dn to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv242 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next243, %._crit_edge.us ] ; 2 uses
  %i.dp = phi <4 x float> [ zeroinitializer, %.preheader.us.preheader ], [ %i.ef, %._crit_edge.us ]
  %i.dq = add nuw nsw i64 %indvars.iv242, %i.ck
  %i.dr = shl nuw nsw i64 %i.dq, 7
  %i.ds = add nuw nsw i64 %i.dr, %i.do
  br label %bb.q

bb.q:                                             ; preds = %.preheader.us, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.dt = phi <4 x float> [ %i.dp, %.preheader.us ], [ %i.ef, %bb.q ]
  %i.du = add nuw nsw i64 %i.ds, %indvars.iv      ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !49 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.du
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !49 ; 3 uses
  %i.dz = fadd nsz float %i.dw, %i.dy
  %i.ea = fsub nsz float %i.dw, %i.dy
  %i.eb = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.ea, i64 1
  %i.ed = insertelement <4 x float> %i.ec, float %i.dy, i64 2
  %i.ee = insertelement <4 x float> %i.ed, float %i.dw, i64 3 ; 2 uses
  %i.ef = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.ee, <4 x float> %i.dt) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond241.not, label %._crit_edge.us, label %bb.q, !llvm.loop !52

._crit_edge.us:                                   ; preds = %bb.q
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %._crit_edge205, label %.preheader.us, !llvm.loop !53

._crit_edge205:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.p
  %i.eg = phi <4 x float> [ zeroinitializer, %bb.p ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.ef, %._crit_edge.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.eh = trunc nuw nsw i64 %indvars.iv247 to i32 ; 2 uses
  %i.ei = extractelement <4 x float> %i.eg, i64 1
  %i.ej = extractelement <4 x float> %i.eg, i64 2 ; 3 uses
  %i.ek = extractelement <4 x float> %i.eg, i64 3 ; 4 uses
  call fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %0, ptr noundef nonnull %2, i32 noundef %.0157213, i32 noundef %.0152225, i32 noundef %i.eh, float noundef %i.ek, float noundef %i.ej, float noundef %i.ei, i32 noundef -1)
  %.sroa.0175.0.copyload = load i32, ptr %3, align 4, !tbaa !22
  %.sroa.5176.0.copyload = load i32, ptr %.sroa.5176.0..sroa_idx, align 4, !tbaa !22
  %.sroa.6177.0.copyload = load float, ptr %.sroa.6177.0..sroa_idx, align 4, !tbaa !49
  %.sroa.7178.0.copyload = load float, ptr %.sroa.7178.0..sroa_idx, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.el = extractelement <4 x float> %i.eg, i64 0
  call fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef %0, ptr noundef nonnull %2, i32 noundef %.0157213, i32 noundef %.0152225, i32 noundef %i.eh, float noundef %i.ek, float noundef %i.ej, float noundef %i.el, i32 noundef 1)
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !22
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !49
  %.sroa.6173.0.copyload = load float, ptr %.sroa.6173.0..sroa_idx, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %.not163 = icmp ne i32 %.sroa.0175.0.copyload, 0
  %i.em = fcmp nsz olt float %.sroa.6177.0.copyload, %.sroa.5.0.copyload
  %or.cond187 = select i1 %.not163, i1 %i.em, i1 false
  br i1 %or.cond187, label %.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge205
  %.not164 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not164, label %ff_sfdelta_can_remove_band.exit.thread, label %.thread

.thread:                                          ; preds = %bb.r, %._crit_edge205
  %i.en = phi i32 [ %.sroa.5176.0.copyload, %._crit_edge205 ], [ %.sroa.4.0.copyload, %bb.r ]
  %i.eo = phi float [ %.sroa.7178.0.copyload, %._crit_edge205 ], [ %.sroa.6173.0.copyload, %bb.r ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct
  store i8 1, ptr %i.ep, align 1, !tbaa !21
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ct ; 2 uses
  store i8 0, ptr %i.eq, align 1, !tbaa !21
  %i.er = fdiv nsz float %i.ek, %i.eo
  %i.es = tail call nsz float @llvm.sqrt.f32(float %i.er)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ct
  store float %i.es, ptr %i.et, align 4, !tbaa !49
  %i.eu = fdiv nsz float %i.ek, %i.ej
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ct
  store float %i.eu, ptr %i.ev, align 4, !tbaa !49
  %i.ew = icmp sgt i32 %i.en, 0                   ; 2 uses
  %i.ex = select i1 %i.ew, i32 15, i32 14         ; 3 uses
  store i32 %i.ex, ptr %i.cy, align 4, !tbaa !22
  %.not165 = icmp eq i32 %.1143220, 0
  %.not166 = icmp eq i32 %.1145219, %i.ex
  %or.cond = select i1 %.not165, i1 true, i1 %.not166
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  store i8 1, ptr %i.eq, align 1, !tbaa !21
  %i.ey = select i1 %i.ew, i32 14, i32 15         ; 2 uses
  store i32 %i.ey, ptr %i.cy, align 4, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %i.ez = phi i32 [ %i.ey, %bb.s ], [ %i.ex, %.thread ]
  %i.fa = add nsw i32 %.1154216, 1
  br label %ff_sfdelta_can_remove_band.exit.thread

ff_sfdelta_can_remove_band.exit.thread:           ; preds = %bb.j, %bb.r, %bb.t, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.3156 = phi i32 [ %.1154216, %bb.r ], [ %.1154216, %bb.o ], [ %.1154216, %bb.k ], [ %.1154216, %bb.n ], [ %.1154216, %bb.m ], [ %.1154216, %bb.l ], [ %i.fa, %bb.t ], [ %.1154216, %bb.j ] ; 2 uses
  %.3 = phi i32 [ %.1145219, %bb.r ], [ %.1145219, %bb.o ], [ %.1145219, %bb.k ], [ %.1145219, %bb.n ], [ %.1145219, %bb.m ], [ %.1145219, %bb.l ], [ %i.ez, %bb.t ], [ %.1145219, %bb.j ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ct
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !21
  %.not167 = icmp eq i8 %i.fc, 0
  br i1 %.not167, label %bb.u, label %bb.w

bb.u:                                             ; preds = %ff_sfdelta_can_remove_band.exit.thread
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ct
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !22
  %i.ff = icmp ult i32 %i.fe, 12
  br i1 %i.ff, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ct
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %ff_sfdelta_can_remove_band.exit.thread
  %.2148 = phi i32 [ %.1147218, %ff_sfdelta_can_remove_band.exit.thread ], [ %i.fh, %bb.v ], [ %.1147218, %bb.u ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ct
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !21
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = load ptr, ptr %i.bx, align 16, !tbaa !48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv247
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %.0157213, %i.fo
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.fq = load i32, ptr %i.bp, align 8, !tbaa !71 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next248, %i.fr
  br i1 %i.fs, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %bb.w
  %.pre251 = load i32, ptr %i.e, align 4, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader190.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi253 = phi i64 [ %.pre252, %.preheader190.._crit_edge_crit_edge ], [ %i.ck, %._crit_edge.loopexit ]
  %i.ft = phi i32 [ %i.cg, %.preheader190.._crit_edge_crit_edge ], [ %.pre251, %._crit_edge.loopexit ] ; 2 uses
  %i.fu = phi i32 [ %i.ch, %.preheader190.._crit_edge_crit_edge ], [ %i.fq, %._crit_edge.loopexit ]
  %.1154.lcssa = phi i32 [ %.0153224, %.preheader190.._crit_edge_crit_edge ], [ %.3156, %._crit_edge.loopexit ] ; 2 uses
  %.1147.lcssa = phi i32 [ %.0146226, %.preheader190.._crit_edge_crit_edge ], [ %.2148, %._crit_edge.loopexit ]
  %.1145.lcssa = phi i32 [ %.0144227, %.preheader190.._crit_edge_crit_edge ], [ %.3, %._crit_edge.loopexit ]
  %.1143.lcssa = phi i32 [ %.0142228, %.preheader190.._crit_edge_crit_edge ], [ %i.fk, %._crit_edge.loopexit ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.pre-phi253
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = zext i8 %i.fw to i32
  %i.fy = add nuw nsw i32 %.0152225, %i.fx        ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.ft
  br i1 %i.fz, label %.preheader190, label %._crit_edge229.loopexit, !llvm.loop !55

._crit_edge229.loopexit:                          ; preds = %._crit_edge
  %i.ga = icmp ne i32 %.1154.lcssa, 0
  %i.gb = zext i1 %i.ga to i8
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.preheader190.lr.ph, %._crit_edge229.loopexit, %ff_init_nextband_map.exit
  %.0153.lcssa = phi i8 [ 0, %ff_init_nextband_map.exit ], [ %i.gb, %._crit_edge229.loopexit ], [ 0, %.preheader190.lr.ph ]
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.0153.lcssa, ptr %i.gc, align 8, !tbaa !73
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %._crit_edge229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @aac_is_encoding_err(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 24)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef range(i32 -1, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12832 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 59184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 38688 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 39712 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40736 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 41760 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = fcmp nsz ole float %8, 0.000000e+00
  %i.h = fcmp nsz ole float %6, 0.000000e+00
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 286
  %i.j = sext i32 %4 to i64                       ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 38160
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 38232
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6940
  %i.p = shl nsw i32 %4, 4
  %i.q = add nsw i32 %i.p, %5
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = sitofp nsz i32 %9 to float               ; 2 uses
  %i.u = fdiv nsz float %7, %6                    ; 2 uses
  %i.v = tail call nsz float @llvm.sqrt.f32(float %i.u)
  %i.w = fmul nsz float %i.u, %i.v
  %i.x = tail call nsz noundef float @llvm.sqrt.f32(float %i.w)
  %i.y = fmul nsz float %i.x, %i.t                ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 6 uses
  %i.aa = sext i32 %5 to i64                      ; 9 uses
  %i.ab = fdiv nsz float %6, %8
  %i.ac = fpext nsz float %i.ab to double
  %i.ad = tail call nsz double @llvm.sqrt.f64(double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 567080 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 5916
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 38240 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 46656
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 53292
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.r
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 52268
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.r
  %i.an = sext i32 %3 to i64
  %.pre = load ptr, ptr %i.z, align 16, !tbaa !48 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 %i.aa
  %.pre201 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph185, %._crit_edge180
  %i.ao = phi i8 [ %.pre201, %.lr.ph185 ], [ %i.ee, %._crit_edge180 ]
  %i.ap = phi ptr [ %.pre, %.lr.ph185 ], [ %i.ec, %._crit_edge180 ]
  %indvars.iv198 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next199, %._crit_edge180 ] ; 2 uses
  %.0163184 = phi float [ 0.000000e+00, %.lr.ph185 ], [ %i.fq, %._crit_edge180 ]
  %.0164183 = phi float [ 0.000000e+00, %.lr.ph185 ], [ %i.dt, %._crit_edge180 ]
  %i.aq = load ptr, ptr %i.m, align 16, !tbaa !79
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !80
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2052 x i8], ptr %i.aq, i64 %i.as
  %i.au = add nsw i64 %indvars.iv198, %i.j        ; 2 uses
  %.idx = shl i64 %i.au, 8
  %i.av = getelementptr i8, ptr %i.at, i64 %.idx
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %i.aa ; 2 uses
  %i.ax = load i32, ptr %i.s, align 4, !tbaa !22
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 5) ; 2 uses
  %spec.select = add nsw i32 %i.ay, -4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !82 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 2060   ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !82 ; 2 uses
  %i.bd = fcmp nsz ogt float %i.ba, %i.bc
  %i.be = select nsz i1 %i.bd, float %i.bc, float %i.ba ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.ap, i64 %i.aa
  %.not188 = icmp eq i8 %i.ao, 0
  %.pre202 = shl nsw i64 %i.au, 7
  %.pre203 = add nsw i64 %.pre202, %i.an          ; 3 uses
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.bg = add nsw i64 %.pre203, %indvars.iv       ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !49
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !49
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.t, float %i.bk, float %i.bi)
  %i.bm = fpext nsz float %i.bl to double
  %i.bn = fmul nsz double %i.ad, %i.bm
  %i.bo = fptrunc nsz double %i.bn to float
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.bo, ptr %i.bp, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i8, ptr %i.bf, align 1, !tbaa !21  ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bt = zext i8 %i.bq to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.lcssa.in = phi i32 [ 0, %bb.b ], [ %i.bt, %._crit_edge.loopexit ]
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre203 ; 2 uses
  tail call void %i.bu(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bv, i32 noundef %.lcssa.in) #6
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre203 ; 2 uses
  %i.by = load ptr, ptr %i.z, align 16, !tbaa !48
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.aa
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21
  %i.cb = zext i8 %i.ca to i32
  tail call void %i.bw(ptr noundef nonnull %i.d, ptr noundef nonnull %i.bx, i32 noundef %i.cb) #6
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.cd = load ptr, ptr %i.z, align 16, !tbaa !48
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.aa
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = zext i8 %i.cf to i32
  tail call void %i.cc(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i32 noundef %i.cg) #6
  %i.ch = load ptr, ptr %i.z, align 16, !tbaa !48
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.aa
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !21  ; 4 uses
  %i.ck = zext i8 %i.cj to i32
  %.not.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i, label %find_max_val.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %._crit_edge
  %wide.trip.count.i = zext i8 %i.cj to i64       ; 3 uses
  %i.cl = icmp ult i8 %i.cj, 8
  br i1 %i.cl, label %.preheader.us.i.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter.a = and i64 %wide.trip.count.i, 248 ; 3 uses
  br label %.preheader.us.i.a

.preheader.us.i.a:                                ; preds = %.preheader.us.i.a, %.preheader.us.preheader.i.new
  %niter.a = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %index.next, %.preheader.us.i.a ] ; 3 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %.preheader.us.preheader.i.new ], [ %14, %.preheader.us.i.a ] ; 3 uses
  %vec.phi216 = phi <4 x float> [ zeroinitializer, %.preheader.us.preheader.i.new ], [ %15, %.preheader.us.i.a ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %niter.a ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <4 x float>, ptr %i.cm, align 4, !tbaa !49
  %wide.load217 = load <4 x float>, ptr %i.cn, align 4, !tbaa !49
  %10 = freeze <4 x float> %wide.load             ; 3 uses
  %11 = freeze <4 x float> %wide.load217          ; 3 uses
  %12 = fcmp nsz ogt <4 x float> %vec.phi, %10
  %13 = fcmp nsz ogt <4 x float> %vec.phi216, %11
  %14 = select nsz <4 x i1> %12, <4 x float> %vec.phi, <4 x float> %10 ; 2 uses
  %15 = select nsz <4 x i1> %13, <4 x float> %vec.phi216, <4 x float> %11 ; 2 uses
  %index.next = add nuw i64 %niter.a, 8           ; 2 uses
  %16 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %10, /* (nan nzero) */ i32 35)
  %17 = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %11, /* (nan nzero) */ i32 35)
  %18 = or <4 x i1> %16, %17
  %19 = bitcast <4 x i1> %18 to i4
  %20 = icmp ne i4 %19, 0                         ; 5 uses
  %21 = icmp eq i64 %index.next, %unroll_iter.a
  %22 = or i1 %20, %21
  br i1 %22, label %find_max_val.exit.loopexit.unr-lcssa, label %.preheader.us.i.a, !llvm.loop !75

find_max_val.exit.loopexit.unr-lcssa:             ; preds = %.preheader.us.i.a
  %23 = select i1 %20, <4 x float> %vec.phi, <4 x float> %14
  %24 = select i1 %20, <4 x float> %vec.phi216, <4 x float> %15
  %25 = select i1 %20, i64 %niter.a, i64 %unroll_iter.a
  %rdx.minmax = tail call nnan nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %23, <4 x float> %24)
  %26 = tail call nnan nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %unroll_iter.a, %wide.trip.count.i
  %.not218 = or i1 %cmp.n, %20
  br i1 %.not218, label %.preheader.us.i.epil.preheader, label %find_max_val.exit

.preheader.us.i.epil.preheader:                   ; preds = %.preheader.us.preheader.i, %find_max_val.exit.loopexit.unr-lcssa
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %25, %find_max_val.exit.loopexit.unr-lcssa ]
  %.117.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %26, %find_max_val.exit.loopexit.unr-lcssa ]
  br label %.preheader.us.i.epil

.preheader.us.i.epil:                             ; preds = %.preheader.us.i.epil.preheader, %.preheader.us.i.epil
  %indvars.iv.i.epil = phi i64 [ %epil.iter.next, %.preheader.us.i.epil ], [ %indvars.iv.i.epil.init, %.preheader.us.i.epil.preheader ] ; 2 uses
  %.117.us.i.epil = phi float [ %.1..us.i.epil, %.preheader.us.i.epil ], [ %.117.us.i.epil.init, %.preheader.us.i.epil.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.epil
  %i.cp = load float, ptr %i.co, align 4, !tbaa !49 ; 2 uses
  %i.cq = fcmp nsz ogt float %.117.us.i.epil, %i.cp
  %.1..us.i.epil = select nsz i1 %i.cq, float %.117.us.i.epil, float %i.cp ; 2 uses
  %epil.iter.next = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count.i
  br i1 %epil.iter.cmp.not, label %find_max_val.exit, label %.preheader.us.i.epil, !llvm.loop !76

find_max_val.exit:                                ; preds = %.preheader.us.i.epil, %find_max_val.exit.loopexit.unr-lcssa, %._crit_edge
  %.us-phi.i = phi float [ 0.000000e+00, %._crit_edge ], [ %26, %find_max_val.exit.loopexit.unr-lcssa ], [ %.1..us.i.epil, %.preheader.us.i.epil ]
  %i.cr = sub nsw i32 308, %i.ay
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !49
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %.us-phi.i, float %i.cu, float 4.054000e-01)
  %i.cw = fptosi float %i.cv to i32               ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 13
  br i1 %i.cx, label %find_min_book.exit, label %bb.c

bb.c:                                             ; preds = %find_max_val.exit
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  %i.db = zext i8 %i.da to i32
  br label %find_min_book.exit

find_min_book.exit:                               ; preds = %find_max_val.exit, %bb.c
  %.0.i = phi i32 [ %i.db, %bb.c ], [ 11, %find_max_val.exit ]
  %i.dc = load i32, ptr %i.s, align 4, !tbaa !22
  %i.dd = load i32, ptr %i.ag, align 4, !tbaa !22
  %i.de = load float, ptr %i.ah, align 16, !tbaa !47
  %i.df = load float, ptr %i.az, align 4, !tbaa !82
  %i.dg = fdiv nsz float %i.de, %i.df
  %i.dh = tail call nsz float @ff_quantize_and_encode_band_cost(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.bv, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef range(i32 0, 256) %i.ck, i32 noundef %i.dc, i32 noundef %i.dd, float noundef %i.dg, float noundef +inf, ptr noundef null, ptr noundef null) #6
  %i.di = fadd nsz float %.0164183, %i.dh
  %i.dj = load ptr, ptr %i.ai, align 16, !tbaa !48
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.aa
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !21
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.do = load i32, ptr %i.am, align 4, !tbaa !22
  %i.dp = load float, ptr %i.ah, align 16, !tbaa !47
  %i.dq = load float, ptr %i.bb, align 4, !tbaa !82
  %i.dr = fdiv nsz float %i.dp, %i.dq
  %i.ds = tail call nsz float @ff_quantize_and_encode_band_cost(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.bx, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef range(i32 0, 256) %i.dm, i32 noundef %i.dn, i32 noundef %i.do, float noundef %i.dr, float noundef +inf, ptr noundef null, ptr noundef null) #6
  %i.dt = fadd nsz float %i.di, %i.ds             ; 2 uses
  %i.du = load ptr, ptr %i.z, align 16, !tbaa !48
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.aa
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load float, ptr %i.ah, align 16, !tbaa !47
  %i.dz = fdiv nsz float %i.dy, %i.be
  %i.ea = tail call nsz float @ff_quantize_and_encode_band_cost(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f, i32 noundef range(i32 0, 256) %i.dx, i32 noundef %spec.select, i32 noundef %.0.i, float noundef %i.dz, float noundef +inf, ptr noundef null, ptr noundef null) #6
  %i.eb = fadd nsz float %.0163184, %i.ea
  %i.ec = load ptr, ptr %i.z, align 16, !tbaa !48 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.aa
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !21  ; 5 uses
  %.not189 = icmp eq i8 %i.ee, 0
  br i1 %.not189, label %._crit_edge180, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %find_min_book.exit
  %wide.trip.count = zext i8 %i.ee to i64         ; 2 uses
  %xtraiter221 = and i64 %wide.trip.count, 1
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %.lr.ph179.epil.preheader, label %.lr.ph179.preheader.new

.lr.ph179.preheader.new:                          ; preds = %.lr.ph179.preheader
  %unroll_iter226 = and i64 %wide.trip.count, 254
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179, %.lr.ph179.preheader.new
  %indvars.iv195 = phi i64 [ 0, %.lr.ph179.preheader.new ], [ %indvars.iv.next196.1, %.lr.ph179 ] ; 5 uses
  %.0178 = phi float [ 0.000000e+00, %.lr.ph179.preheader.new ], [ %i.fb, %.lr.ph179 ]
  %niter227 = phi i64 [ 0, %.lr.ph179.preheader.new ], [ %niter227.next.1, %.lr.ph179 ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv195
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !49
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv195
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !49 ; 2 uses
  %i.ek = fsub nsz float %i.eh, %i.ej             ; 2 uses
  %i.el = tail call nsz float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %.0178)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv195
  %i.en = load float, ptr %i.em, align 4, !tbaa !49
  %i.eo = fneg nsz float %i.ej
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.y, float %i.en) ; 2 uses
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.el)
  %indvars.iv.next196 = or disjoint i64 %indvars.iv195, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next196
  %i.es = load float, ptr %i.er, align 4, !tbaa !49
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next196
  %i.eu = load float, ptr %i.et, align 4, !tbaa !49 ; 2 uses
  %i.ev = fsub nsz float %i.es, %i.eu             ; 2 uses
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.eq)
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next196
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !49
  %i.ez = fneg nsz float %i.eu
  %i.fa = tail call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.y, float %i.ey) ; 2 uses
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ew) ; 3 uses
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %._crit_edge180.loopexit.unr-lcssa, label %.lr.ph179, !llvm.loop !77

._crit_edge180.loopexit.unr-lcssa:                ; preds = %.lr.ph179
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %._crit_edge180, label %.lr.ph179.epil.preheader

.lr.ph179.epil.preheader:                         ; preds = %._crit_edge180.loopexit.unr-lcssa, %.lr.ph179.preheader
  %indvars.iv195.epil.init = phi i64 [ 0, %.lr.ph179.preheader ], [ %indvars.iv.next196.1, %._crit_edge180.loopexit.unr-lcssa ] ; 3 uses
  %.0178.epil.init = phi float [ 0.000000e+00, %.lr.ph179.preheader ], [ %i.fb, %._crit_edge180.loopexit.unr-lcssa ]
  %lcmp.mod225 = trunc i8 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv195.epil.init
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !49
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv195.epil.init
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !49 ; 2 uses
  %i.fg = fsub nsz float %i.fd, %i.ff             ; 2 uses
  %i.fh = tail call nsz float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %.0178.epil.init)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv195.epil.init
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !49
  %i.fk = fneg nsz float %i.ff
  %i.fl = tail call nsz float @llvm.fmuladd.f32(float %i.fk, float %i.y, float %i.fj) ; 2 uses
  %i.fm = tail call nsz float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fh)
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %.lr.ph179.epil.preheader, %._crit_edge180.loopexit.unr-lcssa, %find_min_book.exit
  %.0.lcssa = phi float [ 0.000000e+00, %find_min_book.exit ], [ %i.fb, %._crit_edge180.loopexit.unr-lcssa ], [ %i.fm, %.lr.ph179.epil.preheader ]
  %i.fn = load float, ptr %i.ah, align 16, !tbaa !47
  %i.fo = fdiv nsz float %i.fn, %i.be
  %i.fp = fmul nsz float %.0.lcssa, %i.fo
  %i.fq = fadd nsz float %i.eb, %i.fp             ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.fr = load i8, ptr %i.k, align 1, !tbaa !21
  %i.fs = zext i8 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next199, %i.fs
  br i1 %i.ft, label %bb.b, label %._crit_edge186, !llvm.loop !78

._crit_edge186:                                   ; preds = %._crit_edge180, %.preheader
  %.0164.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.dt, %._crit_edge180 ] ; 3 uses
  %.0163.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.fq, %._crit_edge180 ] ; 3 uses
  %i.fu = fcmp nsz ole float %.0163.lcssa, %.0164.lcssa
  %i.fv = zext i1 %i.fu to i32
  store i32 %i.fv, ptr %0, align 4, !tbaa !87
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %9, ptr %i.fw, align 4, !tbaa !88
  %i.fx = fsub nsz float %.0163.lcssa, %.0164.lcssa
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.fx, ptr %i.fy, align 4, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0164.lcssa, ptr %i.fz, align 4, !tbaa !90
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.0163.lcssa, ptr %i.ga, align 4, !tbaa !91
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %8, ptr %i.gb, align 4, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge186
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

declare float @ff_quantize_and_encode_band_cost(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!"p1 short", !9, i64 0}
!14 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!15 = !{!"p1 int", !9, i64 0}
!16 = !{!"any p2 pointer", !9, i64 0}
!17 = !{!"IndividualChannelStream", !5, i64 0, !5, i64 4, !5, i64 12, !5, i64 14, !13, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !5, i64 52, !12, i64 60}
!18 = !{!"TemporalNoiseShaping", !6, i64 0, !5, i64 4, !5, i64 36, !5, i64 164, !5, i64 292, !5, i64 420, !5, i64 2980}
!19 = !{!"Pulse", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 24}
!20 = !{!"SingleChannelElement", !17, i64 0, !18, i64 64, !19, i64 5604, !5, i64 5644, !5, i64 6156, !5, i64 6668, !5, i64 7180, !5, i64 7308, !5, i64 7436, !5, i64 7948, !5, i64 8464, !5, i64 12560, !5, i64 16656, !5, i64 24848}
!21 = !{!5, !5, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"AACEncOptions", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!25 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24}
!26 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!27 = !{!"p1 _ZTS17AVFloatDSPContext", !9, i64 0}
!28 = !{!"AACPCEInfo", !14, i64 0, !5, i64 24, !5, i64 28, !5, i64 52, !5, i64 84, !5, i64 100}
!29 = !{!"p1 double", !9, i64 0}
!30 = !{!"LPCContext", !6, i64 0, !6, i64 4, !6, i64 8, !29, i64 16, !29, i64 24, !9, i64 32, !9, i64 40, !5, i64 48}
!31 = !{!"p1 _ZTS14ChannelElement", !9, i64 0}
!32 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!33 = !{!"p1 _ZTS10FFPsyModel", !9, i64 0}
!34 = !{!"p1 _ZTS12FFPsyChannel", !9, i64 0}
!35 = !{!"p1 _ZTS17FFPsyChannelGroup", !9, i64 0}
!36 = !{!"p2 omnipotent char", !16, i64 0}
!37 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!38 = !{!"FFPsyContext", !32, i64 0, !33, i64 8, !34, i64 16, !35, i64 24, !6, i64 32, !6, i64 36, !36, i64 40, !15, i64 48, !6, i64 56, !37, i64 60, !9, i64 72}
!39 = !{!"p1 _ZTS22AACCoefficientsEncoder", !9, i64 0}
!40 = !{!"p1 _ZTS10AudioFrame", !9, i64 0}
!41 = !{!"AudioFrameQueue", !32, i64 0, !6, i64 8, !6, i64 12, !40, i64 16, !6, i64 24, !6, i64 28}
!42 = !{!"short", !5, i64 0}
!43 = !{!"AACEncDSPContext", !9, i64 0, !9, i64 8}
!44 = !{!"p1 float", !9, i64 0}
!45 = !{!"", !44, i64 0}
!46 = !{!"AACEncContext", !10, i64 0, !24, i64 8, !25, i64 32, !26, i64 64, !9, i64 72, !26, i64 80, !9, i64 88, !27, i64 96, !28, i64 104, !5, i64 224, !6, i64 352, !6, i64 356, !30, i64 368, !6, i64 38112, !6, i64 38116, !11, i64 38120, !11, i64 38128, !31, i64 38136, !38, i64 38144, !39, i64 38224, !6, i64 38232, !6, i64 38236, !12, i64 38240, !6, i64 38244, !12, i64 38248, !6, i64 38252, !6, i64 38256, !41, i64 38264, !5, i64 38304, !5, i64 38688, !42, i64 42784, !5, i64 42788, !43, i64 567080, !45, i64 567096}
!47 = !{!46, !12, i64 38240}
!48 = !{!20, !11, i64 32}
!49 = !{!12, !12, i64 0}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23, !72}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23, !72}
!56 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!57 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!58 = !{!"long", !5, i64 0}
!59 = !{!"AVRational", !6, i64 0, !6, i64 4}
!60 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!61 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!62 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!63 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!64 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!65 = !{!"p2 _ZTS15AVFrameSideData", !16, i64 0}
!66 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !56, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !57, i64 40, !9, i64 48, !58, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !59, i64 84, !59, i64 92, !59, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !59, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !13, i64 288, !13, i64 296, !13, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !14, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !12, i64 428, !12, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !60, i64 456, !58, i64 464, !58, i64 472, !12, i64 480, !12, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !61, i64 536, !9, i64 544, !62, i64 552, !62, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !63, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !64, i64 776, !6, i64 784, !6, i64 788, !58, i64 792, !6, i64 800, !6, i64 804, !58, i64 808, !9, i64 816, !58, i64 824, !15, i64 832, !6, i64 840, !65, i64 848, !6, i64 856, !6, i64 860}
!67 = !{!66, !6, i64 344}
!68 = !{!20, !6, i64 44}
!69 = !{!"ChannelElement", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 137, !5, i64 272}
!70 = !{!69, !6, i64 0}
!71 = !{!20, !6, i64 40}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = !{!69, !5, i64 8}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23, !84, !85}
!76 = distinct !{!76, !23, !85, !84}
!77 = distinct !{!77, !23}
!78 = distinct !{!78, !23}
!79 = !{!46, !34, i64 38160}
!80 = !{!46, !6, i64 38232}
!81 = !{!"FFPsyBand", !6, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!82 = !{!81, !12, i64 8}
!83 = !{!46, !9, i64 567080}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = !{!"AACISError", !6, i64 0, !6, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!87 = !{!86, !6, i64 0}
!88 = !{!86, !6, i64 4}
!89 = !{!86, !12, i64 8}
!90 = !{!86, !12, i64 12}
!91 = !{!86, !12, i64 16}
!92 = !{!86, !12, i64 20}
end_hunk_0
