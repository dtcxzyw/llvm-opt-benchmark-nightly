Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 552
begin_hunk_0_@_ZN10tetgenmesh13sremovevertexEPdPNS_4faceES2_i:bb.a
  %i.any = load i64, ptr %i.akw, align 8, !tbaa !98 ; 2 uses
  %i.anz = add nsw i32 %i.anq, -1
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = and i64 %i.any, %i.aoa
  %i.aoc = sext i32 %i.anr to i64
  %i.aod = mul nsw i64 %i.aob, %i.aoc
  %i.aoe = getelementptr inbounds i8, ptr %.033.i132, i64 %i.aod ; 2 uses
  %i.aof = add nsw i64 %i.any, 1
  store i64 %i.aof, ptr %i.akw, align 8, !tbaa !98
  %i.aog = load ptr, ptr %5, align 16, !tbaa !222 ; 2 uses
  store ptr %i.aog, ptr %i.aoe, align 8, !tbaa !222
  %i.aoh = load i32, ptr %i.a, align 8, !tbaa !223
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  store i32 %i.aoh, ptr %i.aoi, align 8, !tbaa !223
  %.pre377 = load ptr, ptr %i.sr, align 8, !tbaa !254
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit143, %bb.aw
  %i.aoj = phi ptr [ %.pre377, %_ZN10tetgenmesh9arraypool8getblockEi.exit143 ], [ %i.ajg, %bb.aw ]
  %.promoted364 = phi ptr [ %i.aog, %_ZN10tetgenmesh9arraypool8getblockEi.exit143 ], [ %.promoted365, %bb.aw ]
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 32
  store i64 0, ptr %i.aok, align 8, !tbaa !98
  %.pre = load ptr, ptr %i.to, align 8, !tbaa !222
  %.pre360 = load i32, ptr %i.tp, align 8, !tbaa !223
  br label %.preheader276, !llvm.loop !781

bb.bg:                                            ; preds = %bb.ae, %.preheader275
  %i.aol = phi ptr [ %i.sy, %bb.ae ], [ %.pre378, %.preheader275 ] ; 3 uses
  %.promoted367 = phi ptr [ %.promoted366, %bb.ae ], [ %i.aaq, %.preheader275 ]
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 32
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !98
  %i.aoo = icmp sgt i64 %i.aon, %indvars.iv.next357
  br i1 %i.aoo, label %bb.ac, label %._crit_edge322, !llvm.loop !782

._crit_edge322:                                   ; preds = %bb.bg, %bb.ab
  %.lcssa318 = phi ptr [ %i.sn, %bb.ab ], [ %i.aol, %bb.bg ]
  %i.aop = getelementptr inbounds nuw i8, ptr %.lcssa318, i64 32
  store i64 0, ptr %i.aop, align 8, !tbaa !98
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !216
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 156
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !183
  %i.aou = icmp sgt i32 %i.aot, 2
  br i1 %i.aou, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge322
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !255
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  %i.aoy = load i64, ptr %i.aox, align 8, !tbaa !98
  %i.aoz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.286, i64 noundef %i.aoy) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge322
  %.not95 = icmp eq i32 %4, 0
  br i1 %.not95, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.apa = tail call noundef i64 @_ZN10tetgenmesh10lawsonflipEv(ptr noundef nonnull align 8 dereferenceable(69984) %0) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 3, 9) i32 @_ZN10tetgenmesh13sscoutsegmentEPNS_4faceEPdiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca [2 x %"class.tetgenmesh::face"], align 16 ; 11 uses
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 3 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 16, !tbaa !222
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !223
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %.ptr.1, align 16, !tbaa !222
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !223
  %i.g = load ptr, ptr %1, align 8, !tbaa !222    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.s = load i32, ptr %i.r, align 4, !tbaa !183
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.v = load i32, ptr %i.u, align 8, !tbaa !221
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.287, i32 noundef %i.y, i32 noundef %i.aa) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !222
  %.pre269 = load i32, ptr %i.h, align 8, !tbaa !223
  %.pre282.a = sext i32 %.pre269 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre282.a, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.ac = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.ad = load double, ptr %2, align 8, !tbaa !56
  %i.ae = load double, ptr %i.o, align 8, !tbaa !56
  %i.af = fsub double %i.ad, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !56
  %i.ak = fsub double %i.ah, %i.aj                ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !56
  %i.ar = fsub double %i.ao, %i.aq                ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.am)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.as) ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.pre-phi
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !218 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %2
  br i1 %i.ay, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68736 ; 2 uses
  %.not115 = icmp eq i32 %5, 0                    ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.aa
  %i.bb = phi ptr [ %i.ax, %.lr.ph ], [ %i.iu, %bb.aa ] ; 7 uses
  %i.bc = phi i64 [ %.pre-phi, %.lr.ph ], [ %i.ip, %bb.aa ] ; 2 uses
  %i.bd = phi ptr [ %i.ac, %.lr.ph ], [ %i.io, %bb.aa ]
  %i.be = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.bc
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !57
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !218 ; 8 uses
  %i.bj = icmp eq ptr %i.bi, %2
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.bc
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !57
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57
  %i.bp = xor i32 %i.bo, 1
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !223
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !56
  %i.bs = load double, ptr %i.ap, align 8, !tbaa !56 ; 3 uses
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = load <2 x double>, ptr %i.o, align 8, !tbaa !56 ; 3 uses
  %i.bv = load <2 x double>, ptr %2, align 8, !tbaa !56 ; 2 uses
  %i.bw = load double, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.bx = fsub double %i.bw, %i.bs
  %i.by = fneg double %i.bt
  %i.bz = load <2 x double>, ptr %i.bb, align 8, !tbaa !56
  %i.ca = fsub <2 x double> %i.bz, %i.bu          ; 3 uses
  %i.cb = fsub <2 x double> %i.bv, %i.bu          ; 3 uses
  %i.cc = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cb, %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cg, <2 x double> %i.ce) ; 4 uses
  %i.ci = shufflevector <2 x double> %i.cb, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cj = fneg <2 x double> %i.ca
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cl = fmul <2 x double> %i.ci, %i.ck
  %i.cm = shufflevector <2 x double> %i.ca, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cn = shufflevector <2 x double> %i.cb, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cn, <2 x double> %i.cl) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %i.cq = extractelement <2 x double> %i.co, i64 1
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.cq)
  %sqrt.i135 = tail call double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fmul double %sqrt.i135, 5.000000e-01
  %i.ct = tail call double @llvm.sqrt.f64(double %i.cs)
  %i.cu = fdiv double %i.ct, %sqrt.i
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 264
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !179 ; 2 uses
  %i.cy = fcmp olt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = load ptr, ptr %i.az, align 8, !tbaa !248
  %i.da = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.bb, ptr noundef %i.cz, ptr noundef nonnull %2)
  %.pre272 = load double, ptr %i.ap, align 8, !tbaa !56
  %i.db = load <2 x double>, ptr %i.o, align 8, !tbaa !56
  %i.dc = load <2 x double>, ptr %2, align 8, !tbaa !56
  %.pre275 = load double, ptr %i.an, align 8, !tbaa !56
  %.pre276 = load ptr, ptr %i.p, align 8, !tbaa !216
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre276, i64 264
  %.pre277 = load double, ptr %.phi.trans.insert, align 8, !tbaa !179
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dd = phi double [ %.pre277, %bb.g ], [ %i.cx, %bb.f ]
  %i.de = phi double [ %.pre275, %bb.g ], [ %i.bw, %bb.f ]
  %i.df = phi double [ %.pre272, %bb.g ], [ %i.bs, %bb.f ]
  %.0105 = phi double [ %i.da, %bb.g ], [ 0.000000e+00, %bb.f ] ; 4 uses
  %i.dg = phi <2 x double> [ %i.db, %bb.g ], [ %i.bu, %bb.f ]
  %i.dh = phi <2 x double> [ %i.dc, %bb.g ], [ %i.bv, %bb.f ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.dj = load double, ptr %i.di, align 8, !tbaa !56 ; 2 uses
  %i.dk = fsub double %i.df, %i.dj
  %i.dl = fsub double %i.de, %i.dj
  %i.dm = fneg double %i.dk
  %i.dn = load <2 x double>, ptr %i.bi, align 8, !tbaa !56 ; 2 uses
  %i.do = fsub <2 x double> %i.dg, %i.dn          ; 3 uses
  %i.dp = fsub <2 x double> %i.dh, %i.dn          ; 3 uses
  %i.dq = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.dp, %i.dr
  %i.dt = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.du, <2 x double> %i.ds) ; 4 uses
  %i.dw = shufflevector <2 x double> %i.dp, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.dx = fneg <2 x double> %i.do
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> %i.dv, <2 x i32> <i32 1, i32 2>
  %i.dz = fmul <2 x double> %i.dw, %i.dy
  %i.ea = shufflevector <2 x double> %i.do, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.eb = shufflevector <2 x double> %i.dp, <2 x double> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.dz) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0 ; 2 uses
  %i.ee = extractelement <2 x double> %i.ec, i64 1
  %i.ef = tail call noundef double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.ee)
  %sqrt.i136 = tail call double @llvm.sqrt.f64(double %i.ef)
  %i.eg = fmul double %sqrt.i136, 5.000000e-01
  %i.eh = tail call double @llvm.sqrt.f64(double %i.eg)
  %i.ei = fdiv double %i.eh, %sqrt.i
  %i.ej = fcmp olt double %i.ei, %i.dd
  br i1 %i.ej, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = load ptr, ptr %i.az, align 8, !tbaa !248
  %i.el = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.o, ptr noundef %i.ek, ptr noundef nonnull %2) ; 2 uses
  %i.em = fcmp olt double %.0105, 0.000000e+00
  %i.en = fcmp olt double %i.el, 0.000000e+00     ; 2 uses
  br i1 %i.em, label %bb.j, label %bb.l

.thread:                                          ; preds = %bb.h
  %i.eo = fcmp olt double %.0105, 0.000000e+00
  br i1 %i.eo, label %.thread198, label %.thread190

bb.j:                                             ; preds = %bb.i
  br i1 %i.en, label %bb.k, label %.thread198

bb.k:                                             ; preds = %bb.j
  %i.ep = load i64, ptr %i.ba, align 8, !tbaa !340
  %i.eq = mul i64 %i.ep, 1366
  %i.er = add i64 %i.eq, 150889
  %i.es = urem i64 %i.er, 714025                  ; 2 uses
  store i64 %i.es, ptr %i.ba, align 8, !tbaa !340
  %.zext16.i = and i64 %i.es, 1
  %.not = icmp eq i64 %.zext16.i, 0
  br i1 %.not, label %.thread198, label %.thread203

bb.l:                                             ; preds = %bb.i
  br i1 %i.en, label %.thread203, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = fcmp ogt double %.0105, 0.000000e+00
  %i.eu = fcmp ogt double %i.el, 0.000000e+00     ; 2 uses
  br i1 %i.et, label %bb.n, label %bb.o

.thread190:                                       ; preds = %.thread
  %i.ev = fcmp ogt double %.0105, 0.000000e+00
  br i1 %i.ev, label %.thread190..thread194_crit_edge, label %.thread196

.thread190..thread194_crit_edge:                  ; preds = %.thread190
  %.pre278 = load i32, ptr %i.h, align 8, !tbaa !223
  br label %.thread194

bb.n:                                             ; preds = %bb.m
  %.pre279 = load i32, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  br i1 %i.eu, label %bb.ah, label %.thread194

.thread194:                                       ; preds = %.thread190..thread194_crit_edge, %bb.n
  %i.ew = phi i32 [ %.pre278, %.thread190..thread194_crit_edge ], [ %.pre279, %bb.n ]
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !57
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !57
  %i.fd = xor i32 %i.fc, 1
  store i32 %i.fd, ptr %i.h, align 8, !tbaa !223
  br label %.critedge134

bb.o:                                             ; preds = %bb.m
  br i1 %i.eu, label %.critedge134, label %.thread196

.thread196:                                       ; preds = %.thread190, %bb.o
  %i.fe = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.fe, align 16, !tbaa !57
  tail call void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

.thread198:                                       ; preds = %bb.k, %.thread, %bb.j
  %.pre280 = load ptr, ptr %1, align 8, !tbaa !222 ; 4 uses
  %.pre281 = load i32, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  %.pre284 = ashr i32 %.pre281, 1
  %.pre286 = sext i32 %.pre284 to i64             ; 2 uses
  br i1 %.not115, label %.thread198._crit_edge, label %bb.p

bb.p:                                             ; preds = %.thread198
  %i.ff = getelementptr [8 x i8], ptr %.pre280, i64 %.pre286
  %i.fg = getelementptr i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !218
  %.not122 = icmp eq ptr %i.fh, null
  br i1 %.not122, label %.thread198._crit_edge, label %.loopexit

.thread198._crit_edge:                            ; preds = %.thread198, %bb.p
  %i.fi = getelementptr inbounds [8 x i8], ptr %.pre280, i64 %.pre286
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !218
  %i.fk = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fl = and i64 %i.fk, -8                       ; 2 uses
  %.not123 = icmp eq i64 %i.fl, 0
  br i1 %.not123, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread198._crit_edge
  %i.fm = inttoptr i64 %i.fl to ptr               ; 3 uses
  %i.fn = and i64 %i.fk, 7                        ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !57
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !218
  %.not126 = icmp ne ptr %i.fs, %i.bb
  %i.ft = zext i1 %.not126 to i64
  %spec.select = xor i64 %i.fn, %i.ft
  store ptr %i.fm, ptr %1, align 8, !tbaa !222
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %spec.select
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !57
  br label %bb.aa

bb.r:                                             ; preds = %.thread198._crit_edge
  %i.fw = sext i32 %.pre281 to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !57
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !57 ; 2 uses
  %.pre288 = ashr i32 %i.gb, 1
  %.pre290 = sext i32 %.pre288 to i64             ; 2 uses
  br i1 %.not115, label %._crit_edge283, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gc = getelementptr [8 x i8], ptr %.pre280, i64 %.pre290
  %i.gd = getelementptr i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !218
  %.not124 = icmp eq ptr %i.ge, null
  br i1 %.not124, label %._crit_edge283, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.gb, ptr %i.h, align 8, !tbaa !223
  br label %.loopexit

._crit_edge283:                                   ; preds = %bb.r, %bb.s
  %i.gf = getelementptr inbounds [8 x i8], ptr %.pre280, i64 %.pre290
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !218
  %i.gh = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 7
  %i.gk = and i64 %i.gh, -8
  %i.gl = inttoptr i64 %i.gk to ptr               ; 3 uses
  %i.gm = and i64 %i.gh, 7
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !57
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !218
  %.not125 = icmp ne ptr %i.gr, %i.bi
  %i.gs = zext i1 %.not125 to i32
  %spec.select209 = xor i32 %i.gj, %i.gs
  store ptr %i.gl, ptr %1, align 8, !tbaa !222
  br label %bb.aa

.thread203:                                       ; preds = %bb.l, %bb.k
  %i.gt = load ptr, ptr %1, align 8, !tbaa !222   ; 3 uses
  %i.gu = load i32, ptr %i.h, align 8, !tbaa !223 ; 3 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !57
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !57 ; 2 uses
  %i.hb = ashr i32 %i.ha, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [8 x i8], ptr %i.gt, i64 %i.hc ; 3 uses
  br i1 %.not115, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.thread203
  %i.he = getelementptr i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !218
  %.not116 = icmp eq ptr %i.hf, null
  br i1 %.not116, label %.thread206, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ha, ptr %i.h, align 8, !tbaa !223
  br label %.loopexit

bb.w:                                             ; preds = %.thread203
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !218
  %i.hh = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hi = and i64 %i.hh, -8                       ; 2 uses
  %.not117 = icmp eq i64 %i.hi, 0
  br i1 %.not117, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre292 = ashr i32 %i.gu, 1
  %.pre294 = sext i32 %.pre292 to i64
  br label %bb.z

.thread206:                                       ; preds = %bb.u
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !218
  %i.hk = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hl = and i64 %i.hk, -8                       ; 2 uses
  %.not117207 = icmp eq i64 %i.hl, 0
  br i1 %.not117207, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread206, %bb.w
  %.in = phi i64 [ %i.hl, %.thread206 ], [ %i.hi, %bb.w ]
  %.in212.in = phi i64 [ %i.hk, %.thread206 ], [ %i.hh, %bb.w ] ; 2 uses
  %.in212 = trunc i64 %.in212.in to i32
  %i.hm = and i32 %.in212, 7
  %i.hn = inttoptr i64 %.in to ptr                ; 3 uses
  %i.ho = and i64 %.in212.in, 7
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ho
end_hunk_0
