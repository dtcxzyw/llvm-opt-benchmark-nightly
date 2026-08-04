inline.NumInlined: 217
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Pdr_ManStart:bb.a

vector.ph100:                                     ; preds = %.lr.ph.i
  %n.vec102 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph100
  %index104 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body103 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index104 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <4 x i32> splat (i32 -2), ptr %i.ft, align 4, !tbaa !35
  store <4 x i32> splat (i32 -2), ptr %i.fu, align 4, !tbaa !35
  %index.next105 = add nuw i64 %index104, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next105, %n.vec102
  br i1 %i.fv, label %middle.block106, label %vector.body103, !llvm.loop !117

middle.block106:                                  ; preds = %vector.body103
  %cmp.n107 = icmp eq i64 %n.vec102, %wide.trip.count.i
  br i1 %cmp.n107, label %Vec_IntFill.exit, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec102, %middle.block106 ]
  br label %scalar.ph98

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i
  store i32 -2, ptr %i.fw, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFill.exit, label %scalar.ph98, !llvm.loop !118

Vec_IntFill.exit:                                 ; preds = %scalar.ph98, %middle.block106, %Vec_IntAlloc.exit.thread, %Vec_IntGrow.exit.i
  store i32 %.val78, ptr %i.ex, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %Vec_IntFill.exit, %.loopexit
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @Gia_ManFromAigSimple(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare i32 @Aig_ManLevels(ptr noundef) local_unnamed_addr #2

declare ptr @Cnf_ManStart(...) local_unnamed_addr #2

declare ptr @Txs3_ManStart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Aig_ManFanoutStart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Pdr_ManStop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @Gia_ManStopP(ptr noundef nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  tail call void @Aig_ManCleanMarkAB(ptr noundef %i.c) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.f = load i32, ptr %i.e, align 4, !tbaa !119
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load i32, ptr %i.g, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.j = load i32, ptr %i.i, align 4, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load i32, ptr %i.k, align 8, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.n = load i32, ptr %i.m, align 4, !tbaa !123  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load i32, ptr %i.o, align 8, !tbaa !124
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul nnan double %i.q, 1.000000e+02
  %i.s = sitofp i32 %i.n to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.v = load i32, ptr %i.u, align 4, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.x = load i32, ptr %i.w, align 8, !tbaa !126
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, double noundef %i.t, i32 noundef %i.v, i32 noundef %i.x)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = load i64, ptr %i.y, align 8, !tbaa !127
  %i.aa = sitofp i64 %i.z to double               ; 2 uses
  %i.ab = fdiv double %i.aa, 1.000000e+06
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 10 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not150 = icmp eq i64 %i.ad, 0
  %i.ae = sitofp i64 %i.ad to double
  %i.af = fmul nnan double %i.aa, 1.000000e+02
  %i.ag = fdiv double %i.af, %i.ae
  %i.ah = select i1 %.not150, double 0.000000e+00, double %i.ag
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.ab, double noundef %i.ah)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.ak = sitofp i64 %i.aj to double              ; 2 uses
  %i.al = fdiv double %i.ak, 1.000000e+06
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not151 = icmp eq i64 %i.am, 0
  %i.an = sitofp i64 %i.am to double
  %i.ao = fmul nnan double %i.ak, 1.000000e+02
  %i.ap = fdiv double %i.ao, %i.an
  %i.aq = select i1 %.not151, double 0.000000e+00, double %i.ap
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.al, double noundef %i.aq)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !130
  %i.at = sitofp i64 %i.as to double              ; 2 uses
  %i.au = fdiv double %i.at, 1.000000e+06
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not152 = icmp eq i64 %i.av, 0
  %i.aw = sitofp i64 %i.av to double
  %i.ax = fmul nnan double %i.at, 1.000000e+02
  %i.ay = fdiv double %i.ax, %i.aw
  %i.az = select i1 %.not152, double 0.000000e+00, double %i.ay
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.au, double noundef %i.az)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !131
  %i.bc = sitofp i64 %i.bb to double              ; 2 uses
  %i.bd = fdiv double %i.bc, 1.000000e+06
  %i.be = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not153 = icmp eq i64 %i.be, 0
  %i.bf = sitofp i64 %i.be to double
  %i.bg = fmul nnan double %i.bc, 1.000000e+02
  %i.bh = fdiv double %i.bg, %i.bf
  %i.bi = select i1 %.not153, double 0.000000e+00, double %i.bh
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.bd, double noundef %i.bi)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !132
  %i.bl = sitofp i64 %i.bk to double              ; 2 uses
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not154 = icmp eq i64 %i.bn, 0
  %i.bo = sitofp i64 %i.bn to double
  %i.bp = fmul nnan double %i.bl, 1.000000e+02
  %i.bq = fdiv double %i.bp, %i.bo
  %i.br = select i1 %.not154, double 0.000000e+00, double %i.bq
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.bm, double noundef %i.br)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !133
  %i.bu = sitofp i64 %i.bt to double              ; 2 uses
  %i.bv = fdiv double %i.bu, 1.000000e+06
  %i.bw = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not155 = icmp eq i64 %i.bw, 0
  %i.bx = sitofp i64 %i.bw to double
  %i.by = fmul nnan double %i.bu, 1.000000e+02
  %i.bz = fdiv double %i.by, %i.bx
  %i.ca = select i1 %.not155, double 0.000000e+00, double %i.bz
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.bv, double noundef %i.ca)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !134
  %i.cd = sitofp i64 %i.cc to double              ; 2 uses
  %i.ce = fdiv double %i.cd, 1.000000e+06
  %i.cf = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not156 = icmp eq i64 %i.cf, 0
  %i.cg = sitofp i64 %i.cf to double
  %i.ch = fmul nnan double %i.cd, 1.000000e+02
  %i.ci = fdiv double %i.ch, %i.cg
  %i.cj = select i1 %.not156, double 0.000000e+00, double %i.ci
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.ce, double noundef %i.cj)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !135
  %i.cm = sitofp i64 %i.cl to double              ; 2 uses
  %i.cn = fdiv double %i.cm, 1.000000e+06
  %i.co = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not157 = icmp eq i64 %i.co, 0
  %i.cp = sitofp i64 %i.co to double
  %i.cq = fmul nnan double %i.cm, 1.000000e+02
  %i.cr = fdiv double %i.cq, %i.cp
  %i.cs = select i1 %.not157, double 0.000000e+00, double %i.cr
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.cn, double noundef %i.cs)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !136
  %i.cv = sitofp i64 %i.cu to double              ; 2 uses
  %i.cw = fdiv double %i.cv, 1.000000e+06
  %i.cx = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not158 = icmp eq i64 %i.cx, 0
  %i.cy = sitofp i64 %i.cx to double
  %i.cz = fmul nnan double %i.cv, 1.000000e+02
  %i.da = fdiv double %i.cz, %i.cy
  %i.db = select i1 %.not158, double 0.000000e+00, double %i.da
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.cw, double noundef %i.db)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13)
  %i.dc = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.not159 = icmp eq i64 %i.dc, 0
  %i.dd = sitofp i64 %i.dc to double              ; 2 uses
  %1 = insertelement <2 x double> poison, double %i.dd, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = fmul nnan <2 x double> %2, <double 1.000000e+00, double 1.000000e+02>
  %4 = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.dd, i64 1
  %5 = fdiv <2 x double> %3, %4                   ; 2 uses
  %6 = extractelement <2 x double> %5, i64 1
  %i.de = select i1 %.not159, double 0.000000e+00, double %6
  %7 = extractelement <2 x double> %5, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %7, double noundef %i.de)
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !137
  %i.dg = tail call i32 @fflush(ptr noundef %i.df) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !72 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val171225 = load i32, ptr %i.dj, align 4, !tbaa !105
  %i.dk = icmp sgt i32 %.val171225, 0
  br i1 %i.dk, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.dl = phi ptr [ %i.dp, %.lr.ph ], [ %i.di, %bb.c ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val175 = load ptr, ptr %i.dm, align 8, !tbaa !114
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.val175, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !139
  tail call void @sat_solver_delete(ptr noundef %i.do) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !72 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %.val171 = load i32, ptr %i.dq, align 4, !tbaa !105
  %i.dr = sext i32 %.val171 to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.critedge, !llvm.loop !140

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.lcssa224 = phi ptr [ %i.di, %bb.c ], [ %i.dp, %.lr.ph ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa224, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.du) #15
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.d
  tail call void @free(ptr noundef nonnull %.lcssa224) #15
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %.val176232 = load i32, ptr %i.dx, align 4, !tbaa !141
  %i.dy = icmp sgt i32 %.val176232, 0
  br i1 %i.dy, label %.preheader221, label %.critedge.i

.preheader221:                                    ; preds = %Vec_PtrFree.exit, %.critedge2
  %i.dz = phi ptr [ %i.eq, %.critedge2 ], [ %i.dw, %Vec_PtrFree.exit ] ; 2 uses
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %.critedge2 ], [ 0, %Vec_PtrFree.exit ] ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.val178227 = load ptr, ptr %i.ea, align 8, !tbaa !143
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val178227, i64 %indvars.iv253
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !139 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %.val170228 = load i32, ptr %i.ed, align 4, !tbaa !105
  %i.ee = icmp sgt i32 %.val170228, 0
  br i1 %i.ee, label %.lr.ph230, label %.critedge2

.lr.ph230:                                        ; preds = %.preheader221, %.lr.ph230
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph230 ], [ 0, %.preheader221 ] ; 2 uses
  %i.ef = phi ptr [ %i.em, %.lr.ph230 ], [ %i.ec, %.preheader221 ]
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val174 = load ptr, ptr %i.eg, align 8, !tbaa !114
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val174, i64 %indvars.iv250
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !139
  tail call void @Pdr_SetDeref(ptr noundef %i.ei) #15
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.ej = load ptr, ptr %i.dv, align 8, !tbaa !73 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val178 = load ptr, ptr %i.ek, align 8, !tbaa !143
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.val178, i64 %indvars.iv253
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !139 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %.val170 = load i32, ptr %i.en, align 4, !tbaa !105
  %i.eo = sext i32 %.val170 to i64
  %i.ep = icmp slt i64 %indvars.iv.next251, %i.eo
  br i1 %i.ep, label %.lr.ph230, label %.critedge2, !llvm.loop !144

.critedge2:                                       ; preds = %.lr.ph230, %.preheader221
  %i.eq = phi ptr [ %i.dz, %.preheader221 ], [ %i.ej, %.lr.ph230 ] ; 6 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %.val176 = load i32, ptr %i.er, align 4, !tbaa !141 ; 3 uses
  %i.es = sext i32 %.val176 to i64
  %i.et = icmp slt i64 %indvars.iv.next254, %i.es
  br i1 %i.et, label %.preheader221, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %.critedge2
  %i.eu = getelementptr i8, ptr %i.eq, i64 4
  %i.ev = icmp sgt i32 %.val176, 0
  br i1 %i.ev, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ew = getelementptr i8, ptr %i.eq, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.val14.i = phi i32 [ %.val176, %.lr.ph.i ], [ %.val.i, %bb.h ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.val8.i = load ptr, ptr %i.ew, align 8, !tbaa !143
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !139 ; 3 uses
  %.not.i179 = icmp eq ptr %i.ey, null
  br i1 %.not.i179, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.fa) #15
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %i.ey) #15
  %.val.pre.i = load i32, ptr %i.eu, align 4, !tbaa !141
  br label %bb.h

bb.h:                                             ; preds = %Vec_PtrFree.exit.i, %bb.e
  %.val.i = phi i32 [ %.val14.i, %bb.e ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fb = sext i32 %.val.i to i64
  %i.fc = icmp slt i64 %indvars.iv.next.i, %i.fb
  br i1 %i.fc, label %bb.e, label %.critedge.i, !llvm.loop !146

.critedge.i:                                      ; preds = %bb.h, %Vec_PtrFree.exit, %._crit_edge
  %.lcssa231305 = phi ptr [ %i.dw, %Vec_PtrFree.exit ], [ %i.eq, %._crit_edge ], [ %i.eq, %bb.h ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.lcssa231305, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !114 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.fe, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.fe) #15
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.i
  tail call void @free(ptr noundef nonnull %.lcssa231305) #15
  tail call void @Pdr_QueueStop(ptr noundef %0) #15
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !80 ; 2 uses
  %.not160 = icmp eq ptr %i.fg, null
  br i1 %.not160, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Vec_VecFree.exit
  tail call void @free(ptr noundef nonnull %i.fg) #15
  store ptr null, ptr %i.ff, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %Vec_VecFree.exit, %bb.j
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !81 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !32 ; 2 uses
  %.not.i180 = icmp eq ptr %i.fk, null
  br i1 %.not.i180, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.fk) #15
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.k, %bb.l
  tail call void @free(ptr noundef nonnull %i.fi) #15
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !147
  tail call void @Cnf_DataFree(ptr noundef %i.fm) #15
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !148 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %Vec_IntFreeP.exit, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !32 ; 2 uses
  %.not.i181 = icmp eq ptr %i.fr, null
  br i1 %.not.i181, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.fr) #15
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !148 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr null, ptr %i.ft, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.m
  %i.fu = phi ptr [ %i.fs, %.thread.i ], [ %i.fo, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.fu) #15
  store ptr null, ptr %i.fn, align 8, !tbaa !148
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %Vec_IntFree.exit, %bb.n
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !149
  tail call void @Cnf_DataFree(ptr noundef %i.fw) #15
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !150 ; 3 uses
end_hunk_0
