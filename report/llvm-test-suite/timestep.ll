Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/timestep?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local double @timestep(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.c = fmul double %2, 5.000000e-01             ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %advanceVelocity.exit37, %bb.a
  tail call void @kineticEnergy(ptr noundef %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !17
  ret double %i.k

bb.b:                                             ; preds = %.lr.ph, %advanceVelocity.exit37
  %.038 = phi i32 [ 0, %.lr.ph ], [ %i.ib, %advanceVelocity.exit37 ]
  tail call void @profileStart(i32 noundef 4) #4
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph29.i, label %advanceVelocity.exit

.lr.ph29.i:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph29.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next35.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i32 [ 0, %.lr.ph29.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %i.r = zext i32 %indvars.iv.i to i64            ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv34.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 5 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = zext i32 %indvars.iv.i to i64            ; 4 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 5 uses
  %i.ac = add i32 %i.u, %indvars.iv.i
  %i.ad = zext nneg i32 %i.u to i64               ; 2 uses
  %min.iters.check67 = icmp ult i32 %i.u, 4
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i
  %scevgep57 = getelementptr nuw i8, ptr %i.ab, i64 %i.s
  %scevgep58 = getelementptr i8, ptr %i.ab, i64 24
  %i.ae = add nsw i32 %i.u, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.r, %i.af
  %i.ah = mul nuw nsw i64 %i.ag, 24               ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep58, i64 %i.ah
  %scevgep60 = getelementptr nuw i8, ptr %i.z, i64 %i.s
  %scevgep61 = getelementptr i8, ptr %i.z, i64 24
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.ah
  %bound063 = icmp ult ptr %scevgep57, %scevgep62
  %bound164 = icmp ult ptr %scevgep60, %scevgep59
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck56
  %n.vec69 = and i64 %i.ad, 2147483646            ; 3 uses
  %i.ai = add nuw nsw i64 %n.vec69, %i.w
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph68
  %index73 = phi i64 [ 0, %vector.ph68 ], [ %index.next75, %vector.body72 ] ; 2 uses
  %i.aj = add nuw i64 %index73, %i.w              ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aj ; 3 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ak ; 3 uses
  %i.an = load double, ptr %i.al, align 8, !tbaa !27, !alias.scope !48
  %i.ao = load double, ptr %i.am, align 8, !tbaa !27, !alias.scope !48
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aj ; 4 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ak ; 3 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.au = load double, ptr %i.as, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.au, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.az = load double, ptr %i.ax, align 8, !tbaa !27, !alias.scope !48
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !27, !alias.scope !48
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.bg = load double, ptr %i.be, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !27, !alias.scope !48
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !27, !alias.scope !48
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.br = load double, ptr %i.bp, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat71, <2 x double> %i.bo, <2 x double> %i.bu)
  %3 = shufflevector <2 x double> %i.aq, <2 x double> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <2 x double> %i.aw, <2 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.h, <4 x double> %3, <4 x double> %4)
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec74 = shufflevector <4 x double> %i.bw, <4 x double> %i.bx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec74, ptr %i.ar, align 8, !tbaa !27, !alias.scope !49, !noalias !48
  %index.next75 = add nuw i64 %index73, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next75, %n.vec69
  br i1 %i.by, label %middle.block76, label %vector.body72, !llvm.loop !40

middle.block76:                                   ; preds = %vector.body72
  %cmp.n77 = icmp eq i64 %n.vec69, %i.ad
  br i1 %cmp.n77, label %._crit_edge.i, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %vector.memcheck56, %.lr.ph.i, %middle.block76
  %indvars.iv31.i.ph = phi i64 [ %i.w, %vector.memcheck56 ], [ %i.w, %.lr.ph.i ], [ %i.ai, %middle.block76 ]
  br label %scalar.ph66

._crit_edge.i:                                    ; preds = %scalar.ph66, %middle.block76, %bb.c
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i, 64
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count.i
  br i1 %exitcond37.not.i, label %advanceVelocity.exit, label %bb.c

scalar.ph66:                                      ; preds = %scalar.ph66.preheader, %scalar.ph66
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %scalar.ph66 ], [ %indvars.iv31.i.ph, %scalar.ph66.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv31.i ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv31.i ; 4 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !27
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.c, double %i.ca, double %i.cc)
  store double %i.cd, ptr %i.cb, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !27
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.c, double %i.cf, double %i.ch)
  store double %i.ci, ptr %i.cg, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !27
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.c, double %i.ck, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !27
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next32.i to i32
  %exitcond = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %scalar.ph66, !llvm.loop !41

advanceVelocity.exit:                             ; preds = %._crit_edge.i, %bb.b
  tail call void @profileStop(i32 noundef 4) #4
  tail call void @profileStart(i32 noundef 3) #4
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph36.i, label %advancePosition.exit

.lr.ph36.i:                                       ; preds = %advanceVelocity.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22
  %wide.trip.count.i15 = zext nneg i32 %i.cq to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i17, %.lr.ph36.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next42.i, %._crit_edge.i17 ] ; 2 uses
  %indvars.iv.i16 = phi i32 [ 0, %.lr.ph36.i ], [ %indvars.iv.next.i18, %._crit_edge.i17 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv41.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7  ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i19, label %._crit_edge.i17

.lr.ph.i19:                                       ; preds = %bb.d
  %i.cx = zext i32 %indvars.iv.i16 to i64
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dg = add i32 %i.cv, %indvars.iv.i16
  br label %bb.e

._crit_edge.i17:                                  ; preds = %bb.e, %bb.d
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %indvars.iv.next.i18 = add i32 %indvars.iv.i16, 64
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count.i15
  br i1 %exitcond44.not.i, label %advancePosition.exit, label %bb.d

bb.e:                                             ; preds = %bb.e, %.lr.ph.i19
  %indvars.iv38.i = phi i64 [ %i.cx, %.lr.ph.i19 ], [ %indvars.iv.next39.i, %bb.e ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv38.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.db, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !31
  %i.dn = fdiv double 1.000000e+00, %i.dm         ; 3 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv38.i ; 3 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !27
  %i.dq = fmul double %2, %i.dp
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %indvars.iv38.i ; 4 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !27
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dn, double %i.ds)
  store double %i.dt, ptr %i.dr, align 8, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dv = load double, ptr %i.du, align 8, !tbaa !27
  %i.dw = fmul double %2, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !27
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dn, double %i.dy)
  store double %i.dz, ptr %i.dx, align 8, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  %i.ec = fmul double %2, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !27
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dn, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !27
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %lftr.wideiv39 = trunc i64 %indvars.iv.next39.i to i32
  %exitcond40 = icmp eq i32 %i.dg, %lftr.wideiv39
  br i1 %exitcond40, label %._crit_edge.i17, label %bb.e

advancePosition.exit:                             ; preds = %._crit_edge.i17, %advanceVelocity.exit
  tail call void @profileStop(i32 noundef 3) #4
  tail call void @profileStart(i32 noundef 5) #4
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !23
  tail call void @updateLinkCells(ptr noundef %i.eg, ptr noundef %i.eh) #4
  tail call void @profileStart(i32 noundef 6) #4
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void @haloExchange(ptr noundef %i.ei, ptr noundef %0) #4
  tail call void @profileStop(i32 noundef 6) #4
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i23, label %redistributeAtoms.exit

.lr.ph.i23:                                       ; preds = %advancePosition.exit, %.lr.ph.i23
  %i.en = phi ptr [ %i.eq, %.lr.ph.i23 ], [ %i.ej, %advancePosition.exit ]
  %.09.i = phi i32 [ %i.ep, %.lr.ph.i23 ], [ 0, %advancePosition.exit ] ; 2 uses
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !23
  tail call void @sortAtomsInCell(ptr noundef %i.eo, ptr noundef nonnull %i.en, i32 noundef %.09.i) #4
  %i.ep = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.es = load i32, ptr %i.er, align 4, !tbaa !33
  %i.et = icmp slt i32 %i.ep, %i.es
  br i1 %i.et, label %.lr.ph.i23, label %redistributeAtoms.exit

redistributeAtoms.exit:                           ; preds = %.lr.ph.i23, %advancePosition.exit
  tail call void @profileStop(i32 noundef 5) #4
  tail call void @profileStart(i32 noundef 7) #4
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.ex = tail call i32 %i.ew(ptr noundef nonnull %0) #4, !inline_history !53 ; 0 uses
  tail call void @profileStop(i32 noundef 7) #4
  tail call void @profileStart(i32 noundef 4) #4
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !21 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph29.i24, label %advanceVelocity.exit37

.lr.ph29.i24:                                     ; preds = %redistributeAtoms.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !22
  %wide.trip.count.i25 = zext nneg i32 %i.fa to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i28, %.lr.ph29.i24
  %indvars.iv34.i26 = phi i64 [ 0, %.lr.ph29.i24 ], [ %indvars.iv.next35.i29, %._crit_edge.i28 ] ; 2 uses
  %indvars.iv.i27 = phi i32 [ 0, %.lr.ph29.i24 ], [ %indvars.iv.next.i30, %._crit_edge.i28 ] ; 4 uses
  %i.fe = zext i32 %indvars.iv.i27 to i64         ; 2 uses
  %i.ff = mul nuw nsw i64 %i.fe, 24               ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv34.i26
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7  ; 5 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i32, label %._crit_edge.i28

.lr.ph.i32:                                       ; preds = %bb.f
  %i.fj = zext i32 %indvars.iv.i27 to i64         ; 4 uses
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !47 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !26 ; 5 uses
  %i.fp = add i32 %i.fh, %indvars.iv.i27
  %i.fq = zext nneg i32 %i.fh to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.fh, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i32
  %scevgep = getelementptr nuw i8, ptr %i.fo, i64 %i.ff
  %scevgep51 = getelementptr i8, ptr %i.fo, i64 24
  %i.fr = add nsw i32 %i.fh, -1
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fe, %i.fs
  %i.fu = mul nuw nsw i64 %i.ft, 24               ; 2 uses
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.fu
  %scevgep53 = getelementptr nuw i8, ptr %i.fm, i64 %i.ff
  %scevgep54 = getelementptr i8, ptr %i.fm, i64 24
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %i.fu
  %bound0 = icmp ult ptr %scevgep, %scevgep55
  %bound1 = icmp ult ptr %scevgep53, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fq, 2147483646              ; 3 uses
  %i.fv = add nuw nsw i64 %n.vec, %i.fj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = add nuw i64 %index, %i.fj               ; 3 uses
  %i.fx = or disjoint i64 %i.fw, 1                ; 2 uses
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fw ; 3 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fx ; 3 uses
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !27, !alias.scope !54
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !27, !alias.scope !54
  %i.gc = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.gb, i64 1
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fw ; 4 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fx ; 3 uses
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.gh = load double, ptr %i.gf, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.gi = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !27, !alias.scope !54
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !27, !alias.scope !54
  %i.go = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gy = load double, ptr %i.gw, align 8, !tbaa !27, !alias.scope !54
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !27, !alias.scope !54
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.he = load double, ptr %i.hc, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.hf = load double, ptr %i.hd, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %i.hg = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.hf, i64 1
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.hb, <2 x double> %i.hh)
  %5 = shufflevector <2 x double> %i.gd, <2 x double> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <2 x double> %i.gj, <2 x double> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.i, <4 x double> %5, <4 x double> %6)
  %i.hk = shufflevector <2 x double> %i.hi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.hj, <4 x double> %i.hk, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ge, align 8, !tbaa !27, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fq
  br i1 %cmp.n, label %._crit_edge.i28, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i32, %middle.block
  %indvars.iv31.i33.ph = phi i64 [ %i.fj, %vector.memcheck ], [ %i.fj, %.lr.ph.i32 ], [ %i.fv, %middle.block ]
  br label %scalar.ph

._crit_edge.i28:                                  ; preds = %scalar.ph, %middle.block, %bb.f
  %indvars.iv.next35.i29 = add nuw nsw i64 %indvars.iv34.i26, 1 ; 2 uses
  %indvars.iv.next.i30 = add i32 %indvars.iv.i27, 64
  %exitcond37.not.i31 = icmp eq i64 %indvars.iv.next35.i29, %wide.trip.count.i25
  br i1 %exitcond37.not.i31, label %advanceVelocity.exit37, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv31.i33 = phi i64 [ %indvars.iv.next32.i34, %scalar.ph ], [ %indvars.iv31.i33.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %indvars.iv31.i33 ; 3 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !27
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv31.i33 ; 4 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !27
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.c, double %i.hn, double %i.hp)
  store double %i.hq, ptr %i.ho, align 8, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !27
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !27
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.c, double %i.hs, double %i.hu)
  store double %i.hv, ptr %i.ht, align 8, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !27
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !27
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.c, double %i.hx, double %i.hz)
  store double %i.ia, ptr %i.hy, align 8, !tbaa !27
  %indvars.iv.next32.i34 = add nuw nsw i64 %indvars.iv31.i33, 1 ; 2 uses
  %lftr.wideiv41 = trunc i64 %indvars.iv.next32.i34 to i32
  %exitcond42 = icmp eq i32 %i.fp, %lftr.wideiv41
  br i1 %exitcond42, label %._crit_edge.i28, label %scalar.ph, !llvm.loop !46

advanceVelocity.exit37:                           ; preds = %._crit_edge.i28, %redistributeAtoms.exit
  tail call void @profileStop(i32 noundef 4) #4
  %i.ib = add nuw nsw i32 %.038, 1                ; 2 uses
  %exitcond43.not = icmp eq i32 %i.ib, %1
  br i1 %exitcond43.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @profileStart(i32 noundef) local_unnamed_addr #2

declare void @profileStop(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @redistributeAtoms(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @updateLinkCells(ptr noundef %i.b, ptr noundef %i.d) #4
  tail call void @profileStart(i32 noundef 6) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @haloExchange(ptr noundef %i.f, ptr noundef %0) #4
  tail call void @profileStop(i32 noundef 6) #4
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.k = phi ptr [ %i.n, %.lr.ph ], [ %i.g, %bb.a ]
  %.09 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @sortAtomsInCell(ptr noundef %i.l, ptr noundef nonnull %i.k, i32 noundef %.09) #4
  %i.m = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = icmp slt i32 %i.m, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nounwind uwtable
define dso_local void @computeForce(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call i32 %i.d(ptr noundef %0) #4    ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @kineticEnergy(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.d, i64 0
  store <2 x double> %i.f, ptr %i.a, align 16, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.b

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  tail call void @profileStart(i32 noundef 10) #4
  call void @addRealParallel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2) #4
  call void @profileStop(i32 noundef 10) #4
  %i.p = load <2 x double>, ptr %i.b, align 16, !tbaa !27
  store <2 x double> %i.p, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void

bb.b:                                             ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv43 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next44, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.promoted3435 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %.promoted33, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv43
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.t = zext i32 %indvars.iv to i64
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = add i32 %i.r, %indvars.iv
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.promoted33 = phi double [ %.promoted3435, %bb.b ], [ %i.as, %bb.c ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 64
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond46.not, label %._crit_edge39, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv40 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next41, %bb.c ] ; 3 uses
  %i.ab = phi double [ %.promoted3435, %.lr.ph ], [ %i.as, %bb.c ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !31
  %i.ai = fdiv double 5.000000e-01, %i.ah
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %indvars.iv40 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %i.an = fmul double %i.am, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ao)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ai, double %i.ab) ; 3 uses
  store double %i.as, ptr %i.e, align 8, !tbaa !27
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next41 to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}
end_hunk_0
