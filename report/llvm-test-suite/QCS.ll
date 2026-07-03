inline.NumInlined: 264
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii:bb.a
; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS8setForceEPKdPK7double2PdPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = sub nsw i32 %6, %5
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef %i.g) #13 ; 4 uses
  %i.i = icmp slt i32 %5, %6
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count = sext i32 %6 to i64
  br label %.lr.ph

.lr.ph94:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count99 = sext i32 %6 to i64
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.p = sub nsw i64 %indvars.iv, %i.j            ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !60 ; 3 uses
  %i.s = fneg double %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double 1.000000e+00) ; 2 uses
  %i.u = fcmp olt double %i.t, 1.000000e-04
  br i1 %i.u, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.w = load double, ptr %i.v, align 8, !tbaa !60
  %i.x = fdiv double %i.w, %i.t
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.sink = phi double [ %i.x, %bb.b ], [ 0.000000e+00, %.lr.ph ]
  %i.y = phi double [ %i.r, %bb.b ], [ 0.000000e+00, %.lr.ph ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p
  store double %.sink, ptr %i.z, align 8, !tbaa !60
  store double %i.y, ptr %i.q, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @free(ptr noundef %i.h) #11
  ret void

bb.c:                                             ; preds = %.lr.ph94, %bb.c
  %indvars.iv96 = phi i64 [ %i.o, %.lr.ph94 ], [ %indvars.iv.next97, %bb.c ] ; 5 uses
  %i.aa = sub nsw i64 %indvars.iv96, %i.o         ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv96
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i32 %i.ac, %5                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv96
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !60
  %.idx = shl i64 %i.aa, 5
  %i.aj = getelementptr i8, ptr %2, i64 %.idx     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aa
  %i.am = load double, ptr %i.al, align 8, !tbaa !60, !noalias !102
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  %i.ao = load double, ptr %i.an, align 8, !tbaa !60, !noalias !105
  %i.ap = sext i32 %i.ad to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ap
  %i.ar = shl nsw i32 %i.ad, 1
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ap
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [16 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load double, ptr %i.as, align 8, !tbaa !60, !noalias !108
  %i.ax = load double, ptr %i.aq, align 8, !tbaa !60, !noalias !111
  %i.ay = fdiv double 1.000000e+00, %i.ai
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv96
  %i.ba = load <2 x double>, ptr %i.aj, align 8, !tbaa !60, !noalias !102
  %i.bb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.bc, %i.ba
  %i.be = load <2 x double>, ptr %i.ak, align 8, !tbaa !60, !noalias !114
  %i.bf = fadd <2 x double> %i.bd, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bf, %i.bh
  %i.bj = load <2 x double>, ptr %i.av, align 8, !tbaa !60, !noalias !108
  %i.bk = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bj
  %i.bn = load <2 x double>, ptr %i.au, align 8, !tbaa !60, !noalias !117
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  %i.bp = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = fadd <2 x double> %i.bi, %i.br
  %i.bt = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, %i.bs
  store <2 x double> %i.bv, ptr %i.az, align 8, !tbaa !60
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge, label %bb.c, !llvm.loop !120
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS10setVelDiffEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 5 uses
  %i.j = icmp slt i32 %2, %i.d
  %i.k = sext i32 %2 to i64                       ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.in = select i1 %i.j, ptr %i.l, ptr %i.m
  %i.n = load i32, ptr %.in, align 4, !tbaa !4    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = sub nsw i32 %i.n, %i.i
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = tail call noalias noundef ptr @malloc(i64 noundef %i.aa) #13 ; 7 uses
  %.not6.i.i.i = icmp eq i32 %i.n, %i.i
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.aa, i1 false), !tbaa !60
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %i.ac = icmp slt i32 %1, %2
  br i1 %i.ac, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.aj = icmp slt i32 %i.i, %i.n
  br i1 %i.aj, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count74 = sext i32 %i.n to i64       ; 5 uses
  %i.an = sub nsw i64 %wide.trip.count74, %i.am   ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69
  %i.ao = shl nsw i64 %i.am, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ao ; 2 uses
  %i.ap = shl nsw i64 %wide.trip.count74, 3       ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.v, i64 %i.ap ; 2 uses
  %scevgep78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %scevgep79 = getelementptr i8, ptr %i.t, i64 %i.ao
  %scevgep80 = getelementptr i8, ptr %i.t, i64 %i.ap
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %i.ak, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %scevgep79, %scevgep77
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.am
  %3 = load <2 x double>, ptr %i.ak, align 8
  %broadcast.splat88 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = load double, ptr %i.al, align 8, !tbaa !23, !alias.scope !122
  %i.as = fmul double %i.ar, 2.000000e+00
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = add i64 %index, %i.am                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !60, !alias.scope !125
  %wide.load84 = load <2 x double>, ptr %i.av, align 8, !tbaa !60, !alias.scope !125
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load85 = load <2 x double>, ptr %i.aw, align 8, !tbaa !60
  %wide.load86 = load <2 x double>, ptr %i.ax, align 8, !tbaa !60
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load85
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load86
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load, <2 x double> %i.ay)
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load84, <2 x double> %i.az)
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.at ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %i.ba, ptr %i.bc, align 8, !tbaa !60, !alias.scope !127, !noalias !129
  store <2 x double> %i.bb, ptr %i.bd, align 8, !tbaa !60, !alias.scope !127, !noalias !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph69, %middle.block
  %indvars.iv71.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph69 ], [ %i.aq, %middle.block ] ; 7 uses
  %i.bf = sub nsw i64 %wide.trip.count74, %indvars.iv71.ph
  %xtraiter = and i64 %i.bf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bg = sub nsw i64 %indvars.iv71.ph, %i.am
  %i.bh = load double, ptr %i.ak, align 8, !tbaa !22
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv71.ph
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !60
  %i.bk = load double, ptr %i.al, align 8, !tbaa !23
  %i.bl = fmul double %i.bk, 2.000000e+00
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !60
  %i.bo = fmul double %i.bl, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bj, double %i.bo)
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv71.ph
  store double %i.bp, ptr %i.bq, align 8, !tbaa !60
  %indvars.iv.next72.prol = add nsw i64 %indvars.iv71.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %scalar.ph.preheader ], [ %indvars.iv.next72.prol, %scalar.ph.prol ]
  %i.br = add nsw i64 %wide.trip.count74, -1
  %i.bs = icmp eq i64 %indvars.iv71.ph, %i.br
  br i1 %i.bs, label %._crit_edge, label %scalar.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.by, %i.i
  %i.cc = sext i32 %i.bw to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.cc ; 2 uses
  %i.ce = sext i32 %i.bu to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.ce ; 2 uses
  %i.cg = load double, ptr %i.cd, align 8, !tbaa !71, !noalias !131
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !71, !noalias !131
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !73, !noalias !131
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !73, !noalias !131
  %i.cn = fsub double %i.ck, %i.cm
  %i.co = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.cc ; 2 uses
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ce ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !71, !noalias !134
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !71, !noalias !134
  %i.cs = fsub double %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !73, !noalias !134
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !73, !noalias !134
  %i.cx = fsub double %i.cu, %i.cw
  %i.cy = sext i32 %i.ca to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !60 ; 2 uses
  %i.db = fmul double %i.cn, %i.cx
  %i.dc = tail call noundef double @llvm.fmuladd.f64(double %i.cs, double %i.ci, double %i.db)
  %i.dd = fcmp ogt double %i.da, 0.000000e+00
  %i.de = tail call double @llvm.fabs.f64(double %i.dc)
  %i.df = fdiv double %i.de, %i.da
  %i.dg = select i1 %i.dd, double %i.df, double 0.000000e+00 ; 2 uses
  %i.dh = sext i32 %i.cb to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !60 ; 2 uses
  %i.dk = fcmp olt double %i.dj, %i.dg
  %.sroa.speculated = select i1 %i.dk, double %i.dg, double %i.dj
  store double %.sroa.speculated, ptr %i.di, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !137

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  tail call void @free(ptr noundef %i.ab) #11
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.1, %scalar.ph ], [ %indvars.iv71.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dl = sub nsw i64 %indvars.iv71, %i.am
  %i.dm = load double, ptr %i.ak, align 8, !tbaa !22
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv71
  %i.do = load double, ptr %i.dn, align 8, !tbaa !60
  %i.dp = load double, ptr %i.al, align 8, !tbaa !23
  %i.dq = fmul double %i.dp, 2.000000e+00
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dl
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !60
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dt)
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv71
  store double %i.du, ptr %i.dv, align 8, !tbaa !60
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 3 uses
  %i.dw = sub nsw i64 %indvars.iv.next72, %i.am
  %i.dx = load double, ptr %i.ak, align 8, !tbaa !22
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next72
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !60
  %i.ea = load double, ptr %i.al, align 8, !tbaa !23
  %i.eb = fmul double %i.ea, 2.000000e+00
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dw
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !60
  %i.ee = fmul double %i.eb, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dz, double %i.ee)
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next72
  store double %i.ef, ptr %i.eg, align 8, !tbaa !60
  %indvars.iv.next72.1 = add nsw i64 %indvars.iv71, 2 ; 2 uses
  %exitcond75.not.1 = icmp eq i64 %indvars.iv.next72.1, %wide.trip.count74
  br i1 %exitcond75.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
