inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@alignableReagion:bb.a
  %.2136 = phi ptr [ %.1135, %bb.x ], [ %.1135, %bb.w ], [ %.0134214, %bb.t ] ; 5 uses
  %.3133 = phi i32 [ 0, %bb.x ], [ 0, %bb.w ], [ %.2132, %bb.t ] ; 2 uses
  %.3 = phi double [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %bb.w ], [ %.2, %bb.t ] ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %i.ir = sub nsw i32 %i.e, %i.io
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next266, %i.is
  br i1 %i.it, label %.lr.ph217, label %._crit_edge218, !llvm.loop !74

._crit_edge218:                                   ; preds = %bb.y
  %i.iu = icmp ne i32 %.3153, 0
  %i.iv = icmp sgt i32 %.3133, %i.io
  %or.cond172 = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %or.cond172, label %bb.z, label %._crit_edge218.thread

bb.z:                                             ; preds = %._crit_edge218
  %i.iw = trunc nuw nsw i64 %indvars.iv.next266 to i32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.2136, i64 4
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !71
  store i32 %.3149, ptr %.2136, align 8, !tbaa !70
  %i.iy = add nsw i32 %.3149, %i.iw
  %i.iz = load i32, ptr @fftWinSize, align 4, !tbaa !4
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = sdiv i32 %i.ja, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.2136, i64 8
  store i32 %i.jb, ptr %i.jc, align 8, !tbaa !72
  %i.jd = getelementptr inbounds nuw i8, ptr %.2136, i64 16
  store double %.3, ptr %i.jd, align 8, !tbaa !73
  %i.je = add nsw i32 %.2142, 1
  br label %._crit_edge218.thread

._crit_edge218.thread:                            ; preds = %.preheader, %bb.z, %._crit_edge218
  %.3143 = phi i32 [ %i.je, %bb.z ], [ %.2142, %._crit_edge218 ], [ 0, %.preheader ]
  ret i32 %.3143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare void @FreeDoubleVec(ptr noundef) local_unnamed_addr #9

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @blockAlign(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @blockAlign.crossscore, align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocateDoubleMtx(i32 noundef 100000, i32 noundef 100000) #25
  store ptr %i.c, ptr @blockAlign.crossscore, align 8, !tbaa !75
  %i.d = tail call ptr @AllocateIntMtx(i32 noundef 100000, i32 noundef 100000) #25
  store ptr %i.d, ptr @blockAlign.track, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr %3, align 4, !tbaa !4      ; 8 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader146.lr.ph, label %._crit_edge170

.preheader146.lr.ph:                              ; preds = %bb.c
  %i.g = load ptr, ptr @blockAlign.crossscore, align 8
  %wide.trip.count189 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count189, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count189
  %xtraiter = and i64 %wide.trip.count189, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.lr.ph, %._crit_edge
  %indvars.iv186 = phi i64 [ 0, %.preheader146.lr.ph ], [ %indvars.iv.next187, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv186
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv186
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.i to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond257 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond257, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader146, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader146 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !11
  %wide.load254 = load <2 x double>, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !11
  store <2 x double> %wide.load254, ptr %i.r, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader146, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader146 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.prol
  store double %i.u, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count189
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store double %i.af, ptr %i.ag, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store double %i.ai, ptr %i.aj, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count189
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.preheader143, label %.preheader146, !llvm.loop !82

.preheader143:                                    ; preds = %._crit_edge
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign.ocut1, ptr align 4 %0, i64 %i.al, i1 false), !tbaa !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @blockAlign.ocut2, ptr align 4 %1, i64 %i.al, i1 false), !tbaa !4
  %i.am = zext nneg i32 %i.e to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @blockAlign.max, i8 0, i64 %i.an, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @blockAlign.point, i8 0, i64 %i.an, i1 false), !tbaa !11
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %.preheader.preheader, label %.lr.ph160.split.preheader

.lr.ph160.split.preheader:                        ; preds = %.preheader143
  %i.ao = load ptr, ptr @blockAlign.crossscore, align 8 ; 2 uses
  %i.ap = load ptr, ptr @blockAlign.track, align 8
  br label %.lr.ph160.split

.preheader142:                                    ; preds = %._crit_edge156
  %i.aq = icmp sgt i32 %i.cn, 0
  br i1 %i.aq, label %.preheader.preheader, label %._crit_edge170

.preheader.preheader:                             ; preds = %.preheader143, %.preheader142
  %.ph = phi i32 [ 1, %.preheader143 ], [ %i.cn, %.preheader142 ]
  br label %.preheader

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %._crit_edge156
  %i.ar = phi i32 [ %i.e, %.lr.ph160.split.preheader ], [ %i.cn, %._crit_edge156 ] ; 3 uses
  %indvars.iv200 = phi i64 [ 1, %.lr.ph160.split.preheader ], [ %indvars.iv.next201, %._crit_edge156 ] ; 5 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph155, label %.lr.ph160.split.._crit_edge156_crit_edge

.lr.ph160.split.._crit_edge156_crit_edge:         ; preds = %.lr.ph160.split
  %.pre219 = sext i32 %i.ar to i64
  br label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph160.split
  %i.at = add nsw i64 %indvars.iv200, -1          ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ay = trunc nuw nsw i64 %indvars.iv200 to i32
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bc = trunc nuw nsw i64 %i.at to i32
  %4 = sitofp i32 %i.bc to double
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph155, %bb.j
  %indvars.iv197 = phi i64 [ 1, %.lr.ph155 ], [ %indvars.iv.next198, %bb.j ] ; 8 uses
  %i.bd = phi double [ 0.000000e+00, %.lr.ph155 ], [ %i.ch, %bb.j ] ; 3 uses
  %i.be = phi double [ 0.000000e+00, %.lr.ph155 ], [ %i.cg, %bb.j ] ; 2 uses
  %i.bf = add nsw i64 %indvars.iv197, -1          ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bf ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv197 ; 3 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.max, i64 %indvars.iv197 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = load i32, ptr @penalty, align 4, !tbaa !4
  %i.bm = sitofp i32 %i.bl to double              ; 2 uses
  %i.bn = fadd double %i.bk, %i.bm                ; 2 uses
  %i.bo = fcmp olt double %i.bh, %i.bn
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.point, i64 %indvars.iv197
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = fsub double %i.bq, %i.az
  %i.bs = fptosi double %i.br to i32
  store i32 %i.bs, ptr %i.bi, align 4, !tbaa !4
  %.pre = load i32, ptr @penalty, align 4, !tbaa !4
  %.pre216 = sitofp i32 %.pre to double
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi217 = phi double [ %.pre216, %bb.e ], [ %i.bm, %bb.d ]
  %.0 = phi double [ %i.bn, %bb.e ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bt = fadd double %i.bd, %.pre-phi217         ; 2 uses
  %i.bu = fcmp olt double %.0, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.bw = uitofp nneg i32 %i.bv to double
  %i.bx = fsub double %i.bw, %i.be
  %i.by = fptosi double %i.bx to i32
  store i32 %i.by, ptr %i.bi, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi double [ %i.bt, %bb.g ], [ %.0, %bb.f ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv197 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11
  %i.cb = fadd double %.1, %i.ca
  store double %i.cb, ptr %i.bz, align 8, !tbaa !11
  %i.cc = load double, ptr %i.bg, align 8, !tbaa !11 ; 4 uses
  %i.cd = fcmp olt double %i.bd, %i.cc            ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.bf to i32
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = select i1 %i.cd, double %i.cf, double %i.be
  %i.ch = select i1 %i.cd, double %i.cc, double %i.bd
  %i.ci = fcmp olt double %i.bk, %i.cc
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.cc, ptr %i.bj, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @blockAlign.point, i64 %indvars.iv197
  store double %4, ptr %i.cj, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.ck = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp slt i64 %indvars.iv.next198, %i.cl
  br i1 %i.cm, label %bb.d, label %._crit_edge156, !llvm.loop !85

._crit_edge156:                                   ; preds = %bb.j, %.lr.ph160.split.._crit_edge156_crit_edge
  %.pre-phi220 = phi i64 [ %.pre219, %.lr.ph160.split.._crit_edge156_crit_edge ], [ %i.cl, %bb.j ]
  %i.cn = phi i32 [ %i.ar, %.lr.ph160.split.._crit_edge156_crit_edge ], [ %i.ck, %bb.j ] ; 4 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.co = icmp slt i64 %indvars.iv.next201, %.pre-phi220
  br i1 %i.co, label %.lr.ph160.split, label %.preheader142, !llvm.loop !86

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge168
  %i.cp = phi i32 [ %i.dc, %._crit_edge168 ], [ %.ph, %.preheader.preheader ]
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %._crit_edge168 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph167, label %._crit_edge168

.lr.ph167:                                        ; preds = %.preheader, %.lr.ph167
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.lr.ph167 ], [ 0, %.preheader ] ; 2 uses
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cs = load ptr, ptr @blockAlign.track, align 8, !tbaa !77
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv206
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv203
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.8, i32 noundef %i.cw) #21 ; 0 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.cy = load i32, ptr %3, align 4, !tbaa !4
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next204, %i.cz
  br i1 %i.da, label %.lr.ph167, label %._crit_edge168, !llvm.loop !88

._crit_edge168:                                   ; preds = %.lr.ph167, %.preheader
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !8
  %fputc = tail call i32 @fputc(i32 10, ptr %i.db) ; 0 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.dc = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next207, %i.dd
  br i1 %i.de, label %.preheader, label %._crit_edge170, !llvm.loop !89

._crit_edge170:                                   ; preds = %._crit_edge168, %bb.c, %.preheader142
  %.lcssa = phi i32 [ %i.cn, %.preheader142 ], [ %i.e, %bb.c ], [ %i.dc, %._crit_edge168 ]
  %i.df = add nsw i32 %.lcssa, -1                 ; 2 uses
  store i32 %i.df, ptr getelementptr inbounds nuw (i8, ptr @blockAlign.result1, i64 399996), align 4, !tbaa !4
  store i32 %i.df, ptr getelementptr inbounds nuw (i8, ptr @blockAlign.result2, i64 399996), align 4, !tbaa !4
  %i.dg = load ptr, ptr @blockAlign.track, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge170, %bb.q
  %.4172 = phi i32 [ 99999, %._crit_edge170 ], [ %i.dv, %bb.q ] ; 5 uses
  %i.dh = zext nneg i32 %.4172 to i64             ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result1, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 5 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4  ; 5 uses
  %i.dm = icmp eq i32 %i.dj, 0
  %i.dn = icmp eq i32 %i.dl, 0
  %or.cond = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = sext i32 %i.dj to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83
  %i.dr = sext i32 %i.dl to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 4 uses
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = add nsw i32 %.4172, -1                  ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result1, i64 %i.dw ; 3 uses
  br i1 %i.du, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dy = add nsw i32 %i.dj, -1
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !4
  %i.dz = add nsw i32 %i.dl, -1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.dw
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !4
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.eb = icmp sgt i32 %i.dt, 0
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %i.dw ; 2 uses
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = add nsw i32 %i.dj, -1
  store i32 %i.ed, ptr %i.dx, align 4, !tbaa !4
  %i.ee = sub nsw i32 %i.dl, %i.dt
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ef = add nsw i32 %i.dt, %i.dj
  store i32 %i.ef, ptr %i.dx, align 4, !tbaa !4
  %i.eg = add nsw i32 %i.dl, -1
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.eh = icmp samesign ugt i32 %.4172, 1
  br i1 %i.eh, label %bb.k, label %.lr.ph176.preheader, !llvm.loop !90

bb.r:                                             ; preds = %bb.k
  %i.ei = icmp slt i32 %.4172, 100000
  br i1 %i.ei, label %.lr.ph176.preheader, label %._crit_edge177

.lr.ph176.preheader:                              ; preds = %bb.q, %bb.r
  %.4.lcssa239 = phi i32 [ %.4172, %bb.r ], [ 0, %bb.q ]
  %i.ej = zext nneg i32 %.4.lcssa239 to i64
  br label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.x
  %indvars.iv209 = phi i64 [ %i.ej, %.lr.ph176.preheader ], [ %indvars.iv.next210, %bb.x ] ; 4 uses
  %.0123174 = phi i32 [ 0, %.lr.ph176.preheader ], [ %.2, %bb.x ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result1, i64 %indvars.iv209
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %2, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @blockAlign.result2, i64 %indvars.iv209
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4  ; 2 uses
  %i.er = sext i32 %i.eq to i64                   ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !11 ; 2 uses
  %i.eu = fcmp oeq double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.lr.ph176
  %i.ev = add nsw i64 %indvars.iv209, -1          ; 2 uses
end_hunk_0
