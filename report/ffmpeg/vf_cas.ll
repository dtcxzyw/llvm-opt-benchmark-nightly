Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_cas?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@config_input:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !37
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !60
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !39
  %i.aq = icmp slt i32 %i.ak, 9
  %i.ar = select i1 %i.aq, ptr @cas_slice8, ptr @cas_slice16
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !35
  ret i32 0
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @av_frame_free(ptr noundef) local_unnamed_addr #0

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @cas_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call nsz noundef float @llvm.fmuladd.f32(float %i.d, float -1.199000e+01, float 1.600000e+01)
  %i.f = fneg nsz float %i.e                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !39
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = sext i32 %2 to i64
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %bb.b

._crit_edge369:                                   ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph368, %.loopexit
  %indvars.iv377 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next378, %.loopexit ] ; 8 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv377
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = mul nsw i64 %i.w, %i.m
  %i.y = sdiv i64 %i.x, %i.n                      ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = mul nsw i64 %i.w, %i.p
  %i.ab = sdiv i64 %i.aa, %i.n                    ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv377
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv377
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv377
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37 ; 5 uses
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.ak = add nsw i32 %i.v, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv377
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = mul nsw i32 %i.ae, %i.z
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv377
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41 ; 16 uses
  %i.as = trunc nuw nsw i64 %indvars.iv377 to i32
  %i.at = shl nuw i32 1, %i.as
  %i.au = load i32, ptr %i.t, align 4, !tbaa !42
  %i.av = and i32 %i.au, %i.at
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.aw = icmp slt i32 %i.z, %i.ac
  br i1 %i.aw, label %.lr.ph365, label %.loopexit

.lr.ph365:                                        ; preds = %.preheader
  %i.ax = icmp sgt i32 %i.ai, 0
  %i.ay = sext i32 %i.ae to i64
  br i1 %i.ax, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph365
  %sext = shl i64 %i.y, 32
  %i.az = ashr exact i64 %sext, 32
  %i.ba = sext i32 %i.ag to i64
  %sext382 = shl i64 %i.ab, 32
  %wide.trip.count375 = ashr exact i64 %sext382, 32
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 1) ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %invariant.gep387 = getelementptr i8, ptr %i.ar, i64 %i.bc
  %exitcond.peel.not = icmp eq i32 %i.ai, 1
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bd = mul nsw i32 %i.ag, %i.z
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 %i.be
  %i.bg = sub nsw i32 %i.ac, %i.z
  tail call void @av_image_copy_plane(ptr noundef %i.ap, i32 noundef %i.ae, ptr noundef %i.bf, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.bg) #5
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv372 = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next373, %._crit_edge ] ; 3 uses
  %.0303363 = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.bh = trunc nsw i64 %indvars.iv372 to i32
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 1)
  %i.bj = add nsw i32 %i.bi, -1
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, 1 ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv.next373 to i32
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.ak)
  %i.bm = mul nsw i32 %i.bj, %i.ag                ; 4 uses
  %i.bn = mul nsw i64 %indvars.iv372, %i.ba       ; 5 uses
  %i.bo = mul nsw i32 %i.bl, %i.ag                ; 4 uses
  %i.bp = sext i32 %i.bm to i64                   ; 2 uses
  %i.bq = sext i32 %i.bo to i64                   ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64  ; 3 uses
  %i.bt = zext i8 %i.bs to i32                    ; 3 uses
  %i.bu = add nsw i32 %i.bb, %i.bm
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.ar, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.ar, i64 %i.bn
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !64  ; 4 uses
  %i.cb = zext i8 %i.ca to i32
  %gep388 = getelementptr i8, ptr %invariant.gep387, i64 %i.bn
  %i.cc = load i8, ptr %gep388, align 1, !tbaa !64 ; 3 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds i8, ptr %i.ar, i64 %i.bq
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64  ; 3 uses
  %i.cg = zext i8 %i.cf to i32                    ; 3 uses
  %i.ch = add nsw i32 %i.bb, %i.bo
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ar, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %.360.peel = tail call i8 @llvm.umin.i8(i8 %i.ca, i8 %i.cc)
  %i.cm = tail call i8 @llvm.umin.i8(i8 %.360.peel, i8 %i.bs)
  %i.cn = tail call i8 @llvm.umin.i8(i8 %i.cm, i8 %i.cf)
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.bt)
  %.345.peel = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 %i.by)
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.345.peel, i32 %i.cg)
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.cl)
  %i.cs = add nuw nsw i32 %i.cr, %i.co
  %.349361.peel = tail call i8 @llvm.umax.i8(i8 %i.ca, i8 %i.cc)
  %i.ct = tail call i8 @llvm.umax.i8(i8 %.349361.peel, i8 %i.bs)
  %i.cu = tail call i8 @llvm.umax.i8(i8 %i.ct, i8 %i.cf)
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %i.bt)
  %.353.peel = tail call i32 @llvm.umax.i32(i32 %i.cw, i32 %i.by)
  %i.cx = tail call i32 @llvm.umax.i32(i32 %.353.peel, i32 %i.cg)
  %i.cy = tail call i32 @llvm.umax.i32(i32 %i.cx, i32 %i.cl)
  %i.cz = add nuw nsw i32 %i.cy, %i.cv            ; 2 uses
  %i.da = xor i32 %i.cz, 511
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.da)
  %i.dc = uitofp nneg i32 %i.db to float
  %i.dd = uitofp nneg i32 %i.cz to float
  %i.de = fdiv nsz float %i.dc, %i.dd             ; 2 uses
  %i.df = fcmp nsz ogt float %i.de, 0.000000e+00
  %i.dg = select nsz i1 %i.df, float %i.de, float 0.000000e+00 ; 2 uses
  %i.dh = fcmp nsz ogt float %i.dg, 1.000000e+00
  %..i.peel = select nsz i1 %i.dh, float 1.000000e+00, float %i.dg
  %i.di = tail call nsz float @llvm.sqrt.f32(float %..i.peel)
  %i.dj = fdiv nsz float %i.di, %i.f              ; 2 uses
  %i.dk = add nuw nsw i32 %i.cb, %i.bt
  %i.dl = add nuw nsw i32 %i.dk, %i.cd
  %i.dm = add nuw nsw i32 %i.dl, %i.cg
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = uitofp i8 %i.ca to float
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float %i.dj, float %i.do)
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float 4.000000e+00, float 1.000000e+00)
  %i.dr = fdiv nsz float %i.dp, %i.dq
  %i.ds = fptosi float %i.dr to i32
  %4 = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %.0.i362.peel = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.dt = trunc nuw i32 %.0.i362.peel to i8
  store i8 %i.dt, ptr %.0303363, align 1, !tbaa !64
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %invariant.gep = getelementptr i8, ptr %i.ar, i64 %i.bp
  %i.du = getelementptr i8, ptr %i.ar, i64 %i.bn
  %invariant.gep383 = getelementptr i8, ptr %i.ar, i64 %i.bn
  %i.dv = getelementptr i8, ptr %i.ar, i64 %i.bn
  %invariant.gep385 = getelementptr i8, ptr %i.ar, i64 %i.bq
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.lr.ph
  %i.dw = getelementptr inbounds i8, ptr %.0303363, i64 %i.ay
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count375
  br i1 %exitcond376.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv to i32
  %i.dy = add nsw i32 %i.dx, -1                   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ea = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 %i.aj) ; 3 uses
  %i.eb = add nsw i32 %i.dy, %i.bm
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.ar, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !64
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.eg = load i8, ptr %gep, align 1, !tbaa !64   ; 3 uses
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nsw i32 %i.ea, %i.bm
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.ar, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !64
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = sext i32 %i.dy to i64
  %i.eo = getelementptr i8, ptr %i.du, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !64  ; 3 uses
  %i.eq = zext i8 %i.ep to i32
  %gep384 = getelementptr i8, ptr %invariant.gep383, i64 %indvars.iv
  %i.er = load i8, ptr %gep384, align 1, !tbaa !64 ; 3 uses
  %i.es = sext i32 %i.ea to i64
  %i.et = getelementptr i8, ptr %i.dv, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !64  ; 3 uses
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.dy, %i.bo
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ar, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %gep386 = getelementptr i8, ptr %invariant.gep385, i64 %indvars.iv
  %i.fb = load i8, ptr %gep386, align 1, !tbaa !64 ; 3 uses
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.ea, %i.bo
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ar, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !64
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = tail call i8 @llvm.umin.i8(i8 %i.ep, i8 %i.er)
  %.360 = tail call i8 @llvm.umin.i8(i8 %i.fi, i8 %i.eu)
  %i.fj = tail call i8 @llvm.umin.i8(i8 %.360, i8 %i.eg)
  %i.fk = tail call i8 @llvm.umin.i8(i8 %i.fj, i8 %i.fb)
  %i.fl = zext i8 %i.fk to i32                    ; 2 uses
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.ef)
  %.345 = tail call i32 @llvm.umin.i32(i32 %i.fm, i32 %i.em)
  %i.fn = tail call i32 @llvm.umin.i32(i32 %.345, i32 %i.fa)
  %i.fo = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %i.fh)
  %i.fp = add nuw nsw i32 %i.fo, %i.fl
  %i.fq = tail call i8 @llvm.umax.i8(i8 %i.ep, i8 %i.er)
  %.349361 = tail call i8 @llvm.umax.i8(i8 %i.fq, i8 %i.eu)
  %i.fr = tail call i8 @llvm.umax.i8(i8 %.349361, i8 %i.eg)
  %i.fs = tail call i8 @llvm.umax.i8(i8 %i.fr, i8 %i.fb)
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = tail call i32 @llvm.umax.i32(i32 %i.ft, i32 %i.ef)
  %.353 = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %i.em)
  %i.fv = tail call i32 @llvm.umax.i32(i32 %.353, i32 %i.fa)
  %i.fw = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %i.fh)
  %i.fx = add nuw nsw i32 %i.fw, %i.ft            ; 2 uses
  %i.fy = xor i32 %i.fx, 511
  %i.fz = tail call i32 @llvm.umin.i32(i32 %i.fp, i32 %i.fy)
  %i.ga = uitofp nneg i32 %i.fz to float
  %i.gb = uitofp nneg i32 %i.fx to float
  %i.gc = fdiv nsz float %i.ga, %i.gb             ; 2 uses
  %i.gd = fcmp nsz ogt float %i.gc, 0.000000e+00
  %i.ge = select nsz i1 %i.gd, float %i.gc, float 0.000000e+00 ; 2 uses
  %i.gf = fcmp nsz ogt float %i.ge, 1.000000e+00
  %..i = select nsz i1 %i.gf, float 1.000000e+00, float %i.ge
  %i.gg = tail call nsz float @llvm.sqrt.f32(float %..i)
  %i.gh = fdiv nsz float %i.gg, %i.f              ; 2 uses
  %i.gi = add nuw nsw i32 %i.eq, %i.eh
  %i.gj = add nuw nsw i32 %i.gi, %i.ev
  %i.gk = add nuw nsw i32 %i.gj, %i.fc
  %i.gl = uitofp nneg i32 %i.gk to float
  %i.gm = uitofp i8 %i.er to float
  %i.gn = tail call nsz float @llvm.fmuladd.f32(float %i.gl, float %i.gh, float %i.gm)
  %i.go = tail call nsz float @llvm.fmuladd.f32(float %i.gh, float 4.000000e+00, float 1.000000e+00)
  %i.gp = fdiv nsz float %i.gn, %i.go
  %i.gq = fptosi float %i.gp to i32
  %5 = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %.0.i362 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.gr = trunc nuw i32 %.0.i362 to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.0303363, i64 %indvars.iv
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !62

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %.lr.ph365, %bb.c
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.gt = load i32, ptr %i.i, align 8, !tbaa !39
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next378, %i.gu
  br i1 %i.gv, label %bb.b, label %._crit_edge369, !llvm.loop !63
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cas_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call nsz noundef float @llvm.fmuladd.f32(float %i.d, float -1.199000e+01, float 1.600000e+01)
  %i.f = fneg nsz float %i.e                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = shl i32 2, %i.h                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph372, label %._crit_edge373

.lr.ph372:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = sext i32 %2 to i64
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = add nsw i32 %2, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %bb.b

._crit_edge373:                                   ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph372, %.loopexit
  %i.x = phi i32 [ %i.m, %.lr.ph372 ], [ %i.hk, %.loopexit ] ; 3 uses
  %indvars.iv381 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next382, %.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv381
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul nsw i64 %i.aa, %i.p
  %i.ac = sdiv i64 %i.ab, %i.q                    ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 4 uses
  %i.ae = mul nsw i64 %i.aa, %i.s
  %i.af = sdiv i64 %i.ae, %i.q                    ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv381
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.aj = sdiv i32 %i.ai, 2                       ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv381
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.am = sdiv i32 %i.al, 2                       ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv381
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37 ; 5 uses
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  %i.aq = add nsw i32 %i.z, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv381
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.at = mul nsw i32 %i.aj, %i.ad
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv381
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 16 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv381 to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !42
  %i.bb = and i32 %i.ba, %i.az
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bc = icmp slt i32 %i.ad, %i.ag
  br i1 %i.bc, label %.lr.ph369, label %.loopexit

.lr.ph369:                                        ; preds = %.preheader
  %i.bd = icmp sgt i32 %i.ao, 0
  %i.be = sext i32 %i.aj to i64
  br i1 %i.bd, label %.lr.ph369.split, label %.loopexit

.lr.ph369.split:                                  ; preds = %.lr.ph369
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !38
  %notmask.i = shl nsw i32 -1, %i.bf              ; 3 uses
  %i.bg = xor i32 %notmask.i, -1                  ; 2 uses
  %sext = shl i64 %i.ac, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = sext i32 %i.am to i64
  %sext387 = shl i64 %i.af, 32
  %wide.trip.count379 = ashr exact i64 %sext387, 32
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 1) ; 3 uses
  %i.bk = sext i32 %i.bj to i64
  %invariant.gep392 = getelementptr [2 x i8], ptr %i.ax, i64 %i.bk
  %exitcond.peel.not = icmp eq i32 %i.ao, 1
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bl = shl nsw i32 %i.aj, 1
  %i.bm = mul nsw i32 %i.am, %i.ad
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bn
  %i.bp = shl nsw i32 %i.am, 1
  %i.bq = shl nsw i32 %i.ao, 1
  %i.br = sub nsw i32 %i.ag, %i.ad
  tail call void @av_image_copy_plane(ptr noundef %i.av, i32 noundef %i.bl, ptr noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.bq, i32 noundef %i.br) #5
  %.pre = load i32, ptr %i.l, align 8, !tbaa !39
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph369.split, %._crit_edge
  %indvars.iv376 = phi i64 [ %i.bh, %.lr.ph369.split ], [ %indvars.iv.next377, %._crit_edge ] ; 3 uses
  %.0307367 = phi ptr [ %i.av, %.lr.ph369.split ], [ %i.ek, %._crit_edge ] ; 3 uses
  %i.bs = trunc nsw i64 %indvars.iv376 to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 1)
  %i.bu = add nsw i32 %i.bt, -1
  %indvars.iv.next377 = add nsw i64 %indvars.iv376, 1 ; 3 uses
  %i.bv = trunc nsw i64 %indvars.iv.next377 to i32
  %i.bw = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.aq)
  %i.bx = mul nsw i32 %i.bu, %i.am                ; 4 uses
  %i.by = mul nsw i64 %indvars.iv376, %i.bi       ; 5 uses
  %i.bz = mul nsw i32 %i.bw, %i.am                ; 4 uses
  %i.ca = sext i32 %i.bx to i64                   ; 2 uses
  %i.cb = sext i32 %i.bz to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ca
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !69 ; 3 uses
  %i.ce = zext i16 %i.cd to i32                   ; 3 uses
  %i.cf = add nsw i32 %i.bj, %i.bx
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !69
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.by
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !69 ; 4 uses
  %i.cm = zext i16 %i.cl to i32
  %gep393 = getelementptr [2 x i8], ptr %invariant.gep392, i64 %i.by
  %i.cn = load i16, ptr %gep393, align 2, !tbaa !69 ; 3 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.cb
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !69 ; 3 uses
  %i.cr = zext i16 %i.cq to i32                   ; 3 uses
  %i.cs = add nsw i32 %i.bj, %i.bz
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !69
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %.364.peel = tail call i16 @llvm.umin.i16(i16 %i.cl, i16 %i.cn)
  %i.cx = tail call i16 @llvm.umin.i16(i16 %.364.peel, i16 %i.cd)
  %i.cy = tail call i16 @llvm.umin.i16(i16 %i.cx, i16 %i.cq)
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.ce)
  %.349.peel = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.cj)
  %i.db = tail call i32 @llvm.umin.i32(i32 %.349.peel, i32 %i.cr)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %i.cw)
  %i.dd = add nuw nsw i32 %i.dc, %i.cz
  %.353365.peel = tail call i16 @llvm.umax.i16(i16 %i.cl, i16 %i.cn)
  %i.de = tail call i16 @llvm.umax.i16(i16 %.353365.peel, i16 %i.cd)
  %i.df = tail call i16 @llvm.umax.i16(i16 %i.de, i16 %i.cq)
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = tail call i32 @llvm.umax.i32(i32 %i.dg, i32 %i.ce)
  %.357.peel = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 %i.cj)
  %i.di = tail call i32 @llvm.umax.i32(i32 %.357.peel, i32 %i.cr)
  %i.dj = tail call i32 @llvm.umax.i32(i32 %i.di, i32 %i.cw)
  %i.dk = add nuw nsw i32 %i.dj, %i.dg            ; 2 uses
  %i.dl = xor i32 %i.dk, -1
  %i.dm = add i32 %i.i, %i.dl
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.dm)
  %i.do = sitofp nsz i32 %i.dn to float
  %i.dp = uitofp nneg i32 %i.dk to float
  %i.dq = fdiv nsz float %i.do, %i.dp             ; 2 uses
  %i.dr = fcmp nsz ogt float %i.dq, 0.000000e+00
  %i.ds = select nsz i1 %i.dr, float %i.dq, float 0.000000e+00 ; 2 uses
  %i.dt = fcmp nsz ogt float %i.ds, 1.000000e+00
  %..i.peel = select nsz i1 %i.dt, float 1.000000e+00, float %i.ds
  %i.du = tail call nsz float @llvm.sqrt.f32(float %..i.peel)
  %i.dv = fdiv nsz float %i.du, %i.f              ; 2 uses
  %i.dw = add nuw nsw i32 %i.cm, %i.ce
  %i.dx = add nuw nsw i32 %i.dw, %i.co
  %i.dy = add nuw nsw i32 %i.dx, %i.cr
  %i.dz = uitofp nneg i32 %i.dy to float
  %i.ea = uitofp i16 %i.cl to float
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dv, float %i.ea)
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.dv, float 4.000000e+00, float 1.000000e+00)
  %i.ed = fdiv nsz float %i.eb, %i.ec
  %i.ee = fptosi float %i.ed to i32               ; 3 uses
  %i.ef = and i32 %notmask.i, %i.ee
  %.not.i.peel = icmp eq i32 %i.ef, 0
  %isnotneg.inv.i.peel = icmp slt i32 %i.ee, 0
  %i.eg = select i1 %isnotneg.inv.i.peel, i32 0, i32 %i.bg
  %.0.i.peel = select i1 %.not.i.peel, i32 %i.ee, i32 %i.eg
  %i.eh = trunc i32 %.0.i.peel to i16
  store i16 %i.eh, ptr %.0307367, align 2, !tbaa !69
end_hunk_0
