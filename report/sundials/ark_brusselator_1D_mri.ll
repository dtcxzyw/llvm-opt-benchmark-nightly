begin_hunk_0_@Jf:bb.a
  br label %check_retval.exit

check_retval.exit.thread:                         ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.loopexit

check_retval.exit:                                ; preds = %.lr.ph, %check_retval.exit
  %.06972 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %check_retval.exit ] ; 2 uses
  %i.o = mul nuw nsw i64 %.06972, 3               ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !19 ; 7 uses
  %i.r = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !19
  %i.u = add nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !19 ; 3 uses
  %i.x = fmul double %i.q, 2.000000e+00           ; 2 uses
  %i.y = fadd double %i.w, 1.000000e+00
  %i.z = fneg double %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.k ; 2 uses
  %i.ad = fneg double %i.x
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.w, i64 1
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.aj)
  store <2 x double> %i.ak, ptr %i.ac, align 8, !tbaa !19
  %i.al = fneg double %i.w
  %i.am = getelementptr i8, ptr %i.ac, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = fmul double %i.q, %i.q
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.r
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.k ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store double %i.an, ptr %i.ar, align 8, !tbaa !19
  %i.as = fneg double %i.q                        ; 2 uses
  %i.at = fmul double %i.q, %i.as
  store double %i.at, ptr %i.aq, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.u
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.k ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  store double %i.as, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr i8, ptr %i.aw, i64 -8
  store double %i.q, ptr %i.ay, align 8, !tbaa !19
  %i.az = fsub double %i.l, %i.q
  store double %i.az, ptr %i.aw, align 8, !tbaa !19
  %i.ba = add nuw nsw i64 %.06972, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.a
  br i1 %exitcond.not, label %.loopexit, label %check_retval.exit

.loopexit:                                        ; preds = %check_retval.exit, %check_retval.exit.preheader, %check_retval.exit.thread
  %.0 = phi i32 [ 1, %check_retval.exit.thread ], [ 0, %check_retval.exit.preheader ], [ 0, %check_retval.exit ]
  ret i32 %.0
}

declare i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MRIStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fs(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !15     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 36 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 19 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %check_retval.exit98, label %bb.c

check_retval.exit98:                              ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = fneg double %i.c
  %i.o = fdiv double %i.n, %i.e                   ; 14 uses
  %i.p = fcmp ogt double %i.c, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load double, ptr %i.f, align 8, !tbaa !19
  %.idx103 = mul i64 %i.a, 24
  %i.r = getelementptr i8, ptr %i.f, i64 %.idx103 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load double, ptr %i.s, align 8, !tbaa !19
  %i.u = fsub double %i.q, %i.t
  %i.v = fmul double %i.o, %i.u
  store double %i.v, ptr %i.j, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr i8, ptr %i.r, i64 -16
  %i.z = load double, ptr %i.y, align 8, !tbaa !19
  %i.aa = fsub double %i.x, %i.z
  %i.ab = fmul double %i.o, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.ab, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr i8, ptr %i.r, i64 -8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = fmul double %i.o, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = icmp sgt i64 %i.a, 1
  br i1 %i.ak, label %.lr.ph107.preheader, label %.loopexit

.lr.ph107.preheader:                              ; preds = %bb.d
  %i.al = add nsw i64 %i.a, -1                    ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.a, 5
  br i1 %min.iters.check121, label %.lr.ph107.preheader134, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph107.preheader
  %scevgep114 = getelementptr i8, ptr %i.j, i64 24
  %i.am = mul i64 %i.a, 24                        ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.j, i64 %i.am
  %scevgep116 = getelementptr i8, ptr %i.f, i64 %i.am
  %bound0117 = icmp ult ptr %scevgep114, %scevgep116
  %bound1118 = icmp ult ptr %i.f, %scevgep115
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph107.preheader134, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck113
  %n.vec124 = and i64 %i.al, -2                   ; 2 uses
  %i.an = or i64 %i.al, 1
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.o, i64 0 ; 2 uses
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph122
  %index128 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.ap = mul nuw i64 %index128, 3                ; 3 uses
  %i.aq = add nuw i64 %i.ap, 3                    ; 2 uses
  %i.ar = mul i64 %index128, 3                    ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aq ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.ar ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load double, ptr %i.as, align 8, !tbaa !19, !alias.scope !47
  %i.aw = load double, ptr %i.au, align 8, !tbaa !19, !alias.scope !47
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = getelementptr i8, ptr %i.as, i64 -24
  %i.ba = getelementptr i8, ptr %i.at, i64 24
  %i.bb = load double, ptr %i.az, align 8, !tbaa !19, !alias.scope !47
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !19, !alias.scope !47
  %i.bd = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aq
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ap
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr [8 x i8], ptr %i.f, i64 %i.ar
  %i.bj = getelementptr i8, ptr %i.bi, i64 56
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !19, !alias.scope !47
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !19, !alias.scope !47
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = getelementptr i8, ptr %i.as, i64 -16
  %i.bp = getelementptr i8, ptr %i.at, i64 32
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !19, !alias.scope !47
  %i.br = load double, ptr %i.bp, align 8, !tbaa !19, !alias.scope !47
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ap
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = getelementptr [8 x i8], ptr %i.f, i64 %i.ar
  %i.bx = getelementptr i8, ptr %i.bw, i64 64
  %i.by = load double, ptr %i.bv, align 8, !tbaa !19, !alias.scope !47
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !19, !alias.scope !47
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = getelementptr i8, ptr %i.as, i64 -8
  %i.cd = getelementptr i8, ptr %i.at, i64 40
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !19, !alias.scope !47
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !19, !alias.scope !47
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ci = fsub <2 x double> %i.cb, %i.ch
  %i.cj = fmul <2 x double> %broadcast.splat126, %i.ci
  %4 = fsub <2 x double> %i.ay, %i.be
  %5 = fsub <2 x double> %i.bn, %i.bt
  %6 = shufflevector <2 x double> %4, <2 x double> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = fmul <4 x double> %i.ao, %6
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec129 = shufflevector <4 x double> %i.ck, <4 x double> %i.cl, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec129, ptr %i.bf, align 8, !tbaa !19, !alias.scope !50, !noalias !47
  %index.next130 = add nuw i64 %index128, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.cm, label %middle.block131, label %vector.body127, !llvm.loop !52

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.al, %n.vec124
  br i1 %cmp.n132, label %.loopexit, label %.lr.ph107.preheader134

.lr.ph107.preheader134:                           ; preds = %vector.memcheck113, %.lr.ph107.preheader, %middle.block131
  %.0105.ph = phi i64 [ 1, %vector.memcheck113 ], [ 1, %.lr.ph107.preheader ], [ %i.an, %middle.block131 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader134, %.lr.ph107
  %.0105 = phi i64 [ %i.dl, %.lr.ph107 ], [ %.0105.ph, %.lr.ph107.preheader134 ] ; 2 uses
  %i.cn = mul nuw nsw i64 %.0105, 3               ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cn ; 4 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !19
  %i.cs = fsub double %i.cp, %i.cr
  %i.ct = fmul double %i.o, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cn
  store double %i.ct, ptr %i.cu, align 8, !tbaa !19
  %i.cv = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cy = getelementptr i8, ptr %i.co, i64 -16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %i.da = fsub double %i.cx, %i.cz
  %i.db = fmul double %i.o, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cv
  store double %i.db, ptr %i.dc, align 8, !tbaa !19
  %i.dd = add nuw nsw i64 %i.cn, 2                ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr i8, ptr %i.co, i64 -8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = fsub double %i.df, %i.dh
  %i.dj = fmul double %i.o, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dd
  store double %i.dj, ptr %i.dk, align 8, !tbaa !19
  %i.dl = add nuw nsw i64 %.0105, 1               ; 2 uses
  %exitcond108.not = icmp eq i64 %i.dl, %i.a
  br i1 %exitcond108.not, label %.loopexit, label %.lr.ph107, !llvm.loop !53

bb.e:                                             ; preds = %bb.c
  %i.dm = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.dm, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.dn = add i64 %i.a, -1                        ; 4 uses
  %i.do = icmp sgt i64 %i.a, 1
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.a, 5
  br i1 %min.iters.check, label %.lr.ph.preheader135, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dp = mul i64 %i.a, 24                        ; 2 uses
  %i.dq = getelementptr i8, ptr %i.j, i64 %i.dp
  %scevgep = getelementptr i8, ptr %i.dq, i64 -24
  %scevgep112 = getelementptr i8, ptr %i.f, i64 %i.dp
  %bound0 = icmp ult ptr %i.j, %scevgep112
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader135, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.o, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ds = mul nuw i64 %index, 24
  %i.dt = mul nuw i64 %index, 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ds ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dt ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load double, ptr %i.dv, align 8, !tbaa !19, !alias.scope !54
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !19, !alias.scope !54
  %i.ea = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dz, i64 1
  %i.ec = mul nuw nsw i64 %index, 3               ; 4 uses
  %i.ed = mul nuw i64 %index, 3                   ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ec
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load double, ptr %i.ee, align 8, !tbaa !19, !alias.scope !54
  %i.ei = load double, ptr %i.eg, align 8, !tbaa !19, !alias.scope !54
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ec
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.eo = load double, ptr %i.em, align 8, !tbaa !19, !alias.scope !54
  %i.ep = load double, ptr %i.en, align 8, !tbaa !19, !alias.scope !54
  %i.eq = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 1
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ec
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ed
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load double, ptr %i.et, align 8, !tbaa !19, !alias.scope !54
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !19, !alias.scope !54
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.ex, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !19, !alias.scope !54
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !19, !alias.scope !54
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ec
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ed
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = load double, ptr %i.fh, align 8, !tbaa !19, !alias.scope !54
  %i.fl = load double, ptr %i.fj, align 8, !tbaa !19, !alias.scope !54
  %i.fm = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fl, i64 1
  %i.fo = fsub <2 x double> %i.ff, %i.fn
  %i.fp = fmul <2 x double> %broadcast.splat, %i.fo
  %7 = fsub <2 x double> %i.eb, %i.ek
  %8 = fsub <2 x double> %i.er, %i.ez
  %9 = shufflevector <2 x double> %7, <2 x double> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fq = fmul <4 x double> %i.dr, %9
  %i.fr = shufflevector <2 x double> %i.fp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.fq, <4 x double> %i.fr, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.el, align 8, !tbaa !19, !alias.scope !57, !noalias !54
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader135

.lr.ph.preheader135:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.1104.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader135, %.lr.ph
  %.1104 = phi i64 [ %i.ft, %.lr.ph ], [ %.1104.ph, %.lr.ph.preheader135 ] ; 2 uses
  %i.ft = add nuw nsw i64 %.1104, 1               ; 3 uses
  %.idx = mul nuw nsw i64 %i.ft, 24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 3 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !19
  %i.fw = mul nuw nsw i64 %.1104, 3               ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !19
  %i.fz = fsub double %i.fv, %i.fy
  %i.ga = fmul double %i.o, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fw
  store double %i.ga, ptr %i.gb, align 8, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !19
  %i.ge = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !19
  %i.gh = fsub double %i.gd, %i.gg
  %i.gi = fmul double %i.o, %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ge
  store double %i.gi, ptr %i.gj, align 8, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !19
  %i.gm = add nuw nsw i64 %i.fw, 2                ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !19
  %i.gp = fsub double %i.gl, %i.go
  %i.gq = fmul double %i.o, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gm
  store double %i.gq, ptr %i.gr, align 8, !tbaa !19
  %exitcond.not = icmp eq i64 %i.ft, %i.dn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.gs = mul nsw i64 %i.dn, 3                    ; 4 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !19
  %i.gv = load double, ptr %i.f, align 8, !tbaa !19
  %i.gw = fsub double %i.gu, %i.gv
  %i.gx = fmul double %i.o, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gs
  store double %i.gx, ptr %i.gy, align 8, !tbaa !19
  %i.gz = add nsw i64 %i.gs, 1                    ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !19
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !19
  %i.he = fsub double %i.hb, %i.hd
  %i.hf = fmul double %i.o, %i.he
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gz
  store double %i.hf, ptr %i.hg, align 8, !tbaa !19
  %i.hh = add nsw i64 %i.gs, 2                    ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !19
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !19
  %i.hm = fsub double %i.hj, %i.hl
  %i.hn = fmul double %i.o, %i.hm
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hh
  store double %i.hn, ptr %i.ho, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph107, %middle.block131, %bb.d, %check_retval.exit98, %check_retval.exit, %._crit_edge, %bb.e
  %.093 = phi i32 [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit ], [ 0, %bb.e ], [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %middle.block131 ], [ 0, %.lr.ph107 ]
  ret i32 %.093
}

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepAttempts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @MRIStepInnerStepper_Free(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS20_MRIStepInnerStepper", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"", !17, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!17 = !{!"long", !7, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!16, !18, i64 40}
!21 = !{!16, !18, i64 16}
!22 = !{!16, !18, i64 24}
!23 = !{!16, !18, i64 32}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS11SUNContext_", !10, i64 0}
!26 = !{!16, !18, i64 8}
end_hunk_0
