inline.NumInlined: 1033
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %i.bf, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge205
  %i.bg = udiv exact i64 %i.be, 24                ; 3 uses
  %i.bh = add nsw i64 %i.bg, -2                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 3 uses
  %i.bj = add nsw i64 %i.bg, -1
  %i.bk = lshr i64 %i.bj, 1                       ; 2 uses
  %i.bl = and i64 %i.bg, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %i.bi
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, %bb.k
  %.07.i.i = phi i64 [ %i.bi, %bb.k ], [ %i.co, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i ] ; 8 uses
  %i.bq = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.07.i.i ; 2 uses
  %.sroa.013.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bq, align 8
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.416.0.copyload.i.i = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.br = icmp slt i64 %.07.i.i, %i.bk
  br i1 %i.br, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.l ] ; 2 uses
  %i.bs = shl i64 %.038.i.i.i, 1                  ; 2 uses
  %i.bt = add i64 %i.bs, 2                        ; 2 uses
  %i.bu = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.bt
  %i.bv = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bw = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !100
  %i.cb = fcmp ogt double %i.by, %i.ca
  %spec.select.i.i.i = select i1 %i.cb, i64 %i.bv, i64 %i.bt ; 4 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %spec.select.i.i.i
  %i.cd = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.ce = icmp slt i64 %spec.select.i.i.i, %i.bk
  br i1 %i.ce, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !103

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.l ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cf = icmp eq i64 %.0.lcssa.i.i.i, %i.bi
  %or.cond.i.i = select i1 %i.bm, i1 %i.cf, i1 false
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bn, %bb.m ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cg = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.cg, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i

.lr.ph.i.i.i.i74:                                 ; preds = %bb.n, %bb.o
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.o ], [ %.1.i.i.i, %bb.n ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.0919.i.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !100
  %i.ck = fcmp ogt double %i.cj, %.sroa.416.0.copyload.i.i
  br i1 %i.ck, label %bb.o, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  %i.cm = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.cm, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, !llvm.loop !104

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i74, %bb.n
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.n ], [ %.0919.i.i.i.i, %bb.o ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i74 ]
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.013.i.i.sroa.0.0.copyload, ptr %i.cn, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store double %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.co = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit, label %bb.l, !llvm.loop !105

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  %.059203 = phi double [ %.160, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ 0.000000e+00, %.lr.ph204.preheader ] ; 2 uses
  %.061202 = phi ptr [ %i.em, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %1, %.lr.ph204.preheader ] ; 7 uses
  %.sroa.0129.0201 = phi ptr [ %.sroa.0129.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.ba, %.lr.ph204.preheader ] ; 8 uses
  %.sroa.14.0200 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.ba, %.lr.ph204.preheader ] ; 11 uses
  %.sroa.27.0197 = phi ptr [ %.sroa.27.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.bb, %.lr.ph204.preheader ] ; 3 uses
  %i.cp = phi <2 x double> [ %i.el, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph204.preheader ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.061202, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %i.cs = fcmp ogt double %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.p, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.p:                                             ; preds = %.lr.ph204
  %i.ct = getelementptr inbounds nuw i8, ptr %.061202, i64 48
  %i.cu = load <2 x double>, ptr %i.ct, align 8, !tbaa !29 ; 3 uses
  %i.cv = shufflevector <2 x double> %i.cp, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3>
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.cp, <2 x i32> <i32 0, i32 3>
  %i.cx = fcmp olt <2 x double> %i.cv, %i.cw
  %i.cy = select <2 x i1> %i.cx, <2 x double> %i.cu, <2 x double> %i.cp ; 2 uses
  %i.cz = fadd double %.059203, %i.cr             ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.0200, %.sroa.27.0197
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %.061202, align 8, !tbaa !27 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.061202, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  store ptr %i.da, ptr %.sroa.14.0200, align 8, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !107
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 16
  %i.dj = load double, ptr %i.da, align 8, !tbaa !70
  store double %i.dj, ptr %i.di, align 8, !tbaa !100
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  %i.dl = ptrtoint ptr %.sroa.14.0200 to i64
  %i.dm = ptrtoint ptr %.sroa.0129.0201 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.s, label %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #28
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %i.dp = sdiv exact i64 %i.dn, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 384307168202282325)
  %i.dt = select i1 %i.dr, i64 384307168202282325, i64 %i.ds ; 3 uses
  %.not.i.i99 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i99)
  %i.du = mul nuw nsw i64 %i.dt, 24
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #29
          to label %.noexc109 unwind label %.loopexit ; 5 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 3 uses
  %i.dx = load ptr, ptr %.061202, align 8, !tbaa !27 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.061202, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !26
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !106
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !107
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eg = load double, ptr %i.dx, align 8, !tbaa !70
  store double %i.eg, ptr %i.ef, align 8, !tbaa !100
  %.not10.i.i.i.i100 = icmp eq ptr %.sroa.0129.0201, %.sroa.14.0200
  br i1 %.not10.i.i.i.i100, label %.noexc76, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.noexc109, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i101 ], [ %i.dv, %.noexc109 ] ; 2 uses
  %.0911.i.i.i.i103 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i101 ], [ %.sroa.0129.0201, %.noexc109 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i103, i64 24, i1 false), !alias.scope !108
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i103, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.eh, %.sroa.14.0200
  br i1 %.not.i.i.i.i104, label %.noexc76, label %.lr.ph.i.i.i.i101, !llvm.loop !112

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i101, %.noexc109
  %.0.lcssa.i.i.i.i106 = phi ptr [ %i.dv, %.noexc109 ], [ %i.ei, %.lr.ph.i.i.i.i101 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i106, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0201, i64 noundef %i.dn) #24
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit: ; preds = %.noexc76, %bb.q, %.lr.ph204
  %.sroa.27.1 = phi ptr [ %.sroa.27.0197, %.lr.ph204 ], [ %i.ek, %.noexc76 ], [ %.sroa.27.0197, %bb.q ] ; 4 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0200, %.lr.ph204 ], [ %i.ej, %.noexc76 ], [ %i.dk, %bb.q ] ; 4 uses
  %.sroa.0129.1 = phi ptr [ %.sroa.0129.0201, %.lr.ph204 ], [ %i.dv, %.noexc76 ], [ %.sroa.0129.0201, %bb.q ] ; 31 uses
  %.160 = phi double [ %.059203, %.lr.ph204 ], [ %i.cz, %.noexc76 ], [ %i.cz, %bb.q ] ; 5 uses
  %i.el = phi <2 x double> [ %i.cp, %.lr.ph204 ], [ %i.cy, %.noexc76 ], [ %i.cy, %bb.q ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.061202, i64 64 ; 2 uses
  %.not63 = icmp eq ptr %i.em, %2
  br i1 %.not63, label %._crit_edge205, label %.lr.ph204

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit.i.i, %._crit_edge205
  %i.en = icmp ugt i64 %i.l, 576460752303423487
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc83 unwind label %bb.ai

.noexc83:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEvS8_S8_.exit
  %.not169 = icmp eq i64 %i.l, 0
  br i1 %.not169, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %i.eo = shl nuw nsw i64 %i.l, 4
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #29
          to label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.ai ; 2 uses

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.l
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.u
  %.sroa.0113.1 = phi ptr [ %i.ep, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.u ] ; 2 uses
  %.sroa.13119.1 = phi ptr [ %i.eq, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.sroa.0113.1, ptr %3, align 16, !tbaa !27
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.sroa.0113.1, ptr %i.er, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %.sroa.13119.1, ptr %i.es, align 16, !tbaa !28
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.et, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store double %.160, ptr %i.eu, align 16, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store double 2.000000e+00, ptr %i.ev, align 8, !tbaa !66
  %i.ex = uitofp nneg i64 %i.l to double
  %i.ey = fdiv double 1.000000e+00, %i.ex         ; 4 uses
  %i.ez = fcmp ult double %i.ey, 5.000000e-01
  br i1 %i.ez, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.fa = fsub double 1.000000e+00, %i.ey         ; 2 uses
  %i.fb = fmul nnan double %i.fa, -2.000000e+00
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.fd = fmul nnan double %i.ey, 2.000000e+00
  %i.fe = fmul double %i.ey, %i.fd
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i:         ; preds = %bb.w, %bb.v
  %.0.i.i = phi double [ %i.fc, %bb.v ], [ %i.fe, %bb.w ]
  %i.ff = fmul double %.160, %.0.i.i
  store double %i.ff, ptr %i.ew, align 16, !tbaa !67
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  store double 0.000000e+00, ptr %i.fg, align 8, !tbaa !68
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  store i8 0, ptr %i.fh, align 16, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 1.000000e+00>, ptr %i.fj, align 16, !tbaa !29
  %i.fk = icmp eq ptr %.sroa.0129.1, %.sroa.14.1
  br i1 %i.fk, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0129.1, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0129.1, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit, %.lr.ph213
  %.sroa.14.2212 = phi ptr [ %.sroa.14.1, %.lr.ph213 ], [ %.sroa.14.3, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit ] ; 2 uses
  %i.fr = load ptr, ptr %.sroa.0129.1, align 8, !tbaa !106 ; 5 uses
  %i.fs = load i8, ptr %i.fh, align 16, !tbaa !69, !range !45, !noundef !46
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.y, label %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false)
  store i8 1, ptr %i.fh, align 16, !tbaa !69
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !71
  store double %i.fv, ptr %i.fi, align 8, !tbaa !72
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.y:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !71 ; 3 uses
  %i.fy = load double, ptr %i.fi, align 8, !tbaa !72
  %i.fz = fadd double %i.fx, %i.fy                ; 2 uses
  store double %i.fz, ptr %i.fi, align 8, !tbaa !72
  %i.ga = load double, ptr %i.ew, align 16, !tbaa !67
  %i.gb = fcmp ugt double %i.fz, %i.ga
  br i1 %i.gb, label %bb.z, label %._crit_edge224

._crit_edge224:                                   ; preds = %bb.y
  %.pre = load double, ptr %i.fm, align 16, !tbaa !73
  %.pre226 = load double, ptr %i.fn, align 8, !tbaa !74
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gc = load double, ptr %i.ev, align 8, !tbaa !66
  %i.gd = load i64, ptr %i.et, align 8, !tbaa !58
  %i.ge = uitofp i64 %i.gd to double
  %i.gf = fcmp ogt double %i.gc, %i.ge
  %.pre225 = load double, ptr %i.fm, align 16, !tbaa !73 ; 2 uses
  %.pre227 = load double, ptr %i.fn, align 8, !tbaa !74 ; 2 uses
  br i1 %i.gf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge224, %bb.z
  %i.gg = phi double [ %.pre226, %._crit_edge224 ], [ %.pre227, %bb.z ]
  %i.gh = phi double [ %.pre, %._crit_edge224 ], [ %.pre225, %bb.z ]
  %i.gi = load double, ptr %i.fr, align 8, !tbaa !70
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.fx, double %i.gh)
  store double %i.gj, ptr %i.fm, align 16, !tbaa !73
  %i.gk = fadd double %i.fx, %i.gg
  store double %i.gk, ptr %i.fn, align 8, !tbaa !74
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.ab:                                            ; preds = %bb.z
  %i.gl = load double, ptr %i.fl, align 16, !tbaa !70
  %i.gm = load double, ptr %i.fo, align 8, !tbaa !71 ; 2 uses
  %i.gn = call noundef double @llvm.fmuladd.f64(double %i.gl, double %i.gm, double %.pre225) ; 2 uses
  %i.go = fadd double %.pre227, %i.gm             ; 2 uses
  store double %i.go, ptr %i.fo, align 8, !tbaa !71
  %i.gp = fdiv double %i.gn, %i.go                ; 2 uses
  store double %i.gp, ptr %i.fl, align 16, !tbaa !70
  %i.gq = load double, ptr %i.fg, align 8, !tbaa !68
  %i.gr = fadd double %i.gn, %i.gq
  store double %i.gr, ptr %i.fg, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  %i.gs = load ptr, ptr %i.er, align 8, !tbaa !30
  %i.gt = load ptr, ptr %3, align 16, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.05.0.i = phi ptr [ %i.gs, %bb.ab ], [ %i.gv, %bb.ad ] ; 3 uses
  %i.gu = icmp eq ptr %.sroa.05.0.i, %i.gt
  br i1 %i.gu, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = getelementptr inbounds i8, ptr %.sroa.05.0.i, i64 -16 ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !70
  %i.gx = fcmp olt double %i.gp, %i.gw
  br i1 %i.gx, label %bb.ac, label %.critedge.i, !prof !36, !llvm.loop !75

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %i.gy = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fl)
          to label %.noexc unwind label %bb.aj    ; 0 uses

.noexc:                                           ; preds = %.critedge.i
  %i.gz = load double, ptr %i.ev, align 8, !tbaa !66 ; 2 uses
  %i.ha = fadd double %i.gz, 1.000000e+00
  store double %i.ha, ptr %i.ev, align 8, !tbaa !66
  %i.hb = load i64, ptr %i.et, align 8, !tbaa !58
  %i.hc = uitofp i64 %i.hb to double
  %i.hd = fdiv double %i.gz, %i.hc                ; 4 uses
  %i.he = fcmp ult double %i.hd, 5.000000e-01
  br i1 %i.he, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc
  %i.hf = fsub double 1.000000e+00, %i.hd         ; 2 uses
  %i.hg = fmul nnan double %i.hf, -2.000000e+00
  %i.hh = call double @llvm.fmuladd.f64(double %i.hg, double %i.hf, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

bb.af:                                            ; preds = %.noexc
  %i.hi = fmul double %i.hd, 2.000000e+00
  %i.hj = fmul double %i.hd, %i.hi
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit:           ; preds = %bb.ae, %bb.af
  %.0.i = phi double [ %i.hh, %bb.ae ], [ %i.hj, %bb.af ]
  %i.hk = load double, ptr %i.eu, align 16, !tbaa !65
  %i.hl = fmul double %.0.i, %i.hk
  store double %i.hl, ptr %i.ew, align 16, !tbaa !67
  %i.hm = load i8, ptr %i.fh, align 16, !tbaa !69, !range !45, !noundef !46
  %i.hn = trunc nuw i8 %i.hm to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false)
  br i1 %i.hn, label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit
  store i8 1, ptr %i.fh, align 16, !tbaa !69
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit: ; preds = %bb.aa, %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit, %bb.ag
  %i.ho = load ptr, ptr %.sroa.0129.1, align 8, !tbaa !106
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 3 uses
  store ptr %i.hp, ptr %.sroa.0129.1, align 8, !tbaa !106
  %i.hq = load ptr, ptr %i.fp, align 8, !tbaa !107
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.hs = getelementptr inbounds i8, ptr %.sroa.14.2212, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0129.1, ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 24, i1 false)
  br label %bb.al

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i, %bb.t
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

bb.aj:                                            ; preds = %.critedge.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.ak:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.hv = load double, ptr %i.hp, align 8, !tbaa !70
  store double %i.hv, ptr %i.fq, align 8, !tbaa !100
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.14.3 = phi ptr [ %i.hs, %bb.ah ], [ %.sroa.14.2212, %bb.ak ] ; 3 uses
  %i.hw = ptrtoint ptr %.sroa.14.3 to i64
  %i.hx = sub i64 %i.hw, %i.bd
  %i.hy = sdiv exact i64 %i.hx, 24                ; 3 uses
  %i.hz = icmp eq ptr %.sroa.14.3, %.sroa.0129.1
  br i1 %i.hz, label %._crit_edge214.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0129.1, align 8
  %.sroa.5.0.copyload.i.i = load double, ptr %i.fq, align 8 ; 3 uses
  %i.ia = icmp ugt i64 %i.hy, 2
  br i1 %i.ia, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %bb.an
  %i.ib = phi i64 [ %i.is, %bb.an ], [ 2, %bb.am ] ; 2 uses
  %i.ic = phi i64 [ %i.ir, %bb.an ], [ 0, %bb.am ]
  %.043.i.i = phi i64 [ %i.il, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.id = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.ib
  %i.ie = or disjoint i64 %i.ic, 1                ; 2 uses
  %i.if = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !100
  %i.ik = fcmp ogt double %i.ih, %i.ij
  %i.il = select i1 %i.ik, i64 %i.ie, i64 %i.ib, !unpredictable !46 ; 4 uses
  %i.im = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load double, ptr %i.in, align 8, !tbaa !100
  %i.ip = fcmp ogt double %.sroa.5.0.copyload.i.i, %i.io
  br i1 %i.ip, label %bb.an, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.iq = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.043.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 24, i1 false)
  %i.ir = shl i64 %i.il, 1                        ; 3 uses
  %i.is = add i64 %i.ir, 2                        ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.hy
  br i1 %i.it, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !113

._crit_edge.loopexit.i.i:                         ; preds = %bb.an
  %i.iu = or disjoint i64 %i.ir, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.am
  %.0.lcssa.i.i = phi i64 [ 0, %bb.am ], [ %i.il, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ 1, %bb.am ], [ %i.iu, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.iv = icmp ult i64 %.lcssa.i.i, %i.hy
  br i1 %i.iv, label %bb.ao, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.ao:                                            ; preds = %._crit_edge.i.i
  %i.iw = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.lcssa.i.i ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !100
  %i.iz = fcmp ogt double %.sroa.5.0.copyload.i.i, %i.iy
  br i1 %i.iz, label %bb.ap, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ja = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i64 24, i1 false)
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ao, %bb.ap
  %.1.sink.i.i = phi i64 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa.i.i, %bb.ap ], [ %.0.lcssa.i.i, %bb.ao ], [ %.043.i.i, %.lr.ph.i.i ]
  %i.jb = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.1.sink.i.i ; 2 uses
  store <2 x ptr> %.sroa.0.i.i.sroa.0.0.copyload, ptr %i.jb, align 8
  %.sroa.5.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx25.i.i, align 8
  br label %bb.x

._crit_edge214.loopexit:                          ; preds = %bb.al
  %.pre228 = load i8, ptr %i.fh, align 16, !tbaa !69, !range !45, !noalias !114
  %i.jc = trunc nuw i8 %.pre228 to i1
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.jd = phi i1 [ %i.jc, %._crit_edge214.loopexit ], [ false, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.je, align 8, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.jg, align 8, !tbaa !29
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  br i1 %i.jd, label %bb.aq, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread: ; preds = %._crit_edge214
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store double %.160, ptr %i.ji, align 8, !tbaa !23
  store <2 x double> %i.el, ptr %i.jg, align 8, !tbaa !29
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.aq:                                            ; preds = %._crit_edge214
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.jk = load double, ptr %i.jj, align 16, !tbaa !73, !noalias !114
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !74, !noalias !114
  %i.jn = load double, ptr %i.jh, align 16, !tbaa !70, !noalias !114
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !71, !noalias !114 ; 2 uses
  %i.jq = call noundef double @llvm.fmuladd.f64(double %i.jn, double %i.jp, double %i.jk) ; 2 uses
  %i.jr = fadd double %i.jm, %i.jp                ; 2 uses
  store double %i.jr, ptr %i.jo, align 8, !tbaa !71, !noalias !114
  %i.js = fdiv double %i.jq, %i.jr                ; 2 uses
  store double %i.js, ptr %i.jh, align 16, !tbaa !70, !noalias !114
  %i.jt = load double, ptr %i.fg, align 8, !tbaa !68, !noalias !114
  %i.ju = fadd double %i.jq, %i.jt
  store double %i.ju, ptr %i.fg, align 8, !tbaa !68, !noalias !114
  %i.jv = load ptr, ptr %i.er, align 8, !tbaa !30, !noalias !114
  %i.jw = load ptr, ptr %3, align 16, !tbaa !30, !noalias !114
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %.sroa.05.0.i.i = phi ptr [ %i.jv, %bb.aq ], [ %i.jy, %bb.as ] ; 3 uses
  %i.jx = icmp eq ptr %.sroa.05.0.i.i, %i.jw
  br i1 %i.jx, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jy = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !70, !noalias !114
  %i.ka = fcmp olt double %i.js, %i.jz
  br i1 %i.ka, label %bb.ar, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !36, !llvm.loop !75

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.as, %bb.ar
  %i.kb = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
          to label %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit unwind label %bb.av ; 0 uses

_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit: ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kc = load ptr, ptr %i.es, align 16, !tbaa !28, !noalias !114 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ke = load ptr, ptr %i.er, align 8, !tbaa !26, !noalias !114
  %i.kf = load <2 x ptr>, ptr %3, align 16, !tbaa !30, !noalias !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 24, i1 false), !noalias !114
  %i.kg = load double, ptr %i.fg, align 8, !tbaa !29, !noalias !114
  %.pre229 = load ptr, ptr %0, align 8, !tbaa !27 ; 3 uses
  %.pre230 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  store <2 x ptr> %i.kf, ptr %0, align 8, !tbaa !30
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre229, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ki = ptrtoint ptr %.pre230 to i64
  %i.kj = ptrtoint ptr %.pre229 to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %.pre229, i64 noundef %i.kk) #24
  %.pre231 = load ptr, ptr %i.kd, align 8, !tbaa !28
  %.pre232 = load ptr, ptr %i.kh, align 8, !tbaa !26
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %bb.at, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kl = phi ptr [ %.pre232, %bb.at ], [ %i.ke, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  %i.km = phi ptr [ %.pre231, %bb.at ], [ %i.kc, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  store double %i.kg, ptr %i.jf, align 8, !tbaa !29
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.160, ptr %i.kn, align 8, !tbaa !23
  store <2 x double> %i.el, ptr %i.jg, align 8, !tbaa !29
  %i.ko = icmp eq ptr %i.km, %i.kl
  br i1 %i.ko, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kp = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.av:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i92, label %_ZN5folly7TDigestD2Ev.exit, label %bb.ay

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread, %bb.au, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.ks = load ptr, ptr %3, align 16, !tbaa !27   ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i89, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.kt = load ptr, ptr %i.es, align 16, !tbaa !28
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #24
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.kx = ptrtoint ptr %.sroa.27.1 to i64
  %i.ky = sub i64 %i.kx, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.1, i64 noundef %i.ky) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.ay:                                            ; preds = %bb.av
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !28
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kr to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.ld) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.ay, %bb.av, %bb.aj
  %.pn65 = phi { ptr, i32 } [ %i.hu, %bb.aj ], [ %i.kq, %bb.av ], [ %i.kq, %bb.ay ]
  %i.le = load ptr, ptr %3, align 16, !tbaa !27   ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94, label %bb.az

bb.az:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lf = load ptr, ptr %i.es, align 16, !tbaa !28
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.le to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.li) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94

_ZN5folly7TDigest14CentroidMergerD2Ev.exit94:     ; preds = %bb.az, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit98: ; preds = %.loopexit, %.loopexit.split-lp, %bb.ai, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94
  %.sroa.27.0189 = phi ptr [ %.sroa.27.1, %bb.ai ], [ %.sroa.27.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.14.0200, %.loopexit ], [ %.sroa.14.0200, %.loopexit.split-lp ]
  %.sroa.0129.0179 = phi ptr [ %.sroa.0129.1, %bb.ai ], [ %.sroa.0129.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.0129.0201, %.loopexit ], [ %.sroa.0129.0201, %.loopexit.split-lp ] ; 2 uses
  %.pn69.pn = phi { ptr, i32 } [ %i.ht, %bb.ai ], [ %.pn65, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lj = ptrtoint ptr %.sroa.27.0189 to i64
  %i.lk = ptrtoint ptr %.sroa.0129.0179 to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0179, i64 noundef %i.ll) #24
  resume { ptr, i32 } %.pn69.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit: ; preds = %bb.ax, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeENS_5RangeIPPKS0_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp eq i64 %i.g, 16
  %i.j = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12   ; 9 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = icmp eq i64 %.1, 0
  br i1 %i.o, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0194 = phi i64 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.048193 = phi ptr [ %.149, %.lr.ph ], [ null, %.lr.ph.preheader ]
  %.050192 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.p = load ptr, ptr %.050192, align 8, !tbaa !117 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4
  %.149 = select i1 %i.t, ptr %.048193, ptr %i.p  ; 5 uses
  %i.y = select i1 %i.t, i64 0, i64 %i.x
  %.1 = add i64 %i.y, %.0194                      ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.050192, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.ac, align 8, !tbaa !29
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.149, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = load ptr, ptr %.149, align 8, !tbaa !27 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = ashr exact i64 %i.ai, 4
  %i.ak = icmp eq i64 %.1, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.149, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12
  %i.an = icmp eq i64 %i.am, %i.n
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ugt i64 %i.ai, 9223372036854775792
  br i1 %i.ao, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !36

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.aq = phi ptr [ null, %bb.h ], [ %i.ap, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !28
  %i.au = load ptr, ptr %.149, align 8, !tbaa !30 ; 2 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE:bb.a

bb.l:                                             ; preds = %._crit_edge205
  %i.bj = udiv exact i64 %i.bh, 24                ; 3 uses
  %i.bk = add nsw i64 %i.bj, -2                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 3 uses
  %i.bm = add nsw i64 %i.bj, -1
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  %i.bo = and i64 %i.bj, 1
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %i.bl
  br label %bb.m

bb.m:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, %bb.l
  %.07.i.i = phi i64 [ %i.bl, %bb.l ], [ %i.cr, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i ] ; 8 uses
  %i.bt = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.07.i.i ; 2 uses
  %.sroa.013.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.bt, align 8
  %.sroa.416.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.416.0.copyload.i.i = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.bu = icmp slt i64 %.07.i.i, %i.bn
  br i1 %i.bu, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.m ] ; 2 uses
  %i.bv = shl i64 %.038.i.i.i, 1                  ; 2 uses
  %i.bw = add i64 %i.bv, 2                        ; 2 uses
  %i.bx = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.bw
  %i.by = or disjoint i64 %i.bv, 1                ; 2 uses
  %i.bz = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !119
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !119
  %i.ce = fcmp ogt double %i.cb, %i.cd
  %spec.select.i.i.i = select i1 %i.ce, i64 %i.by, i64 %i.bw ; 4 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %spec.select.i.i.i
  %i.cg = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %i.ch = icmp slt i64 %spec.select.i.i.i, %i.bn
  br i1 %i.ch, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !121

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.m ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ci = icmp eq i64 %.0.lcssa.i.i.i, %i.bl
  %or.cond.i.i = select i1 %i.bp, i1 %i.ci, i1 false
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.bq, %bb.n ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cj = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i74:                                 ; preds = %bb.o, %bb.p
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.p ], [ %.1.i.i.i, %bb.o ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.0919.i.i.i.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !119
  %i.cn = fcmp ogt double %i.cm, %.sroa.416.0.copyload.i.i
  br i1 %i.cn, label %bb.p, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.cp = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.cp, label %.lr.ph.i.i.i.i74, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, !llvm.loop !122

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i74, %bb.o
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.o ], [ %.0919.i.i.i.i, %bb.p ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i74 ]
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0129.1, i64 %.0.lcssa.i.i.i.i ; 2 uses
  store <2 x ptr> %.sroa.013.i.i.sroa.0.0.copyload, ptr %i.cq, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store double %.sroa.416.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.cr = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit, label %bb.m, !llvm.loop !123

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit
  %.059203 = phi double [ %.160, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ 0.000000e+00, %.lr.ph204.preheader ] ; 2 uses
  %.061202 = phi ptr [ %i.eq, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %1, %.lr.ph204.preheader ] ; 2 uses
  %.sroa.0129.0201 = phi ptr [ %.sroa.0129.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.bd, %.lr.ph204.preheader ] ; 8 uses
  %.sroa.14.0200 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.bd, %.lr.ph204.preheader ] ; 11 uses
  %.sroa.27.0197 = phi ptr [ %.sroa.27.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.be, %.lr.ph204.preheader ] ; 3 uses
  %i.cs = phi <2 x double> [ %i.ep, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph204.preheader ] ; 4 uses
  %i.ct = load ptr, ptr %.061202, align 8, !tbaa !117 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !23 ; 2 uses
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.q, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

bb.q:                                             ; preds = %.lr.ph204
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !29 ; 3 uses
  %i.cz = shufflevector <2 x double> %i.cs, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.da = shufflevector <2 x double> %i.cy, <2 x double> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.db = fcmp olt <2 x double> %i.cz, %i.da
  %i.dc = select <2 x i1> %i.db, <2 x double> %i.cy, <2 x double> %i.cs ; 2 uses
  %i.dd = fadd double %.059203, %i.cv             ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.0200, %.sroa.27.0197
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  store ptr %i.de, ptr %.sroa.14.0200, align 8, !tbaa !106
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !107
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 16
  %i.dn = load double, ptr %i.de, align 8, !tbaa !70
  store double %i.dn, ptr %i.dm, align 8, !tbaa !119
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.14.0200, i64 24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.dp = ptrtoint ptr %.sroa.14.0200 to i64
  %i.dq = ptrtoint ptr %.sroa.0129.0201 to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775800
  br i1 %i.ds, label %bb.t, label %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #28
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.dt = sdiv exact i64 %i.dr, 24                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 384307168202282325)
  %i.dx = select i1 %i.dv, i64 384307168202282325, i64 %i.dw ; 3 uses
  %.not.i.i99 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i99)
  %i.dy = mul nuw nsw i64 %i.dx, 24
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #29
          to label %.noexc109 unwind label %.loopexit ; 5 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr ; 3 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !106
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.eg
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !107
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ek = load double, ptr %i.eb, align 8, !tbaa !70
  store double %i.ek, ptr %i.ej, align 8, !tbaa !119
  %.not10.i.i.i.i100 = icmp eq ptr %.sroa.0129.0201, %.sroa.14.0200
  br i1 %.not10.i.i.i.i100, label %.noexc76, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %.noexc109, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %i.em, %.lr.ph.i.i.i.i101 ], [ %i.dz, %.noexc109 ] ; 2 uses
  %.0911.i.i.i.i103 = phi ptr [ %i.el, %.lr.ph.i.i.i.i101 ], [ %.sroa.0129.0201, %.noexc109 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i103, i64 24, i1 false), !alias.scope !124
  %i.el = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i103, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.el, %.sroa.14.0200
  br i1 %.not.i.i.i.i104, label %.noexc76, label %.lr.ph.i.i.i.i101, !llvm.loop !128

.noexc76:                                         ; preds = %.lr.ph.i.i.i.i101, %.noexc109
  %.0.lcssa.i.i.i.i106 = phi ptr [ %i.dz, %.noexc109 ], [ %i.em, %.lr.ph.i.i.i.i101 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i106, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0201, i64 noundef %i.dr) #24
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.dx
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit: ; preds = %.noexc76, %bb.r, %.lr.ph204
  %.sroa.27.1 = phi ptr [ %.sroa.27.0197, %.lr.ph204 ], [ %i.eo, %.noexc76 ], [ %.sroa.27.0197, %bb.r ] ; 4 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0200, %.lr.ph204 ], [ %i.en, %.noexc76 ], [ %i.do, %bb.r ] ; 4 uses
  %.sroa.0129.1 = phi ptr [ %.sroa.0129.0201, %.lr.ph204 ], [ %i.dz, %.noexc76 ], [ %.sroa.0129.0201, %bb.r ] ; 31 uses
  %.160 = phi double [ %.059203, %.lr.ph204 ], [ %i.dd, %.noexc76 ], [ %i.dd, %bb.r ] ; 5 uses
  %i.ep = phi <2 x double> [ %i.cs, %.lr.ph204 ], [ %i.dc, %.noexc76 ], [ %i.dc, %bb.r ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.061202, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.eq, %2
  br i1 %.not63, label %._crit_edge205, label %.lr.ph204

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvS9_T0_SJ_T1_T2_.exit.i.i, %._crit_edge205
  %i.er = icmp ugt i64 %i.n, 576460752303423487
  br i1 %i.er, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc83 unwind label %bb.aj

.noexc83:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEvS9_S9_.exit
  %.not169 = icmp eq i64 %i.n, 0
  br i1 %.not169, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.es = shl nuw nsw i64 %i.n, 4
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #29
          to label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.aj ; 2 uses

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.n
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.v
  %.sroa.0113.1 = phi ptr [ %i.et, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ] ; 2 uses
  %.sroa.13119.1 = phi ptr [ %i.eu, %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %.sroa.0113.1, ptr %3, align 16, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.sroa.0113.1, ptr %i.ev, align 8, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %.sroa.13119.1, ptr %i.ew, align 16, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %i.n, ptr %i.ex, align 8, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store double %.160, ptr %i.ey, align 16, !tbaa !65
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store double 2.000000e+00, ptr %i.ez, align 8, !tbaa !66
  %i.fb = uitofp nneg i64 %i.n to double
  %i.fc = fdiv double 1.000000e+00, %i.fb         ; 4 uses
  %i.fd = fcmp ult double %i.fc, 5.000000e-01
  br i1 %i.fd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.fe = fsub double 1.000000e+00, %i.fc         ; 2 uses
  %i.ff = fmul nnan double %i.fe, -2.000000e+00
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fe, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

bb.x:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.fh = fmul nnan double %i.fc, 2.000000e+00
  %i.fi = fmul double %i.fc, %i.fh
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i:         ; preds = %bb.x, %bb.w
  %.0.i.i = phi double [ %i.fg, %bb.w ], [ %i.fi, %bb.x ]
  %i.fj = fmul double %.160, %.0.i.i
  store double %i.fj, ptr %i.fa, align 16, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  store double 0.000000e+00, ptr %i.fk, align 8, !tbaa !68
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  store i8 0, ptr %i.fl, align 16, !tbaa !69
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 1.000000e+00>, ptr %i.fn, align 16, !tbaa !29
  %i.fo = icmp eq ptr %.sroa.0129.1, %.sroa.14.1
  br i1 %i.fo, label %._crit_edge214, label %.lr.ph213

.lr.ph213:                                        ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0129.1, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0129.1, i64 16 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit, %.lr.ph213
  %.sroa.14.2212 = phi ptr [ %.sroa.14.1, %.lr.ph213 ], [ %.sroa.14.3, %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit ] ; 2 uses
  %i.fv = load ptr, ptr %.sroa.0129.1, align 8, !tbaa !106 ; 5 uses
  %i.fw = load i8, ptr %i.fl, align 16, !tbaa !69, !range !45, !noundef !46
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.z, label %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false)
  store i8 1, ptr %i.fl, align 16, !tbaa !69
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !71
  store double %i.fz, ptr %i.fm, align 8, !tbaa !72
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !71 ; 3 uses
  %i.gc = load double, ptr %i.fm, align 8, !tbaa !72
  %i.gd = fadd double %i.gb, %i.gc                ; 2 uses
  store double %i.gd, ptr %i.fm, align 8, !tbaa !72
  %i.ge = load double, ptr %i.fa, align 16, !tbaa !67
  %i.gf = fcmp ugt double %i.gd, %i.ge
  br i1 %i.gf, label %bb.aa, label %._crit_edge224

._crit_edge224:                                   ; preds = %bb.z
  %.pre = load double, ptr %i.fq, align 16, !tbaa !73
  %.pre226 = load double, ptr %i.fr, align 8, !tbaa !74
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gg = load double, ptr %i.ez, align 8, !tbaa !66
  %i.gh = load i64, ptr %i.ex, align 8, !tbaa !58
  %i.gi = uitofp i64 %i.gh to double
  %i.gj = fcmp ogt double %i.gg, %i.gi
  %.pre225 = load double, ptr %i.fq, align 16, !tbaa !73 ; 2 uses
  %.pre227 = load double, ptr %i.fr, align 8, !tbaa !74 ; 2 uses
  br i1 %i.gj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge224, %bb.aa
  %i.gk = phi double [ %.pre226, %._crit_edge224 ], [ %.pre227, %bb.aa ]
  %i.gl = phi double [ %.pre, %._crit_edge224 ], [ %.pre225, %bb.aa ]
  %i.gm = load double, ptr %i.fv, align 8, !tbaa !70
  %i.gn = call double @llvm.fmuladd.f64(double %i.gm, double %i.gb, double %i.gl)
  store double %i.gn, ptr %i.fq, align 16, !tbaa !73
  %i.go = fadd double %i.gb, %i.gk
  store double %i.go, ptr %i.fr, align 8, !tbaa !74
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gp = load double, ptr %i.fp, align 16, !tbaa !70
  %i.gq = load double, ptr %i.fs, align 8, !tbaa !71 ; 2 uses
  %i.gr = call noundef double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %.pre225) ; 2 uses
  %i.gs = fadd double %.pre227, %i.gq             ; 2 uses
  store double %i.gs, ptr %i.fs, align 8, !tbaa !71
  %i.gt = fdiv double %i.gr, %i.gs                ; 2 uses
  store double %i.gt, ptr %i.fp, align 16, !tbaa !70
  %i.gu = load double, ptr %i.fk, align 8, !tbaa !68
  %i.gv = fadd double %i.gr, %i.gu
  store double %i.gv, ptr %i.fk, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  %i.gw = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.gx = load ptr, ptr %3, align 16, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.05.0.i = phi ptr [ %i.gw, %bb.ac ], [ %i.gz, %bb.ae ] ; 3 uses
  %i.gy = icmp eq ptr %.sroa.05.0.i, %i.gx
  br i1 %i.gy, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = getelementptr inbounds i8, ptr %.sroa.05.0.i, i64 -16 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !70
  %i.hb = fcmp olt double %i.gt, %i.ha
  br i1 %i.hb, label %bb.ad, label %.critedge.i, !prof !36, !llvm.loop !75

.critedge.i:                                      ; preds = %bb.ae, %bb.ad
  %i.hc = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %.noexc unwind label %bb.ak    ; 0 uses

.noexc:                                           ; preds = %.critedge.i
  %i.hd = load double, ptr %i.ez, align 8, !tbaa !66 ; 2 uses
  %i.he = fadd double %i.hd, 1.000000e+00
  store double %i.he, ptr %i.ez, align 8, !tbaa !66
  %i.hf = load i64, ptr %i.ex, align 8, !tbaa !58
  %i.hg = uitofp i64 %i.hf to double
  %i.hh = fdiv double %i.hd, %i.hg                ; 4 uses
  %i.hi = fcmp ult double %i.hh, 5.000000e-01
  br i1 %i.hi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc
  %i.hj = fsub double 1.000000e+00, %i.hh         ; 2 uses
  %i.hk = fmul nnan double %i.hj, -2.000000e+00
  %i.hl = call double @llvm.fmuladd.f64(double %i.hk, double %i.hj, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

bb.ag:                                            ; preds = %.noexc
  %i.hm = fmul double %i.hh, 2.000000e+00
  %i.hn = fmul double %i.hh, %i.hm
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit:           ; preds = %bb.af, %bb.ag
  %.0.i = phi double [ %i.hl, %bb.af ], [ %i.hn, %bb.ag ]
  %i.ho = load double, ptr %i.ey, align 16, !tbaa !65
  %i.hp = fmul double %.0.i, %i.ho
  store double %i.hp, ptr %i.fa, align 16, !tbaa !67
  %i.hq = load i8, ptr %i.fl, align 16, !tbaa !69, !range !45, !noundef !46
  %i.hr = trunc nuw i8 %i.hq to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false)
  br i1 %i.hr, label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit
  store i8 1, ptr %i.fl, align 16, !tbaa !69
  br label %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit

_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit: ; preds = %bb.ab, %_ZNSt8optionalIN5folly7TDigest8CentroidEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit, %bb.ah
  %i.hs = load ptr, ptr %.sroa.0129.1, align 8, !tbaa !106
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 3 uses
  store ptr %i.ht, ptr %.sroa.0129.1, align 8, !tbaa !106
  %i.hu = load ptr, ptr %i.ft, align 8, !tbaa !107
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.hw = getelementptr inbounds i8, ptr %.sroa.14.2212, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0129.1, ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i64 24, i1 false)
  br label %bb.am

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i, %bb.u
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

bb.ak:                                            ; preds = %.critedge.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.al:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6appendERKNS0_8CentroidE.exit
  %i.hz = load double, ptr %i.ht, align 8, !tbaa !70
  store double %i.hz, ptr %i.fu, align 8, !tbaa !119
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.sroa.14.3 = phi ptr [ %i.hw, %bb.ai ], [ %.sroa.14.2212, %bb.al ] ; 3 uses
  %i.ia = ptrtoint ptr %.sroa.14.3 to i64
  %i.ib = sub i64 %i.ia, %i.bg
  %i.ic = sdiv exact i64 %i.ib, 24                ; 3 uses
  %i.id = icmp eq ptr %.sroa.14.3, %.sroa.0129.1
  br i1 %i.id, label %._crit_edge214.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.0129.1, align 8
  %.sroa.5.0.copyload.i.i = load double, ptr %i.fu, align 8 ; 3 uses
  %i.ie = icmp ugt i64 %i.ic, 2
  br i1 %i.ie, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %bb.ao
  %i.if = phi i64 [ %i.iw, %bb.ao ], [ 2, %bb.an ] ; 2 uses
  %i.ig = phi i64 [ %i.iv, %bb.ao ], [ 0, %bb.an ]
  %.043.i.i = phi i64 [ %i.ip, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.ih = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.if
  %i.ii = or disjoint i64 %i.ig, 1                ; 2 uses
  %i.ij = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.il = load double, ptr %i.ik, align 8, !tbaa !119
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.in = load double, ptr %i.im, align 8, !tbaa !119
  %i.io = fcmp ogt double %i.il, %i.in
  %i.ip = select i1 %i.io, i64 %i.ii, i64 %i.if, !unpredictable !46 ; 4 uses
  %i.iq = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load double, ptr %i.ir, align 8, !tbaa !119
  %i.it = fcmp ogt double %.sroa.5.0.copyload.i.i, %i.is
  br i1 %i.it, label %bb.ao, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.iu = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.043.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i64 24, i1 false)
  %i.iv = shl i64 %i.ip, 1                        ; 3 uses
  %i.iw = add i64 %i.iv, 2                        ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.ic
  br i1 %i.ix, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !129

._crit_edge.loopexit.i.i:                         ; preds = %bb.ao
  %i.iy = or disjoint i64 %i.iv, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.an
  %.0.lcssa.i.i = phi i64 [ 0, %bb.an ], [ %i.ip, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ 1, %bb.an ], [ %i.iy, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.iz = icmp ult i64 %.lcssa.i.i, %i.ic
  br i1 %i.iz, label %bb.ap, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.ja = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.lcssa.i.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !119
  %i.jd = fcmp ogt double %.sroa.5.0.copyload.i.i, %i.jc
  br i1 %i.jd, label %bb.aq, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.je = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ap, %bb.aq
  %.1.sink.i.i = phi i64 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa.i.i, %bb.aq ], [ %.0.lcssa.i.i, %bb.ap ], [ %.043.i.i, %.lr.ph.i.i ]
  %i.jf = getelementptr inbounds [24 x i8], ptr %.sroa.0129.1, i64 %.1.sink.i.i ; 2 uses
  store <2 x ptr> %.sroa.0.i.i.sroa.0.0.copyload, ptr %i.jf, align 8
  %.sroa.5.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx25.i.i, align 8
  br label %bb.y

._crit_edge214.loopexit:                          ; preds = %bb.am
  %.pre228 = load i8, ptr %i.fl, align 16, !tbaa !69, !range !45, !noalias !130
  %i.jg = trunc nuw i8 %.pre228 to i1
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i
  %i.jh = phi i1 [ %i.jg, %._crit_edge214.loopexit ], [ false, %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.ji, align 8, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.jk, align 8, !tbaa !29
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  br i1 %i.jh, label %bb.ar, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread: ; preds = %._crit_edge214
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store double %.160, ptr %i.jm, align 8, !tbaa !23
  store <2 x double> %i.ep, ptr %i.jk, align 8, !tbaa !29
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ar:                                            ; preds = %._crit_edge214
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.jo = load double, ptr %i.jn, align 16, !tbaa !73, !noalias !130
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !74, !noalias !130
  %i.jr = load double, ptr %i.jl, align 16, !tbaa !70, !noalias !130
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !71, !noalias !130 ; 2 uses
  %i.ju = call noundef double @llvm.fmuladd.f64(double %i.jr, double %i.jt, double %i.jo) ; 2 uses
  %i.jv = fadd double %i.jq, %i.jt                ; 2 uses
  store double %i.jv, ptr %i.js, align 8, !tbaa !71, !noalias !130
  %i.jw = fdiv double %i.ju, %i.jv                ; 2 uses
  store double %i.jw, ptr %i.jl, align 16, !tbaa !70, !noalias !130
  %i.jx = load double, ptr %i.fk, align 8, !tbaa !68, !noalias !130
  %i.jy = fadd double %i.ju, %i.jx
  store double %i.jy, ptr %i.fk, align 8, !tbaa !68, !noalias !130
  %i.jz = load ptr, ptr %i.ev, align 8, !tbaa !30, !noalias !130
  %i.ka = load ptr, ptr %3, align 16, !tbaa !30, !noalias !130
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %.sroa.05.0.i.i = phi ptr [ %i.jz, %bb.ar ], [ %i.kc, %bb.at ] ; 3 uses
  %i.kb = icmp eq ptr %.sroa.05.0.i.i, %i.ka
  br i1 %i.kb, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !70, !noalias !130
  %i.ke = fcmp olt double %i.jw, %i.kd
  br i1 %i.ke, label %bb.as, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !36, !llvm.loop !75

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.at, %bb.as
  %i.kf = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
          to label %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit unwind label %bb.aw ; 0 uses

_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit: ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kg = load ptr, ptr %i.ew, align 16, !tbaa !28, !noalias !130 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ki = load ptr, ptr %i.ev, align 8, !tbaa !26, !noalias !130
  %i.kj = load <2 x ptr>, ptr %3, align 16, !tbaa !30, !noalias !130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 24, i1 false), !noalias !130
  %i.kk = load double, ptr %i.fk, align 8, !tbaa !29, !noalias !130
  %.pre229 = load ptr, ptr %0, align 8, !tbaa !27 ; 3 uses
  %.pre230 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  store <2 x ptr> %i.kj, ptr %0, align 8, !tbaa !30
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre229, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.km = ptrtoint ptr %.pre230 to i64
  %i.kn = ptrtoint ptr %.pre229 to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %.pre229, i64 noundef %i.ko) #24
  %.pre231 = load ptr, ptr %i.kh, align 8, !tbaa !28
  %.pre232 = load ptr, ptr %i.kl, align 8, !tbaa !26
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %bb.au, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit
  %i.kp = phi ptr [ %.pre232, %bb.au ], [ %i.ki, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  %i.kq = phi ptr [ %.pre231, %bb.au ], [ %i.kg, %_ZNO5folly7TDigest14CentroidMerger8finalizeEv.exit ]
  store double %i.kk, ptr %i.jj, align 8, !tbaa !29
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.160, ptr %i.kr, align 8, !tbaa !23
  store <2 x double> %i.ep, ptr %i.jk, align 8, !tbaa !29
  %i.ks = icmp eq ptr %i.kq, %i.kp
  br i1 %i.ks, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kt = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.aw:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i92, label %_ZN5folly7TDigestD2Ev.exit, label %bb.az

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread, %bb.av, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kw = load ptr, ptr %3, align 16, !tbaa !27   ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i89, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.kx = load ptr, ptr %i.ew, align 16, !tbaa !28
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.la) #24
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.lb = ptrtoint ptr %.sroa.27.1 to i64
  %i.lc = sub i64 %i.lb, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.1, i64 noundef %i.lc) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.az:                                            ; preds = %bb.aw
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !28
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.lh) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.az, %bb.aw, %bb.ak
  %.pn65 = phi { ptr, i32 } [ %i.hy, %bb.ak ], [ %i.ku, %bb.aw ], [ %i.ku, %bb.az ]
  %i.li = load ptr, ptr %3, align 16, !tbaa !27   ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94, label %bb.ba

bb.ba:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lj = load ptr, ptr %i.ew, align 16, !tbaa !28
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94

_ZN5folly7TDigest14CentroidMergerD2Ev.exit94:     ; preds = %bb.ba, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit98: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94
  %.sroa.27.0189 = phi ptr [ %.sroa.27.1, %bb.aj ], [ %.sroa.27.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.14.0200, %.loopexit ], [ %.sroa.14.0200, %.loopexit.split-lp ]
  %.sroa.0129.0179 = phi ptr [ %.sroa.0129.1, %bb.aj ], [ %.sroa.0129.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %.sroa.0129.0201, %.loopexit ], [ %.sroa.0129.0201, %.loopexit.split-lp ] ; 2 uses
  %.pn69.pn = phi { ptr, i32 } [ %i.hx, %bb.aj ], [ %.pn65, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit94 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ln = ptrtoint ptr %.sroa.27.0189 to i64
  %i.lo = ptrtoint ptr %.sroa.0129.0179 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0179, i64 noundef %i.lp) #24
  resume { ptr, i32 } %.pn69.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit: ; preds = %bb.ay, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeERKS0_S2_(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK5folly7TDigest16estimateQuantileEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 6 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !23 ; 2 uses
  %i.g = fmul double %1, %i.f                     ; 3 uses
  %i.h = fcmp ogt double %1, 5.000000e-01
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ult double %1, 1.000000e+00
  br i1 %i.i, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !24
  br label %bb.p

.preheader:                                       ; preds = %bb.c, %bb.e
  %.sroa.069.0 = phi ptr [ %i.m, %bb.e ], [ %i.c, %bb.c ] ; 4 uses
  %.037 = phi double [ %i.p, %bb.e ], [ %i.f, %bb.c ] ; 3 uses
  %i.l = icmp eq ptr %.sroa.069.0, %i.a
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds i8, ptr %.sroa.069.0, i64 -16
  %i.n = getelementptr inbounds i8, ptr %.sroa.069.0, i64 -8
  %i.o = load double, ptr %i.n, align 8, !tbaa !71
  %i.p = fsub double %.037, %i.o                  ; 3 uses
  %i.q = fcmp ult double %i.g, %i.p
  br i1 %i.q, label %.preheader, label %bb.f, !llvm.loop !133

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %.sroa.069.0 to i64
  %i.s = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %i.v = add nsw i64 %i.u, -1
  %.pre = ptrtoint ptr %i.c to i64
  %.pre100 = sub i64 %.pre, %i.s
  %.pre102 = ashr exact i64 %.pre100, 4
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.w = fcmp ugt double %1, 0.000000e+00
  br i1 %i.w, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !25
  br label %bb.p

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.z = ptrtoint ptr %i.c to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.23992 = phi double [ %i.ag, %bb.j ], [ 0.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %.sroa.062.091 = phi ptr [ %i.al, %bb.j ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.062.091, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !71
  %i.ag = fadd double %.23992, %i.af              ; 3 uses
  %i.ah = fcmp olt double %i.g, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ai = ptrtoint ptr %.sroa.062.091 to i64
  %i.aj = sub i64 %i.ai, %i.aa
  %i.ak = ashr exact i64 %i.aj, 4
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.062.091, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.c
  br i1 %i.am, label %.loopexit, label %.lr.ph, !llvm.loop !134

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.f
  %.pre-phi103 = phi i64 [ %.pre102, %bb.f ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.3 = phi double [ %i.p, %bb.f ], [ %.23992, %bb.i ], [ %i.ag, %bb.j ] ; 4 uses
  %.2 = phi i64 [ %i.v, %bb.f ], [ %i.ak, %bb.i ], [ %i.ad, %bb.j ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load double, ptr %i.an, align 8, !tbaa !25 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24 ; 5 uses
  %i.ar = icmp ugt i64 %.pre-phi103, 1
  br i1 %i.ar, label %bb.k, label %bb.o

.thread:                                          ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load double, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.aw = ptrtoint ptr %i.c to i64
  %i.ax = ptrtoint ptr %i.a to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.ay, 16
  br i1 %i.az, label %.thread82, label %bb.o

bb.k:                                             ; preds = %.loopexit
  %i.ba = icmp eq i64 %.2, 0
  br i1 %i.ba, label %.thread82, label %bb.l

.thread82:                                        ; preds = %.thread, %bb.k
  %.37986 = phi double [ %.3, %bb.k ], [ %.037, %.thread ]
  %i.bb = phi double [ %i.ao, %bb.k ], [ %i.at, %.thread ]
  %i.bc = phi double [ %i.aq, %bb.k ], [ %i.av, %.thread ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_1
