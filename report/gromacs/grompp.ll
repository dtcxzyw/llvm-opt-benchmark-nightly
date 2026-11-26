Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grompp?download=true
inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z10gmx_gromppiPPc:bb.a
  %.sroa.0250.0326.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceq, %.noexc156.i ] ; 15 uses
  %.sroa.0270.0289296323.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cem, %.noexc156.i ] ; 43 uses
  %.sroa.12276.0286299320.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cen, %.noexc156.i ] ; 3 uses
  %.sroa.0260.0302317.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceo, %.noexc156.i ] ; 36 uses
  %.sroa.13.0305314.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cep, %.noexc156.i ] ; 3 uses
  %.sroa.0241.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ces, %.noexc156.i ] ; 16 uses
  %.sroa.12.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ceu, %.noexc156.i ] ; 2 uses
  %i.cev = shl nuw nsw i32 %i.cee, 2
  %i.cew = mul nuw nsw i32 %i.cev, %i.cee         ; 2 uses
  %i.cex = zext nneg i32 %i.cew to i64            ; 3 uses
  %.not.i.i.i.i159.i = icmp eq i32 %i.cew, 0
  br i1 %.not.i.i.i.i159.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i, label %bb.sa

bb.sa:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %i.cey = shl nuw nsw i64 %i.cex, 3              ; 5 uses
  %i.cez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cey) #33
          to label %.noexc166.i unwind label %bb.sb ; 4 uses

.noexc166.i:                                      ; preds = %bb.sa
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cez, i8 0, i64 %i.cey, i1 false), !tbaa !353
  %i.cfa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cey) #33
          to label %.noexc176.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit.i ; 3 uses

.noexc176.i:                                      ; preds = %.noexc166.i
  %i.cfb = getelementptr inbounds nuw [8 x i8], ptr %i.cez, i64 %i.cex
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cfa, i8 0, i64 %i.cey, i1 false), !tbaa !353
  %i.cfc = getelementptr inbounds nuw [8 x i8], ptr %i.cfa, i64 %i.cex
  %i.cfd = ptrtoint ptr %i.cfc to i64
  %i.cfe = ptrtoint ptr %i.cfb to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i:       ; preds = %.noexc176.i, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i
  %.sroa.11237.0335.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfe, %.noexc176.i ]
  %.sroa.0232.0333.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cez, %.noexc176.i ] ; 7 uses
  %.sroa.0226.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfa, %.noexc176.i ] ; 7 uses
  %.sroa.11.0.i732 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit157.i ], [ %i.cfd, %.noexc176.i ]
  %i.cff = uitofp nneg i32 %i.cee to double       ; 2 uses
  %i.cfg = fdiv double 3.600000e+02, %i.cff       ; 32 uses
  %i.cfh = fmul double %i.cfg, %i.cff
  %i.cfi = fmul double %i.cfh, 5.000000e-01
  %i.cfj = fsub double -1.800000e+02, %i.cfi      ; 4 uses
  %i.cfk = icmp sgt i32 %i.cef, 0
  br i1 %i.cfk, label %.lr.ph400.i, label %._crit_edge401.i

.lr.ph400.i:                                      ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit177.i
  %i.cfl = lshr i32 %i.cee, 1                     ; 3 uses
  %i.cfm = sub nuw nsw i32 %i.cee, %i.cfl         ; 3 uses
  %i.cfn = add i32 %i.ceh, -1                     ; 2 uses
  %i.cfo = icmp samesign ugt i32 %i.cee, 1        ; 3 uses
  %i.cfp = sext i32 %i.cfn to i64                 ; 2 uses
  %wide.trip.count.i.i735 = zext i32 %i.cfn to i64 ; 8 uses
  %i.cfq = add i32 %i.ceh, -2                     ; 4 uses
  %i.cfr = zext i32 %i.cfq to i64                 ; 4 uses
  %i.cfs = add nuw nsw i32 %i.cfl, %i.cee
  %i.cft = fmul double %i.cfg, %i.cfg             ; 3 uses
  %i.cfu = fneg double %i.cfg                     ; 2 uses
  %i.cfv = getelementptr inbounds [8 x i8], ptr %.sroa.0260.0302317.i, i64 %i.cfp ; 2 uses
  %i.cfw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0260.0302317.i, i64 %wide.trip.count.i.i735 ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ceh, i32 1)
  %i.cfx = zext i32 %i.ceh to i64                 ; 4 uses
  %i.cfy = zext nneg i32 %i.cfl to i64            ; 4 uses
  %i.cfz = zext nneg i32 %i.cfs to i64            ; 2 uses
  %i.cga = zext nneg i32 %i.cee to i64
  %wide.trip.count428.i = zext nneg i32 %i.cef to i64
  %wide.trip.count409.i = zext nneg i32 %smax.i to i64 ; 8 uses
  %.reass.i734 = mul i32 %i.ceh, %i.cee
  %i.cgb = load ptr, ptr %i.cbs, align 8
  br i1 %.not.i.i.i.i.i730, label %._crit_edge401.i, label %.lr.ph.i736.preheader.preheader

.lr.ph.i736.preheader.preheader:                  ; preds = %.lr.ph400.i
  %i.cgc = shl nuw nsw i64 %i.cfr, 3
  %i.cgd = or disjoint i64 %i.cgc, 8              ; 2 uses
  %i.cge = shl nuw nsw i64 %i.cfx, 3
  %scevgep3262 = getelementptr i8, ptr %.sroa.0260.0302317.i, i64 %i.cgd ; 2 uses
  %min.iters.check3053 = icmp slt i32 %i.ceh, 4
  %n.vec3055 = and i64 %wide.trip.count409.i, 2147483644 ; 3 uses
  %broadcast.splatinsert3058 = insertelement <4 x i32> poison, i32 %i.cfm, i64 0
  %broadcast.splat3059 = shufflevector <4 x i32> %broadcast.splatinsert3058, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3060 = insertelement <4 x i32> poison, i32 %i.cee, i64 0
  %broadcast.splat3061 = shufflevector <4 x i32> %broadcast.splatinsert3060, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n3070 = icmp eq i64 %n.vec3055, %wide.trip.count409.i
  %i.cgf = getelementptr i8, ptr %.sroa.0232.0333.i, i64 %i.cgd
  %xtraiter = and i64 %wide.trip.count.i.i735, 7
  %i.cgg = icmp ult i32 %i.cfq, 7
  %i.cgh = insertelement <2 x double> <double poison, double 6.000000e+00>, double %i.cfg, i64 0 ; 2 uses
  %i.cgi = insertelement <2 x double> <double 6.000000e+00, double poison>, double %i.cfg, i64 1 ; 2 uses
  %min.iters.check3013 = icmp slt i32 %i.ceh, 4
  %n.vec3015 = and i64 %wide.trip.count409.i, 2147483644 ; 3 uses
  %broadcast.splatinsert3028 = insertelement <4 x i64> poison, i64 %i.cfx, i64 0
  %broadcast.splat3029 = shufflevector <4 x i64> %broadcast.splatinsert3028, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3030 = insertelement <4 x double> poison, double %i.cft, i64 0
  %broadcast.splat3031 = shufflevector <4 x double> %broadcast.splatinsert3030, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3032 = insertelement <4 x double> poison, double %i.cfg, i64 0
  %broadcast.splat3033 = shufflevector <4 x double> %broadcast.splatinsert3032, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n3050 = icmp eq i64 %n.vec3015, %wide.trip.count409.i
  %xtraiter3489 = and i64 %wide.trip.count.i.i735, 7
  %i.cgj = icmp ult i32 %i.cfq, 7
  %xtraiter3492 = and i64 %wide.trip.count.i.i735, 7
  %i.cgk = icmp ult i32 %i.cfq, 7
  br label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %.lr.ph.i736.preheader.preheader, %._crit_edge398.i.loopexit
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %._crit_edge398.i.loopexit ], [ 0, %.lr.ph.i736.preheader.preheader ] ; 3 uses
  %i.cgl = trunc nuw nsw i64 %indvars.iv425.i to i32
  %i.cgm = mul i32 %.reass.i734, %i.cgl           ; 2 uses
  br label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph.i736.preheader, %._crit_edge.i740
  %indvars.iv406.i = phi i64 [ %indvars.iv.next407.i, %._crit_edge.i740 ], [ 0, %.lr.ph.i736.preheader ] ; 2 uses
  %i.cgn = trunc nuw nsw i64 %indvars.iv406.i to i32 ; 2 uses
  %i.cgo = add i32 %i.cfm, %i.cgn
  %i.cgp = srem i32 %i.cgo, %i.cee
  %factor.op.mul.reass.i = mul i32 %i.ceh, %i.cgn
  %i.cgq = mul nsw i32 %i.cgp, %i.cee
  %i.cgr = add nsw i32 %i.cgq, %i.cgm             ; 2 uses
  %i.cgs = zext i32 %factor.op.mul.reass.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0226.0.i, i64 %i.cgs ; 2 uses
  br i1 %min.iters.check3053, label %scalar.ph3052.preheader, label %vector.ph3054

vector.ph3054:                                    ; preds = %.lr.ph.i736
  %broadcast.splatinsert3056 = insertelement <4 x i32> poison, i32 %i.cgr, i64 0
  %broadcast.splat3057 = shufflevector <4 x i32> %broadcast.splatinsert3056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body3062

vector.body3062:                                  ; preds = %vector.body3062, %vector.ph3054
  %index3063 = phi i64 [ 0, %vector.ph3054 ], [ %index.next3067, %vector.body3062 ] ; 2 uses
  %vec.ind3064 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3054 ], [ %vec.ind.next3068, %vector.body3062 ] ; 2 uses
  %i.cgt = add <4 x i32> %broadcast.splat3059, %vec.ind3064
  %i.cgu = srem <4 x i32> %i.cgt, %broadcast.splat3061
  %i.cgv = add nsw <4 x i32> %broadcast.splat3057, %i.cgu
  %i.cgw = sext <4 x i32> %i.cgv to <4 x i64>
  %wide.gep3065 = getelementptr inbounds [4 x i8], ptr %i.ceg, <4 x i64> %i.cgw
  %wide.masked.gather3066 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep3065, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !44
  %i.cgx = fpext <4 x float> %wide.masked.gather3066 to <4 x double>
  %i.cgy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index3063
  store <4 x double> %i.cgx, ptr %i.cgy, align 8, !tbaa !353
  %index.next3067 = add nuw i64 %index3063, 4     ; 2 uses
  %vec.ind.next3068 = add <4 x i32> %vec.ind3064, splat (i32 4)
  %i.cgz = icmp eq i64 %index.next3067, %n.vec3055
  br i1 %i.cgz, label %middle.block3069, label %vector.body3062, !llvm.loop !444

middle.block3069:                                 ; preds = %vector.body3062
  br i1 %cmp.n3070, label %._crit_edge.i740, label %scalar.ph3052.preheader

scalar.ph3052.preheader:                          ; preds = %.lr.ph.i736, %middle.block3069
  %indvars.iv.i737.ph = phi i64 [ 0, %.lr.ph.i736 ], [ %n.vec3055, %middle.block3069 ]
  br label %scalar.ph3052

scalar.ph3052:                                    ; preds = %scalar.ph3052.preheader, %scalar.ph3052
  %indvars.iv.i737 = phi i64 [ %indvars.iv.next.i738, %scalar.ph3052 ], [ %indvars.iv.i737.ph, %scalar.ph3052.preheader ] ; 3 uses
  %i.cha = trunc nuw nsw i64 %indvars.iv.i737 to i32
  %i.chb = add i32 %i.cfm, %i.cha
  %i.chc = srem i32 %i.chb, %i.cee
  %i.chd = add nsw i32 %i.cgr, %i.chc
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds [4 x i8], ptr %i.ceg, i64 %i.che
  %i.chg = load float, ptr %i.chf, align 4, !tbaa !44
  %i.chh = fpext float %i.chg to double
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i737
  store double %i.chh, ptr %gep.i, align 8, !tbaa !353
  %indvars.iv.next.i738 = add nuw nsw i64 %indvars.iv.i737, 1 ; 2 uses
  %exitcond.not.i739 = icmp eq i64 %indvars.iv.next.i738, %wide.trip.count409.i
  br i1 %exitcond.not.i739, label %._crit_edge.i740, label %scalar.ph3052, !llvm.loop !445

_ZNSt6vectorIdSaIdEED2Ev.exit223.thread.i:        ; preds = %.noexc749
  %i.chi = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

_ZNSt6vectorIdSaIdEED2Ev.exit221.thread.i:        ; preds = %.noexc136.i
  %i.chj = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

_ZNSt6vectorIdSaIdEED2Ev.exit219.thread.i:        ; preds = %.noexc146.i
  %i.chk = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

bb.sb:                                            ; preds = %bb.sa
  %i.chl = landingpad { ptr, i32 }
          cleanup
  br label %bb.sh

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %.noexc166.i
  %i.chm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cez, i64 noundef %i.cey) #31
  br label %bb.sh

._crit_edge.i740:                                 ; preds = %scalar.ph3052, %middle.block3069
  %indvars.iv.next407.i = add nuw nsw i64 %indvars.iv406.i, 1 ; 2 uses
  %exitcond410.not.i = icmp eq i64 %indvars.iv.next407.i, %wide.trip.count409.i
  br i1 %exitcond410.not.i, label %.lr.ph385.i, label %.lr.ph.i736, !llvm.loop !446

.lr.ph385.i:                                      ; preds = %._crit_edge.i740, %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i
  %indvars.iv411.i = phi i64 [ %indvars.iv.next412.i, %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i ], [ 0, %._crit_edge.i740 ] ; 3 uses
  %i.chn = mul i64 %i.cge, %indvars.iv411.i
  %scevgep = getelementptr i8, ptr %i.cgf, i64 %i.chn
  %i.cho = mul nuw nsw i64 %indvars.iv411.i, %i.cfx ; 2 uses
  %i.chp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0226.0.i, i64 %i.cho ; 4 uses
  %i.chq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0232.0333.i, i64 %i.cho ; 13 uses
  store double 0.000000e+00, ptr %i.chq, align 8, !tbaa !353
  store double 0.000000e+00, ptr %.sroa.0270.0289296323.i, align 8, !tbaa !353
  br i1 %i.cfo, label %.lr.ph.i.i743, label %.lr.ph40.preheader.i.i

.lr.ph.i.i743:                                    ; preds = %.lr.ph385.i, %.lr.ph.i.i743
  %i.chr = phi double [ %i.ciz, %.lr.ph.i.i743 ], [ 0.000000e+00, %.lr.ph385.i ]
  %i.chs = phi double [ %i.cil, %.lr.ph.i.i743 ], [ 0.000000e+00, %.lr.ph385.i ]
  %indvars.iv.i.i744 = phi i64 [ %indvars.iv.next.i.i745.1, %.lr.ph.i.i743 ], [ 1, %.lr.ph385.i ] ; 5 uses
  %i.cht = call double @llvm.fmuladd.f64(double %i.chs, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.chu = fdiv double -5.000000e-01, %i.cht      ; 2 uses
  %i.chv = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.i.i744
  store double %i.chu, ptr %i.chv, align 8, !tbaa !353
  %indvars.iv.next.i.i745 = add nuw nsw i64 %indvars.iv.i.i744, 1 ; 4 uses
  %i.chw = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %indvars.iv.next.i.i745
  %i.chx = load double, ptr %i.chw, align 8, !tbaa !353
  %i.chy = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %indvars.iv.i.i744 ; 2 uses
  %i.chz = load double, ptr %i.chy, align 8, !tbaa !353
  %i.cia = call double @llvm.fmuladd.f64(double %i.chz, double -2.000000e+00, double %i.chx)
  %i.cib = getelementptr i8, ptr %i.chy, i64 -8
  %i.cic = load double, ptr %i.cib, align 8, !tbaa !353
  %i.cid = fadd double %i.cia, %i.cic
  %i.cie = fdiv double %i.cid, %i.cfg
  %i.cif = fmul double %i.cie, 3.000000e+00
  %i.cig = fdiv double %i.cif, %i.cfg
  %i.cih = call double @llvm.fmuladd.f64(double %i.chr, double -5.000000e-01, double %i.cig)
  %i.cii = fdiv double %i.cih, %i.cht             ; 2 uses
  %i.cij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.i.i744
  store double %i.cii, ptr %i.cij, align 8, !tbaa !353
  %i.cik = call double @llvm.fmuladd.f64(double %i.chu, double 5.000000e-01, double 2.000000e+00) ; 2 uses
  %i.cil = fdiv double -5.000000e-01, %i.cik      ; 2 uses
  %i.cim = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next.i.i745
  store double %i.cil, ptr %i.cim, align 8, !tbaa !353
  %indvars.iv.next.i.i745.1 = add nuw nsw i64 %indvars.iv.i.i744, 2 ; 3 uses
  %i.cin = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %indvars.iv.next.i.i745.1
  %i.cio = load double, ptr %i.cin, align 8, !tbaa !353
  %i.cip = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %indvars.iv.next.i.i745 ; 2 uses
  %i.ciq = load double, ptr %i.cip, align 8, !tbaa !353
  %i.cir = call double @llvm.fmuladd.f64(double %i.ciq, double -2.000000e+00, double %i.cio)
  %i.cis = getelementptr i8, ptr %i.cip, i64 -8
  %i.cit = load double, ptr %i.cis, align 8, !tbaa !353
  %i.ciu = fadd double %i.cir, %i.cit
  %i.civ = fdiv double %i.ciu, %i.cfg
  %i.ciw = fmul double %i.civ, 3.000000e+00
  %i.cix = fdiv double %i.ciw, %i.cfg
  %i.ciy = call double @llvm.fmuladd.f64(double %i.cii, double -5.000000e-01, double %i.cix)
  %i.ciz = fdiv double %i.ciy, %i.cik             ; 2 uses
  %i.cja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next.i.i745
  store double %i.ciz, ptr %i.cja, align 8, !tbaa !353
  %exitcond.not.i.i746.1 = icmp eq i64 %indvars.iv.next.i.i745.1, %wide.trip.count.i.i735
  br i1 %exitcond.not.i.i746.1, label %.lr.ph40.preheader.i.i, label %.lr.ph.i.i743, !llvm.loop !447

.lr.ph40.preheader.i.i:                           ; preds = %.lr.ph.i.i743, %.lr.ph385.i
  %.sink434.i = phi i64 [ %i.cfp, %.lr.ph385.i ], [ %wide.trip.count.i.i735, %.lr.ph.i.i743 ]
  %i.cjb = getelementptr inbounds [8 x i8], ptr %i.chq, i64 %.sink434.i
  store double 0.000000e+00, ptr %i.cjb, align 8, !tbaa !353
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph40.i.i.prol

.lr.ph40.i.i.prol:                                ; preds = %.lr.ph40.i.i.prol, %.lr.ph40.preheader.i.i
  %store_forwarded.prol = phi double [ %load_initial, %.lr.ph40.preheader.i.i ], [ %i.cjg, %.lr.ph40.i.i.prol ]
  %indvars.iv43.i.i.prol = phi i64 [ %i.cfr, %.lr.ph40.preheader.i.i ], [ %indvars.iv.next44.i.i.prol, %.lr.ph40.i.i.prol ] ; 3 uses
  %prol.iter = phi i64 [ 0, %.lr.ph40.preheader.i.i ], [ %prol.iter.next, %.lr.ph40.i.i.prol ]
  %i.cjc = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv43.i.i.prol ; 2 uses
  %i.cjd = load double, ptr %i.cjc, align 8, !tbaa !353
  %i.cje = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv43.i.i.prol
  %i.cjf = load double, ptr %i.cje, align 8, !tbaa !353
  %i.cjg = call double @llvm.fmuladd.f64(double %i.cjd, double %store_forwarded.prol, double %i.cjf) ; 3 uses
  store double %i.cjg, ptr %i.cjc, align 8, !tbaa !353
  %indvars.iv.next44.i.i.prol = add nsw i64 %indvars.iv43.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph40.i.i.prol.loopexit, label %.lr.ph40.i.i.prol, !llvm.loop !448

.lr.ph40.i.i.prol.loopexit:                       ; preds = %.lr.ph40.i.i.prol
  br i1 %i.cgg, label %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i, label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %.lr.ph40.i.i.prol.loopexit, %.lr.ph40.i.i
  %store_forwarded = phi double [ %i.cku, %.lr.ph40.i.i ], [ %i.cjg, %.lr.ph40.i.i.prol.loopexit ]
  %indvars.iv43.i.i = phi i64 [ %indvars.iv.next44.i.i.7, %.lr.ph40.i.i ], [ %indvars.iv.next44.i.i.prol, %.lr.ph40.i.i.prol.loopexit ] ; 10 uses
  %i.cjh = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv43.i.i ; 2 uses
  %i.cji = load double, ptr %i.cjh, align 8, !tbaa !353
  %i.cjj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv43.i.i
  %i.cjk = load double, ptr %i.cjj, align 8, !tbaa !353
  %i.cjl = call double @llvm.fmuladd.f64(double %i.cji, double %store_forwarded, double %i.cjk) ; 2 uses
  store double %i.cjl, ptr %i.cjh, align 8, !tbaa !353
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.cjm = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i ; 2 uses
  %i.cjn = load double, ptr %i.cjm, align 8, !tbaa !353
  %i.cjo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i
  %i.cjp = load double, ptr %i.cjo, align 8, !tbaa !353
  %i.cjq = call double @llvm.fmuladd.f64(double %i.cjn, double %i.cjl, double %i.cjp) ; 2 uses
  store double %i.cjq, ptr %i.cjm, align 8, !tbaa !353
  %indvars.iv.next44.i.i.1 = add nsw i64 %indvars.iv43.i.i, -2 ; 2 uses
  %i.cjr = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.1 ; 2 uses
  %i.cjs = load double, ptr %i.cjr, align 8, !tbaa !353
  %i.cjt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.1
  %i.cju = load double, ptr %i.cjt, align 8, !tbaa !353
  %i.cjv = call double @llvm.fmuladd.f64(double %i.cjs, double %i.cjq, double %i.cju) ; 2 uses
  store double %i.cjv, ptr %i.cjr, align 8, !tbaa !353
  %indvars.iv.next44.i.i.2 = add nsw i64 %indvars.iv43.i.i, -3 ; 2 uses
  %i.cjw = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.2 ; 2 uses
  %i.cjx = load double, ptr %i.cjw, align 8, !tbaa !353
  %i.cjy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.2
  %i.cjz = load double, ptr %i.cjy, align 8, !tbaa !353
  %i.cka = call double @llvm.fmuladd.f64(double %i.cjx, double %i.cjv, double %i.cjz) ; 2 uses
  store double %i.cka, ptr %i.cjw, align 8, !tbaa !353
  %indvars.iv.next44.i.i.3 = add nsw i64 %indvars.iv43.i.i, -4 ; 2 uses
  %i.ckb = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.3 ; 2 uses
  %i.ckc = load double, ptr %i.ckb, align 8, !tbaa !353
  %i.ckd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.3
  %i.cke = load double, ptr %i.ckd, align 8, !tbaa !353
  %i.ckf = call double @llvm.fmuladd.f64(double %i.ckc, double %i.cka, double %i.cke) ; 2 uses
  store double %i.ckf, ptr %i.ckb, align 8, !tbaa !353
  %indvars.iv.next44.i.i.4 = add nsw i64 %indvars.iv43.i.i, -5 ; 2 uses
  %i.ckg = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.4 ; 2 uses
  %i.ckh = load double, ptr %i.ckg, align 8, !tbaa !353
  %i.cki = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.4
  %i.ckj = load double, ptr %i.cki, align 8, !tbaa !353
  %i.ckk = call double @llvm.fmuladd.f64(double %i.ckh, double %i.ckf, double %i.ckj) ; 2 uses
  store double %i.ckk, ptr %i.ckg, align 8, !tbaa !353
  %indvars.iv.next44.i.i.5 = add nsw i64 %indvars.iv43.i.i, -6 ; 2 uses
  %i.ckl = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.5 ; 2 uses
  %i.ckm = load double, ptr %i.ckl, align 8, !tbaa !353
  %i.ckn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.5
  %i.cko = load double, ptr %i.ckn, align 8, !tbaa !353
  %i.ckp = call double @llvm.fmuladd.f64(double %i.ckm, double %i.ckk, double %i.cko) ; 2 uses
  store double %i.ckp, ptr %i.ckl, align 8, !tbaa !353
  %indvars.iv.next44.i.i.6 = add nsw i64 %indvars.iv43.i.i, -7 ; 3 uses
  %i.ckq = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv.next44.i.i.6 ; 2 uses
  %i.ckr = load double, ptr %i.ckq, align 8, !tbaa !353
  %i.cks = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0270.0289296323.i, i64 %indvars.iv.next44.i.i.6
  %i.ckt = load double, ptr %i.cks, align 8, !tbaa !353
  %i.cku = call double @llvm.fmuladd.f64(double %i.ckr, double %i.ckp, double %i.ckt) ; 2 uses
  store double %i.cku, ptr %i.ckq, align 8, !tbaa !353
  %indvars.iv.next44.i.i.7 = add nsw i64 %indvars.iv43.i.i, -8
  %.not.i.i741.7 = icmp eq i64 %indvars.iv.next44.i.i.6, 0
  br i1 %.not.i.i741.7, label %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i, label %.lr.ph40.i.i, !llvm.loop !449

_ZL8spline1ddPKdiPdS1_.exit.loopexit.i:           ; preds = %.lr.ph40.i.i, %.lr.ph40.i.i.prol.loopexit
  %indvars.iv.next412.i = add nuw nsw i64 %indvars.iv411.i, 1 ; 2 uses
  %exitcond415.not.i = icmp eq i64 %indvars.iv.next412.i, %wide.trip.count409.i
  br i1 %exitcond415.not.i, label %._crit_edge386.i, label %.lr.ph385.i, !llvm.loop !450

._crit_edge386.i:                                 ; preds = %_ZL8spline1ddPKdiPdS1_.exit.loopexit.i
  %i.ckv = getelementptr inbounds nuw [24 x i8], ptr %i.cgb, i64 %indvars.iv425.i
  %i.ckw = load ptr, ptr %i.ckv, align 8, !tbaa !286
  %i.ckx = sext i32 %i.cgm to i64
  %invariant.gep432.i = getelementptr [4 x i8], ptr %i.ceg, i64 %i.ckx
  br label %.lr.ph393.i

.lr.ph393.i:                                      ; preds = %._crit_edge394.i, %._crit_edge386.i
  %indvars.iv423.i = phi i64 [ %i.cfy, %._crit_edge386.i ], [ %indvars.iv.next424.i, %._crit_edge394.i ] ; 2 uses
  %i.cky = sub nuw nsw i64 %indvars.iv423.i, %i.cfy ; 2 uses
  %i.ckz = trunc nuw nsw i64 %i.cky to i32
  %i.cla = uitofp nneg i32 %i.ckz to double
  %i.clb = call double @llvm.fmuladd.f64(double %i.cla, double %i.cfg, double -1.800000e+02) ; 2 uses
  %i.clc = fsub double %i.clb, %i.cfj             ; 2 uses
  %i.cld = fdiv double %i.clc, %i.cfg
  %i.cle = fptosi double %i.cld to i32            ; 3 uses
  %i.clf = add nsw i32 %i.cle, 1                  ; 2 uses
  %i.clg = sitofp i32 %i.clf to double
  %i.clh = call double @llvm.fmuladd.f64(double %i.clg, double %i.cfg, double %i.cfj)
  %i.cli = fsub double %i.clh, %i.clb
  %i.clj = fdiv double %i.cli, %i.cfg             ; 7 uses
  %i.clk = sitofp i32 %i.cle to double
  %i.cll = fneg double %i.clk
  %i.clm = sext i32 %i.cle to i64                 ; 3 uses
  %i.cln = getelementptr inbounds [8 x i8], ptr %.sroa.0250.0326.i, i64 %i.clm
  %i.clo = sext i32 %i.clf to i64                 ; 3 uses
  %i.clp = getelementptr inbounds [8 x i8], ptr %.sroa.0250.0326.i, i64 %i.clo
  %i.clq = fmul double %i.clj, %i.clj
  %i.clr = fneg double %i.clj
  %i.cls = call double @llvm.fmuladd.f64(double %i.clq, double %i.clj, double %i.clr)
  %i.clt = getelementptr inbounds [8 x i8], ptr %.sroa.0260.0302317.i, i64 %i.clm ; 2 uses
  %i.clu = getelementptr inbounds [8 x i8], ptr %.sroa.0260.0302317.i, i64 %i.clo ; 2 uses
  %i.clv = fmul double %i.clj, 3.000000e+00
  %i.clw = call double @llvm.fmuladd.f64(double %i.cll, double %i.cfg, double %i.clc)
  %i.clx = call double @llvm.fmuladd.f64(double %i.clv, double %i.clj, double -1.000000e+00)
  %i.cly = insertelement <2 x double> poison, double %i.clw, i64 0
  %i.clz = insertelement <2 x double> %i.cly, double %i.clx, i64 1
  %i.cma = fdiv <2 x double> %i.clz, %i.cgh       ; 4 uses
  %i.cmb = extractelement <2 x double> %i.cma, i64 0 ; 5 uses
  %foldExtExtBinop3317 = fmul <2 x double> %i.cma, %i.cma
  %i.cmc = extractelement <2 x double> %foldExtExtBinop3317, i64 0
  %i.cmd = fneg double %i.cmb
  %i.cme = call double @llvm.fmuladd.f64(double %i.cmc, double %i.cmb, double %i.cmd)
  %i.cmf = extractelement <2 x double> %i.cma, i64 1
  %i.cmg = fmul double %i.cmf, %i.cfu             ; 2 uses
  %i.cmh = fmul double %i.cmb, 3.000000e+00
  %i.cmi = call double @llvm.fmuladd.f64(double %i.cmh, double %i.cmb, double -1.000000e+00)
  %i.cmj = fdiv double %i.cmi, 6.000000e+00
  %i.cmk = fmul double %i.cfg, %i.cmj             ; 2 uses
  %i.cml = getelementptr inbounds [8 x i8], ptr %.sroa.0241.0.i, i64 %i.clm
  %i.cmm = getelementptr inbounds [8 x i8], ptr %.sroa.0241.0.i, i64 %i.clo
  %i.cmn = mul nuw nsw i64 %i.cky, %i.cga         ; 2 uses
  %gep433.i = getelementptr [4 x i8], ptr %invariant.gep432.i, i64 %i.cmn
  br label %.lr.ph389.i

.lr.ph389.i:                                      ; preds = %_ZL8spline1ddPKdiPdS1_.exit205.loopexit.i, %.lr.ph393.i
  %indvars.iv421.i = phi i64 [ %i.cfy, %.lr.ph393.i ], [ %indvars.iv.next422.i, %_ZL8spline1ddPKdiPdS1_.exit205.loopexit.i ] ; 2 uses
  %i.cmo = sub nuw nsw i64 %indvars.iv421.i, %i.cfy ; 3 uses
  %i.cmp = trunc nuw nsw i64 %i.cmo to i32
  %i.cmq = uitofp nneg i32 %i.cmp to double
  %i.cmr = call double @llvm.fmuladd.f64(double %i.cmq, double %i.cfg, double -1.800000e+02) ; 2 uses
  %i.cms = fsub double %i.cmr, %i.cfj             ; 2 uses
  %i.cmt = fdiv double %i.cms, %i.cfg
  %i.cmu = fptosi double %i.cmt to i32            ; 3 uses
  %i.cmv = add nsw i32 %i.cmu, 1                  ; 2 uses
  %i.cmw = sitofp i32 %i.cmv to double
  %i.cmx = call double @llvm.fmuladd.f64(double %i.cmw, double %i.cfg, double %i.cfj)
  %i.cmy = fsub double %i.cmx, %i.cmr
  %i.cmz = fdiv double %i.cmy, %i.cfg             ; 8 uses
  %i.cna = sitofp i32 %i.cmu to double
  %i.cnb = fneg double %i.cna
  %i.cnc = sext i32 %i.cmu to i64                 ; 4 uses
  %i.cnd = sext i32 %i.cmv to i64                 ; 4 uses
  %i.cne = fmul double %i.cmz, %i.cmz
  %i.cnf = fneg double %i.cmz
  %i.cng = call double @llvm.fmuladd.f64(double %i.cne, double %i.cmz, double %i.cnf) ; 2 uses
  %i.cnh = fmul double %i.cmz, 3.000000e+00
  %i.cni = call double @llvm.fmuladd.f64(double %i.cnb, double %i.cfg, double %i.cms)
  %i.cnj = call double @llvm.fmuladd.f64(double %i.cnh, double %i.cmz, double -1.000000e+00)
  %i.cnk = insertelement <2 x double> poison, double %i.cni, i64 0
  %i.cnl = insertelement <2 x double> %i.cnk, double %i.cnj, i64 1
  %i.cnm = fdiv <2 x double> %i.cnl, %i.cgh       ; 5 uses
  %i.cnn = extractelement <2 x double> %i.cnm, i64 0 ; 5 uses
  %foldExtExtBinop3319 = fmul <2 x double> %i.cnm, %i.cnm
  %i.cno = extractelement <2 x double> %foldExtExtBinop3319, i64 0
  %i.cnp = fneg double %i.cnn
  %i.cnq = call double @llvm.fmuladd.f64(double %i.cno, double %i.cnn, double %i.cnp) ; 2 uses
  %i.cnr = extractelement <2 x double> %i.cnm, i64 1
  %i.cns = fmul double %i.cnr, %i.cfu             ; 2 uses
  %i.cnt = fmul double %i.cnn, 3.000000e+00
  %i.cnu = call double @llvm.fmuladd.f64(double %i.cnt, double %i.cnn, double -1.000000e+00)
  %i.cnv = fdiv double %i.cnu, 6.000000e+00
  %i.cnw = fmul double %i.cfg, %i.cnv             ; 2 uses
  br i1 %min.iters.check3013, label %scalar.ph3012.preheader, label %vector.ph3014

vector.ph3014:                                    ; preds = %.lr.ph389.i
end_hunk_0
