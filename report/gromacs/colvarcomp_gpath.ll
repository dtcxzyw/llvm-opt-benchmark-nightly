inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6colvar18CartesianBasedPath32computeDistanceToReferenceFramesERSt6vectorIdSaIdEE:bb.a

._crit_edge.us:                                   ; preds = %bb.b
  %i.as = fdiv double %i.aq, %i.o
  %i.at = tail call noundef double @sqrt(double noundef %i.as) #29
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01424.us
  store double %i.at, ptr %i.au, align 8, !tbaa !142
  %i.av = add nuw i64 %.01424.us, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.av, %i.h
  br i1 %exitcond28.not, label %._crit_edge25, label %.preheader.us, !llvm.loop !218

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aw = fdiv double 0.000000e+00, %i.o
  %i.ax = tail call noundef double @sqrt(double noundef %i.aw) #29 ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph.split
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !142
  store <2 x double> %broadcast.splat, ptr %i.az, align 8, !tbaa !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge25, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split, %middle.block
  %.01424.ph = phi i64 [ 0, %.preheader.lr.ph.split ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.01424 = phi i64 [ %i.bc, %.preheader ], [ %.01424.ph, %.preheader.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01424
  store double %i.ax, ptr %i.bb, align 8, !tbaa !142
  %i.bc = add nuw i64 %.01424, 1                  ; 2 uses
  %exitcond30.not = icmp eq i64 %i.bc, %i.h
  br i1 %exitcond30.not, label %._crit_edge25, label %.preheader, !llvm.loop !220

._crit_edge25:                                    ; preds = %._crit_edge.us, %.preheader, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath14prepareVectorsEv(ptr noundef nonnull align 8 dereferenceable(2664) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.64", align 8    ; 11 uses
  %2 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %3 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %5 = alloca %"class.std::vector.64", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %7 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %8 = alloca %"class.std::vector.64", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 17 uses
  %.not = icmp eq i64 %i.d, 0                     ; 5 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.g = load i64, ptr %i.f, align 8, !tbaa !153  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !123  ; 4 uses
  %.idx.i = shl i64 %i.n, 4                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.g
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !152  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !155  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123 ; 4 uses
  %.idx.i119 = shl i64 %i.ab, 4                   ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.v
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152 ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ag = mul i64 %i.d, 24                        ; 4 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ag ; 2 uses
  %scevgep670 = getelementptr i8, ptr %i.af, i64 %i.ag ; 2 uses
  %scevgep671 = getelementptr i8, ptr %i.l, i64 %.idx.i
  %i.ah = shl i64 %i.d, 3                         ; 6 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %.idx.i
  %scevgep672 = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.aj = shl i64 %i.n, 3                         ; 2 uses
  %scevgep673 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.l, i64 %i.ah
  %scevgep674 = getelementptr i8, ptr %i.ak, i64 %i.aj
  %scevgep675 = getelementptr i8, ptr %i.l, i64 %i.ah
  %scevgep676 = getelementptr i8, ptr %i.r, i64 %i.ag
  %scevgep677 = getelementptr i8, ptr %i.z, i64 %.idx.i119
  %i.al = getelementptr i8, ptr %i.z, i64 %.idx.i119
  %scevgep678 = getelementptr i8, ptr %i.al, i64 %i.ah
  %i.am = shl i64 %i.ab, 3                        ; 2 uses
  %scevgep679 = getelementptr i8, ptr %i.z, i64 %i.am
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep671, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep673, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep677, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep679, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %i.l, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.r, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.z, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.ad, i64 3
  %i.av = shufflevector <4 x ptr> %i.aq, <4 x ptr> %i.au, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aw = getelementptr i8, ptr %i.z, i64 %i.ah
  %scevgep680 = getelementptr i8, ptr %i.aw, i64 %i.am
  %scevgep681 = getelementptr i8, ptr %i.z, i64 %i.ah
  %scevgep682 = getelementptr i8, ptr %i.ad, i64 %i.ag
  %bound0 = icmp ult ptr %i.t, %scevgep670
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ax = insertelement <8 x ptr> poison, ptr %i.t, i64 0
  %i.ay = shufflevector <8 x ptr> %i.ax, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.az = insertelement <8 x ptr> poison, ptr %scevgep672, i64 0
  %i.ba = insertelement <8 x ptr> %i.az, ptr %scevgep674, i64 1
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %scevgep678, i64 2
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %scevgep680, i64 3
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %scevgep675, i64 4
  %i.be = insertelement <8 x ptr> %i.bd, ptr %scevgep676, i64 5
  %i.bf = insertelement <8 x ptr> %i.be, ptr %scevgep681, i64 6
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %scevgep682, i64 7 ; 2 uses
  %i.bh = icmp ult <8 x ptr> %i.ay, %i.bg
  %i.bi = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.bj = shufflevector <8 x ptr> %i.bi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bk = icmp ult <8 x ptr> %i.av, %i.bj
  %i.bl = and <8 x i1> %i.bh, %i.bk
  %i.bm = insertelement <8 x ptr> poison, ptr %i.af, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp ult <8 x ptr> %i.bn, %i.bg
  %i.bp = insertelement <8 x ptr> poison, ptr %scevgep670, i64 0
  %i.bq = shufflevector <8 x ptr> %i.bp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.br = icmp ult <8 x ptr> %i.av, %i.bq
  %i.bs = and <8 x i1> %i.bo, %i.br
  %rdx.op = or <8 x i1> %i.bl, %i.bs
  %i.bt = bitcast <8 x i1> %rdx.op to i8
  %i.bu = icmp ne i8 %i.bt, 0
  %op.rdx = or i1 %i.bu, %found.conflict
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.bv = or disjoint i64 %index, 1               ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !142, !alias.scope !221
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.n
  %wide.load746 = load <2 x double>, ptr %i.bx, align 8, !tbaa !142, !alias.scope !224
  %i.by = getelementptr i8, ptr %i.bw, i64 %.idx.i
  %wide.load747 = load <2 x double>, ptr %i.by, align 8, !tbaa !142, !alias.scope !226
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %index ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.bv ; 3 uses
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !208, !alias.scope !228, !noalias !230
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !208, !alias.scope !228, !noalias !230
  %i.cd = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !212, !alias.scope !228, !noalias !230
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !212, !alias.scope !228, !noalias !230
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !190, !alias.scope !228, !noalias !230
  %i.co = load double, ptr %i.cm, align 8, !tbaa !190, !alias.scope !228, !noalias !230
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fsub <2 x double> %i.cq, %wide.load747
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %index
  %9 = shufflevector <2 x double> %i.ce, <2 x double> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load746, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = fsub <4 x double> %9, %10
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %11, <4 x double> %i.ct, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.cs, align 8, !tbaa !142, !alias.scope !233, !noalias !235
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 3 uses
  %wide.load748 = load <2 x double>, ptr %i.cu, align 8, !tbaa !142, !alias.scope !241
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %i.ab
  %wide.load749 = load <2 x double>, ptr %i.cv, align 8, !tbaa !142, !alias.scope !242
  %i.cw = getelementptr i8, ptr %i.cu, i64 %.idx.i119
  %wide.load750 = load <2 x double>, ptr %i.cw, align 8, !tbaa !142, !alias.scope !243
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %index ; 3 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.bv ; 3 uses
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !208, !alias.scope !244, !noalias !245
  %i.da = load double, ptr %i.cy, align 8, !tbaa !208, !alias.scope !244, !noalias !245
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = load double, ptr %i.dd, align 8, !tbaa !212, !alias.scope !244, !noalias !245
  %i.dg = load double, ptr %i.de, align 8, !tbaa !212, !alias.scope !244, !noalias !245
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.dg, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !190, !alias.scope !244, !noalias !245
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !190, !alias.scope !244, !noalias !245
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fsub <2 x double> %wide.load750, %i.do
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %index
  %12 = shufflevector <2 x double> %wide.load748, <2 x double> %wide.load749, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <2 x double> %i.dc, <2 x double> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fsub <4 x double> %12, %13
  %i.dr = shufflevector <2 x double> %i.dp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec751 = shufflevector <4 x double> %14, <4 x double> %i.dr, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec751, ptr %i.dq, align 8, !tbaa !142, !alias.scope !248, !noalias !249
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.083391.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.083391 = phi i64 [ %i.ex, %scalar.ph ], [ %.083391.ph, %scalar.ph.preheader ] ; 7 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.083391 ; 3 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !142
  %i.dv = getelementptr [8 x i8], ptr %i.dt, i64 %i.n
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !142
  %i.dx = getelementptr i8, ptr %i.dt, i64 %.idx.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !142
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.083391 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !190, !noalias !230
  %i.ec = fsub double %i.eb, %i.dy
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.083391 ; 2 uses
  %i.ee = load <2 x double>, ptr %i.dz, align 8, !tbaa !142, !noalias !230
  %i.ef = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.dw, i64 1
  %i.eh = fsub <2 x double> %i.ee, %i.eg
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !142
  %.sroa.5374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store double %i.ec, ptr %.sroa.5374.0..sroa_idx, align 8, !tbaa !142
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.083391 ; 3 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !142
  %i.ek = getelementptr [8 x i8], ptr %i.ei, i64 %i.ab
  %i.el = load double, ptr %i.ek, align 8, !tbaa !142
  %i.em = getelementptr i8, ptr %i.ei, i64 %.idx.i119
  %i.en = load double, ptr %i.em, align 8, !tbaa !142
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.083391 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !190, !noalias !245
  %i.er = fsub double %i.en, %i.eq
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.083391 ; 2 uses
  %i.et = load <2 x double>, ptr %i.eo, align 8, !tbaa !142, !noalias !245
  %i.eu = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.el, i64 1
  %i.ew = fsub <2 x double> %i.ev, %i.et
  store <2 x double> %i.ew, ptr %i.es, align 8, !tbaa !142
  %.sroa.5368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store double %i.er, ptr %.sroa.5368.0..sroa_idx, align 8, !tbaa !142
  %i.ex = add nuw i64 %.083391, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !251

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !252 ; 7 uses
  %i.fa = icmp slt i64 %i.ez, 0
  br i1 %i.fa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.fb = uitofp nneg i64 %i.ez to double
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !157
  %i.fe = fcmp olt double %i.fd, %i.fb
  br i1 %i.fe, label %bb.c, label %.preheader379

.preheader379:                                    ; preds = %bb.b
  br i1 %.not, label %.preheader379.._crit_edge401_crit_edge, label %.lr.ph400

.preheader379.._crit_edge401_crit_edge:           ; preds = %.preheader379
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !153 ; 2 uses
  %.phi.trans.insert534 = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %.pre535 = load ptr, ptr %.phi.trans.insert534, align 8, !tbaa !131 ; 3 uses
  %.phi.trans.insert536 = getelementptr inbounds nuw [24 x i8], ptr %.pre535, i64 %.pre
  %.pre537 = load ptr, ptr %.phi.trans.insert536, align 8, !tbaa !152
  %.phi.trans.insert538 = getelementptr inbounds nuw [24 x i8], ptr %.pre535, i64 %i.ez
  %.pre539 = load ptr, ptr %.phi.trans.insert538, align 8, !tbaa !152
  br label %._crit_edge401

.lr.ph400:                                        ; preds = %.preheader379
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !153 ; 3 uses
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !131 ; 4 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !152 ; 5 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.ez
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !152 ; 5 uses
  %xtraiter = and i64 %i.d, 1
  %i.fn = icmp eq i64 %i.d, 1
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph400.new

.lr.ph400.new:                                    ; preds = %.lr.ph400
  %unroll_iter = and i64 %i.d, -2
  br label %bb.ab

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.phi.trans.insert554 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %.pre555 = load i64, ptr %.phi.trans.insert554, align 8, !tbaa !156 ; 5 uses
  br i1 %.not, label %.._crit_edge449_crit_edge, label %.lr.ph448

.._crit_edge449_crit_edge:                        ; preds = %bb.c
  %.phi.trans.insert548 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %.pre549 = load i64, ptr %.phi.trans.insert548, align 8, !tbaa !153 ; 2 uses
  %.phi.trans.insert550 = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %.pre551 = load ptr, ptr %.phi.trans.insert550, align 8, !tbaa !131 ; 3 uses
  %.phi.trans.insert552 = getelementptr inbounds nuw [24 x i8], ptr %.pre551, i64 %.pre549
  %.pre553 = load ptr, ptr %.phi.trans.insert552, align 8, !tbaa !152
  %.phi.trans.insert556 = getelementptr inbounds nuw [24 x i8], ptr %.pre551, i64 %.pre555
  %.pre557 = load ptr, ptr %.phi.trans.insert556, align 8, !tbaa !152
  br label %._crit_edge449

.lr.ph448:                                        ; preds = %bb.c
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !153 ; 3 uses
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !131 ; 4 uses
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !152 ; 5 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.pre555
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !152 ; 5 uses
  %xtraiter856 = and i64 %i.d, 1
  %i.fw = icmp eq i64 %i.d, 1
  br i1 %i.fw, label %.epil.preheader855, label %.lr.ph448.new

.lr.ph448.new:                                    ; preds = %.lr.ph448
  %unroll_iter868 = and i64 %i.d, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph448.new
  %.184446 = phi i64 [ 0, %.lr.ph448.new ], [ %i.hb, %bb.d ] ; 4 uses
  %i.fx = phi <2 x double> [ zeroinitializer, %.lr.ph448.new ], [ %i.gq, %bb.d ]
  %i.fy = phi <2 x double> [ zeroinitializer, %.lr.ph448.new ], [ %i.gv, %bb.d ]
  %i.fz = phi <2 x double> [ zeroinitializer, %.lr.ph448.new ], [ %i.ha, %bb.d ]
  %niter869 = phi i64 [ 0, %.lr.ph448.new ], [ %niter869.next.1, %bb.d ]
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.184446 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.ga, align 8, !tbaa !142
  %i.gc = fadd <2 x double> %i.fx, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !190
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %.184446 ; 2 uses
  %i.gg = load <2 x double>, ptr %i.gf, align 8, !tbaa !142
  %i.gh = fadd <2 x double> %i.fy, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !190
  %i.gk = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1
  %i.gm = fadd <2 x double> %i.fz, %i.gl
  %i.gn = or disjoint i64 %.184446, 1             ; 2 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.gn ; 2 uses
  %i.gp = load <2 x double>, ptr %i.go, align 8, !tbaa !142
  %i.gq = fadd <2 x double> %i.gc, %i.gp          ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !190
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.gn ; 2 uses
  %i.gu = load <2 x double>, ptr %i.gt, align 8, !tbaa !142
  %i.gv = fadd <2 x double> %i.gh, %i.gu          ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !190
  %i.gy = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = fadd <2 x double> %i.gm, %i.gz          ; 3 uses
  %i.hb = add nuw i64 %.184446, 2                 ; 2 uses
  %niter869.next.1 = add nuw i64 %niter869, 2     ; 2 uses
  %niter869.ncmp.1 = icmp eq i64 %niter869.next.1, %unroll_iter868
  br i1 %niter869.ncmp.1, label %._crit_edge449.loopexit.unr-lcssa, label %bb.d, !llvm.loop !253

._crit_edge449.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod863.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod863.not, label %._crit_edge449, label %.epil.preheader855

.epil.preheader855:                               ; preds = %._crit_edge449.loopexit.unr-lcssa, %.lr.ph448
  %.184446.epil.init = phi i64 [ 0, %.lr.ph448 ], [ %i.hb, %._crit_edge449.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init858.a = phi <2 x double> [ zeroinitializer, %.lr.ph448 ], [ %i.gq, %._crit_edge449.loopexit.unr-lcssa ]
  %.epil.init860.a = phi <2 x double> [ zeroinitializer, %.lr.ph448 ], [ %i.gv, %._crit_edge449.loopexit.unr-lcssa ]
  %.epil.init862 = phi <2 x double> [ zeroinitializer, %.lr.ph448 ], [ %i.ha, %._crit_edge449.loopexit.unr-lcssa ]
  %lcmp.mod867 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod867)
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.184446.epil.init ; 2 uses
  %i.hd = load <2 x double>, ptr %i.hc, align 8, !tbaa !142
  %i.he = fadd <2 x double> %.epil.init858.a, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !190
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %.184446.epil.init ; 2 uses
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !tbaa !142
  %i.hj = fadd <2 x double> %.epil.init860.a, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !190
  %i.hm = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hl, i64 1
  %i.ho = fadd <2 x double> %.epil.init862, %i.hn
  br label %._crit_edge449

._crit_edge449:                                   ; preds = %.epil.preheader855, %._crit_edge449.loopexit.unr-lcssa, %.._crit_edge449_crit_edge
  %i.hp = phi ptr [ %.pre557, %.._crit_edge449_crit_edge ], [ %i.fv, %._crit_edge449.loopexit.unr-lcssa ], [ %i.fv, %.epil.preheader855 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6colvar6gzpath14prepareVectorsEv:bb.a
  %.idx.i = shl i64 %i.lh, 4                      ; 4 uses
  %i.li = load i64, ptr %i.bs, align 8, !tbaa !403 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !155 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 1176
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !148 ; 9 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 1144
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !123 ; 4 uses
  %.idx.i120 = shl i64 %i.lo, 4                   ; 4 uses
  %i.lp = load ptr, ptr %i.bm, align 8, !tbaa !131 ; 2 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %i.la
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !152 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !152 ; 5 uses
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %i.li
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !152 ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !152 ; 8 uses
  %i.ly = load ptr, ptr %1, align 8, !tbaa !152   ; 7 uses
  %i.lz = load ptr, ptr %2, align 8, !tbaa !152   ; 7 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !152 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ky, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph361
  %i.mc = mul i64 %i.ky, 24                       ; 7 uses
  %scevgep = getelementptr i8, ptr %i.lt, i64 %i.mc ; 2 uses
  %scevgep515 = getelementptr i8, ptr %i.lx, i64 %i.mc ; 5 uses
  %scevgep516 = getelementptr i8, ptr %i.mb, i64 %i.mc ; 3 uses
  %scevgep517 = getelementptr i8, ptr %i.lf, i64 %.idx.i
  %i.md = shl i64 %i.ky, 3                        ; 6 uses
  %i.me = getelementptr i8, ptr %i.lf, i64 %.idx.i
  %scevgep518 = getelementptr i8, ptr %i.me, i64 %i.md ; 2 uses
  %i.mf = shl i64 %i.lh, 3                        ; 2 uses
  %scevgep519 = getelementptr i8, ptr %i.lf, i64 %i.mf
  %i.mg = getelementptr i8, ptr %i.lf, i64 %i.md
  %scevgep520 = getelementptr i8, ptr %i.mg, i64 %i.mf ; 2 uses
  %scevgep521 = getelementptr i8, ptr %i.lf, i64 %i.md ; 2 uses
  %scevgep522 = getelementptr i8, ptr %i.lm, i64 %.idx.i120
  %i.mh = getelementptr i8, ptr %i.lm, i64 %.idx.i120
  %scevgep523 = getelementptr i8, ptr %i.mh, i64 %i.md ; 2 uses
  %i.mi = shl i64 %i.lo, 3                        ; 2 uses
  %scevgep524 = getelementptr i8, ptr %i.lm, i64 %i.mi
  %i.mj = insertelement <4 x ptr> poison, ptr %scevgep517, i64 0
  %i.mk = insertelement <4 x ptr> %i.mj, ptr %scevgep519, i64 1
  %i.ml = insertelement <4 x ptr> %i.mk, ptr %scevgep522, i64 2
  %i.mm = insertelement <4 x ptr> %i.ml, ptr %scevgep524, i64 3 ; 2 uses
  %i.mn = insertelement <4 x ptr> poison, ptr %i.lf, i64 0
  %i.mo = insertelement <4 x ptr> %i.mn, ptr %i.lm, i64 1
  %i.mp = insertelement <4 x ptr> %i.mo, ptr %i.lr, i64 2
  %i.mq = insertelement <4 x ptr> %i.mp, ptr %i.lv, i64 3
  %i.mr = shufflevector <4 x ptr> %i.mm, <4 x ptr> %i.mq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ms = insertelement <4 x ptr> poison, ptr %i.mb, i64 0
  %i.mt = insertelement <4 x ptr> %i.ms, ptr %i.lf, i64 1
  %i.mu = insertelement <4 x ptr> %i.mt, ptr %i.lm, i64 2
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %i.lr, i64 3
  %i.mw = shufflevector <4 x ptr> %i.mv, <4 x ptr> %i.mm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mx = getelementptr i8, ptr %i.lm, i64 %i.md
  %scevgep525 = getelementptr i8, ptr %i.mx, i64 %i.mi ; 2 uses
  %scevgep526 = getelementptr i8, ptr %i.lm, i64 %i.md ; 2 uses
  %scevgep527 = getelementptr i8, ptr %i.lr, i64 %i.mc ; 2 uses
  %scevgep528 = getelementptr i8, ptr %i.lv, i64 %i.mc ; 3 uses
  %scevgep529 = getelementptr i8, ptr %i.ly, i64 %i.mc ; 3 uses
  %scevgep530 = getelementptr i8, ptr %i.lz, i64 %i.mc ; 3 uses
  %i.my = insertelement <8 x ptr> poison, ptr %i.lt, i64 0
  %i.mz = shufflevector <8 x ptr> %i.my, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.na = insertelement <8 x ptr> poison, ptr %scevgep516, i64 0 ; 2 uses
  %i.nb = insertelement <8 x ptr> %i.na, ptr %scevgep521, i64 1
  %i.nc = insertelement <8 x ptr> %i.nb, ptr %scevgep526, i64 2
  %i.nd = insertelement <8 x ptr> %i.nc, ptr %scevgep527, i64 3
  %i.ne = insertelement <8 x ptr> %i.nd, ptr %scevgep518, i64 4
  %i.nf = insertelement <8 x ptr> %i.ne, ptr %scevgep520, i64 5
  %i.ng = insertelement <8 x ptr> %i.nf, ptr %scevgep523, i64 6
  %i.nh = insertelement <8 x ptr> %i.ng, ptr %scevgep525, i64 7 ; 2 uses
  %i.ni = icmp ult <8 x ptr> %i.mz, %i.nh
  %i.nj = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.nk = shufflevector <8 x ptr> %i.nj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.nl = icmp ult <8 x ptr> %i.mw, %i.nk
  %i.nm = and <8 x i1> %i.ni, %i.nl
  %i.nn = insertelement <4 x ptr> poison, ptr %i.lt, i64 0
  %i.no = shufflevector <4 x ptr> %i.nn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.np = insertelement <4 x ptr> poison, ptr %scevgep515, i64 0
  %i.nq = insertelement <4 x ptr> %i.np, ptr %scevgep528, i64 1
  %i.nr = insertelement <4 x ptr> %i.nq, ptr %scevgep529, i64 2
  %i.ns = insertelement <4 x ptr> %i.nr, ptr %scevgep530, i64 3
  %i.nt = icmp ult <4 x ptr> %i.no, %i.ns
  %i.nu = insertelement <4 x ptr> poison, ptr %i.lx, i64 0
  %i.nv = insertelement <4 x ptr> %i.nu, ptr %i.lv, i64 1
  %i.nw = insertelement <4 x ptr> %i.nv, ptr %i.ly, i64 2
  %i.nx = insertelement <4 x ptr> %i.nw, ptr %i.lz, i64 3
  %i.ny = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.nz = shufflevector <4 x ptr> %i.ny, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.oa = icmp ult <4 x ptr> %i.nx, %i.nz
  %i.ob = and <4 x i1> %i.nt, %i.oa
  %i.oc = insertelement <8 x ptr> poison, ptr %i.lx, i64 0
  %i.od = shufflevector <8 x ptr> %i.oc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.oe = icmp ult <8 x ptr> %i.od, %i.nh
  %i.of = insertelement <8 x ptr> poison, ptr %scevgep515, i64 0
  %i.og = shufflevector <8 x ptr> %i.of, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.oh = icmp ult <8 x ptr> %i.mw, %i.og
  %i.oi = and <8 x i1> %i.oe, %i.oh
  %bound0606 = icmp ult ptr %i.lx, %scevgep528
  %bound1607 = icmp ult ptr %i.lv, %scevgep515
  %found.conflict608 = and i1 %bound0606, %bound1607
  %bound0610 = icmp ult ptr %i.lx, %scevgep529
  %bound1611 = icmp ult ptr %i.ly, %scevgep515
  %found.conflict612 = and i1 %bound0610, %bound1611
  %bound0614 = icmp ult ptr %i.lx, %scevgep530
  %bound1615 = icmp ult ptr %i.lz, %scevgep515
  %found.conflict616 = and i1 %bound0614, %bound1615
  %i.oj = insertelement <8 x ptr> poison, ptr %i.mb, i64 0
  %i.ok = shufflevector <8 x ptr> %i.oj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ol = insertelement <8 x ptr> poison, ptr %scevgep518, i64 0
  %i.om = insertelement <8 x ptr> %i.ol, ptr %scevgep520, i64 1
  %i.on = insertelement <8 x ptr> %i.om, ptr %scevgep523, i64 2
  %i.oo = insertelement <8 x ptr> %i.on, ptr %scevgep525, i64 3
  %i.op = insertelement <8 x ptr> %i.oo, ptr %scevgep521, i64 4
  %i.oq = insertelement <8 x ptr> %i.op, ptr %scevgep526, i64 5
  %i.or = insertelement <8 x ptr> %i.oq, ptr %scevgep527, i64 6
  %i.os = insertelement <8 x ptr> %i.or, ptr %scevgep528, i64 7
  %i.ot = icmp ult <8 x ptr> %i.ok, %i.os
  %i.ou = shufflevector <8 x ptr> %i.na, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ov = icmp ult <8 x ptr> %i.mr, %i.ou
  %i.ow = and <8 x i1> %i.ot, %i.ov
  %bound0650 = icmp ult ptr %i.mb, %scevgep529
  %bound1651 = icmp ult ptr %i.ly, %scevgep516
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0654 = icmp ult ptr %i.mb, %scevgep530
  %bound1655 = icmp ult ptr %i.lz, %scevgep516
  %found.conflict656 = and i1 %bound0654, %bound1655
  %rdx.op = or <8 x i1> %i.nm, %i.oi
  %rdx.op722 = or <8 x i1> %rdx.op, %i.ow
  %i.ox = bitcast <8 x i1> %rdx.op722 to i8
  %i.oy = icmp ne i8 %i.ox, 0
  %i.oz = bitcast <4 x i1> %i.ob to i4
  %i.pa = icmp ne i4 %i.oz, 0
  %op.rdx731.a = or i1 %i.pa, %found.conflict608
  %op.rdx732.a = or i1 %found.conflict612, %found.conflict616
  %op.rdx733.a = or i1 %found.conflict652, %found.conflict656
  %op.rdx734.a = or i1 %op.rdx731.a, %op.rdx732.a
  %op.rdx735.a = or i1 %op.rdx733.a, %i.oy
  %op.rdx736 = or i1 %op.rdx734.a, %op.rdx735.a
  br i1 %op.rdx736, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ky, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert658 = insertelement <2 x double> poison, double %i.jr, i64 0
  %broadcast.splat659 = shufflevector <2 x double> %broadcast.splatinsert658, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat661 = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert662 = insertelement <2 x double> poison, double %i.jw, i64 0
  %broadcast.splat663 = shufflevector <2 x double> %broadcast.splatinsert662, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert664 = insertelement <2 x double> poison, double %i.kl, i64 0
  %broadcast.splat665 = shufflevector <2 x double> %broadcast.splatinsert664, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat667 = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert668 = insertelement <2 x double> poison, double %i.kv, i64 0
  %broadcast.splat669 = shufflevector <2 x double> %broadcast.splatinsert668, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert670 = insertelement <2 x double> poison, double %i.kt, i64 0
  %broadcast.splat671 = shufflevector <2 x double> %broadcast.splatinsert670, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert672 = insertelement <2 x double> poison, double %i.jy, i64 0
  %broadcast.splat673 = shufflevector <2 x double> %broadcast.splatinsert672, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 11 uses
  %i.pb = or disjoint i64 %index, 1               ; 4 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.pc, align 8, !tbaa !142, !alias.scope !453
  %i.pd = getelementptr [8 x i8], ptr %i.pc, i64 %i.lh
  %wide.load674 = load <2 x double>, ptr %i.pd, align 8, !tbaa !142, !alias.scope !456
  %i.pe = getelementptr i8, ptr %i.pc, i64 %.idx.i
  %wide.load675 = load <2 x double>, ptr %i.pe, align 8, !tbaa !142, !alias.scope !458
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %index ; 3 uses
  %wide.load676 = load <2 x double>, ptr %i.pf, align 8, !tbaa !142, !alias.scope !460
  %i.pg = getelementptr [8 x i8], ptr %i.pf, i64 %i.lo
  %wide.load677 = load <2 x double>, ptr %i.pg, align 8, !tbaa !142, !alias.scope !462
  %i.ph = getelementptr i8, ptr %i.pf, i64 %.idx.i120
  %wide.load678 = load <2 x double>, ptr %i.ph, align 8, !tbaa !142, !alias.scope !464
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %index ; 3 uses
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %i.pb ; 3 uses
  %i.pk = load double, ptr %i.pi, align 8, !tbaa !208, !alias.scope !466, !noalias !468
  %i.pl = load double, ptr %i.pj, align 8, !tbaa !208, !alias.scope !466, !noalias !468
  %i.pm = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.pl, i64 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pq = load double, ptr %i.po, align 8, !tbaa !212, !alias.scope !466, !noalias !468
  %i.pr = load double, ptr %i.pp, align 8, !tbaa !212, !alias.scope !466, !noalias !468
  %i.ps = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %i.pr, i64 1
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pw = load double, ptr %i.pu, align 8, !tbaa !190, !alias.scope !466, !noalias !468
  %i.px = load double, ptr %i.pv, align 8, !tbaa !190, !alias.scope !466, !noalias !468
  %i.py = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.px, i64 1
  %i.qa = fsub <2 x double> %i.pz, %wide.load675
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %index
  %7 = shufflevector <2 x double> %i.pn, <2 x double> %i.pt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load674, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = fsub <4 x double> %7, %8
  %i.qc = shufflevector <2 x double> %i.qa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %9, <4 x double> %i.qc, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.qb, align 8, !tbaa !142, !alias.scope !471, !noalias !473
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %index ; 3 uses
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.pb ; 3 uses
  %i.qf = load double, ptr %i.qd, align 8, !tbaa !208, !alias.scope !479, !noalias !480
  %i.qg = load double, ptr %i.qe, align 8, !tbaa !208, !alias.scope !479, !noalias !480
  %i.qh = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qi = insertelement <2 x double> %i.qh, double %i.qg, i64 1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.ql = load double, ptr %i.qj, align 8, !tbaa !212, !alias.scope !479, !noalias !480
  %i.qm = load double, ptr %i.qk, align 8, !tbaa !212, !alias.scope !479, !noalias !480
  %i.qn = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qo = insertelement <2 x double> %i.qn, double %i.qm, i64 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qr = load double, ptr %i.qp, align 8, !tbaa !190, !alias.scope !479, !noalias !480
  %i.qs = load double, ptr %i.qq, align 8, !tbaa !190, !alias.scope !479, !noalias !480
  %i.qt = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qs, i64 1
  %i.qv = fsub <2 x double> %wide.load678, %i.qu
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.lx, i64 %index
  %10 = shufflevector <2 x double> %wide.load676, <2 x double> %wide.load677, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x double> %i.qi, <2 x double> %i.qo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = fsub <4 x double> %10, %11
  %i.qx = shufflevector <2 x double> %i.qv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec679 = shufflevector <4 x double> %12, <4 x double> %i.qx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec679, ptr %i.qw, align 8, !tbaa !142, !alias.scope !483, !noalias !484
  %i.qy = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %index ; 3 uses
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %i.pb ; 3 uses
  %i.ra = load double, ptr %i.qy, align 8, !tbaa !208, !alias.scope !485, !noalias !486
  %i.rb = load double, ptr %i.qz, align 8, !tbaa !208, !alias.scope !485, !noalias !486
  %i.rc = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.rb, i64 1 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rg = load double, ptr %i.re, align 8, !tbaa !212, !alias.scope !485, !noalias !486
  %i.rh = load double, ptr %i.rf, align 8, !tbaa !212, !alias.scope !485, !noalias !486
  %i.ri = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.rh, i64 1 ; 3 uses
  %i.rk = fmul <2 x double> %broadcast.splat, %i.rj
  %i.rl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat659, <2 x double> %i.rd, <2 x double> %i.rk)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.ro = load double, ptr %i.rm, align 8, !tbaa !190, !alias.scope !485, !noalias !486
  %i.rp = load double, ptr %i.rn, align 8, !tbaa !190, !alias.scope !485, !noalias !486
  %i.rq = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rr = insertelement <2 x double> %i.rq, double %i.rp, i64 1 ; 3 uses
  %i.rs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat661, <2 x double> %i.rr, <2 x double> %i.rl)
  %i.rt = fmul <2 x double> %broadcast.splat663, %i.rj
  %i.ru = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat665, <2 x double> %i.rd, <2 x double> %i.rt)
  %i.rv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat667, <2 x double> %i.rr, <2 x double> %i.ru)
  %i.rw = fmul <2 x double> %broadcast.splat669, %i.rj
  %i.rx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat671, <2 x double> %i.rd, <2 x double> %i.rw)
  %i.ry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat673, <2 x double> %i.rr, <2 x double> %i.rx)
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %index ; 3 uses
  %i.sa = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.pb ; 3 uses
  %i.sb = load double, ptr %i.rz, align 8, !tbaa !208, !alias.scope !489, !noalias !490
  %i.sc = load double, ptr %i.sa, align 8, !tbaa !208, !alias.scope !489, !noalias !490
  %i.sd = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %i.sc, i64 1
  %i.sf = fsub <2 x double> %i.rs, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.si = load double, ptr %i.sg, align 8, !tbaa !212, !alias.scope !489, !noalias !490
  %i.sj = load double, ptr %i.sh, align 8, !tbaa !212, !alias.scope !489, !noalias !490
  %i.sk = insertelement <2 x double> poison, double %i.si, i64 0
  %i.sl = insertelement <2 x double> %i.sk, double %i.sj, i64 1
  %i.sm = fsub <2 x double> %i.rv, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sp = load double, ptr %i.sn, align 8, !tbaa !190, !alias.scope !489, !noalias !490
  %i.sq = load double, ptr %i.so, align 8, !tbaa !190, !alias.scope !489, !noalias !490
  %i.sr = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.ss = insertelement <2 x double> %i.sr, double %i.sq, i64 1
  %i.st = fsub <2 x double> %i.ry, %i.ss
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %index
  %i.sv = shufflevector <2 x double> %i.sf, <2 x double> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sw = shufflevector <2 x double> %i.st, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec680 = shufflevector <4 x double> %i.sv, <4 x double> %i.sw, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec680, ptr %i.su, align 8, !tbaa !142, !alias.scope !493, !noalias !494
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.sx = icmp eq i64 %index.next, %n.vec
  br i1 %i.sx, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ky, %n.vec
  br i1 %cmp.n, label %._crit_edge362, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph361, %middle.block
  %.476359.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph361 ], [ %n.vec, %middle.block ]
  %i.sy = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.sz = insertelement <2 x double> %i.sy, double %i.jw, i64 1
  %i.ta = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.tb = insertelement <2 x double> %i.ta, double %i.kl, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.476359 = phi i64 [ %i.vf, %scalar.ph ], [ %.476359.ph, %scalar.ph.preheader ] ; 10 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.476359 ; 3 uses
  %i.td = load double, ptr %i.tc, align 8, !tbaa !142
  %i.te = getelementptr [8 x i8], ptr %i.tc, i64 %i.lh
  %i.tf = load double, ptr %i.te, align 8, !tbaa !142
  %i.tg = getelementptr i8, ptr %i.tc, i64 %.idx.i
  %i.th = load double, ptr %i.tg, align 8, !tbaa !142
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %.476359 ; 3 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !142
  %i.tk = getelementptr [8 x i8], ptr %i.ti, i64 %i.lo
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !142
  %i.tm = getelementptr i8, ptr %i.ti, i64 %.idx.i120
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !142
  %i.to = getelementptr inbounds nuw [24 x i8], ptr %i.lr, i64 %.476359 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !190, !noalias !468
  %i.tr = fsub double %i.tq, %i.th
  %i.ts = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %.476359 ; 2 uses
  %i.tt = load <2 x double>, ptr %i.to, align 8, !tbaa !142, !noalias !468
  %i.tu = insertelement <2 x double> poison, double %i.td, i64 0
  %i.tv = insertelement <2 x double> %i.tu, double %i.tf, i64 1
  %i.tw = fsub <2 x double> %i.tt, %i.tv
  store <2 x double> %i.tw, ptr %i.ts, align 8, !tbaa !142
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store double %i.tr, ptr %.sroa.6229.0..sroa_idx, align 8, !tbaa !142
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %.476359 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !190, !noalias !480
  %i.ua = fsub double %i.tn, %i.tz
  %i.ub = getelementptr inbounds nuw [24 x i8], ptr %i.lx, i64 %.476359 ; 2 uses
  %i.uc = load <2 x double>, ptr %i.tx, align 8, !tbaa !142, !noalias !480
  %i.ud = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.ue = insertelement <2 x double> %i.ud, double %i.tl, i64 1
  %i.uf = fsub <2 x double> %i.ue, %i.uc
  store <2 x double> %i.uf, ptr %i.ub, align 8, !tbaa !142
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  store double %i.ua, ptr %.sroa.6226.0..sroa_idx, align 8, !tbaa !142
  %i.ug = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %.476359 ; 3 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !208, !noalias !486 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !212, !noalias !486 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !190, !noalias !486 ; 2 uses
  %i.um = fmul double %i.kv, %i.uj
  %i.un = call double @llvm.fmuladd.f64(double %i.kt, double %i.uh, double %i.um)
  %i.uo = call double @llvm.fmuladd.f64(double %i.jy, double %i.ul, double %i.un)
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %.476359 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !190, !noalias !490
  %i.us = fsub double %i.uo, %i.ur
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %.476359 ; 2 uses
  %i.uu = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.uv = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uw = fmul <2 x double> %i.sz, %i.uv
  %i.ux = insertelement <2 x double> poison, double %i.uh, i64 0
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.uy, <2 x double> %i.uw)
  %i.va = insertelement <2 x double> poison, double %i.ul, i64 0
  %i.vb = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.vb, <2 x double> %i.uz)
  %i.vd = load <2 x double>, ptr %i.up, align 8, !tbaa !142, !noalias !490
  %i.ve = fsub <2 x double> %i.vc, %i.vd
  store <2 x double> %i.ve, ptr %i.ut, align 8, !tbaa !142
  %.sroa.6223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store double %i.us, ptr %.sroa.6223.0..sroa_idx, align 8, !tbaa !142
  %i.vf = add nuw i64 %.476359, 1                 ; 2 uses
  %exitcond429.not = icmp eq i64 %i.vf, %i.ky
  br i1 %exitcond429.not, label %._crit_edge362, label %scalar.ph, !llvm.loop !496

bb.m:                                             ; preds = %bb.o
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge362:                                   ; preds = %scalar.ph, %middle.block, %bb.l
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !497 ; 5 uses
  %i.vj = icmp slt i64 %i.vi, 0
  br i1 %i.vj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge362
  %i.vk = uitofp nneg i64 %i.vi to double
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !498
  %i.vn = fcmp olt double %i.vm, %i.vk
  br i1 %i.vn, label %bb.o, label %.preheader307

.preheader307:                                    ; preds = %bb.n
  %.pre447 = load ptr, ptr %i.bm, align 8, !tbaa !131 ; 2 uses
  %.phi.trans.insert448 = getelementptr inbounds nuw [24 x i8], ptr %.pre447, i64 %i.vi
  %.pre449 = load ptr, ptr %.phi.trans.insert448, align 8, !tbaa !152 ; 7 uses
  br i1 %.not402, label %._crit_edge370, label %.lr.ph369.preheader

.lr.ph369.preheader:                              ; preds = %.preheader307
  %xtraiter760 = and i64 %i.ky, 3                 ; 3 uses
  %i.vo = icmp ult i64 %i.ky, 4
  br i1 %i.vo, label %.lr.ph369.epil.preheader, label %.lr.ph369.preheader.new

.lr.ph369.preheader.new:                          ; preds = %.lr.ph369.preheader
  %unroll_iter767 = and i64 %i.ky, -4
  br label %.lr.ph369

bb.o:                                             ; preds = %bb.n, %._crit_edge362
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.vr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %i.vp)
          to label %bb.ae unwind label %bb.m      ; 0 uses

.lr.ph369:                                        ; preds = %.lr.ph369, %.lr.ph369.preheader.new
  %.577368 = phi i64 [ 0, %.lr.ph369.preheader.new ], [ %i.wu, %.lr.ph369 ] ; 5 uses
  %.sroa.0209.0367 = phi double [ 0.000000e+00, %.lr.ph369.preheader.new ], [ %i.wq, %.lr.ph369 ]
  %i.vs = phi <2 x double> [ zeroinitializer, %.lr.ph369.preheader.new ], [ %i.wt, %.lr.ph369 ]
  %niter768 = phi i64 [ 0, %.lr.ph369.preheader.new ], [ %niter768.next.3, %.lr.ph369 ]
  %i.vt = getelementptr inbounds nuw [24 x i8], ptr %.pre449, i64 %.577368 ; 2 uses
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !208
  %i.vv = fadd double %.sroa.0209.0367, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vx = load <2 x double>, ptr %i.vw, align 8, !tbaa !142
  %i.vy = fadd <2 x double> %i.vs, %i.vx
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %.pre449, i64 %.577368 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !208
  %i.wc = fadd double %i.vv, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 32
  %i.we = load <2 x double>, ptr %i.wd, align 8, !tbaa !142
  %i.wf = fadd <2 x double> %i.vy, %i.we
  %i.wg = getelementptr inbounds nuw [24 x i8], ptr %.pre449, i64 %.577368 ; 2 uses
end_hunk_1
