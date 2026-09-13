Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/apriltag_quad_thresh?download=true
inline.NumInlined: 743
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2cv5aruco19quad_segment_maximaERKNS0_18DetectorParametersEiPNS0_11line_fit_ptEPi:bb.a
.lr.ph:                                           ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc206
  %i.y = sub nsw i32 %1, %i.o
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i207: ; preds = %bb.d
  %i.z = shl nuw nsw i64 %i.q, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc214 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit238.thread687 ; 5 uses

.noexc214:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i207
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.q ; 2 uses
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr i8, ptr %i.aa, i64 8      ; 3 uses
  %i.ad = add nsw i64 %i.q, -1                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.preheader348, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209: ; preds = %.noexc214
  %.idx.i.i.i.i.i.i.i210 = shl nuw nsw i64 %i.ad, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i210, i1 false), !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i.i.i210
  br label %.preheader348

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = add i32 %i.y, %i.ag
  %i.ai = srem i32 %i.ah, %1
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.o, %i.aj
  %i.al = urem i32 %i.ak, %1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  invoke void @_ZN2cv5aruco8fit_lineEPNS0_11line_fit_ptEiiiPdS3_S3_(ptr noundef %2, i32 noundef %1, i32 noundef %i.ai, i32 noundef %i.al, ptr noundef null, ptr noundef nonnull %i.am, ptr noundef null)
          to label %bb.d unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit238.thread

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i207, label %bb.c, !llvm.loop !83

_ZNSt6vectorIdSaIdEED2Ev.exit238.thread:          ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader348:                                    ; preds = %.noexc214, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.17.0612623 = phi ptr [ %i.u, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209 ], [ %i.u, %.noexc214 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0304.0616621 = phi ptr [ %i.t, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209 ], [ %i.t, %.noexc214 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 17 uses
  %.sroa.12301.0 = phi ptr [ %i.ab, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209 ], [ %i.ab, %.noexc214 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0296.0 = phi ptr [ %i.aa, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209 ], [ %i.aa, %.noexc214 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  %.0.i.i.i.i.i211 = phi ptr [ %i.af, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i209 ], [ %i.ac, %.noexc214 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ]
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.preheader347.lr.ph

.preheader347.lr.ph:                              ; preds = %.preheader348
  %i.ao = add nsw i32 %1, -3
  %wide.trip.count551 = zext nneg i32 %1 to i64
  br label %.preheader347

_ZNSt6vectorIdSaIdEED2Ev.exit238.thread687:       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i207
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader347:                                    ; preds = %.preheader347.lr.ph, %.preheader347
  %indvars.iv547 = phi i64 [ 0, %.preheader347.lr.ph ], [ %indvars.iv.next548, %.preheader347 ] ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv547 to i32 ; 2 uses
  %i.ar = add i32 %i.ao, %i.aq                    ; 6 uses
  %i.as = srem i32 %i.ar, %1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !20
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double f0x3F86C05040000000, double 0.000000e+00)
  %i.ax = add i32 %i.ar, 1
  %i.ay = srem i32 %i.ax, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0x3FC152AAA0000000, double %i.aw)
  %i.bd = add i32 %i.ar, 2
  %i.be = srem i32 %i.bd, %1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double f0x3FE368B300000000, double %i.bc)
  %i.bj = add i32 %1, %i.aq
  %i.bk = srem i32 %i.bj, %1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  %i.bo = fadd double %i.bn, %i.bi
  %i.bp = add i32 %i.ar, 4
  %i.bq = srem i32 %i.bp, %1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !20
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double f0x3FE368B300000000, double %i.bo)
  %i.bv = add i32 %i.ar, 5
  %i.bw = srem i32 %i.bv, %1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !20
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double f0x3FC152AAA0000000, double %i.bu)
  %i.cb = add i32 %i.ar, 6
  %i.cc = srem i32 %i.cb, %1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double f0x3F86C05040000000, double %i.ca)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0296.0, i64 %indvars.iv547
  store double %i.cg, ptr %i.ch, align 8, !tbaa !20
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count551
  br i1 %exitcond552.not, label %._crit_edge, label %.preheader347, !llvm.loop !84

._crit_edge:                                      ; preds = %.preheader347, %.preheader348
  %i.ci = ptrtoint ptr %.0.i.i.i.i.i211 to i64
  %i.cj = ptrtoint ptr %.sroa.0296.0 to i64       ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.e, label %bb.f, !prof !91

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0304.0616621, ptr align 8 %.sroa.0296.0, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread, label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %bb.f
  %i.cn = load double, ptr %.sroa.0296.0, align 8, !tbaa !20
  store double %i.cn, ptr %.sroa.0304.0616621, align 8, !tbaa !20
  br label %bb.g

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  %.not.i.i.i220 = icmp eq ptr %.sroa.0296.0, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.co = ptrtoint ptr %.sroa.12301.0 to i64
  %i.cp = sub i64 %i.co, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0, i64 noundef %i.cp) #23
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cq = shl nuw nsw i64 %i.q, 2
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #24
          to label %.noexc225 unwind label %bb.j  ; 15 uses

.noexc225:                                        ; preds = %bb.h
  store i32 0, ptr %i.cr, align 4, !tbaa !23
  %i.cs = add nsw i64 %i.q, -1                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0                    ; 2 uses
  br i1 %i.ct, label %bb.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc225
  %i.cu = getelementptr i8, ptr %i.cr, i64 4
  %.idx.i.i.i.i.i.i.i222 = shl nuw nsw i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i222, i1 false), !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.noexc225, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cv = shl nuw nsw i64 %i.q, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #24
          to label %.noexc233 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread ; 9 uses

.noexc233:                                        ; preds = %bb.i
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !20
  br i1 %i.ct, label %.lr.ph365, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228: ; preds = %.noexc233
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.idx.i.i.i.i.i.i.i229 = shl nuw nsw i64 %i.cs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %.idx.i.i.i.i.i.i.i229, i1 false), !tbaa !20
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i228, %.noexc233
  %i.cy = add nsw i32 %1, -1
  %wide.trip.count557 = zext nneg i32 %1 to i64
  br label %bb.k

._crit_edge366:                                   ; preds = %bb.n
  %i.cz = icmp slt i32 %.1158, 4
  br i1 %i.cz, label %bb.aj, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit238

_ZNSt6vectorIdSaIdEED2Ev.exit248.thread:          ; preds = %bb.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.k:                                             ; preds = %.lr.ph365, %bb.n
  %indvars.iv553 = phi i64 [ 0, %.lr.ph365 ], [ %indvars.iv.next554, %bb.n ] ; 4 uses
  %.0157363 = phi i32 [ 0, %.lr.ph365 ], [ %.1158, %bb.n ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %indvars.iv553
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20 ; 3 uses
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 3 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next554 to i32
  %i.df = urem i32 %i.de, %1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !20
  %i.dj = fcmp ogt double %i.dd, %i.di
  br i1 %i.dj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dk = trunc i64 %indvars.iv553 to i32
  %i.dl = add i32 %i.cy, %i.dk
  %4 = urem i32 %i.dl, %1
  %5 = zext nneg i32 %4 to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0304.0616621, i64 %5
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !20
  %i.do = fcmp ogt double %i.dd, %i.dn
  br i1 %i.do, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dp = sext i32 %.0157363 to i64               ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dp
  %6 = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %6, ptr %i.dq, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dp
  store double %i.dd, ptr %i.dr, align 8, !tbaa !20
  %i.ds = add nsw i32 %.0157363, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.1158 = phi i32 [ %i.ds, %bb.m ], [ %.0157363, %bb.l ], [ %.0157363, %bb.k ] ; 6 uses
  %exitcond558.not = icmp eq i64 %indvars.iv.next554, %wide.trip.count557
  br i1 %exitcond558.not, label %._crit_edge366, label %bb.k, !llvm.loop !85

bb.o:                                             ; preds = %._crit_edge366
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !92 ; 2 uses
  %i.dv = icmp sgt i32 %.1158, %i.du
  br i1 %i.dv, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit242

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.o
  %i.dw = zext nneg i32 %.1158 to i64             ; 4 uses
  %.idx = shl nuw nsw i64 %i.dw, 3                ; 4 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #24
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit.i ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.cw, i64 %.idx, i1 false)
  invoke void @qsort(ptr noundef nonnull %i.dx, i64 noundef %i.dw, i64 noundef 8, ptr noundef nonnull @_ZN2cv5aruco22err_compare_descendingEPKvS2_)
          to label %.lr.ph370.preheader unwind label %bb.q

_ZNSt12_Vector_baseIdSaIdEED2Ev.exit.i:           ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248

.lr.ph370.preheader:                              ; preds = %.noexc5.i
  %i.dz = sext i32 %i.du to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !20 ; 3 uses
  %xtraiter = and i64 %i.dw, 1
  %unroll_iter = and i64 %i.dw, 2147483646
  br label %.lr.ph370

._crit_edge371.unr-lcssa:                         ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge371, label %.lr.ph370.epil.preheader

.lr.ph370.epil.preheader:                         ; preds = %._crit_edge371.unr-lcssa
  %lcmp.mod706 = trunc i32 %.1158 to i1
  tail call void @llvm.assume(i1 %lcmp.mod706)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next560.1
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !20
  %i.ee = fcmp ugt double %i.ed, %i.eb
  br i1 %i.ee, label %bb.p, label %._crit_edge371

bb.p:                                             ; preds = %.lr.ph370.epil.preheader
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next560.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !23
  %i.eh = add nsw i32 %.1152.1, 1
  %i.ei = sext i32 %.1152.1 to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ei
  store i32 %i.eg, ptr %i.ej, align 4, !tbaa !23
  br label %._crit_edge371

._crit_edge371:                                   ; preds = %.lr.ph370.epil.preheader, %bb.p, %._crit_edge371.unr-lcssa
  %.1152.lcssa = phi i32 [ %.1152.1, %._crit_edge371.unr-lcssa ], [ %.1152.1, %.lr.ph370.epil.preheader ], [ %i.eh, %bb.p ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %.idx) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit242

bb.q:                                             ; preds = %.noexc5.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %.idx) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248

.lr.ph370:                                        ; preds = %bb.t, %.lr.ph370.preheader
  %indvars.iv559 = phi i64 [ 0, %.lr.ph370.preheader ], [ %indvars.iv.next560.1, %bb.t ] ; 4 uses
  %.0151367 = phi i32 [ 0, %.lr.ph370.preheader ], [ %.1152.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph370.preheader ], [ %niter.next.1, %bb.t ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv559
  %i.em = load double, ptr %i.el, align 8, !tbaa !20
  %i.en = fcmp ugt double %i.em, %i.eb
  br i1 %i.en, label %bb.r, label %.lr.ph370.1

bb.r:                                             ; preds = %.lr.ph370
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv559
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %i.eq = add nsw i32 %.0151367, 1
  %i.er = sext i32 %.0151367 to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.er
  store i32 %i.ep, ptr %i.es, align 4, !tbaa !23
  br label %.lr.ph370.1

.lr.ph370.1:                                      ; preds = %.lr.ph370, %bb.r
  %.1152 = phi i32 [ %.0151367, %.lr.ph370 ], [ %i.eq, %bb.r ] ; 3 uses
  %indvars.iv.next560 = or disjoint i64 %indvars.iv559, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next560
  %i.eu = load double, ptr %i.et, align 8, !tbaa !20
  %i.ev = fcmp ugt double %i.eu, %i.eb
  br i1 %i.ev, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph370.1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next560
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !23
  %i.ey = add nsw i32 %.1152, 1
  %i.ez = sext i32 %.1152 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ez
  store i32 %i.ex, ptr %i.fa, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph370.1
  %.1152.1 = phi i32 [ %.1152, %.lr.ph370.1 ], [ %i.ey, %bb.s ] ; 5 uses
  %indvars.iv.next560.1 = add nuw nsw i64 %indvars.iv559, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge371.unr-lcssa, label %.lr.ph370, !llvm.loop !86

_ZNSt6vectorIdSaIdEED2Ev.exit242:                 ; preds = %._crit_edge371, %bb.o
  %.2159 = phi i32 [ %.1158, %bb.o ], [ %.1152.lcssa, %._crit_edge371 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !27
  %i.fd = fpext float %i.fc to double
  %i.fe = tail call double @cos(double noundef %i.fd) #21
  %i.ff = icmp sgt i32 %.2159, 3
  br i1 %i.ff, label %.lr.ph473, label %._crit_edge474.thread

.lr.ph473:                                        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit242
  %i.fg = add nsw i32 %.2159, -3
  %i.fh = add nsw i32 %.2159, -2
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.fj = add nsw i32 %.2159, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %wide.trip.count594 = zext nneg i32 %i.fg to i64
  %wide.trip.count589 = zext nneg i32 %i.fh to i64
  br label %.lr.ph436.preheader

.loopexit346:                                     ; preds = %.loopexit345
  %indvars.iv.next565 = add nuw i32 %indvars.iv564, 1
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1
  %exitcond595.not = icmp eq i64 %indvars.iv.next592, %wide.trip.count594
  br i1 %exitcond595.not, label %._crit_edge474, label %.lr.ph436.preheader, !llvm.loop !87

._crit_edge474:                                   ; preds = %.loopexit346
  %i.fo = fcmp oeq double %.8, +inf
  br i1 %i.fo, label %._crit_edge474.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge474
  store i32 %.lcssa394.lcssa426, ptr %3, align 4, !tbaa !23
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.lcssa383406.lcssa441, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !23
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.lcssa387413.lcssa449, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !23
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.lcssa391420.lcssa458, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !23
  %i.fp = uitofp nneg i32 %1 to double
  %i.fq = fdiv double %.8, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !28
  %i.ft = fpext float %i.fs to double
  %i.fu = fcmp olt double %i.fq, %i.ft
  %. = zext i1 %i.fu to i32
  br label %._crit_edge474.thread

.lr.ph436.preheader:                              ; preds = %.loopexit346, %.lr.ph473
  %indvars.iv591 = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next592, %.loopexit346 ] ; 2 uses
  %indvars.iv583 = phi i64 [ 1, %.lr.ph473 ], [ %indvars.iv.next584, %.loopexit346 ] ; 2 uses
  %indvars.iv574 = phi i64 [ 2, %.lr.ph473 ], [ %indvars.iv.next575, %.loopexit346 ] ; 2 uses
  %indvars.iv564 = phi i32 [ 3, %.lr.ph473 ], [ %indvars.iv.next565, %.loopexit346 ] ; 2 uses
  %.lcssa391420.lcssa458.lcssa488 = phi i32 [ undef, %.lr.ph473 ], [ %.lcssa391420.lcssa458, %.loopexit346 ]
  %.lcssa387413.lcssa449.lcssa484 = phi i32 [ undef, %.lr.ph473 ], [ %.lcssa387413.lcssa449, %.loopexit346 ]
  %.lcssa383406.lcssa441.lcssa479 = phi i32 [ undef, %.lr.ph473 ], [ %.lcssa383406.lcssa441, %.loopexit346 ]
  %.0149471 = phi double [ +inf, %.lr.ph473 ], [ %.8, %.loopexit346 ]
  %.lcssa394.lcssa427.lcssa466470 = phi i32 [ undef, %.lr.ph473 ], [ %.lcssa394.lcssa426, %.loopexit346 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv591
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !23 ; 3 uses
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %.loopexit345
  %indvars.iv585 = phi i64 [ %indvars.iv583, %.lr.ph436.preheader ], [ %indvars.iv.next586, %.loopexit345 ] ; 2 uses
  %indvars.iv576 = phi i64 [ %indvars.iv574, %.lr.ph436.preheader ], [ %indvars.iv.next577, %.loopexit345 ] ; 2 uses
  %indvars.iv566 = phi i32 [ %indvars.iv564, %.lr.ph436.preheader ], [ %indvars.iv.next567, %.loopexit345 ] ; 2 uses
  %.lcssa391420.lcssa459 = phi i32 [ %.lcssa391420.lcssa458.lcssa488, %.lr.ph436.preheader ], [ %.lcssa391420.lcssa458, %.loopexit345 ] ; 2 uses
  %.lcssa387413.lcssa450 = phi i32 [ %.lcssa387413.lcssa449.lcssa484, %.lr.ph436.preheader ], [ %.lcssa387413.lcssa449, %.loopexit345 ] ; 2 uses
  %.lcssa383406.lcssa442 = phi i32 [ %.lcssa383406.lcssa441.lcssa479, %.lr.ph436.preheader ], [ %.lcssa383406.lcssa441, %.loopexit345 ] ; 2 uses
  %.1432 = phi double [ %.0149471, %.lr.ph436.preheader ], [ %.8, %.loopexit345 ] ; 2 uses
  %.lcssa394.lcssa427431 = phi i32 [ %.lcssa394.lcssa427.lcssa466470, %.lr.ph436.preheader ], [ %.lcssa394.lcssa426, %.loopexit345 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_:bb.a

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN2cv5aruco20apriltag_quad_threshERKNS0_18DetectorParametersERKNS_3MatERSt6vectorIS7_INS_6Point_IiEESaIS9_EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::aruco::sQuad", align 4 ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 4 uses
  %7 = alloca %"struct.cv::aruco::UnionFind", align 8 ; 9 uses
  %8 = alloca %"struct.cv::aruco::pt", align 4    ; 7 uses
  %9 = alloca %"struct.cv::aruco::pt", align 4    ; 7 uses
  %10 = alloca %"struct.cv::aruco::pt", align 4   ; 7 uses
  %11 = alloca %"struct.cv::aruco::pt", align 4   ; 7 uses
  %12 = alloca %"class.std::vector.20", align 8   ; 13 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.e = load i32, ptr %1, align 8, !tbaa !52
  %i.f = and i32 %i.e, 4095
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef %i.d, i32 noundef %i.b, i32 noundef %i.f)
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5aruco9thresholdENS_3MatERKNS0_18DetectorParametersERS1_(ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.i = mul nsw i32 %i.d, %i.b                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 %i.i, ptr %7, align 8, !tbaa !178
  %i.k = add i32 %i.i, 1                          ; 2 uses
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext i32 %i.k to i64
  invoke void @_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.l)
          to label %._ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit_crit_edge.i unwind label %bb.e

._ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load i32, ptr %7, align 8, !tbaa !178
  %.pre11.i = load ptr, ptr %i.j, align 8, !tbaa !55
  %.pre12.i = add i32 %.pre.i, 1
  %i.m = call i32 @llvm.umax.i32(i32 %.pre12.i, i32 1)
  %i.n = zext i32 %i.m to i64
  br label %_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i: ; preds = %._ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit_crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %i.n, %._ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit_crit_edge.i ], [ 1, %bb.c ] ; 4 uses
  %i.o = phi ptr [ %.pre11.i, %._ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit_crit_edge.i ], [ null, %bb.c ] ; 3 uses
  %min.iters.check = icmp samesign ult i64 %.pre-phi.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i
  %n.vec = and i64 %.pre-phi.i, 4294967292        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> splat (i32 1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.p, align 4, !tbaa !23
  %interleaved.vec710 = shufflevector <2 x i32> %step.add, <2 x i32> splat (i32 1), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec710, ptr %i.r, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi.i, %n.vec
  br i1 %cmp.n, label %_ZN2cv5aruco9UnionFindC2Ej.exit.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %_ZNSt6vectorIN2cv5aruco9UnionFind5ufrecESaIS3_EE6resizeEm.exit.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.body, label %.body.sink.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 1, ptr %i.w, align 4, !tbaa !57
  %i.x = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.x, ptr %i.v, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %.pre-phi.i
  br i1 %exitcond.i, label %_ZN2cv5aruco9UnionFindC2Ej.exit.preheader, label %scalar.ph, !llvm.loop !152

_ZN2cv5aruco9UnionFindC2Ej.exit.preheader:        ; preds = %scalar.ph, %middle.block
  %i.y = add i32 %i.d, -1                         ; 2 uses
  %i.z = icmp sgt i32 %i.d, 1
  br i1 %i.z, label %.lr.ph, label %_ZN2cv5aruco9UnionFindC2Ej.exit._crit_edge

_ZN2cv5aruco9UnionFindC2Ej.exit._crit_edge:       ; preds = %_ZN2cv5aruco9UnionFindC2Ej.exit, %_ZN2cv5aruco9UnionFindC2Ej.exit.preheader
  %i.aa = shl nsw i32 %i.b, 1
  %i.ab = mul nsw i32 %i.aa, %i.d                 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 7 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 8) #25 ; 7 uses
  %i.af = icmp sgt i32 %i.d, 2
  br i1 %i.af, label %.preheader479.lr.ph, label %._crit_edge516.split

.preheader479.lr.ph:                              ; preds = %_ZN2cv5aruco9UnionFindC2Ej.exit._crit_edge
  %i.ag = add i32 %i.b, -1                        ; 2 uses
  %i.ah = icmp sgt i32 %i.b, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.aj = add i32 %i.b, 1
  br i1 %i.ah, label %.preheader479.preheader, label %._crit_edge516.split

.preheader479.preheader:                          ; preds = %.preheader479.lr.ph
  %i.ak = sext i32 %i.h to i64                    ; 2 uses
  %i.al = zext nneg i32 %i.b to i64               ; 2 uses
  %wide.trip.count568 = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ag to i64
  %.2..2..2..sroa_idx732 = getelementptr inbounds nuw i8, ptr %8, i64 2
  %.8..8..8..sroa_idx733 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.10..10..10..sroa_idx734 = getelementptr inbounds nuw i8, ptr %8, i64 10
  %.2..2..2..sroa_idx729 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %.8..8..8..sroa_idx730 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.10..10..10..sroa_idx731 = getelementptr inbounds nuw i8, ptr %9, i64 10
  %.2..2..2..sroa_idx726 = getelementptr inbounds nuw i8, ptr %10, i64 2
  %.8..8..8..sroa_idx727 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.10..10..10..sroa_idx728 = getelementptr inbounds nuw i8, ptr %10, i64 10
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 2
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.10..10..10..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 10
  br label %.preheader479

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.g:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  br label %bb.bs

.lr.ph:                                           ; preds = %_ZN2cv5aruco9UnionFindC2Ej.exit.preheader, %_ZN2cv5aruco9UnionFindC2Ej.exit
  %.0278496 = phi i32 [ %i.ao, %_ZN2cv5aruco9UnionFindC2Ej.exit ], [ 0, %_ZN2cv5aruco9UnionFindC2Ej.exit.preheader ] ; 2 uses
  invoke void @_ZN2cv5aruco9UnionFind7do_lineERNS_3MatEiii(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef %i.b, i32 noundef %i.h, i32 noundef %.0278496)
          to label %_ZN2cv5aruco9UnionFindC2Ej.exit unwind label %bb.h

_ZN2cv5aruco9UnionFindC2Ej.exit:                  ; preds = %.lr.ph
  %i.ao = add nuw nsw i32 %.0278496, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.y
  br i1 %exitcond.not, label %_ZN2cv5aruco9UnionFindC2Ej.exit._crit_edge, label %.lr.ph, !llvm.loop !153

bb.h:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.preheader479:                                    ; preds = %.preheader479.preheader, %._crit_edge
  %indvars.iv565 = phi i64 [ 1, %.preheader479.preheader ], [ %indvars.iv.next566, %._crit_edge ] ; 4 uses
  %i.aq = mul nsw i64 %indvars.iv565, %i.ak       ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv565, %i.al   ; 3 uses
  %i.as = shl nuw nsw i64 %indvars.iv565, 1       ; 2 uses
  %i.at = trunc nsw i64 %i.as to i32
  %i.au = call i32 @llvm.umin.i32(i32 %i.at, i32 65535)
  %i.av = trunc nuw i32 %i.au to i16
  %i.aw = add nsw i64 %i.aq, %i.ak
  %i.ax = add nuw nsw i64 %i.ar, %i.al
  %i.ay = trunc i64 %i.as to i32
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = call i32 @llvm.umin.i32(i32 %i.az, i32 65535)
  %i.bb = trunc nuw i32 %i.ba to i16              ; 3 uses
  %i.bc = trunc nsw i64 %i.ar to i32              ; 2 uses
  %i.bd = add nuw i32 %i.ag, %i.bc
  %i.be = add i32 %i.aj, %i.bc
  br label %bb.i

._crit_edge516.split:                             ; preds = %._crit_edge, %.preheader479.lr.ph, %_ZN2cv5aruco9UnionFindC2Ej.exit._crit_edge
  %i.bf = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 9 uses
  store i64 8, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp sgt i32 %i.ab, 1
  br i1 %i.bg, label %.lr.ph529, label %._crit_edge545

.lr.ph529:                                        ; preds = %._crit_edge516.split
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.trip.count576 = zext nneg i32 %i.ac to i64
  br label %bb.aj

._crit_edge:                                      ; preds = %bb.ai
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %._crit_edge516.split, label %.preheader479, !llvm.loop !154

bb.i:                                             ; preds = %.preheader479, %bb.ai
  %indvars.iv = phi i64 [ 1, %.preheader479 ], [ %indvars.iv.next, %bb.ai ] ; 11 uses
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.aq  ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18  ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 8 uses
  %i.bp = icmp eq i8 %i.bn, 127
  br i1 %i.bp, label %bb.ai, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add nuw nsw i64 %indvars.iv, %i.ar      ; 3 uses
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !55  ; 6 uses
  %i.bs = trunc nsw i64 %i.bq to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.011.i = phi i32 [ %i.bs, %bb.j ], [ %i.bv, %bb.k ] ; 9 uses
  %i.bt = zext i32 %.011.i to i64                 ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !58 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, %.011.i
  br i1 %.not.i, label %.preheader.i, label %bb.k, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !58 ; 2 uses
  %.not1213.i = icmp eq i32 %i.bx, %.011.i
  br i1 %.not1213.i, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.by = phi i32 [ %i.cc, %.lr.ph.i ], [ %i.bx, %.preheader.i ]
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.bw, %.preheader.i ]
  store i32 %.011.i, ptr %i.bz, align 4, !tbaa !58
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !58 ; 2 uses
  %.not12.i = icmp eq i32 %i.cc, %.011.i
  br i1 %.not12.i, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit, label %.lr.ph.i, !llvm.loop !1

_ZN2cv5aruco9UnionFind18get_representativeEj.exit: ; preds = %.lr.ph.i, %.preheader.i
  %i.cd = getelementptr i8, ptr %i.bm, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, %i.bo
  %i.ch = icmp eq i32 %i.cg, 255
  br i1 %i.ch, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit
  %i.ci = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %i.cj = trunc nsw i64 %i.ci to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.011.i350 = phi i32 [ %i.cj, %bb.l ], [ %i.cm, %bb.m ] ; 6 uses
  %i.ck = zext i32 %.011.i350 to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !58 ; 2 uses
  %.not.i351 = icmp eq i32 %i.cm, %.011.i350
  br i1 %.not.i351, label %.preheader.i352, label %bb.m, !llvm.loop !0

.preheader.i352:                                  ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ci ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !58 ; 2 uses
  %.not1213.i353 = icmp eq i32 %i.co, %.011.i350
  br i1 %.not1213.i353, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.preheader.i352, %.lr.ph.i354
  %i.cp = phi i32 [ %i.ct, %.lr.ph.i354 ], [ %i.co, %.preheader.i352 ]
  %i.cq = phi ptr [ %i.cs, %.lr.ph.i354 ], [ %i.cn, %.preheader.i352 ]
  store i32 %.011.i350, ptr %i.cq, align 4, !tbaa !58
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !58 ; 2 uses
  %.not12.i355 = icmp eq i32 %i.ct, %.011.i350
  br i1 %.not12.i355, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, label %.lr.ph.i354, !llvm.loop !1

_ZN2cv5aruco9UnionFind18get_representativeEj.exit356: ; preds = %.lr.ph.i354, %.preheader.i352
  %i.cu = icmp ult i32 %.011.i, %.011.i350
  %i.cv = shl nuw i64 %i.ck, 32
  %i.cw = or disjoint i64 %i.cv, %i.bt            ; 3 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32)
  %.0275 = select i1 %i.cu, i64 %i.cw, i64 %i.cx  ; 3 uses
  %i.cy = mul i64 %.0275, 2654435761
  %i.cz = lshr i64 %i.cy, 32
  %i.da = trunc nuw i64 %i.cz to i32
  %i.db = urem i32 %i.da, %i.ac
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.dc ; 2 uses
  %.0273497 = load ptr, ptr %i.dd, align 8, !tbaa !180 ; 3 uses
  %.not322498 = icmp eq ptr %.0273497, null
  br i1 %.not322498, label %.critedge337, label %.lr.ph500

.lr.ph500:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356, %bb.n
  %.0273499 = phi ptr [ %.0273, %bb.n ], [ %.0273497, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356 ] ; 3 uses
  %i.de = load i64, ptr %.0273499, align 8, !tbaa !183
  %.not323 = icmp eq i64 %i.de, %.0275
  br i1 %.not323, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph500
  %i.df = getelementptr inbounds nuw i8, ptr %.0273499, i64 16
  %.0273 = load ptr, ptr %i.df, align 8, !tbaa !180 ; 2 uses
  %.not322 = icmp eq ptr %.0273, null
  br i1 %.not322, label %.critedge337, label %.lr.ph500, !llvm.loop !155

.critedge337:                                     ; preds = %bb.n, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit356
  %i.dg = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0275, ptr %i.dg, align 8, !tbaa !183
  %i.dh = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.dh, align 8, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !184
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %.0273497, ptr %i.dj, align 8, !tbaa !185
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !180
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph500, %.critedge337
  %.1274 = phi ptr [ %i.dg, %.critedge337 ], [ %.0273499, %.lr.ph500 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.dk = shl i32 %indvars.iv.tr, 1
  %i.dl = or disjoint i32 %i.dk, 1
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %8, align 4, !tbaa !36
  store i16 %i.av, ptr %.2..2..2..sroa_idx732, align 2, !tbaa !37
  %i.do = sub nsw i32 %i.cf, %i.bo
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 65535)
  %i.dr = trunc nuw nsw i32 %i.dq to i16
  store i16 %i.dr, ptr %.8..8..8..sroa_idx733, align 4, !tbaa !186
  store i16 0, ptr %.10..10..10..sroa_idx734, align 2, !tbaa !187
  %i.ds = getelementptr inbounds nuw i8, ptr %.1274, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !184 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !31 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !188 ; 2 uses
  %.not.i.not.i = icmp slt i32 %i.dv, %i.dx
  br i1 %.not.i.not.i, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i, label %.lr.ph.i.i

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i: ; preds = %.critedge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.pre.i358 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %bb.p

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %spec.select1011.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.dx, %.critedge ]
  %i.dy = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i, i32 4)
  %spec.select.i.i = shl nuw i32 %i.dy, 1         ; 4 uses
  %.not.i357 = icmp sgt i32 %spec.select.i.i, %i.dv
  br i1 %.not.i357, label %bb.o, label %.lr.ph.i.i, !llvm.loop !156

bb.o:                                             ; preds = %.lr.ph.i.i
  store i32 %spec.select.i.i, ptr %i.dw, align 4, !tbaa !188
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.eb = sext i32 %spec.select.i.i to i64
  %i.ec = load i64, ptr %i.dt, align 8, !tbaa !32
  %i.ed = mul i64 %i.ec, %i.eb
  %i.ee = call ptr @realloc(ptr noundef %i.ea, i64 noundef %i.ed) #26 ; 2 uses
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !33
  %.pre8.i = load i32, ptr %i.du, align 8, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i
  %i.ef = phi i32 [ %i.dv, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i ], [ %.pre8.i, %bb.o ]
  %i.eg = phi ptr [ %.pre.i358, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i ], [ %i.ee, %bb.o ]
  %i.eh = sext i32 %i.ef to i64
  %i.ei = load i64, ptr %i.dt, align 8, !tbaa !32 ; 2 uses
  %i.ej = mul i64 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull readonly align 4 %8, i64 %i.ei, i1 false)
  %i.el = load i32, ptr %i.du, align 8, !tbaa !31
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.du, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit
  %i.en = phi ptr [ %.pre, %bb.p ], [ %i.bk, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit ] ; 2 uses
  %i.eo = add nsw i64 %i.aw, %indvars.iv          ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  %i.es = add nuw nsw i32 %i.er, %i.bo
  %i.et = icmp eq i32 %i.es, 255
  br i1 %i.et, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.eu = add nuw nsw i64 %i.ax, %indvars.iv      ; 2 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !55  ; 3 uses
  %i.ew = trunc nsw i64 %i.eu to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.011.i359 = phi i32 [ %i.ew, %bb.r ], [ %i.ez, %bb.s ] ; 6 uses
  %i.ex = zext i32 %.011.i359 to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58 ; 2 uses
  %.not.i360 = icmp eq i32 %i.ez, %.011.i359
  br i1 %.not.i360, label %.preheader.i361, label %bb.s, !llvm.loop !0

.preheader.i361:                                  ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !58 ; 2 uses
  %.not1213.i362 = icmp eq i32 %i.fb, %.011.i359
  br i1 %.not1213.i362, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, label %.lr.ph.i363

.lr.ph.i363:                                      ; preds = %.preheader.i361, %.lr.ph.i363
  %i.fc = phi i32 [ %i.fg, %.lr.ph.i363 ], [ %i.fb, %.preheader.i361 ]
  %i.fd = phi ptr [ %i.ff, %.lr.ph.i363 ], [ %i.fa, %.preheader.i361 ]
  store i32 %.011.i359, ptr %i.fd, align 4, !tbaa !58
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !58 ; 2 uses
  %.not12.i364 = icmp eq i32 %i.fg, %.011.i359
  br i1 %.not12.i364, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, label %.lr.ph.i363, !llvm.loop !1

_ZN2cv5aruco9UnionFind18get_representativeEj.exit365: ; preds = %.lr.ph.i363, %.preheader.i361
  %i.fh = icmp ult i32 %.011.i, %.011.i359
  %i.fi = shl nuw i64 %i.ex, 32
  %i.fj = or disjoint i64 %i.fi, %i.bt            ; 3 uses
  %i.fk = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 32)
  %.0272 = select i1 %i.fh, i64 %i.fj, i64 %i.fk  ; 3 uses
  %i.fl = mul i64 %.0272, 2654435761
  %i.fm = lshr i64 %i.fl, 32
  %i.fn = trunc nuw i64 %i.fm to i32
  %i.fo = urem i32 %i.fn, %i.ac
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.fp ; 2 uses
  %.0270501 = load ptr, ptr %i.fq, align 8, !tbaa !180 ; 3 uses
  %.not324502 = icmp eq ptr %.0270501, null
  br i1 %.not324502, label %.critedge338, label %.lr.ph504

.lr.ph504:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365, %bb.t
  %.0270503 = phi ptr [ %.0270, %bb.t ], [ %.0270501, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365 ] ; 3 uses
  %i.fr = load i64, ptr %.0270503, align 8, !tbaa !183
  %.not325 = icmp eq i64 %i.fr, %.0272
  br i1 %.not325, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %.lr.ph504
  %i.fs = getelementptr inbounds nuw i8, ptr %.0270503, i64 16
  %.0270 = load ptr, ptr %i.fs, align 8, !tbaa !180 ; 2 uses
  %.not324 = icmp eq ptr %.0270, null
  br i1 %.not324, label %.critedge338, label %.lr.ph504, !llvm.loop !157

.critedge338:                                     ; preds = %bb.t, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit365
  %i.ft = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0272, ptr %i.ft, align 8, !tbaa !183
  %i.fu = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.fu, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !184
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %.0270501, ptr %i.fw, align 8, !tbaa !185
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !180
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph504, %.critedge338
  %.1271 = phi ptr [ %i.ft, %.critedge338 ], [ %.0270503, %.lr.ph504 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %indvars.iv.tr666 = trunc nsw i64 %indvars.iv to i32
  %i.fx = shl nsw i32 %indvars.iv.tr666, 1
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fx, i32 65535)
  %i.fz = trunc nuw i32 %i.fy to i16
  store i16 %i.fz, ptr %9, align 4, !tbaa !36
  store i16 %i.bb, ptr %.2..2..2..sroa_idx729, align 2, !tbaa !37
  %i.ga = sub nsw i32 %i.er, %i.bo
  store i16 0, ptr %.8..8..8..sroa_idx730, align 4, !tbaa !186
  %i.gb = call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %i.gc = call i32 @llvm.umin.i32(i32 %i.gb, i32 65535)
  %i.gd = trunc nuw nsw i32 %i.gc to i16
  store i16 %i.gd, ptr %.10..10..10..sroa_idx731, align 2, !tbaa !187
  %i.ge = getelementptr inbounds nuw i8, ptr %.1271, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !184 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !31 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 12 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !188 ; 2 uses
  %.not.i.not.i366 = icmp slt i32 %i.gh, %i.gj
  br i1 %.not.i.not.i366, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372, label %.lr.ph.i.i367

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372: ; preds = %.critedge2
  %.phi.trans.insert.i373 = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %.pre.i374 = load ptr, ptr %.phi.trans.insert.i373, align 8, !tbaa !33
  br label %bb.v

.lr.ph.i.i367:                                    ; preds = %.critedge2, %.lr.ph.i.i367
  %spec.select1011.i.i368 = phi i32 [ %spec.select.i.i369, %.lr.ph.i.i367 ], [ %i.gj, %.critedge2 ]
  %i.gk = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i368, i32 4)
  %spec.select.i.i369 = shl nuw i32 %i.gk, 1      ; 4 uses
  %.not.i370 = icmp sgt i32 %spec.select.i.i369, %i.gh
  br i1 %.not.i370, label %bb.u, label %.lr.ph.i.i367, !llvm.loop !156

bb.u:                                             ; preds = %.lr.ph.i.i367
  store i32 %spec.select.i.i369, ptr %i.gi, align 4, !tbaa !188
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !33
  %i.gn = sext i32 %spec.select.i.i369 to i64
  %i.go = load i64, ptr %i.gf, align 8, !tbaa !32
  %i.gp = mul i64 %i.go, %i.gn
  %i.gq = call ptr @realloc(ptr noundef %i.gm, i64 noundef %i.gp) #26 ; 2 uses
  store ptr %i.gq, ptr %i.gl, align 8, !tbaa !33
  %.pre8.i371 = load i32, ptr %i.gg, align 8, !tbaa !31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372
  %i.gr = phi i32 [ %i.gh, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372 ], [ %.pre8.i371, %bb.u ]
  %i.gs = phi ptr [ %.pre.i374, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i372 ], [ %i.gq, %bb.u ]
  %i.gt = sext i32 %i.gr to i64
  %i.gu = load i64, ptr %i.gf, align 8, !tbaa !32 ; 2 uses
  %i.gv = mul i64 %i.gu, %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull readonly align 4 %9, i64 %i.gu, i1 false)
  %i.gx = load i32, ptr %i.gg, align 8, !tbaa !31
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gg, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre608 = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.gz = phi ptr [ %.pre608, %bb.v ], [ %i.en, %bb.q ] ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.eo
  %i.hb = getelementptr i8, ptr %i.ha, i64 -1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !18
  %i.hd = zext i8 %i.hc to i32                    ; 2 uses
  %i.he = add nuw nsw i32 %i.hd, %i.bo
  %i.hf = icmp eq i32 %i.he, 255
  br i1 %i.hf, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  %i.hh = add i32 %i.bd, %i.hg                    ; 2 uses
  %i.hi = load ptr, ptr %i.j, align 8, !tbaa !55  ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.011.i376 = phi i32 [ %i.hh, %bb.x ], [ %i.hl, %bb.y ] ; 6 uses
  %i.hj = zext i32 %.011.i376 to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !58 ; 2 uses
  %.not.i377 = icmp eq i32 %i.hl, %.011.i376
  br i1 %.not.i377, label %.preheader.i378, label %bb.y, !llvm.loop !0

.preheader.i378:                                  ; preds = %bb.y
  %i.hm = zext i32 %i.hh to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !58 ; 2 uses
  %.not1213.i379 = icmp eq i32 %i.ho, %.011.i376
  br i1 %.not1213.i379, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, label %.lr.ph.i380

.lr.ph.i380:                                      ; preds = %.preheader.i378, %.lr.ph.i380
  %i.hp = phi i32 [ %i.ht, %.lr.ph.i380 ], [ %i.ho, %.preheader.i378 ]
  %i.hq = phi ptr [ %i.hs, %.lr.ph.i380 ], [ %i.hn, %.preheader.i378 ]
  store i32 %.011.i376, ptr %i.hq, align 4, !tbaa !58
  %i.hr = zext i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !58 ; 2 uses
  %.not12.i381 = icmp eq i32 %i.ht, %.011.i376
  br i1 %.not12.i381, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, label %.lr.ph.i380, !llvm.loop !1

_ZN2cv5aruco9UnionFind18get_representativeEj.exit382: ; preds = %.lr.ph.i380, %.preheader.i378
  %i.hu = icmp ult i32 %.011.i, %.011.i376
  %i.hv = shl nuw i64 %i.hj, 32
  %i.hw = or disjoint i64 %i.hv, %i.bt            ; 3 uses
  %i.hx = call i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 32)
  %.0269 = select i1 %i.hu, i64 %i.hw, i64 %i.hx  ; 3 uses
  %i.hy = mul i64 %.0269, 2654435761
  %i.hz = lshr i64 %i.hy, 32
  %i.ia = trunc nuw i64 %i.hz to i32
  %i.ib = urem i32 %i.ia, %i.ac
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ic ; 2 uses
  %.0267505 = load ptr, ptr %i.id, align 8, !tbaa !180 ; 3 uses
  %.not326506 = icmp eq ptr %.0267505, null
  br i1 %.not326506, label %.critedge339, label %.lr.ph508

.lr.ph508:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382, %bb.z
  %.0267507 = phi ptr [ %.0267, %bb.z ], [ %.0267505, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382 ] ; 3 uses
  %i.ie = load i64, ptr %.0267507, align 8, !tbaa !183
  %.not327 = icmp eq i64 %i.ie, %.0269
  br i1 %.not327, label %.critedge4, label %bb.z

bb.z:                                             ; preds = %.lr.ph508
  %i.if = getelementptr inbounds nuw i8, ptr %.0267507, i64 16
  %.0267 = load ptr, ptr %i.if, align 8, !tbaa !180 ; 2 uses
  %.not326 = icmp eq ptr %.0267, null
  br i1 %.not326, label %.critedge339, label %.lr.ph508, !llvm.loop !158

.critedge339:                                     ; preds = %bb.z, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit382
  %i.ig = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0269, ptr %i.ig, align 8, !tbaa !183
  %i.ih = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.ih, align 8, !tbaa !32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !184
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %.0267505, ptr %i.ij, align 8, !tbaa !185
  store ptr %i.ig, ptr %i.id, align 8, !tbaa !180
  br label %.critedge4

.critedge4:                                       ; preds = %.lr.ph508, %.critedge339
  %.1268 = phi ptr [ %i.ig, %.critedge339 ], [ %.0267507, %.lr.ph508 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %indvars.iv.tr667 = trunc i64 %indvars.iv to i32
  %i.ik = shl i32 %indvars.iv.tr667, 1
  %i.il = add i32 %i.ik, -1
  %i.im = call i32 @llvm.umin.i32(i32 %i.il, i32 65535)
  %i.in = trunc nuw i32 %i.im to i16
  store i16 %i.in, ptr %10, align 4, !tbaa !36
  store i16 %i.bb, ptr %.2..2..2..sroa_idx726, align 2, !tbaa !37
  %i.io = sub nsw i32 %i.hd, %i.bo                ; 2 uses
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = call i32 @llvm.smax.i32(i32 %i.ip, i32 0)
  %i.ir = call i32 @llvm.umin.i32(i32 %i.iq, i32 65535)
  %i.is = trunc nuw nsw i32 %i.ir to i16
  store i16 %i.is, ptr %.8..8..8..sroa_idx727, align 4, !tbaa !186
  %i.it = call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iu = call i32 @llvm.umin.i32(i32 %i.it, i32 65535)
  %i.iv = trunc nuw nsw i32 %i.iu to i16
  store i16 %i.iv, ptr %.10..10..10..sroa_idx728, align 2, !tbaa !187
  %i.iw = getelementptr inbounds nuw i8, ptr %.1268, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !184 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !31 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 12 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !188 ; 2 uses
  %.not.i.not.i383 = icmp slt i32 %i.iz, %i.jb
  br i1 %.not.i.not.i383, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389, label %.lr.ph.i.i384

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389: ; preds = %.critedge4
  %.phi.trans.insert.i390 = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %.pre.i391 = load ptr, ptr %.phi.trans.insert.i390, align 8, !tbaa !33
  br label %bb.ab

.lr.ph.i.i384:                                    ; preds = %.critedge4, %.lr.ph.i.i384
  %spec.select1011.i.i385 = phi i32 [ %spec.select.i.i386, %.lr.ph.i.i384 ], [ %i.jb, %.critedge4 ]
  %i.jc = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i385, i32 4)
  %spec.select.i.i386 = shl nuw i32 %i.jc, 1      ; 4 uses
  %.not.i387 = icmp sgt i32 %spec.select.i.i386, %i.iz
  br i1 %.not.i387, label %bb.aa, label %.lr.ph.i.i384, !llvm.loop !156

bb.aa:                                            ; preds = %.lr.ph.i.i384
  store i32 %spec.select.i.i386, ptr %i.ja, align 4, !tbaa !188
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.jf = sext i32 %spec.select.i.i386 to i64
  %i.jg = load i64, ptr %i.ix, align 8, !tbaa !32
  %i.jh = mul i64 %i.jg, %i.jf
  %i.ji = call ptr @realloc(ptr noundef %i.je, i64 noundef %i.jh) #26 ; 2 uses
  store ptr %i.ji, ptr %i.jd, align 8, !tbaa !33
  %.pre8.i388 = load i32, ptr %i.iy, align 8, !tbaa !31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389
  %i.jj = phi i32 [ %i.iz, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389 ], [ %.pre8.i388, %bb.aa ]
  %i.jk = phi ptr [ %.pre.i391, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i389 ], [ %i.ji, %bb.aa ]
  %i.jl = sext i32 %i.jj to i64
  %i.jm = load i64, ptr %i.ix, align 8, !tbaa !32 ; 2 uses
  %i.jn = mul i64 %i.jm, %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr nonnull readonly align 4 %10, i64 %i.jm, i1 false)
  %i.jp = load i32, ptr %i.iy, align 8, !tbaa !31
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.iy, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.pre609 = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %i.jr = phi ptr [ %.pre609, %bb.ab ], [ %i.gz, %bb.w ]
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.eo
  %i.jt = getelementptr i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !18
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = add nuw nsw i32 %i.jv, %i.bo
  %i.jx = icmp eq i32 %i.jw, 255
  br i1 %i.jx, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.jy = trunc nuw nsw i64 %indvars.iv to i32
  %i.jz = add i32 %i.be, %i.jy                    ; 2 uses
  %i.ka = load ptr, ptr %i.j, align 8, !tbaa !55  ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.011.i393 = phi i32 [ %i.jz, %bb.ad ], [ %i.kd, %bb.ae ] ; 6 uses
  %i.kb = zext i32 %.011.i393 to i64              ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !58 ; 2 uses
  %.not.i394 = icmp eq i32 %i.kd, %.011.i393
  br i1 %.not.i394, label %.preheader.i395, label %bb.ae, !llvm.loop !0

.preheader.i395:                                  ; preds = %bb.ae
  %i.ke = zext i32 %i.jz to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !58 ; 2 uses
  %.not1213.i396 = icmp eq i32 %i.kg, %.011.i393
  br i1 %.not1213.i396, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit399, label %.lr.ph.i397

.lr.ph.i397:                                      ; preds = %.preheader.i395, %.lr.ph.i397
  %i.kh = phi i32 [ %i.kl, %.lr.ph.i397 ], [ %i.kg, %.preheader.i395 ]
  %i.ki = phi ptr [ %i.kk, %.lr.ph.i397 ], [ %i.kf, %.preheader.i395 ]
  store i32 %.011.i393, ptr %i.ki, align 4, !tbaa !58
  %i.kj = zext i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !58 ; 2 uses
  %.not12.i398 = icmp eq i32 %i.kl, %.011.i393
  br i1 %.not12.i398, label %_ZN2cv5aruco9UnionFind18get_representativeEj.exit399, label %.lr.ph.i397, !llvm.loop !1

_ZN2cv5aruco9UnionFind18get_representativeEj.exit399: ; preds = %.lr.ph.i397, %.preheader.i395
  %i.km = icmp ult i32 %.011.i, %.011.i393
  %i.kn = shl nuw i64 %i.kb, 32
  %i.ko = or disjoint i64 %i.kn, %i.bt            ; 3 uses
  %i.kp = call i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.ko, i64 32)
  %.0266 = select i1 %i.km, i64 %i.ko, i64 %i.kp  ; 3 uses
  %i.kq = mul i64 %.0266, 2654435761
  %i.kr = lshr i64 %i.kq, 32
  %i.ks = trunc nuw i64 %i.kr to i32
  %i.kt = urem i32 %i.ks, %i.ac
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ku ; 2 uses
  %.0265509 = load ptr, ptr %i.kv, align 8, !tbaa !180 ; 3 uses
  %.not328510 = icmp eq ptr %.0265509, null
  br i1 %.not328510, label %.critedge340, label %.lr.ph512

.lr.ph512:                                        ; preds = %_ZN2cv5aruco9UnionFind18get_representativeEj.exit399, %bb.af
  %.0265511 = phi ptr [ %.0265, %bb.af ], [ %.0265509, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit399 ] ; 3 uses
  %i.kw = load i64, ptr %.0265511, align 8, !tbaa !183
  %.not329 = icmp eq i64 %i.kw, %.0266
  br i1 %.not329, label %.critedge6, label %bb.af

bb.af:                                            ; preds = %.lr.ph512
  %i.kx = getelementptr inbounds nuw i8, ptr %.0265511, i64 16
  %.0265 = load ptr, ptr %i.kx, align 8, !tbaa !180 ; 2 uses
  %.not328 = icmp eq ptr %.0265, null
  br i1 %.not328, label %.critedge340, label %.lr.ph512, !llvm.loop !159

.critedge340:                                     ; preds = %bb.af, %_ZN2cv5aruco9UnionFind18get_representativeEj.exit399
  %i.ky = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 5 uses
  store i64 %.0266, ptr %i.ky, align 8, !tbaa !183
  %i.kz = call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #25 ; 2 uses
  store i64 12, ptr %i.kz, align 8, !tbaa !32
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !184
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr %.0265509, ptr %i.lb, align 8, !tbaa !185
  store ptr %i.ky, ptr %i.kv, align 8, !tbaa !180
  br label %.critedge6

.critedge6:                                       ; preds = %.lr.ph512, %.critedge340
  %.1 = phi ptr [ %i.ky, %.critedge340 ], [ %.0265511, %.lr.ph512 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %indvars.iv.tr668 = trunc i64 %indvars.iv to i32
  %i.lc = shl i32 %indvars.iv.tr668, 1
  %i.ld = or disjoint i32 %i.lc, 1
  %i.le = call i32 @llvm.umin.i32(i32 %i.ld, i32 65535)
  %i.lf = trunc nuw i32 %i.le to i16
  store i16 %i.lf, ptr %11, align 4, !tbaa !36
  store i16 %i.bb, ptr %.2..2..2..sroa_idx, align 2, !tbaa !37
  %i.lg = sub nsw i32 %i.jv, %i.bo
  %i.lh = call i32 @llvm.smax.i32(i32 %i.lg, i32 0)
  %i.li = call i32 @llvm.umin.i32(i32 %i.lh, i32 65535)
  %i.lj = trunc nuw nsw i32 %i.li to i16          ; 2 uses
  store i16 %i.lj, ptr %.8..8..8..sroa_idx, align 4, !tbaa !186
  store i16 %i.lj, ptr %.10..10..10..sroa_idx, align 2, !tbaa !187
  %i.lk = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !184 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 4 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !31 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 12 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !188 ; 2 uses
  %.not.i.not.i400 = icmp slt i32 %i.ln, %i.lp
  br i1 %.not.i.not.i400, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i406, label %.lr.ph.i.i401

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i406: ; preds = %.critedge6
  %.phi.trans.insert.i407 = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %.pre.i408 = load ptr, ptr %.phi.trans.insert.i407, align 8, !tbaa !33
  br label %bb.ah

.lr.ph.i.i401:                                    ; preds = %.critedge6, %.lr.ph.i.i401
  %spec.select1011.i.i402 = phi i32 [ %spec.select.i.i403, %.lr.ph.i.i401 ], [ %i.lp, %.critedge6 ]
  %i.lq = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i402, i32 4)
  %spec.select.i.i403 = shl nuw i32 %i.lq, 1      ; 4 uses
  %.not.i404 = icmp sgt i32 %spec.select.i.i403, %i.ln
  br i1 %.not.i404, label %bb.ag, label %.lr.ph.i.i401, !llvm.loop !156

bb.ag:                                            ; preds = %.lr.ph.i.i401
  store i32 %spec.select.i.i403, ptr %i.lo, align 4, !tbaa !188
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !33
  %i.lt = sext i32 %spec.select.i.i403 to i64
  %i.lu = load i64, ptr %i.ll, align 8, !tbaa !32
  %i.lv = mul i64 %i.lu, %i.lt
  %i.lw = call ptr @realloc(ptr noundef %i.ls, i64 noundef %i.lv) #26 ; 2 uses
  store ptr %i.lw, ptr %i.lr, align 8, !tbaa !33
  %.pre8.i405 = load i32, ptr %i.lm, align 8, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i406
  %i.lx = phi i32 [ %i.ln, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i406 ], [ %.pre8.i405, %bb.ag ]
  %i.ly = phi ptr [ %.pre.i408, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i406 ], [ %i.lw, %bb.ag ]
  %i.lz = sext i32 %i.lx to i64
  %i.ma = load i64, ptr %i.ll, align 8, !tbaa !32 ; 2 uses
  %i.mb = mul i64 %i.ma, %i.lz
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mc, ptr nonnull readonly align 4 %11, i64 %i.ma, i1 false)
  %i.md = load i32, ptr %i.lm, align 8, !tbaa !31
  %i.me = add nsw i32 %i.md, 1
  store i32 %i.me, ptr %i.lm, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ac, %bb.ah, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond564.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond564.not, label %._crit_edge, label %bb.i, !llvm.loop !160

.preheader473:                                    ; preds = %bb.ak
  %i.mf = icmp sgt i32 %.promoted611, 0           ; 2 uses
  br i1 %i.mf, label %.lr.ph536, label %.lr.ph544.preheader

.lr.ph536:                                        ; preds = %.preheader473
  %i.mg = getelementptr i8, ptr %i.bf, i64 16
  %.val347 = load ptr, ptr %i.mg, align 8, !tbaa !33
  %i.mh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.trip.count584 = zext nneg i32 %.promoted611 to i64
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph529, %bb.ak
  %.pre.i418615 = phi ptr [ null, %.lr.ph529 ], [ %.pre.i418616, %bb.ak ] ; 2 uses
  %i.ml = phi ptr [ null, %.lr.ph529 ], [ %i.mp, %bb.ak ] ; 2 uses
  %.promoted524 = phi i32 [ 0, %.lr.ph529 ], [ %.promoted524613, %bb.ak ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph529 ], [ %.promoted611, %bb.ak ] ; 2 uses
  %indvars.iv573 = phi i64 [ 0, %.lr.ph529 ], [ %indvars.iv.next574, %bb.ak ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv573
  %.0263517 = load ptr, ptr %i.mm, align 8, !tbaa !180 ; 2 uses
  %.not319518 = icmp eq ptr %.0263517, null
  br i1 %.not319518, label %bb.ak, label %.lr.ph521

.lr.ph521:                                        ; preds = %bb.aj
  %i.mn = sext i32 %.promoted to i64
  br label %bb.al

._crit_edge522:                                   ; preds = %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416
  %i.mo = trunc nsw i64 %indvars.iv.next571 to i32 ; 2 uses
  store i32 %i.mo, ptr %i.bh, align 8, !tbaa !31
  store i32 %spec.select.i.i413.lcssa525, ptr %i.bi, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge522, %bb.aj
  %.pre.i418616 = phi ptr [ %.pre.i418617, %._crit_edge522 ], [ %.pre.i418615, %bb.aj ]
  %i.mp = phi ptr [ %.pre.i418617, %._crit_edge522 ], [ %i.ml, %bb.aj ]
  %.promoted524613 = phi i32 [ %spec.select.i.i413.lcssa525, %._crit_edge522 ], [ %.promoted524, %bb.aj ]
  %.promoted611 = phi i32 [ %i.mo, %._crit_edge522 ], [ %.promoted, %bb.aj ] ; 4 uses
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.preheader473, label %bb.aj, !llvm.loop !161

bb.al:                                            ; preds = %.lr.ph521, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416
  %.pre.i418 = phi ptr [ %.pre.i418615, %.lr.ph521 ], [ %.pre.i418617, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416 ]
  %i.mq = phi ptr [ %i.ml, %.lr.ph521 ], [ %.pre.i418617, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416 ]
  %indvars.iv570 = phi i64 [ %i.mn, %.lr.ph521 ], [ %indvars.iv.next571, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416 ] ; 4 uses
  %spec.select.i.i413.lcssa526 = phi i32 [ %.promoted524, %.lr.ph521 ], [ %spec.select.i.i413.lcssa525, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416 ] ; 3 uses
  %.0263519 = phi ptr [ %.0263517, %.lr.ph521 ], [ %.0263, %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0263519, i64 8
  %i.ms = sext i32 %spec.select.i.i413.lcssa526 to i64
  %.not.i.not.i410 = icmp slt i64 %indvars.iv570, %i.ms
  br i1 %.not.i.not.i410, label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416, label %.lr.ph.i.i411

.lr.ph.i.i411:                                    ; preds = %bb.al, %.lr.ph.i.i411
  %spec.select1011.i.i412 = phi i32 [ %spec.select.i.i413, %.lr.ph.i.i411 ], [ %spec.select.i.i413.lcssa526, %bb.al ]
  %i.mt = call i32 @llvm.smax.i32(i32 %spec.select1011.i.i412, i32 4)
  %spec.select.i.i413 = shl nuw i32 %i.mt, 1      ; 3 uses
  %i.mu = sext i32 %spec.select.i.i413 to i64     ; 2 uses
  %.not.i414 = icmp slt i64 %indvars.iv570, %i.mu
  br i1 %.not.i414, label %bb.am, label %.lr.ph.i.i411, !llvm.loop !156

bb.am:                                            ; preds = %.lr.ph.i.i411
  %i.mv = shl nsw i64 %i.mu, 3
  %i.mw = call ptr @realloc(ptr noundef %i.mq, i64 noundef %i.mv) #26 ; 2 uses
  store ptr %i.mw, ptr %i.bj, align 8, !tbaa !33
  br label %._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416

._ZN2cv5arucoL23_zarray_ensure_capacityEPNS0_6zarrayEi.exit_crit_edge.i416: ; preds = %bb.al, %bb.am
  %.pre.i418617 = phi ptr [ %i.mw, %bb.am ], [ %.pre.i418, %bb.al ] ; 5 uses
  %spec.select.i.i413.lcssa525 = phi i32 [ %spec.select.i.i413, %bb.am ], [ %spec.select.i.i413.lcssa526, %bb.al ] ; 3 uses
  %i.mx = shl nsw i64 %indvars.iv570, 3
  %i.my = getelementptr inbounds nuw i8, ptr %.pre.i418617, i64 %i.mx
  %i.mz = load i64, ptr %i.mr, align 1
  store i64 %i.mz, ptr %i.my, align 1
  %indvars.iv.next571 = add nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0263519, i64 16
  %.0263 = load ptr, ptr %i.na, align 8, !tbaa !180 ; 2 uses
  %.not319 = icmp eq ptr %.0263, null
  br i1 %.not319, label %._crit_edge522, label %bb.al, !llvm.loop !162

.lr.ph544.preheader:                              ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %.preheader473
  %wide.trip.count589 = zext nneg i32 %i.ac to i64
  br label %.lr.ph544

bb.an:                                            ; preds = %.lr.ph536, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit
  %indvars.iv581 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next582, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit ] ; 2 uses
  %i.nb = shl nuw nsw i64 %indvars.iv581, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.nb
  %i.nd = load i64, ptr %i.nc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.0.460.cast = inttoptr i64 %i.nd to ptr        ; 3 uses
  %i.ne = getelementptr i8, ptr %.0.460.cast, i64 8 ; 2 uses
  %.val530 = load i32, ptr %i.ne, align 8, !tbaa !31
  %i.nf = icmp sgt i32 %.val530, 0
  br i1 %i.nf, label %.lr.ph533, label %._crit_edge534

.lr.ph533:                                        ; preds = %bb.an
  %i.ng = getelementptr i8, ptr %.0.460.cast, i64 16
  br label %bb.ar

end_hunk_1
