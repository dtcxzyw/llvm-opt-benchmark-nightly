Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasHeat2D_bnd?download=true
inline.NumInlined: 28
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
  call void @N_VDestroy(ptr noundef nonnull %i.k) #9
  call void @N_VDestroy(ptr noundef nonnull %i.o) #9
  call void @N_VDestroy(ptr noundef nonnull %i.aa) #9
  call void @N_VDestroy(ptr noundef nonnull %i.s) #9
  call void @free(ptr noundef nonnull %i.ae) #9
  %i.dv = call i32 @SUNContext_Free(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %check_retval.exit110, %check_retval.exit108, %check_retval.exit106, %check_retval.exit104, %check_retval.exit102, %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit94, %check_retval.exit92, %check_retval.exit90, %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit, %check_retval.exit114
  %.059 = phi i32 [ 0, %check_retval.exit114 ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ 1, %check_retval.exit88 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit94 ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit102 ], [ 1, %check_retval.exit104 ], [ 1, %check_retval.exit106 ], [ 1, %check_retval.exit108 ], [ 1, %check_retval.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialProfile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 30 uses
  %i.b = add nsw i64 %i.a, -1                     ; 3 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 14 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 11 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  tail call void @N_VConst(double noundef 1.000000e+00, ptr noundef %3) #9
  %i.i = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %i.i, label %.lr.ph64, label %._crit_edge65.split

.lr.ph64:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.k = mul i64 %i.a, %i.a
  %i.l = shl i64 %i.k, 3
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l
  %scevgep3 = getelementptr i8, ptr %0, i64 16
  %min.iters.check = icmp eq i64 %i.a, 1
  %bound0 = icmp ult ptr %i.c, %scevgep3
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.a, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.m = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.a, 8070450532247928830      ; 3 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph64, %._crit_edge
  %.062 = phi i64 [ 0, %.lr.ph64 ], [ %i.bi, %._crit_edge ] ; 3 uses
  %i.n = load double, ptr %i.j, align 8, !tbaa !42
  %i.o = uitofp nneg i64 %.062 to double
  %i.p = fmul double %i.n, %i.o                   ; 5 uses
  %i.q = mul nuw nsw i64 %.062, %i.a
  %i.r = fsub double 1.000000e+00, %i.p           ; 4 uses
  %i.s = getelementptr [8 x i8], ptr %i.c, i64 %i.q ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.m
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.t = load double, ptr %i.j, align 8, !tbaa !42, !alias.scope !43
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert4 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat5 = shufflevector <2 x double> %broadcast.splatinsert4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = uitofp nneg <2 x i64> %vec.ind to <2 x double>
  %i.v = fmul <2 x double> %broadcast.splat7, %i.u ; 2 uses
  %i.w = fmul <2 x double> %i.v, splat (double 1.600000e+01)
  %i.x = fsub <2 x double> splat (double 1.000000e+00), %i.v
  %i.y = fmul <2 x double> %i.w, %i.x
  %i.z = fmul <2 x double> %broadcast.splat, %i.y
  %i.aa = fmul <2 x double> %broadcast.splat5, %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.s, i64 %index
  store <2 x double> %i.aa, ptr %i.ab, align 8, !tbaa !16, !alias.scope !44, !noalias !43
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.05561.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  %.neg = or disjoint i64 %.05561.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = load double, ptr %i.j, align 8, !tbaa !42
  %i.ae = uitofp nneg i64 %.05561.ph to double
  %i.af = fmul double %i.ad, %i.ae                ; 2 uses
  %i.ag = fmul double %i.af, 1.600000e+01
  %i.ah = fsub double 1.000000e+00, %i.af
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = fmul double %i.p, %i.ai
  %i.ak = fmul double %i.r, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.s, i64 %.05561.ph
  store double %i.ak, ptr %i.al, align 8, !tbaa !16
  %i.am = or disjoint i64 %.05561.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05561.unr = phi i64 [ %.05561.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.a, %.neg
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05561 = phi i64 [ %i.bh, %scalar.ph ], [ %.05561.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ao = load double, ptr %i.j, align 8, !tbaa !42
  %i.ap = uitofp nneg i64 %.05561 to double
  %i.aq = fmul double %i.ao, %i.ap                ; 2 uses
  %i.ar = fmul double %i.aq, 1.600000e+01
  %i.as = fsub double 1.000000e+00, %i.aq
  %i.at = fmul double %i.ar, %i.as
  %i.au = fmul double %i.p, %i.at
  %i.av = fmul double %i.r, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.s, i64 %.05561
  store double %i.av, ptr %i.aw, align 8, !tbaa !16
  %i.ax = add nuw nsw i64 %.05561, 1              ; 2 uses
  %i.ay = load double, ptr %i.j, align 8, !tbaa !42
  %i.az = uitofp nneg i64 %i.ax to double
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  %i.bb = fmul double %i.ba, 1.600000e+01
  %i.bc = fsub double 1.000000e+00, %i.ba
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fmul double %i.p, %i.bd
  %i.bf = fmul double %i.r, %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.s, i64 %i.ax
  store double %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = add nuw nsw i64 %.05561, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.a
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond77.not = icmp eq i64 %i.bi, %i.a
  br i1 %exitcond77.not, label %._crit_edge65.split, label %.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge, %bb.a
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #9
  %i.bj = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 10 uses
  %i.bk = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 4 uses
  %i.bl = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #9 ; 4 uses
  %i.bm = load i64, ptr %0, align 8, !tbaa !15    ; 14 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %4) #9
  %i.bp = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.bq = icmp sgt i64 %i.bm, 2
  br i1 %i.bq, label %.lr.ph39.i, label %heatres.exit

.lr.ph39.i:                                       ; preds = %._crit_edge65.split
  %i.br = fneg double %i.bo                       ; 2 uses
  %i.bs = shl i64 %i.bm, 3                        ; 5 uses
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep9 = getelementptr i8, ptr %i.bl, i64 %i.bt ; 4 uses
  %i.bu = add i64 %i.bs, -8
  %i.bv = mul i64 %i.bm, %i.bu                    ; 2 uses
  %i.bw = add i64 %i.bv, -8                       ; 2 uses
  %scevgep10 = getelementptr i8, ptr %i.bl, i64 %i.bw ; 4 uses
  %scevgep11 = getelementptr i8, ptr %i.bk, i64 %i.bt
  %scevgep12 = getelementptr i8, ptr %i.bk, i64 %i.bw
  %scevgep13 = getelementptr i8, ptr %i.bj, i64 %i.bs
  %scevgep14 = getelementptr i8, ptr %i.bj, i64 %i.bv
  %i.bx = shl i64 %i.bm, 4
  %i.by = getelementptr i8, ptr %i.bj, i64 %i.bx
  %scevgep15 = getelementptr i8, ptr %i.by, i64 8
  %i.bz = mul i64 %i.bm, %i.bm
  %i.ca = shl i64 %i.bz, 3
  %i.cb = getelementptr i8, ptr %i.bj, i64 %i.ca
  %scevgep16 = getelementptr i8, ptr %i.cb, i64 -8
  %scevgep17 = getelementptr i8, ptr %i.bj, i64 8
  %i.cc = add i64 %i.bs, -16
  %i.cd = mul i64 %i.bm, %i.cc
  %i.ce = getelementptr i8, ptr %i.bj, i64 %i.cd
  %scevgep18 = getelementptr i8, ptr %i.ce, i64 -8
  %i.cf = add nsw i64 %i.bm, -2                   ; 4 uses
  %min.iters.check42 = icmp ult i64 %i.cf, 6
  %bound019 = icmp ult ptr %scevgep9, %scevgep12
  %bound120 = icmp ult ptr %scevgep11, %scevgep10
  %found.conflict21 = and i1 %bound019, %bound120
  %bound024 = icmp ult ptr %scevgep9, %scevgep14
  %bound125 = icmp ult ptr %scevgep13, %scevgep10
  %found.conflict26 = and i1 %bound024, %bound125
  %stride.check27 = icmp slt i64 %i.bs, 0
  %5 = or i1 %found.conflict26, %stride.check27
  %conflict.rdx = or i1 %found.conflict21, %5
  %bound029 = icmp ult ptr %scevgep9, %scevgep16
  %bound130 = icmp ult ptr %scevgep15, %scevgep10
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx34 = or i1 %found.conflict31, %conflict.rdx
  %bound035 = icmp ult ptr %scevgep9, %scevgep18
  %bound136 = icmp ult ptr %scevgep17, %scevgep10
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx40 = or i1 %found.conflict37, %conflict.rdx34
  %n.vec44 = and i64 %i.cf, -2                    ; 2 uses
  %i.cg = or i64 %i.cf, 1
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n56 = icmp eq i64 %i.cf, %n.vec44
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph39.i
  %.037.i = phi i64 [ 1, %.lr.ph39.i ], [ %i.dt, %._crit_edge.i ] ; 2 uses
  %i.ch = mul nuw nsw i64 %.037.i, %i.bm          ; 2 uses
  %brmerge100 = select i1 %min.iters.check42, i1 true, i1 %conflict.rdx40
  br i1 %brmerge100, label %scalar.ph41.preheader, label %vector.body47

vector.body47:                                    ; preds = %.lr.ph.i, %vector.body47
  %index48 = phi i64 [ %index.next54, %vector.body47 ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ci = or disjoint i64 %index48, 1
  %i.cj = add nuw nsw i64 %i.ci, %i.ch            ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cj
  %wide.load = load <2 x double>, ptr %i.ck, align 8, !tbaa !16, !alias.scope !45
  %i.cl = getelementptr [8 x i8], ptr %i.bj, i64 %i.cj ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  %wide.load49 = load <2 x double>, ptr %i.cm, align 8, !tbaa !16, !alias.scope !46
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  %wide.load50 = load <2 x double>, ptr %i.cn, align 8, !tbaa !16, !alias.scope !46
  %i.co = fadd <2 x double> %wide.load49, %wide.load50
  %i.cp = sub nsw i64 %i.cj, %i.bm
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cp
  %wide.load51 = load <2 x double>, ptr %i.cq, align 8, !tbaa !16, !alias.scope !47
  %i.cr = fadd <2 x double> %i.co, %wide.load51
  %i.cs = getelementptr [8 x i8], ptr %i.cl, i64 %i.bm
  %wide.load52 = load <2 x double>, ptr %i.cs, align 8, !tbaa !16, !alias.scope !48
  %i.ct = fadd <2 x double> %i.cr, %wide.load52
  %wide.load53 = load <2 x double>, ptr %i.cl, align 8, !tbaa !16, !alias.scope !46
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load53, <2 x double> splat (double -4.000000e+00), <2 x double> %i.ct)
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat46, <2 x double> %i.cu, <2 x double> %wide.load)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cj
  store <2 x double> %i.cv, ptr %i.cw, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %index.next54 = add nuw i64 %index48, 2         ; 2 uses
  %i.cx = icmp eq i64 %index.next54, %n.vec44
  br i1 %i.cx, label %middle.block55, label %vector.body47, !llvm.loop !35

middle.block55:                                   ; preds = %vector.body47
  br i1 %cmp.n56, label %._crit_edge.i, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %.lr.ph.i, %middle.block55
  %.03436.i.ph = phi i64 [ %i.cg, %middle.block55 ], [ 1, %.lr.ph.i ]
  br label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.preheader, %scalar.ph41
  %.03436.i = phi i64 [ %i.ds, %scalar.ph41 ], [ %.03436.i.ph, %scalar.ph41.preheader ] ; 2 uses
  %i.cy = add nuw nsw i64 %.03436.i, %i.ch        ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !16
  %i.db = getelementptr [8 x i8], ptr %i.bj, i64 %i.cy ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !16
  %i.de = getelementptr i8, ptr %i.db, i64 8
  %i.df = load double, ptr %i.de, align 8, !tbaa !16
  %i.dg = fadd double %i.dd, %i.df
  %i.dh = sub nsw i64 %i.cy, %i.bm
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !16
  %i.dk = fadd double %i.dg, %i.dj
  %i.dl = getelementptr [8 x i8], ptr %i.db, i64 %i.bm
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !16
  %i.dn = fadd double %i.dk, %i.dm
  %i.do = load double, ptr %i.db, align 8, !tbaa !16
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double -4.000000e+00, double %i.dn)
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.br, double %i.dp, double %i.da)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cy
  store double %i.dq, ptr %i.dr, align 8, !tbaa !16
  %i.ds = add nuw nsw i64 %.03436.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph41, !llvm.loop !36

._crit_edge.i:                                    ; preds = %scalar.ph41, %middle.block55
  %i.dt = add nuw nsw i64 %.037.i, 1              ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.dt, %i.bp
  br i1 %exitcond41.not.i, label %heatres.exit, label %.lr.ph.i

heatres.exit:                                     ; preds = %._crit_edge.i, %._crit_edge65.split
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %4, ptr noundef %2) #9
  br i1 %i.i, label %.lr.ph69.preheader, label %._crit_edge74.split

.lr.ph69.preheader:                               ; preds = %heatres.exit
  %exitcond78.peel.not = icmp eq i64 %i.a, 1
  %i.du = sub i64 %i.f, %i.d                      ; 2 uses
  %i.dv = sub i64 %i.h, %i.d                      ; 2 uses
  %i.dw = sub i64 %i.h, %i.f                      ; 2 uses
  %.not = icmp eq i64 %i.a, 2
  %i.dx = add nsw i64 %i.a, -2
  %min.iters.check80 = icmp ult i64 %i.a, 6
  %i.dy = add i64 %i.du, -1
  %diff.check74 = icmp ult i64 %i.dy, 31
  %i.dz = add i64 %i.dv, -1
  %diff.check75 = icmp ult i64 %i.dz, 31
  %conflict.rdx76 = or i1 %diff.check74, %diff.check75
  %i.ea = add i64 %i.dw, -1
  %diff.check77 = icmp ult i64 %i.ea, 31
  %conflict.rdx78 = or i1 %conflict.rdx76, %diff.check77
  %n.vec82 = and i64 %i.a, 9223372036854775804    ; 3 uses
  %cmp.n87 = icmp eq i64 %i.a, %n.vec82
  %xtraiter94 = and i64 %i.a, 1
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  %min.iters.check64 = icmp ult i64 %i.a, 6
  %i.eb = add i64 %i.du, -1
  %diff.check = icmp ult i64 %i.eb, 31
  %i.ec = add i64 %i.dv, -1
  %diff.check59 = icmp ult i64 %i.ec, 31
  %conflict.rdx60 = or i1 %diff.check, %diff.check59
  %i.ed = add i64 %i.dw, -1
  %diff.check61 = icmp ult i64 %i.ed, 31
  %conflict.rdx62 = or i1 %conflict.rdx60, %diff.check61
  %n.vec66 = and i64 %i.a, 9223372036854775804    ; 3 uses
  %cmp.n71 = icmp eq i64 %i.a, %n.vec66
  %xtraiter96 = and i64 %i.a, 1
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %._crit_edge70
  %.172 = phi i64 [ %i.gh, %._crit_edge70 ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %i.ee = mul nuw nsw i64 %.172, %i.a             ; 8 uses
  %i.ef = icmp eq i64 %.172, 0
  br i1 %i.ef, label %.lr.ph69.split.us.preheader, label %.lr.ph69.split

.lr.ph69.split.us.preheader:                      ; preds = %.lr.ph69
  %brmerge101 = select i1 %min.iters.check64, i1 true, i1 %conflict.rdx62
  br i1 %brmerge101, label %.lr.ph69.split.us.preheader89, label %vector.body67

vector.body67:                                    ; preds = %.lr.ph69.split.us.preheader, %vector.body67
  %index68 = phi i64 [ %index.next69, %vector.body67 ], [ 0, %.lr.ph69.split.us.preheader ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index68 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> splat (double 1.000000e-01), ptr %i.eg, align 8, !tbaa !16
  store <2 x double> splat (double 1.000000e-01), ptr %i.eh, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index68 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x double> zeroinitializer, ptr %i.ei, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.ej, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index68 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <2 x double> zeroinitializer, ptr %i.ek, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.el, align 8, !tbaa !16
  %index.next69 = add nuw i64 %index68, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next69, %n.vec66
  br i1 %i.em, label %middle.block70, label %vector.body67, !llvm.loop !37

middle.block70:                                   ; preds = %vector.body67
  br i1 %cmp.n71, label %._crit_edge70, label %.lr.ph69.split.us.preheader89

.lr.ph69.split.us.preheader89:                    ; preds = %.lr.ph69.split.us.preheader, %middle.block70
  %.15666.us.ph = phi i64 [ %n.vec66, %middle.block70 ], [ 0, %.lr.ph69.split.us.preheader ] ; 6 uses
  %.neg99 = or disjoint i64 %.15666.us.ph, 1
  br i1 %lcmp.mod97.not, label %.lr.ph69.split.us.prol.loopexit, label %.lr.ph69.split.us.prol

.lr.ph69.split.us.prol:                           ; preds = %.lr.ph69.split.us.preheader89
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.15666.us.ph
  store double 1.000000e-01, ptr %i.en, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.15666.us.ph
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.15666.us.ph
  store double 0.000000e+00, ptr %i.ep, align 8, !tbaa !16
  %i.eq = or disjoint i64 %.15666.us.ph, 1
  br label %.lr.ph69.split.us.prol.loopexit

.lr.ph69.split.us.prol.loopexit:                  ; preds = %.lr.ph69.split.us.prol, %.lr.ph69.split.us.preheader89
  %.15666.us.unr = phi i64 [ %.15666.us.ph, %.lr.ph69.split.us.preheader89 ], [ %i.eq, %.lr.ph69.split.us.prol ]
  %i.er = icmp eq i64 %i.a, %.neg99
  br i1 %i.er, label %._crit_edge70, label %.lr.ph69.split.us

.lr.ph69.split.us:                                ; preds = %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us
  %.15666.us = phi i64 [ %i.ez, %.lr.ph69.split.us ], [ %.15666.us.unr, %.lr.ph69.split.us.prol.loopexit ] ; 5 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.15666.us
  store double 1.000000e-01, ptr %i.es, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.15666.us
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.15666.us
  store double 0.000000e+00, ptr %i.eu, align 8, !tbaa !16
  %i.ev = add nuw nsw i64 %.15666.us, 1           ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ev
  store double 1.000000e-01, ptr %i.ew, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ev
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ev
  store double 0.000000e+00, ptr %i.ey, align 8, !tbaa !16
  %i.ez = add nuw nsw i64 %.15666.us, 2           ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.ez, %i.a
  br i1 %exitcond81.not.1, label %._crit_edge70, label %.lr.ph69.split.us, !llvm.loop !38

.lr.ph69.split:                                   ; preds = %.lr.ph69
  %i.fa = icmp eq i64 %.172, %i.b
  %.fr = freeze i1 %i.fa
  br i1 %.fr, label %.lr.ph69.split.split.us.preheader, label %bb.b

.lr.ph69.split.split.us.preheader:                ; preds = %.lr.ph69.split
  %brmerge102 = select i1 %min.iters.check80, i1 true, i1 %conflict.rdx78
  br i1 %brmerge102, label %.lr.ph69.split.split.us.preheader90, label %vector.body83

vector.body83:                                    ; preds = %.lr.ph69.split.split.us.preheader, %vector.body83
  %index84 = phi i64 [ %index.next85, %vector.body83 ], [ 0, %.lr.ph69.split.split.us.preheader ] ; 2 uses
  %i.fb = add nuw nsw i64 %index84, %i.ee         ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x double> splat (double 1.000000e-01), ptr %i.fc, align 8, !tbaa !16
  store <2 x double> splat (double 1.000000e-01), ptr %i.fd, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fb ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> zeroinitializer, ptr %i.fe, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.ff, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fb ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x double> zeroinitializer, ptr %i.fg, align 8, !tbaa !16
  store <2 x double> zeroinitializer, ptr %i.fh, align 8, !tbaa !16
  %index.next85 = add nuw i64 %index84, 4         ; 2 uses
  %i.fi = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.fi, label %middle.block86, label %vector.body83, !llvm.loop !39

middle.block86:                                   ; preds = %vector.body83
  br i1 %cmp.n87, label %._crit_edge70, label %.lr.ph69.split.split.us.preheader90

.lr.ph69.split.split.us.preheader90:              ; preds = %.lr.ph69.split.split.us.preheader, %middle.block86
  %.15666.us71.ph = phi i64 [ %n.vec82, %middle.block86 ], [ 0, %.lr.ph69.split.split.us.preheader ] ; 4 uses
  %.neg98 = or disjoint i64 %.15666.us71.ph, 1
  br i1 %lcmp.mod95.not, label %.lr.ph69.split.split.us.prol.loopexit, label %.lr.ph69.split.split.us.prol

.lr.ph69.split.split.us.prol:                     ; preds = %.lr.ph69.split.split.us.preheader90
  %i.fj = add nuw nsw i64 %.15666.us71.ph, %i.ee  ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fj
  store double 1.000000e-01, ptr %i.fk, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fj
  store double 0.000000e+00, ptr %i.fl, align 8, !tbaa !16
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fj
  store double 0.000000e+00, ptr %i.fm, align 8, !tbaa !16
  %i.fn = or disjoint i64 %.15666.us71.ph, 1
  br label %.lr.ph69.split.split.us.prol.loopexit

.lr.ph69.split.split.us.prol.loopexit:            ; preds = %.lr.ph69.split.split.us.prol, %.lr.ph69.split.split.us.preheader90
  %.15666.us71.unr = phi i64 [ %.15666.us71.ph, %.lr.ph69.split.split.us.preheader90 ], [ %i.fn, %.lr.ph69.split.split.us.prol ]
  %i.fo = icmp eq i64 %i.a, %.neg98
  br i1 %i.fo, label %._crit_edge70, label %.lr.ph69.split.split.us.preheader90.new

.lr.ph69.split.split.us.preheader90.new:          ; preds = %.lr.ph69.split.split.us.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ee
  br label %.lr.ph69.split.split.us

bb.b:                                             ; preds = %.lr.ph69.split
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ee
  store double 1.000000e-01, ptr %i.fp, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ee
  store double 0.000000e+00, ptr %i.fq, align 8, !tbaa !16
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ee
  store double 0.000000e+00, ptr %i.fr, align 8, !tbaa !16
  br i1 %exitcond78.peel.not, label %._crit_edge70, label %.lr.ph69.split.split.peel.next

.lr.ph69.split.split.peel.next:                   ; preds = %bb.b
  %i.fs = add nuw nsw i64 %i.b, %i.ee             ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fs
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fs
  br i1 %.not, label %.lr.ph69.split.split.peel, label %.lr.ph69.split.split

.lr.ph69.split.split.us:                          ; preds = %.lr.ph69.split.split.us, %.lr.ph69.split.split.us.preheader90.new
  %.15666.us71 = phi i64 [ %.15666.us71.unr, %.lr.ph69.split.split.us.preheader90.new ], [ %i.gd, %.lr.ph69.split.split.us ] ; 3 uses
  %i.fw = add nuw nsw i64 %.15666.us71, %i.ee     ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fw
  store double 1.000000e-01, ptr %i.fx, align 8, !tbaa !16
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fw
  store double 0.000000e+00, ptr %i.fy, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fw
  store double 0.000000e+00, ptr %i.fz, align 8, !tbaa !16
  %.reass = add nuw nsw i64 %.15666.us71, %invariant.op ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass
  store double 1.000000e-01, ptr %i.ga, align 8, !tbaa !16
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.reass
  store double 0.000000e+00, ptr %i.gb, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !16
  %i.gd = add nuw nsw i64 %.15666.us71, 2         ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %i.gd, %i.a
  br i1 %exitcond80.not.1, label %._crit_edge70, label %.lr.ph69.split.split.us, !llvm.loop !40

.lr.ph69.split.split:                             ; preds = %.lr.ph69.split.split.peel.next, %.lr.ph69.split.split
  %.15666 = phi i64 [ %i.ge, %.lr.ph69.split.split ], [ 1, %.lr.ph69.split.split.peel.next ] ; 2 uses
  %i.ge = add nuw nsw i64 %.15666, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %.15666, %i.dx
  br i1 %exitcond78.not, label %.lr.ph69.split.split.peel, label %.lr.ph69.split.split, !llvm.loop !41

.lr.ph69.split.split.peel:                        ; preds = %.lr.ph69.split.split.peel.next, %.lr.ph69.split.split
  %i.gf = phi i64 [ 1, %.lr.ph69.split.split.peel.next ], [ %i.ge, %.lr.ph69.split.split ]
  %i.gg = icmp eq i64 %i.gf, %i.b
  br i1 %i.gg, label %bb.c, label %._crit_edge70

bb.c:                                             ; preds = %.lr.ph69.split.split.peel
  store double 1.000000e-01, ptr %i.ft, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.fu, align 8, !tbaa !16
  store double 0.000000e+00, ptr %i.fv, align 8, !tbaa !16
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.c, %.lr.ph69.split.split.peel, %.lr.ph69.split.split.us.prol.loopexit, %.lr.ph69.split.split.us, %.lr.ph69.split.us.prol.loopexit, %.lr.ph69.split.us, %middle.block86, %middle.block70, %bb.b
  %i.gh = add nuw nsw i64 %.172, 1                ; 2 uses
  %exitcond82.not = icmp eq i64 %i.gh, %i.a
  br i1 %exitcond82.not, label %._crit_edge74.split, label %.lr.ph69

._crit_edge74.split:                              ; preds = %._crit_edge70, %heatres.exit
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @heatres(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 10 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 4 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 4 uses
  %i.d = load i64, ptr %4, align 8, !tbaa !15     ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #9
  %i.g = add i64 %i.d, -1                         ; 2 uses
  %i.h = icmp sgt i64 %i.d, 2
  br i1 %i.h, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.a
  %i.i = fneg double %i.f                         ; 2 uses
  %i.j = shl i64 %i.d, 3                          ; 5 uses
  %i.k = add i64 %i.j, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.k ; 4 uses
  %i.l = add i64 %i.j, -8
  %i.m = mul i64 %i.d, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, -8                         ; 2 uses
  %scevgep44 = getelementptr i8, ptr %i.c, i64 %i.n ; 4 uses
  %scevgep45 = getelementptr i8, ptr %i.b, i64 %i.k
  %scevgep46 = getelementptr i8, ptr %i.b, i64 %i.n
  %scevgep47 = getelementptr i8, ptr %i.a, i64 %i.j
  %scevgep48 = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = shl i64 %i.d, 4
  %i.p = getelementptr i8, ptr %i.a, i64 %i.o
  %scevgep49 = getelementptr i8, ptr %i.p, i64 8
  %i.q = mul i64 %i.d, %i.d
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  %scevgep50 = getelementptr i8, ptr %i.s, i64 -8
  %scevgep51 = getelementptr i8, ptr %i.a, i64 8
  %i.t = add i64 %i.j, -16
  %i.u = mul i64 %i.d, %i.t
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  %scevgep52 = getelementptr i8, ptr %i.v, i64 -8
  %i.w = add nsw i64 %i.d, -2                     ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep46
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %scevgep, %scevgep48
  %bound155 = icmp ult ptr %scevgep47, %scevgep44
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i64 %i.j, 0
  %5 = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %found.conflict, %5
  %bound059 = icmp ult ptr %scevgep, %scevgep50
  %bound160 = icmp ult ptr %scevgep49, %scevgep44
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx64 = or i1 %found.conflict61, %conflict.rdx
  %bound065 = icmp ult ptr %scevgep, %scevgep52
  %bound166 = icmp ult ptr %scevgep51, %scevgep44
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx70 = or i1 %found.conflict67, %conflict.rdx64
  %n.vec = and i64 %i.w, -2                       ; 2 uses
  %i.x = or i64 %i.w, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph39, %._crit_edge
  %.037 = phi i64 [ 1, %.lr.ph39 ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.y = mul nuw nsw i64 %.037, %i.d              ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx70
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.z = or disjoint i64 %index, 1
  %i.aa = add nuw nsw i64 %i.z, %i.y              ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aa
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !16, !alias.scope !60
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %i.aa ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %wide.load71 = load <2 x double>, ptr %i.ad, align 8, !tbaa !16, !alias.scope !61
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %wide.load72 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16, !alias.scope !61
  %i.af = fadd <2 x double> %wide.load71, %wide.load72
  %i.ag = sub nsw i64 %i.aa, %i.d
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ag
  %wide.load73 = load <2 x double>, ptr %i.ah, align 8, !tbaa !16, !alias.scope !62
  %i.ai = fadd <2 x double> %i.af, %wide.load73
  %i.aj = getelementptr [8 x i8], ptr %i.ac, i64 %i.d
  %wide.load74 = load <2 x double>, ptr %i.aj, align 8, !tbaa !16, !alias.scope !63
  %i.ak = fadd <2 x double> %i.ai, %wide.load74
  %wide.load75 = load <2 x double>, ptr %i.ac, align 8, !tbaa !16, !alias.scope !61
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load75, <2 x double> splat (double -4.000000e+00), <2 x double> %i.ak)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.al, <2 x double> %wide.load)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aa
  store <2 x double> %i.am, ptr %i.an, align 8, !tbaa !16, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03436.ph = phi i64 [ %i.x, %middle.block ], [ 1, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03436 = phi i64 [ %i.bj, %scalar.ph ], [ %.03436.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ap = add nuw nsw i64 %.03436, %i.y           ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !16
  %i.as = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load double, ptr %i.at, align 8, !tbaa !16
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = sub nsw i64 %i.ap, %i.d
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !16
  %i.bb = fadd double %i.ax, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.as, i64 %i.d
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !16
  %i.be = fadd double %i.bb, %i.bd
  %i.bf = load double, ptr %i.as, align 8, !tbaa !16
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double -4.000000e+00, double %i.be)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.i, double %i.bg, double %i.ar)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ap
  store double %i.bh, ptr %i.bi, align 8, !tbaa !16
  %i.bj = add nuw nsw i64 %.03436, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bk = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bk, %i.g
  br i1 %exitcond41.not, label %._crit_edge40.split, label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef 10, i32 noundef 10) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 100) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef 0.000000e+00, double noundef 1.000000e-03) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef 10) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef 1.000000e-01) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.h = tail call double @N_VMaxNorm(ptr noundef %2) #9
  %i.i = call i32 @IDAGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.31, i32 noundef %i.i) #10 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.m = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %check_retval.exit11

bb.c:                                             ; preds = %check_retval.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, i32 noundef %i.m) #10 ; 0 uses
  br label %check_retval.exit11

check_retval.exit11:                              ; preds = %check_retval.exit, %bb.c
  %i.q = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %check_retval.exit13

bb.d:                                             ; preds = %check_retval.exit11
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.33, i32 noundef %i.q) #10 ; 0 uses
  br label %check_retval.exit13

check_retval.exit13:                              ; preds = %check_retval.exit11, %bb.d
  %i.u = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %check_retval.exit15

bb.e:                                             ; preds = %check_retval.exit13
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef %i.u) #10 ; 0 uses
  br label %check_retval.exit15

check_retval.exit15:                              ; preds = %check_retval.exit13, %bb.e
  %i.y = call i32 @IDAGetLastStep(ptr noundef %0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %check_retval.exit17

bb.f:                                             ; preds = %check_retval.exit15
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef %i.y) #10 ; 0 uses
  br label %check_retval.exit17

check_retval.exit17:                              ; preds = %check_retval.exit15, %bb.f
  %i.ac = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %check_retval.exit19

bb.g:                                             ; preds = %check_retval.exit17
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36, i32 noundef %i.ac) #10 ; 0 uses
  br label %check_retval.exit19

check_retval.exit19:                              ; preds = %check_retval.exit17, %bb.g
  %i.ag = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %check_retval.exit21

bb.h:                                             ; preds = %check_retval.exit19
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37, i32 noundef %i.ag) #10 ; 0 uses
  br label %check_retval.exit21
end_hunk_0
