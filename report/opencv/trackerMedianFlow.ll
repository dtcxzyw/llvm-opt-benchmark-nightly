Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerMedianFlow?download=true
inline.NumInlined: 1295
inline.NumDeleted: 547
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv8tracking4impl21TrackerMedianFlowImpl4voteERKSt6vectorINS_6Point_IfEESaIS5_EES9_RKNS_5Rect_IdEERS5_:bb.a
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.073135
  %i.gd = load <2 x float>, ptr %i.ga, align 4, !tbaa !92 ; 4 uses
  %i.ge = load <2 x float>, ptr %i.gc, align 4, !tbaa !92 ; 4 uses
  %min.iters.check205 = icmp eq i64 %.073135, 1
  br i1 %min.iters.check205, label %scalar.ph204.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph133
  %n.vec207 = and i64 %.073135, 9223372036854775806 ; 4 uses
  %i.gf = add i64 %.072136, %n.vec207             ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat209 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat211 = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splat213 = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = getelementptr [8 x i8], ptr %i.fx, i64 %.072136
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph206
  %index215 = phi i64 [ 0, %vector.ph206 ], [ %index.next222, %vector.body214 ] ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index215
  %wide.vec216 = load <4 x float>, ptr %i.gh, align 4, !tbaa !92 ; 2 uses
  %strided.vec217 = shufflevector <4 x float> %wide.vec216, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec218 = shufflevector <4 x float> %wide.vec216, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.gi = fsub <2 x float> %broadcast.splat, %strided.vec217
  %i.gj = fsub <2 x float> %broadcast.splat209, %strided.vec218
  %i.gk = fpext <2 x float> %i.gi to <2 x double> ; 2 uses
  %i.gl = fpext <2 x float> %i.gj to <2 x double> ; 2 uses
  %i.gm = fmul <2 x double> %i.gl, %i.gl
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gk, <2 x double> %i.gm)
  %i.go = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gn)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index215
  %wide.vec219 = load <4 x float>, ptr %i.gp, align 4, !tbaa !92 ; 2 uses
  %strided.vec220 = shufflevector <4 x float> %wide.vec219, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec221 = shufflevector <4 x float> %wide.vec219, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.gq = fsub <2 x float> %broadcast.splat211, %strided.vec220
  %i.gr = fsub <2 x float> %broadcast.splat213, %strided.vec221
  %i.gs = fpext <2 x float> %i.gq to <2 x double> ; 2 uses
  %i.gt = fpext <2 x float> %i.gr to <2 x double> ; 2 uses
  %i.gu = fmul <2 x double> %i.gt, %i.gt
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gs, <2 x double> %i.gu) ; 2 uses
  %i.gw = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gv)
  %i.gx = fcmp oeq <2 x double> %i.gv, zeroinitializer
  %i.gy = fdiv <2 x double> %i.go, %i.gw
  %i.gz = select <2 x i1> %i.gx, <2 x double> zeroinitializer, <2 x double> %i.gy
  %i.ha = getelementptr [8 x i8], ptr %i.gg, i64 %index215
  store <2 x double> %i.gz, ptr %i.ha, align 8, !tbaa !15
  %index.next222 = add nuw i64 %index215, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next222, %n.vec207
  br i1 %i.hb, label %middle.block223, label %vector.body214, !llvm.loop !177

middle.block223:                                  ; preds = %vector.body214
  %cmp.n = icmp eq i64 %.073135, %n.vec207
  br i1 %cmp.n, label %._crit_edge134, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %.lr.ph133, %middle.block223
  %.0132.ph = phi i64 [ 0, %.lr.ph133 ], [ %n.vec207, %middle.block223 ]
  %.1131.ph = phi i64 [ %.072136, %.lr.ph133 ], [ %i.gf, %middle.block223 ]
  %i.hc = shufflevector <2 x float> %i.gd, <2 x float> %i.ge, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x float> %i.gd, <2 x float> %i.ge, <2 x i32> <i32 1, i32 3>
  br label %scalar.ph204

._crit_edge137:                                   ; preds = %._crit_edge134, %.loopexit
  %i.he = invoke noundef double @_ZN2cv17tracking_internal23getMedianAndDoPartitionIdEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit113

._crit_edge134:                                   ; preds = %scalar.ph204, %middle.block223, %.preheader
  %.1.lcssa = phi i64 [ %.072136, %.preheader ], [ %i.gf, %middle.block223 ], [ %i.ib, %scalar.ph204 ]
  %i.hg = add nuw nsw i64 %.073135, 1             ; 2 uses
  %exitcond145.not = icmp eq i64 %i.hg, %i.m
  br i1 %exitcond145.not, label %._crit_edge137, label %.preheader, !llvm.loop !178

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %scalar.ph204
  %.0132 = phi i64 [ %i.ic, %scalar.ph204 ], [ %.0132.ph, %scalar.ph204.preheader ] ; 3 uses
  %.1131 = phi i64 [ %i.ib, %scalar.ph204 ], [ %.1131.ph, %scalar.ph204.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.0132
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0132
  %i.hj = load <2 x float>, ptr %i.hh, align 4, !tbaa !92 ; 2 uses
  %i.hk = load <2 x float>, ptr %i.hi, align 4, !tbaa !92 ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hm = fsub <2 x float> %i.hc, %i.hl
  %i.hn = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.ho = fsub <2 x float> %i.hd, %i.hn
  %i.hp = fpext <2 x float> %i.hm to <2 x double> ; 2 uses
  %i.hq = fpext <2 x float> %i.ho to <2 x double> ; 2 uses
  %i.hr = fmul <2 x double> %i.hq, %i.hq
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hp, <2 x double> %i.hr) ; 2 uses
  %i.ht = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hs) ; 2 uses
  %i.hu = extractelement <2 x double> %i.hs, i64 1
  %i.hv = fcmp oeq double %i.hu, 0.000000e+00
  %i.hw = extractelement <2 x double> %i.ht, i64 0
  %i.hx = extractelement <2 x double> %i.ht, i64 1
  %i.hy = fdiv double %i.hw, %i.hx
  %i.hz = select i1 %i.hv, double 0.000000e+00, double %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.1131
  store double %i.hz, ptr %i.ia, align 8, !tbaa !15
  %i.ib = add i64 %.1131, 1                       ; 2 uses
  %i.ic = add nuw nsw i64 %.0132, 1               ; 2 uses
  %exitcond143.not = icmp eq i64 %i.ic, %.073135
  br i1 %exitcond143.not, label %._crit_edge134, label %scalar.ph204, !llvm.loop !179

bb.j:                                             ; preds = %._crit_edge137
  %i.id = load double, ptr %i.a, align 8, !tbaa !193
  %i.ie = fmul double %i.he, %i.id                ; 2 uses
  %i.if = fmul double %i.ie, 5.000000e-01
  %i.ig = fsub double %i.cm, %i.if
  store double %i.ig, ptr %0, align 8, !tbaa !194
  %i.ih = load double, ptr %i.c, align 8, !tbaa !195
  %i.ii = fmul double %i.he, %i.ih                ; 2 uses
  %i.ij = fmul double %i.ii, 5.000000e-01
  %i.ik = fsub double %i.fn, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ik, ptr %i.il, align 8, !tbaa !196
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ie, ptr %i.im, align 8, !tbaa !193
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ii, ptr %i.in, align 8, !tbaa !195
  %i.io = load ptr, ptr %7, align 8, !tbaa !121   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !191
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.iu = load ptr, ptr %6, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !99
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.q

bb.m:                                             ; preds = %._crit_edge137
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %7, align 8, !tbaa !121   ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIdSaIdEED2Ev.exit113, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !191
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit113

_ZNSt6vectorIdSaIdEED2Ev.exit113:                 ; preds = %bb.n, %bb.m, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.i ], [ %i.ja, %bb.m ], [ %i.ja, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit113, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit113 ], [ %i.ea, %bb.e ]
  %i.jh = load ptr, ptr %6, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !99
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

_ZNSt6vectorIfSaIfEED2Ev.exit115:                 ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN2cv17tracking_internal23getMedianAndDoPartitionIfEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %i.h = and i64 %i.f, 4
  %i.i = icmp eq i64 %i.h, 0
  %1 = lshr i64 %i.g, 1                           ; 4 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds i8, ptr %2, i64 -4  ; 2 uses
  %4 = icmp eq ptr %i.c, %i.b
  %i.j = icmp eq ptr %3, %i.b
  %or.cond.i = select i1 %4, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr nonnull %3, ptr %i.b, i64 noundef %i.m)
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !98
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.b, %bb.b ], [ %.pre39, %bb.c ] ; 4 uses
  %i.o = phi ptr [ %i.c, %bb.b ], [ %.pre38, %bb.c ] ; 5 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %1 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load float, ptr %i.q, align 4, !tbaa !92
  %i.s = icmp eq ptr %i.o, %i.n
  %i.t = icmp eq ptr %i.p, %i.n
  %or.cond.i31 = or i1 %i.s, %i.t
  br i1 %or.cond.i31, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit32, label %bb.d

bb.d:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.o, ptr nonnull %i.p, ptr %i.n, i64 noundef %i.aa)
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit32

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit32: ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, %bb.d
  %i.ab = phi ptr [ %i.o, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit ], [ %.pre40, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %1
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !92
  %i.ae = fadd float %i.r, %i.ad
  %i.af = fmul float %i.ae, 5.000000e-01
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %5 = icmp eq ptr %i.c, %i.b
  %i.ag = icmp eq ptr %2, %i.b
  %or.cond.i33 = select i1 %5, i1 true, i1 %i.ag
  br i1 %or.cond.i33, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr %2, ptr %i.b, i64 noundef %i.aj)
  %.pre = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit34

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit34: ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %i.c, %bb.e ], [ %.pre, %bb.f ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %1
  %i.am = load float, ptr %i.al, align 4, !tbaa !92
  br label %bb.g

bb.g:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit34, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit32
  %.0 = phi float [ %i.af, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit32 ], [ %i.am, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit34 ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !113
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZN2cv17tracking_internal23getMedianAndDoPartitionIdEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !121    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = and i64 %i.f, 8
  %i.i = icmp eq i64 %i.h, 0
  %1 = lshr i64 %i.g, 1                           ; 4 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds i8, ptr %2, i64 -8  ; 2 uses
  %4 = icmp eq ptr %i.c, %i.b
  %i.j = icmp eq ptr %3, %i.b
  %or.cond.i = select i1 %4, i1 true, i1 %i.j
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr nonnull %3, ptr %i.b, i64 noundef %i.m)
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !121
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !197
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.b, %bb.b ], [ %.pre39, %bb.c ] ; 4 uses
  %i.o = phi ptr [ %i.c, %bb.b ], [ %.pre38, %bb.c ] ; 5 uses
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %1 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = icmp eq ptr %i.o, %i.n
  %i.t = icmp eq ptr %i.p, %i.n
  %or.cond.i31 = or i1 %i.s, %i.t
  br i1 %or.cond.i31, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32, label %bb.d

bb.d:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.o, ptr nonnull %i.p, ptr %i.n, i64 noundef %i.aa)
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !121
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32: ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, %bb.d
  %i.ab = phi ptr [ %i.o, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit ], [ %.pre40, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %1
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !15
  %i.ae = fadd double %i.r, %i.ad
  %i.af = fmul double %i.ae, 5.000000e-01
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %5 = icmp eq ptr %i.c, %i.b
  %i.ag = icmp eq ptr %2, %i.b
  %or.cond.i33 = select i1 %5, i1 true, i1 %i.ag
  br i1 %or.cond.i33, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.c, ptr %2, ptr %i.b, i64 noundef %i.aj)
  %.pre = load ptr, ptr %0, align 8, !tbaa !121
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34: ; preds = %bb.e, %bb.f
  %i.ak = phi ptr [ %i.c, %bb.e ], [ %.pre, %bb.f ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %1
  %i.am = load double, ptr %i.al, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32
  %.0 = phi double [ %i.af, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit32 ], [ %i.am, %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit34 ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN2cv17tracking_internal9getMedianIfEET_RKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.43", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !52

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  %.pre = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %.pre4 = load ptr, ptr %i.a, align 8, !tbaa !123
  %.pre5 = ptrtoint ptr %.pre4 to i64
  %.pre6 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi7 = phi i64 [ %.pre6, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre5, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !99
  %i.n = sub i64 %.pre-phi, %.pre-phi7            ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !124

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load float, ptr %i.i, align 4, !tbaa !92
  store float %i.q, ptr %i.j, align 4, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !100
  %i.s = invoke noundef float @_ZN2cv17tracking_internal23getMedianAndDoPartitionIfEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.t = load ptr, ptr %1, align 8, !tbaa !98     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret float %i.s

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !98     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIfSaIfEED2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit3

_ZNSt6vectorIfSaIfEED2Ev.exit3:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv8tracking4implL8getPatchENS_3MatENS_5Size_IiEENS_6Point_IfEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 %1, i64 %2, <2 x float> %3) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Rect_.75", align 4      ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %.sroa.522.0.extract.shift = lshr i64 %2, 32
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #25
  %i.a = fpext <2 x float> %3 to <2 x double>
  %.sroa.019.0.extract.trunc = trunc i64 %2 to i32 ; 5 uses
  %.sroa.522.0.extract.trunc = trunc nuw i64 %.sroa.522.0.extract.shift to i32 ; 4 uses
  %i.b = bitcast i64 %2 to <2 x i32>
  %i.c = sitofp <2 x i32> %i.b to <2 x double>
  %i.d = fmul nnan <2 x double> %i.c, splat (double 5.000000e-01) ; 2 uses
  %i.e = fsub <2 x double> %i.a, %i.d             ; 2 uses
  %i.f = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.e) ; 6 uses
  %i.g = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.h = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.g) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 %i.f, ptr %4, align 4, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !201  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !202  ; 3 uses
  %i.o = icmp slt i32 %.sroa.019.0.extract.trunc, 1
  %i.p = icmp slt i32 %.sroa.522.0.extract.trunc, 1
  %i.q = select i1 %i.o, i1 true, i1 %i.p
  br i1 %i.q, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.l, 1
  %i.s = icmp slt i32 %i.n, 1
  %i.t = select i1 %i.r, i1 true, i1 %i.s
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.f, 0                     ; 3 uses
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.f, i32 0) ; 2 uses
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.x = add nsw i32 %i.v, %.sroa.019.0.extract.trunc
  %i.y = icmp slt i32 %i.x, %i.w
  %or.cond28 = select i1 %i.u, i1 %i.y, i1 false
  br i1 %or.cond28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp slt i32 %i.h, 0
  br i1 %i.z, label %.cont52.i, label %.cont35.i

.cont52.i:                                        ; preds = %bb.d
  %i.aa = add nsw i32 %i.h, %.sroa.522.0.extract.trunc ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %.cont35.i

.cont35.i:                                        ; preds = %bb.d, %.cont52.i
  %i.ac = phi i32 [ %i.n, %.cont52.i ], [ %.sroa.522.0.extract.trunc, %bb.d ]
  %.neg49.pre-phi.i.i = phi i32 [ %i.aa, %.cont52.i ], [ %i.n, %bb.d ]
  %i.ad = phi i32 [ 0, %.cont52.i ], [ %i.h, %bb.d ] ; 2 uses
  %.v.v.i = select i1 %i.u, i32 %.sroa.019.0.extract.trunc, i32 %i.l
  %.v.i = sub i32 %i.v, %i.w
  %i.ae = add i32 %.v.i, %.v.v.i
  %i.af = select i1 %i.u, i32 %i.l, i32 %.sroa.019.0.extract.trunc
  %.sroa.speculated53.i.i = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 2 uses
  %i.ag = sub nsw i32 %.neg49.pre-phi.i.i, %i.ad
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ag) ; 2 uses
  %i.ah = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.ai = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.aj = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.cont35.i
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.cont35.i, %.cont52.i, %bb.b, %bb.a
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.w, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.ad, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.cont52.i ], [ 0, %bb.c ]
  %i.ak = icmp eq i32 %i.f, %.sroa.0.sroa.0.0.i
  %i.al = icmp eq i32 %i.h, %.sroa.0.sroa.9.0.i
  %or.cond = and i1 %i.ak, %i.al
  %i.am = icmp eq i32 %.sroa.14.sroa.0.0.i, %.sroa.019.0.extract.trunc
  %or.cond25 = and i1 %or.cond, %i.am
  %i.an = icmp eq i32 %.sroa.14.sroa.12.0.i, %.sroa.522.0.extract.trunc
  %or.cond26 = select i1 %or.cond25, i1 %i.an, i1 false
  br i1 %or.cond26, label %bb.g, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread

bb.g:                                             ; preds = %bb.f
end_hunk_0
