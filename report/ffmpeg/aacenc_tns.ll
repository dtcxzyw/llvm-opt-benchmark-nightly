Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacenc_tns?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_aac_apply_tns:bb.a
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.by = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !23
  %i.cb = mul nsw i64 %indvars.iv, %.0
  %i.cc = sub nsw i64 %indvars.iv94, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ce, float %i.bx) ; 2 uses
  store float %i.cf, ptr %i.bv, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = mul nsw i64 %indvars.iv.next, %.0
  %i.ck = sub nsw i64 %indvars.iv94, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !23
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.cm, float %i.cf) ; 3 uses
  store float %i.cn, ptr %i.bv, align 4, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %.promoted, %.lr.ph ], [ %i.cn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.co = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23
  %i.cr = mul nsw i64 %indvars.iv.epil.init, %.0
  %i.cs = sub nsw i64 %indvars.iv94, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !23
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.cu, float %.epil.init)
  store float %i.cv, ptr %i.bv, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.cw = add nuw nsw i32 %.06980, 1              ; 2 uses
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, %.0
  %exitcond97.not = icmp eq i32 %i.cw, %i.bl
  br i1 %exitcond97.not, label %.loopexit, label %.preheader, !llvm.loop !41

.loopexit:                                        ; preds = %._crit_edge, %compute_lpc_coefs.exit, %bb.c
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge86, label %bb.c, !llvm.loop !42

._crit_edge86:                                    ; preds = %.loopexit, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %indvars.iv.next93 = add i32 %indvars.iv92, 128
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge90, label %bb.b, !llvm.loop !43

._crit_edge90:                                    ; preds = %._crit_edge86, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define void @ff_aac_search_for_tns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x double], align 16           ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 16, !tbaa !54  ; 2 uses
  %i.e = load i8, ptr %1, align 16, !tbaa !55     ; 2 uses
  %i.f = zext i8 %i.e to i32
  %. = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9    ; 3 uses
  %i.i = icmp eq i32 %i.h, 2                      ; 4 uses
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @tns_min_sfb, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 38112
  %i.n = load i32, ptr %i.m, align 16, !tbaa !82
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %..i136 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.r) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !83   ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.)
  %.0.i = select i1 %i.u, i32 0, i32 %..i         ; 3 uses
  %i.v = select i1 %i.i, i32 7, i32 12            ; 2 uses
  %i.w = icmp eq i32 %i.h, 3
  %i.x = icmp eq i32 %i.h, 1
  %i.y = select i1 %i.x, i32 0, i32 2
  %i.z = select i1 %i.w, i32 1, i32 %i.y          ; 2 uses
  %i.aa = sub nsw i32 %.0.i, %..i136              ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 2 uses
  %i.ad = sext i32 %.0.i to i64                   ; 3 uses
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !25
  %i.ag = zext i16 %i.af to i32
  %i.ah = sext i32 %..i136 to i64                 ; 2 uses
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !25
  %i.ak = zext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ag, %i.ak                ; 2 uses
  %i.am = select i1 %i.i, i32 1, i32 2            ; 2 uses
  %i.an = icmp slt i32 %i.al, 1
  %i.ao = icmp slt i32 %i.aa, 1
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %._crit_edge162, label %.preheader139

.preheader139:                                    ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.preheader139
  %i.as = icmp sle i32 %..i136, %.0.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 38160 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 38232 ; 2 uses
  %i.av = lshr i32 %i.aa, 1
  %i.aw = add nsw i32 %i.av, %..i136              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.az = lshr i32 %i.aa, 2                       ; 2 uses
  %i.ba = add nsw i32 %i.aw, %i.az
  %i.bb = sub nsw i32 %i.aw, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12560
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.not = icmp eq i32 %i.z, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3044
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_tns_tmp2_map, i64 8), align 8 ; 17 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 60
  %i.cb = sext i32 %i.d to i64
  %i.cc = zext i8 %i.q to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = zext i8 %i.e to i64
  %smin169 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %i.cd) ; 2 uses
  %i.ce = sext i32 %i.aw to i64
  %i.cf = sext i32 %i.bb to i64
  %i.cg = sext i32 %i.ba to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %bb.q
  %indvars.iv175 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next176, %bb.q ] ; 10 uses
  %.0126160 = phi i32 [ 0, %.lr.ph161 ], [ %.1, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ch = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.ah
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !25
  %i.ck = zext i16 %i.cj to i64
  %i.cl = load i32, ptr %i.s, align 8, !tbaa !83  ; 3 uses
  %i.cm = icmp slt i32 %..i136, %i.cl
  %i.cn = and i1 %i.as, %i.cm                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader138

.preheader138:                                    ; preds = %bb.b
  br i1 %i.cn, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %.preheader138
  %i.co = load ptr, ptr %i.at, align 16, !tbaa !85
  %i.cp = load i32, ptr %i.au, align 8, !tbaa !86
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [2052 x i8], ptr %i.co, i64 %i.cq
  %i.cs = sext i32 %i.cl to i64
  %.idx = shl i64 %indvars.iv175, 8
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %i.cn, label %.lr.ph146, label %bb.k

.lr.ph146:                                        ; preds = %.preheader
  %i.ct = load ptr, ptr %i.at, align 16, !tbaa !85
  %i.cu = load i32, ptr %i.au, align 8, !tbaa !86
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2052 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = sext i32 %i.cl to i64
  %.idx185 = shl i64 %indvars.iv175, 8
  %invariant.gep191 = getelementptr i8, ptr %i.cw, i64 %.idx185
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %smin169, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.cy = phi float [ 0.000000e+00, %.lr.ph ], [ %7, %bb.c ] ; 2 uses
  %i.cz = phi float [ 0.000000e+00, %.lr.ph ], [ %8, %bb.c ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  %2 = icmp sgt i64 %indvars.iv, %i.ce            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %4 = load float, ptr %3, align 4, !tbaa !88     ; 2 uses
  %5 = fadd nsz float %4, %i.cz
  %6 = fadd nsz float %4, %i.cy
  %7 = select i1 %2, float %6, float %i.cy        ; 2 uses
  %8 = select i1 %2, float %i.cz, float %5        ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.da = icmp slt i64 %indvars.iv.next, %i.cs
  %i.db = icmp slt i64 %indvars.iv, %i.ad
  %i.dc = and i1 %i.db, %i.da
  br i1 %i.dc, label %bb.c, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.c
  store float %7, ptr %i.ax, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.preheader138
  %.lcssa = phi float [ %8, %._crit_edge ], [ 0.000000e+00, %.preheader138 ] ; 2 uses
  store float %.lcssa, ptr %i.b, align 16
  store float %.lcssa, ptr %i.ay, align 8, !tbaa !23
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph146, %bb.j
  %indvars.iv170 = phi i64 [ %smin169, %.lr.ph146 ], [ %indvars.iv.next171, %bb.j ] ; 5 uses
  %i.dd = phi float [ 0.000000e+00, %.lr.ph146 ], [ %i.dp, %bb.j ] ; 3 uses
  %i.de = phi float [ 0.000000e+00, %.lr.ph146 ], [ %i.dq, %bb.j ] ; 3 uses
  %i.df = phi float [ 0.000000e+00, %.lr.ph146 ], [ %i.dr, %bb.j ] ; 3 uses
  %gep192 = getelementptr [16 x i8], ptr %invariant.gep191, i64 %indvars.iv170 ; 2 uses
  %i.dg = icmp sgt i64 %indvars.iv170, %i.cg
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %gep192, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !88
  %i.dj = fadd nsz float %i.di, %i.dd
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.dk = icmp sgt i64 %indvars.iv170, %i.cf
  %i.dl = getelementptr inbounds nuw i8, ptr %gep192, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !88 ; 2 uses
  br i1 %i.dk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dn = fadd nsz float %i.dm, %i.de
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.do = fadd nsz float %i.dm, %i.df
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.dp = phi float [ %i.dd, %bb.h ], [ %i.dd, %bb.i ], [ %i.dj, %bb.f ] ; 2 uses
  %i.dq = phi float [ %i.dn, %bb.h ], [ %i.de, %bb.i ], [ %i.de, %bb.f ] ; 2 uses
  %i.dr = phi float [ %i.df, %bb.h ], [ %i.do, %bb.i ], [ %i.df, %bb.f ] ; 2 uses
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.ds = icmp slt i64 %indvars.iv.next171, %i.cx
  %i.dt = icmp slt i64 %indvars.iv170, %i.ad
  %i.du = and i1 %i.dt, %i.ds
  br i1 %i.du, label %bb.e, label %._crit_edge147, !llvm.loop !50

._crit_edge147:                                   ; preds = %bb.j
  store float %i.dq, ptr %i.ax, align 4
  store float %i.dp, ptr %i.ay, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge147, %.preheader
  %.lcssa144 = phi float [ %i.dr, %._crit_edge147 ], [ 0.000000e+00, %.preheader ] ; 2 uses
  store float %.lcssa144, ptr %i.b, align 16
  store float %.lcssa144, ptr %i.bc, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.dv = shl i64 %indvars.iv175, 7
  %i.dw = add i64 %i.dv, %i.ck
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dx
  %i.dz = call nsz double @ff_lpc_calc_ref_coefs_f(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.dy, i32 noundef %i.al, i32 noundef %i.v, ptr noundef nonnull %i.a) #7 ; 3 uses
  %i.ea = call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp ueq double %i.ea, +inf
  %i.ec = fcmp nsz olt double %i.dz, f0x3FF6666660000000
  %i.ed = fcmp nsz ogt double %i.dz, f0x3FF9FBE760000000
  %i.ee = or i1 %i.ec, %i.ed
  %or.cond5 = select i1 %i.eb, i1 true, i1 %i.ee
  br i1 %or.cond5, label %bb.q, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.l
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv175 ; 2 uses
  store i32 %i.am, ptr %i.ef, align 4, !tbaa !9
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv175
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv175
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv175
  %i.ej = getelementptr inbounds nuw [320 x i8], ptr %i.bj, i64 %indvars.iv175
  %i.ek = getelementptr inbounds nuw [320 x i8], ptr %i.bk, i64 %indvars.iv175
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph156, %quantize_coefs.exit
  %i.el = phi i32 [ %i.am, %.lr.ph156 ], [ %i.hx, %quantize_coefs.exit ] ; 3 uses
  %indvars.iv172 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next173, %quantize_coefs.exit ] ; 7 uses
  %.0154 = phi i32 [ 0, %.lr.ph156 ], [ %i.hz, %quantize_coefs.exit ] ; 2 uses
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv172 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !23
  %i.eq = fcmp nsz olt float %i.en, %i.ep
  %i.er = zext i1 %i.eq to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.es = phi i32 [ %i.er, %bb.n ], [ %i.z, %bb.m ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv172
  store i32 %i.es, ptr %i.et, align 4, !tbaa !9
  %i.eu = sdiv i32 %i.v, %i.el                    ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv172 ; 2 uses
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !9
  %i.ew = sdiv i32 %i.aa, %i.el
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv172
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !9
  %i.ey = sext i32 %.0154 to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [80 x i8], ptr %i.ej, i64 %indvars.iv172
  %i.fb = getelementptr inbounds nuw [80 x i8], ptr %i.ek, i64 %indvars.iv172
  %i.fc = icmp sgt i32 %i.eu, 0
  br i1 %i.fc, label %.lr.ph.i, label %quantize_coefs.exit

.lr.ph.i:                                         ; preds = %bb.o
  %wide.trip.count.i = zext nneg i32 %i.eu to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !90
  %i.ff = fptrunc nsz double %i.fe to float       ; 16 uses
  %i.fg = load float, ptr %i.bl, align 4, !tbaa !23
  %i.fh = fsub nsz float %i.ff, %i.fg             ; 2 uses
  %i.fi = fmul nsz float %i.fh, %i.fh             ; 2 uses
  %i.fj = fcmp nsz olt float %i.fi, +inf
  %.1.i.i = select nsz i1 %i.fj, float %i.fi, float +inf ; 2 uses
  %i.fk = load float, ptr %i.bm, align 4, !tbaa !23
  %i.fl = fsub nsz float %i.ff, %i.fk             ; 2 uses
  %i.fm = fmul nsz float %i.fl, %i.fl             ; 2 uses
  %i.fn = fcmp nsz olt float %i.fm, %.1.i.i       ; 2 uses
  %.114.1.i.i = zext i1 %i.fn to i32
  %.1.1.i.i = select nsz i1 %i.fn, float %i.fm, float %.1.i.i ; 2 uses
  %i.fo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.fp = fsub nsz float %i.ff, %i.fo             ; 2 uses
  %i.fq = fmul nsz float %i.fp, %i.fp             ; 2 uses
  %i.fr = fcmp nsz olt float %i.fq, %.1.1.i.i     ; 2 uses
  %.114.2.i.i = select i1 %i.fr, i32 2, i32 %.114.1.i.i
  %.1.2.i.i = select nsz i1 %i.fr, float %i.fq, float %.1.1.i.i ; 2 uses
  %i.fs = load float, ptr %i.bo, align 4, !tbaa !23
  %i.ft = fsub nsz float %i.ff, %i.fs             ; 2 uses
  %i.fu = fmul nsz float %i.ft, %i.ft             ; 2 uses
  %i.fv = fcmp nsz olt float %i.fu, %.1.2.i.i     ; 2 uses
  %.114.3.i.i = select i1 %i.fv, i32 3, i32 %.114.2.i.i
  %.1.3.i.i = select nsz i1 %i.fv, float %i.fu, float %.1.2.i.i ; 2 uses
  %i.fw = load float, ptr %i.bp, align 4, !tbaa !23
  %i.fx = fsub nsz float %i.ff, %i.fw             ; 2 uses
  %i.fy = fmul nsz float %i.fx, %i.fx             ; 2 uses
  %i.fz = fcmp nsz olt float %i.fy, %.1.3.i.i     ; 2 uses
  %.114.4.i.i = select i1 %i.fz, i32 4, i32 %.114.3.i.i
  %.1.4.i.i = select nsz i1 %i.fz, float %i.fy, float %.1.3.i.i ; 2 uses
  %i.ga = load float, ptr %i.bq, align 4, !tbaa !23
  %i.gb = fsub nsz float %i.ff, %i.ga             ; 2 uses
  %i.gc = fmul nsz float %i.gb, %i.gb             ; 2 uses
  %i.gd = fcmp nsz olt float %i.gc, %.1.4.i.i     ; 2 uses
  %.114.5.i.i = select i1 %i.gd, i32 5, i32 %.114.4.i.i
  %.1.5.i.i = select nsz i1 %i.gd, float %i.gc, float %.1.4.i.i ; 2 uses
  %i.ge = load float, ptr %i.br, align 4, !tbaa !23
  %i.gf = fsub nsz float %i.ff, %i.ge             ; 2 uses
  %i.gg = fmul nsz float %i.gf, %i.gf             ; 2 uses
  %i.gh = fcmp nsz olt float %i.gg, %.1.5.i.i     ; 2 uses
  %.114.6.i.i = select i1 %i.gh, i32 6, i32 %.114.5.i.i
  %.1.6.i.i = select nsz i1 %i.gh, float %i.gg, float %.1.5.i.i ; 2 uses
  %i.gi = load float, ptr %i.bs, align 4, !tbaa !23
  %i.gj = fsub nsz float %i.ff, %i.gi             ; 2 uses
  %i.gk = fmul nsz float %i.gj, %i.gj             ; 2 uses
  %i.gl = fcmp nsz olt float %i.gk, %.1.6.i.i     ; 2 uses
  %.114.7.i.i = select i1 %i.gl, i32 7, i32 %.114.6.i.i
  %.1.7.i.i = select nsz i1 %i.gl, float %i.gk, float %.1.6.i.i ; 2 uses
  %i.gm = load float, ptr %i.bt, align 4, !tbaa !23
  %i.gn = fsub nsz float %i.ff, %i.gm             ; 2 uses
  %i.go = fmul nsz float %i.gn, %i.gn             ; 2 uses
  %i.gp = fcmp nsz olt float %i.go, %.1.7.i.i     ; 2 uses
  %.114.8.i.i = select i1 %i.gp, i32 8, i32 %.114.7.i.i
  %.1.8.i.i = select nsz i1 %i.gp, float %i.go, float %.1.7.i.i ; 2 uses
  %i.gq = load float, ptr %i.bu, align 4, !tbaa !23
  %i.gr = fsub nsz float %i.ff, %i.gq             ; 2 uses
  %i.gs = fmul nsz float %i.gr, %i.gr             ; 2 uses
  %i.gt = fcmp nsz olt float %i.gs, %.1.8.i.i     ; 2 uses
  %.114.9.i.i = select i1 %i.gt, i32 9, i32 %.114.8.i.i
  %.1.9.i.i = select nsz i1 %i.gt, float %i.gs, float %.1.8.i.i ; 2 uses
  %i.gu = load float, ptr %i.bv, align 4, !tbaa !23
  %i.gv = fsub nsz float %i.ff, %i.gu             ; 2 uses
  %i.gw = fmul nsz float %i.gv, %i.gv             ; 2 uses
  %i.gx = fcmp nsz olt float %i.gw, %.1.9.i.i     ; 2 uses
  %.114.10.i.i = select i1 %i.gx, i32 10, i32 %.114.9.i.i
  %.1.10.i.i = select nsz i1 %i.gx, float %i.gw, float %.1.9.i.i ; 2 uses
  %i.gy = load float, ptr %i.bw, align 4, !tbaa !23
  %i.gz = fsub nsz float %i.ff, %i.gy             ; 2 uses
  %i.ha = fmul nsz float %i.gz, %i.gz             ; 2 uses
  %i.hb = fcmp nsz olt float %i.ha, %.1.10.i.i    ; 2 uses
  %.114.11.i.i = select i1 %i.hb, i32 11, i32 %.114.10.i.i
  %.1.11.i.i = select nsz i1 %i.hb, float %i.ha, float %.1.10.i.i ; 2 uses
  %i.hc = load float, ptr %i.bx, align 4, !tbaa !23
  %i.hd = fsub nsz float %i.ff, %i.hc             ; 2 uses
  %i.he = fmul nsz float %i.hd, %i.hd             ; 2 uses
  %i.hf = fcmp nsz olt float %i.he, %.1.11.i.i    ; 2 uses
  %.114.12.i.i = select i1 %i.hf, i32 12, i32 %.114.11.i.i
  %.1.12.i.i = select nsz i1 %i.hf, float %i.he, float %.1.11.i.i ; 2 uses
  %i.hg = load float, ptr %i.by, align 4, !tbaa !23
  %i.hh = fsub nsz float %i.ff, %i.hg             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.hh             ; 2 uses
  %i.hj = fcmp nsz olt float %i.hi, %.1.12.i.i    ; 2 uses
  %.114.13.i.i = select i1 %i.hj, i32 13, i32 %.114.12.i.i
  %.1.13.i.i = select nsz i1 %i.hj, float %i.hi, float %.1.12.i.i ; 2 uses
  %i.hk = load float, ptr %i.bz, align 4, !tbaa !23
  %i.hl = fsub nsz float %i.ff, %i.hk             ; 2 uses
  %i.hm = fmul nsz float %i.hl, %i.hl             ; 2 uses
  %i.hn = fcmp nsz olt float %i.hm, %.1.13.i.i    ; 2 uses
  %.114.14.i.i = select i1 %i.hn, i32 14, i32 %.114.13.i.i
  %.1.14.i.i = select nsz i1 %i.hn, float %i.hm, float %.1.13.i.i
  %i.ho = load float, ptr %i.ca, align 4, !tbaa !23
  %i.hp = fsub nsz float %i.ff, %i.ho             ; 2 uses
  %i.hq = fmul nsz float %i.hp, %i.hp
  %i.hr = fcmp nsz olt float %i.hq, %.1.14.i.i
  %.114.15.i.i = select i1 %i.hr, i32 15, i32 %.114.14.i.i ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.i
  store i32 %.114.15.i.i, ptr %i.hs, align 4, !tbaa !9
  %i.ht = zext nneg i32 %.114.15.i.i to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !23
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i
  store float %i.hv, ptr %i.hw, align 4, !tbaa !23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %quantize_coefs.exit.loopexit, label %bb.p, !llvm.loop !51

quantize_coefs.exit.loopexit:                     ; preds = %bb.p
  %.pre = load i32, ptr %i.ev, align 4, !tbaa !9
  %.pre178 = load i32, ptr %i.ef, align 4, !tbaa !9
  br label %quantize_coefs.exit

quantize_coefs.exit:                              ; preds = %quantize_coefs.exit.loopexit, %bb.o
  %i.hx = phi i32 [ %.pre178, %quantize_coefs.exit.loopexit ], [ %i.el, %bb.o ] ; 2 uses
  %i.hy = phi i32 [ %.pre, %quantize_coefs.exit.loopexit ], [ %i.eu, %bb.o ]
  %i.hz = add nsw i32 %i.hy, %.0154
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ia = sext i32 %i.hx to i64
  %i.ib = icmp slt i64 %indvars.iv.next173, %i.ia
  br i1 %i.ib, label %bb.m, label %._crit_edge157, !llvm.loop !52

._crit_edge157:                                   ; preds = %quantize_coefs.exit
  %i.ic = add nsw i32 %.0126160, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %._crit_edge157
  %.1 = phi i32 [ %i.ic, %._crit_edge157 ], [ %.0126160, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.id = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next176, %i.ie
  br i1 %i.if, label %bb.b, label %._crit_edge162.loopexit, !llvm.loop !53

._crit_edge162.loopexit:                          ; preds = %bb.q
end_hunk_0
