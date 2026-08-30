Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPiecewisePenalty?download=true
inline.NumInlined: 211
inline.NumDeleted: 70
begin_hunk_0_@_ZN5Ipopt16PiecewisePenalty10AcceptableEdd:bb.a
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %.not = icmp sgt i32 %i.k, %i.i
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !21
  %i.n = load double, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.m)
  %i.r = fsub double %i.q, %1
  %i.s = fneg double %i.n
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %2, double %i.r)
  %i.u = fcmp ult double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !21
  %i.y = load double, ptr %i.v, align 8, !tbaa !23 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.y, double %i.aa, double %i.x)
  %i.ac = fsub double %i.ab, %1
  %i.ad = fneg double %i.y
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %2, double %i.ac)
  %i.af = fcmp ugt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !21
  %i.ai = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24 ; 3 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = fsub double %i.al, %1
  %i.an = fneg double %i.ai
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %2, double %i.am) ; 2 uses
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  %i.aq = fcmp ugt double %2, %i.ak
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ar = fcmp ult double %i.ao, 0.000000e+00
  %i.as = fcmp ult double %2, %i.ak
  %or.cond104 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.au = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = load double, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ay, double %i.av)
  %i.ba = fsub double %i.az, %1
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %2, double %i.ba)
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.061.0111 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.not105112 = icmp eq ptr %.sroa.061.0111, %i.c
  br i1 %.not105112, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre = load double, ptr %.sroa.061.0111, align 8, !tbaa !23
  %i.be = insertelement <2 x double> poison, double %2, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x double> poison, double %1, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn113, i64 24
  %.not105 = icmp eq ptr %i.bt, %i.c
  %i.bj = extractelement <2 x double> %i.bz, i64 0
  br i1 %.not105, label %.loopexit, label %.lr.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.bk = phi double [ %i.bj, %bb.h ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.pn113 = phi ptr [ %i.bi, %bb.h ], [ %i.d, %.lr.ph.preheader ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn113, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn113, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !24
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bo, double %i.bm)
  %i.bq = fsub double %i.bp, %1
  %i.br = fneg double %i.bk
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %2, double %i.bq)
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn113, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn113, i64 64
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn113, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fcmp ult double %i.bs, 0.000000e+00
  %i.bz = load <2 x double>, ptr %i.bt, align 8, !tbaa !27 ; 4 uses
  %i.ca = load <2 x double>, ptr %.pn113, align 8, !tbaa !27 ; 2 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.cc = insertelement <2 x double> %i.cb, double %i.bv, i64 0
  %i.cd = insertelement <2 x double> %i.bz, double %i.bx, i64 1
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cd, <2 x double> %i.ce)
  %i.cg = fsub <2 x double> %i.cf, %i.bh
  %i.ch = shufflevector <2 x double> %i.bz, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fneg <2 x double> %i.ch
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.bf, <2 x double> %i.cg)
  %i.ck = fcmp ugt <2 x double> %i.cj, zeroinitializer ; 2 uses
  %i.cl = extractelement <2 x i1> %i.ck, i64 1
  %or.cond.not56 = select i1 %i.cl, i1 true, i1 %i.by
  %i.cm = extractelement <2 x i1> %i.ck, i64 0
  %or.cond4.not = select i1 %or.cond.not56, i1 true, i1 %i.cm
  br i1 %or.cond4.not, label %bb.h, label %.critedge

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.a
  %.not106115.not = icmp eq ptr %i.d, %i.c
  br i1 %.not106115.not, label %.critedge108, label %.lr.ph118

bb.i:                                             ; preds = %.lr.ph118
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.061.1116, i64 24 ; 2 uses
  %.not106.not = icmp eq ptr %i.cn, %i.c
  br i1 %.not106.not, label %.critedge108, label %.lr.ph118, !llvm.loop !28

.lr.ph118:                                        ; preds = %.loopexit, %bb.i
  %.sroa.061.1116 = phi ptr [ %i.cn, %bb.i ], [ %i.d, %.loopexit ] ; 4 uses
  %i.co = load double, ptr %.sroa.061.1116, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.061.1116, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = fsub double %2, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cr, double %1)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.061.1116, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !21
  %i.cv = fcmp olt double %i.cs, %i.cu
  br i1 %i.cv, label %.critedge, label %bb.i

.critedge108:                                     ; preds = %bb.i, %.loopexit
  %i.cw = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !24
  %i.cy = fcmp olt double %2, %i.cx
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph118, %.critedge108, %bb.d, %bb.f, %bb.c
  %.3 = phi i1 [ false, %bb.f ], [ %i.cy, %.critedge108 ], [ false, %bb.d ], [ false, %bb.c ], [ true, %.lr.ph118 ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN5Ipopt16PiecewisePenalty11BiggestBarrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.g = load double, ptr %i.f, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ -1.000000e+20, %bb.a ], [ %i.g, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt16PiecewisePenalty11UpdateEntryEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i, !prof !30

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #10
  unreachable

_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.pre172.a = load ptr, ptr %i.b, align 8, !tbaa !29 ; 2 uses
  %.pre175 = ptrtoint ptr %.pre172.a to i64
  %.pre176 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi177 = phi i64 [ %.pre176, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre175, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.k = phi ptr [ %.pre172.a, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 10 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 9 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi177          ; 6 uses
  %i.o = icmp sgt i64 %i.n, 24
  br i1 %i.o, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 24
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !32
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.n ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit
  store ptr %i.l, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit, %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %i.k, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit ], [ %i.l, %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -24 ; 2 uses
  %.not168169 = icmp slt i64 %i.n, 24
  br i1 %.not168169, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit
  %i.t = load double, ptr %i.m, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !24
  %i.w = fsub double %2, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !21
  %i.aa = fsub double %i.x, %i.z
  %i.ab = icmp ne i64 %i.n, 24
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 -48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126
  %i.ae = phi ptr [ %i.r, %.lr.ph ], [ %i.gz, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 2 uses
  %i.af = phi ptr [ %i.l, %.lr.ph ], [ %.pre174, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ag = phi ptr [ %i.l, %.lr.ph ], [ %i.ha, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ah = phi ptr [ %i.l, %.lr.ph ], [ %i.hb, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ai = phi ptr [ %i.l, %.lr.ph ], [ %i.hc, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.aj = phi ptr [ %i.r, %.lr.ph ], [ %i.hd, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 10 uses
  %i.ak = phi ptr [ %i.l, %.lr.ph ], [ %i.he, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 5 uses
  %.0171 = phi double [ %i.aa, %.lr.ph ], [ %i.au, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %.sroa.0137.0170 = phi ptr [ %i.m, %.lr.ph ], [ %i.hf, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 13 uses
  %i.al = icmp ule ptr %.sroa.0137.0170, %i.ac
  %or.cond167 = select i1 %i.ab, i1 %i.al, i1 false
  br i1 %or.cond167, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24
  %i.aq = fsub double %2, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.an, double %i.aq, double %1)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h
  %.sink211 = phi i64 [ 32, %bb.h ], [ 16, %bb.g ]
  %.sink = phi double [ %i.ar, %bb.h ], [ %2, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 %.sink211
  %i.at = load double, ptr %i.as, align 8, !tbaa !27
  %i.au = fsub double %.sink, %i.at               ; 4 uses
  %i.av = fcmp uge double %.0171, 0.000000e+00    ; 2 uses
  %i.aw = fcmp ult double %i.au, 0.000000e+00     ; 2 uses
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ax = icmp eq ptr %i.ak, %i.aj
  br i1 %i.ax, label %bb.j, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.not.i.i49 = icmp eq ptr %i.aj, %i.ay
  br i1 %.not.i.i49, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ba = ptrtoint ptr %i.aj to i64
  %i.bb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 10 uses

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx7.i, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 4 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !20
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !19
  store ptr %i.bc, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit: ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i86, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i101, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i116
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit.split-lp, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.g) #12
  resume { ptr, i32 } %lpad.phi

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit:    ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k, %bb.i
  %i.bg = phi ptr [ %i.bc, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.az, %bb.k ], [ %i.ae, %bb.i ]
  %i.bh = phi ptr [ %i.bb, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.af, %bb.k ], [ %i.af, %bb.i ] ; 2 uses
  %i.bi = phi ptr [ %i.bb, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ag, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  %i.bj = phi ptr [ %i.bb, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ah, %bb.k ], [ %i.ah, %bb.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bb, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ai, %bb.k ], [ %i.ai, %bb.i ] ; 8 uses
  %i.bl = phi ptr [ %i.bc, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.az, %bb.k ], [ %i.aj, %bb.i ] ; 7 uses
  %i.bm = phi ptr [ %i.bb, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ak, %bb.k ], [ %i.ak, %bb.i ]
  %i.bn = fcmp ogt double %i.au, 0.000000e+00
  br i1 %i.bn, label %bb.m, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66

bb.m:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 8
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !27 ; 4 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = fsub double %i.bq, %1
  %i.bs = extractelement <2 x double> %i.bp, i64 1
  %i.bt = fsub double %2, %i.bs
  %i.bu = fdiv double %i.br, %i.bt
  %i.bv = icmp eq ptr %i.bk, %i.bl
  %..i52 = select i1 %i.bv, double 0.000000e+00, double %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.not.i.i53 = icmp eq ptr %i.bl, %i.bw
  br i1 %.not.i.i53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %..i52, ptr %i.bl, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <2 x double> %i.bp, ptr %.sroa.5.0..sroa_idx.i54, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 3 uses
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66

bb.o:                                             ; preds = %bb.m
  %i.by = ptrtoint ptr %i.bl to i64
  %i.bz = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %.invoke, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56

.invoke:                                          ; preds = %bb.ad, %bb.y, %bb.u, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.cont unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56: ; preds = %bb.o
  %i.cc = sdiv exact i64 %i.ca, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i57, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 384307168202282325)
  %i.cg = select i1 %i.ce, i64 384307168202282325, i64 %i.cf ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.ch = mul nuw nsw i64 %i.cg, 24
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #11
          to label %.noexc65 unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 9 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 3 uses
  store double %..i52, ptr %i.cj, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i59 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <2 x double> %i.bp, ptr %.sroa.5.0..sroa_idx5.i59, align 8, !tbaa !27
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.p, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i61

bb.p:                                             ; preds = %.noexc65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.bk, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i61

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i61: ; preds = %bb.p, %.noexc65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 3 uses
  %.not.i17.i.i.i62 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i62, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i61
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.co) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63: ; preds = %bb.q, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i61
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !20
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cp, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66:  ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63, %bb.n, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit, %.critedge
  %i.cq = phi ptr [ %i.cl, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bx, %bb.n ], [ %i.bg, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.ae, %.critedge ]
  %i.cr = phi ptr [ %i.ci, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bh, %bb.n ], [ %i.bh, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.af, %.critedge ] ; 3 uses
  %i.cs = phi ptr [ %i.ci, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bi, %bb.n ], [ %i.bi, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.ag, %.critedge ] ; 3 uses
  %i.ct = phi ptr [ %i.ci, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bj, %bb.n ], [ %i.bj, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.ah, %.critedge ] ; 3 uses
  %i.cu = phi ptr [ %i.ci, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bk, %bb.n ], [ %i.bk, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.ai, %.critedge ] ; 6 uses
  %i.cv = phi ptr [ %i.cl, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bx, %bb.n ], [ %i.bl, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.aj, %.critedge ] ; 8 uses
  %i.cw = phi ptr [ %i.ci, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ], [ %i.bk, %bb.n ], [ %i.bm, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit ], [ %i.ak, %.critedge ]
  %i.cx = fcmp oge double %.0171, 0.000000e+00    ; 2 uses
  %i.cy = fcmp olt double %i.au, 0.000000e+00     ; 2 uses
  %or.cond43 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond43, label %bb.r, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96

bb.r:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66
  %i.cz = fcmp ogt double %.0171, 0.000000e+00
  %.pre173 = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 3 uses
  br i1 %i.cz, label %bb.s, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81

bb.s:                                             ; preds = %bb.r
  %i.da = load double, ptr %.sroa.0137.0170, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 8
  %i.dc = load <2 x double>, ptr %i.db, align 8, !tbaa !27 ; 2 uses
  %i.dd = icmp eq ptr %i.cu, %i.cv
  %..i67 = select i1 %i.dd, double 0.000000e+00, double %i.da ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.cv, %.pre173
  br i1 %.not.i.i68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store double %..i67, ptr %i.cv, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store <2 x double> %i.dc, ptr %.sroa.5.0..sroa_idx.i69, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  store ptr %i.de, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81

bb.u:                                             ; preds = %bb.s
  %i.df = ptrtoint ptr %i.cv to i64
  %i.dg = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %.invoke, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71: ; preds = %bb.u
  %i.dj = sdiv exact i64 %i.dh, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i72 = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i72, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 384307168202282325)
  %i.dn = select i1 %i.dl, i64 384307168202282325, i64 %i.dm ; 3 uses
  %.not.i.i.i.i73 = icmp ne i64 %i.dn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.do = mul nuw nsw i64 %i.dn, 24
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #11
          to label %.noexc80 unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 7 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 3 uses
  store double %..i67, ptr %i.dq, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i74 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x double> %i.dc, ptr %.sroa.5.0..sroa_idx5.i74, align 8, !tbaa !27
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.v, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i76

bb.v:                                             ; preds = %.noexc80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.cu, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i76

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i76: ; preds = %bb.v, %.noexc80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %.not.i17.i.i.i77 = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i.i77, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i76
  %i.dt = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dv) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78: ; preds = %bb.w, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i76
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !20
  store ptr %i.ds, ptr %i.b, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dn ; 2 uses
  store ptr %i.dw, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81:  ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78, %bb.t, %bb.r
  %i.dx = phi ptr [ %i.dp, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78 ], [ %i.cr, %bb.t ], [ %i.cr, %bb.r ]
  %i.dy = phi ptr [ %i.dp, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78 ], [ %i.cs, %bb.t ], [ %i.cs, %bb.r ]
  %i.dz = phi ptr [ %i.dw, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78 ], [ %.pre173, %bb.t ], [ %.pre173, %bb.r ] ; 2 uses
  %i.ea = phi ptr [ %i.ds, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78 ], [ %i.de, %bb.t ], [ %i.cv, %bb.r ] ; 6 uses
  %i.eb = phi ptr [ %i.dp, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i78 ], [ %i.ct, %bb.t ], [ %i.ct, %bb.r ] ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !21
  %i.ee = fsub double %i.ed, %1
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24
  %i.eh = fsub double %2, %i.eg
  %i.ei = fdiv double %i.ee, %i.eh
  %i.ej = icmp eq ptr %i.eb, %i.ea
  %..i82 = select i1 %i.ej, double 0.000000e+00, double %i.ei ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.i83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81
  store double %..i82, ptr %i.ea, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx.i84, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx.i85, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 3 uses
  store ptr %i.ek, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96

bb.y:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit81
  %i.el = ptrtoint ptr %i.dz to i64
  %i.em = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 5 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775800
  br i1 %i.eo, label %.invoke, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i86

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.y
  %i.ep = sdiv exact i64 %i.en, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i87 = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 384307168202282325)
  %i.et = select i1 %i.er, i64 384307168202282325, i64 %i.es ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.et, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.eu = mul nuw nsw i64 %i.et, 24
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #11
          to label %.noexc95 unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 9 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 4 uses
  store double %..i82, ptr %i.ew, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i89 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx5.i89, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx7.i90 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx7.i90, align 8, !tbaa !27
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.z, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91

bb.z:                                             ; preds = %.noexc95
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr align 8 %i.eb, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91: ; preds = %bb.z, %.noexc95
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 3 uses
  %.not.i17.i.i.i92 = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i92, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91
  %i.ez = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.fb) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93: ; preds = %bb.aa, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i91
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !20
  store ptr %i.ey, ptr %i.b, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fc, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96:  ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93, %bb.x, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66
  %i.fd = phi ptr [ %i.ey, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.ek, %bb.x ], [ %i.cq, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ]
  %i.fe = phi ptr [ %i.ev, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.dx, %bb.x ], [ %i.cr, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ] ; 2 uses
  %i.ff = phi ptr [ %i.ev, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.dy, %bb.x ], [ %i.cs, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ] ; 10 uses
  %i.fg = phi ptr [ %i.ev, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.eb, %bb.x ], [ %i.ct, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ]
  %i.fh = phi ptr [ %i.ev, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.eb, %bb.x ], [ %i.cu, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ]
  %i.fi = phi ptr [ %i.ey, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.ek, %bb.x ], [ %i.cv, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ] ; 7 uses
  %i.fj = phi ptr [ %i.ev, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ], [ %i.eb, %bb.x ], [ %i.cw, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66 ]
  %.not44 = xor i1 %i.cx, true
  %or.cond45 = select i1 %.not44, i1 true, i1 %i.aw
  br i1 %or.cond45, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96
  %i.fk = load double, ptr %.sroa.0137.0170, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 8
  %i.fm = load <2 x double>, ptr %i.fl, align 8, !tbaa !27 ; 2 uses
  %i.fn = icmp eq ptr %i.ff, %i.fi
  %..i97 = select i1 %i.fn, double 0.000000e+00, double %i.fk ; 2 uses
  %i.fo = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.not.i.i98 = icmp eq ptr %i.fi, %i.fo
  br i1 %.not.i.i98, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store double %..i97, ptr %i.fi, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store <2 x double> %i.fm, ptr %.sroa.5.0..sroa_idx.i99, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 3 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111

bb.ad:                                            ; preds = %bb.ab
  %i.fq = ptrtoint ptr %i.fi to i64
  %i.fr = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 5 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %.invoke, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i101

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i101: ; preds = %bb.ad
  %i.fu = sdiv exact i64 %i.fs, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i102 = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 1)
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i102, %i.fu ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  %i.fx = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 384307168202282325)
  %i.fy = select i1 %i.fw, i64 384307168202282325, i64 %i.fx ; 3 uses
  %.not.i.i.i.i103 = icmp ne i64 %i.fy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.fz = mul nuw nsw i64 %i.fy, 24
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #11
          to label %.noexc110 unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 9 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i101
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.fs ; 3 uses
  store double %..i97, ptr %i.gb, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i104 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store <2 x double> %i.fm, ptr %.sroa.5.0..sroa_idx5.i104, align 8, !tbaa !27
  %i.gc = icmp sgt i64 %i.fs, 0
  br i1 %i.gc, label %bb.ae, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i106

bb.ae:                                            ; preds = %.noexc110
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr align 8 %i.ff, i64 %i.fs, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i106

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i106: ; preds = %bb.ae, %.noexc110
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 24 ; 3 uses
  %.not.i17.i.i.i107 = icmp eq ptr %i.ff, null
  br i1 %.not.i17.i.i.i107, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i106
  %i.ge = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.gg) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108: ; preds = %bb.af, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i106
  store ptr %i.ga, ptr %i.a, align 8, !tbaa !20
  store ptr %i.gd, ptr %i.b, align 8, !tbaa !19
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.gh, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108, %bb.ac, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96
  %i.gi = phi ptr [ %i.gd, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.fp, %bb.ac ], [ %i.fd, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ] ; 11 uses
  %i.gj = phi ptr [ %i.ga, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.fe, %bb.ac ], [ %i.fe, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ] ; 13 uses
  %i.gk = phi ptr [ %i.ga, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.ff, %bb.ac ], [ %i.ff, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ]
  %i.gl = phi ptr [ %i.ga, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.ff, %bb.ac ], [ %i.fg, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ]
  %i.gm = phi ptr [ %i.ga, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.ff, %bb.ac ], [ %i.fh, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ]
  %i.gn = phi ptr [ %i.gd, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.fp, %bb.ac ], [ %i.fi, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ]
  %i.go = phi ptr [ %i.ga, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i108 ], [ %i.ff, %bb.ac ], [ %i.fj, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit96 ]
  %i.gp = icmp ne ptr %.sroa.0137.0170, %i.s
  %brmerge = or i1 %i.gp, %i.av
  %brmerge.not = xor i1 %brmerge, true
  %or.cond48 = select i1 %brmerge.not, i1 %i.cy, i1 false
  br i1 %or.cond48, label %bb.ag, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126

bb.ag:                                            ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111
  %i.gq = icmp eq ptr %i.gj, %i.gi
  br i1 %i.gq, label %bb.ah, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126

bb.ah:                                            ; preds = %bb.ag
  %i.gr = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.not.i.i113 = icmp eq ptr %i.gi, %i.gr
  br i1 %.not.i.i113, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i116, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store double 0.000000e+00, ptr %i.gi, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx.i114, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx.i115, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 3 uses
  store ptr %i.gs, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.ah
  %i.gt = ptrtoint ptr %i.gi to i64
  %i.gu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i121 unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 10 uses

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i121: ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i116
  store double 0.000000e+00, ptr %i.gu, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i119 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx5.i119, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx7.i120 = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx7.i120, align 8, !tbaa !27
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 4 uses
  %.not.i17.i.i.i122 = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i122, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i121
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gy) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123: ; preds = %bb.aj, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i121
  store ptr %i.gu, ptr %i.a, align 8, !tbaa !20
  store ptr %i.gv, ptr %i.b, align 8, !tbaa !19
  store ptr %i.gv, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126

_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123, %bb.ai, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111, %bb.ag
  %i.gz = phi ptr [ %i.gv, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gs, %bb.ai ], [ %i.gi, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gi, %bb.ag ] ; 2 uses
  %.pre174 = phi ptr [ %i.gu, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gj, %bb.ai ], [ %i.gj, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gj, %bb.ag ] ; 2 uses
  %i.ha = phi ptr [ %i.gu, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gj, %bb.ai ], [ %i.gk, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gj, %bb.ag ]
  %i.hb = phi ptr [ %i.gu, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gj, %bb.ai ], [ %i.gl, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gj, %bb.ag ]
  %i.hc = phi ptr [ %i.gu, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gj, %bb.ai ], [ %i.gm, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gj, %bb.ag ]
  %i.hd = phi ptr [ %i.gv, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gs, %bb.ai ], [ %i.gn, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gi, %bb.ag ]
  %i.he = phi ptr [ %i.gu, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i123 ], [ %i.gj, %bb.ai ], [ %i.go, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit111 ], [ %i.gj, %bb.ag ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 24 ; 2 uses
  %.not168 = icmp ugt ptr %i.hf, %i.s
  br i1 %.not168, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128.loopexit, label %bb.g, !llvm.loop !34

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128.loopexit: ; preds = %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126
  %.pre178 = ptrtoint ptr %.pre174 to i64
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128.loopexit, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit
  %.pre-phi179 = phi i64 [ %.pre178, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128.loopexit ], [ %.pre-phi177, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit ]
  %i.hg = phi ptr [ %i.gz, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128.loopexit ], [ %i.r, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit ]
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %.pre-phi179
  %i.hj = sdiv exact i64 %i.hi, 24
  %i.hk = trunc i64 %i.hj to i32
  store i32 %i.hk, ptr %0, align 8, !tbaa !8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.g) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt16PiecewisePenalty5PrintERKNS_10JournalistE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str, i64 noundef %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = load ptr, ptr %1, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !17
  %i.s = load ptr, ptr %1, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.u(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.2, double noundef %i.r)
  %i.v = load ptr, ptr %1, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8)
  br i1 %i.y, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !29
  %.not15 = icmp eq ptr %i.z, %i.aa
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.017 = phi i32 [ %i.ag, %bb.d ], [ 0, %bb.b ]  ; 2 uses
  %.sroa.010.016 = phi ptr [ %i.as, %bb.d ], [ %i.z, %bb.b ] ; 4 uses
  %i.ab = urem i32 %.017, 10
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %1, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.af(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ag = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.4, i32 noundef %i.ag)
  %i.ak = load double, ptr %.sroa.010.016, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24
  %i.ap = load ptr, ptr %1, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.5, double noundef %i.ak, double noundef %i.am, double noundef %i.ao)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !29
  %.not = icmp eq ptr %i.as, %i.at
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !37

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN5Ipopt16PiecewisePenaltyE", !5, i64 0, !10, i64 8, !5, i64 16, !11, i64 24}
!10 = !{!"double", !6, i64 0}
!11 = !{!"_ZTSSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIN5Ipopt17PiecewisePenEntryESaIS1_EE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt17PiecewisePenEntryESaIS1_EE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt17PiecewisePenEntryESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN5Ipopt17PiecewisePenEntryE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!9, !10, i64 8}
!18 = !{!9, !5, i64 16}
!19 = !{!14, !15, i64 8}
!20 = !{!14, !15, i64 0}
!21 = !{!22, !10, i64 8}
!22 = !{!"_ZTSN5Ipopt17PiecewisePenEntryE", !10, i64 0, !10, i64 8, !10, i64 16}
!23 = !{!22, !10, i64 0}
!24 = !{!22, !10, i64 16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!10, !10, i64 0}
!28 = distinct !{!28, !26}
!29 = !{!15, !15, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !27}
!33 = !{!14, !15, i64 16}
!34 = distinct !{!34, !26}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !7, i64 0}
!37 = distinct !{!37, !26}
end_hunk_0
