Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_mb?download=true
inline.NumInlined: 7911
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 185
begin_hunk_0_@_ZZN6embree4sse223BVHNBuilderMBlurSAHGridILi4EE29createPrimRefArrayMSMBlurGridEPNS_5SceneERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS6_Lm16EEEEERNS_20BuildProgressMonitorENS_4BBoxIfEEENKUlPNS_8GridMeshERKNS_5rangeImEEmmRKNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEE_clESG_SK_mmSR_:bb.a
  %.lcssa450495.lcssa552.lcssa = phi <4 x float> [ %.lcssa450495.lcssa551, %._crit_edge594 ], [ splat (float -inf), %bb.a ]
  %.lcssa448493.lcssa549.lcssa = phi <4 x float> [ %.lcssa448493.lcssa548, %._crit_edge594 ], [ splat (float +inf), %bb.a ]
  %.lcssa446491.lcssa547.lcssa = phi <4 x float> [ %.lcssa446491.lcssa546, %._crit_edge594 ], [ splat (float -inf), %bb.a ]
  %.lcssa444490.lcssa544.lcssa = phi <4 x float> [ %.lcssa444490.lcssa543, %._crit_edge594 ], [ splat (float +inf), %bb.a ]
  %i.aa = phi <2 x float> [ %i.ua, %._crit_edge594 ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa444490.lcssa544.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa446491.lcssa547.lcssa, ptr %i.ak, align 16
  store <4 x float> %.lcssa448493.lcssa549.lcssa, ptr %i.aj, align 16
  store <4 x float> %.lcssa450495.lcssa552.lcssa, ptr %i.ai, align 16
  store <4 x float> %.lcssa452497.lcssa555.lcssa, ptr %i.ah, align 16
  store <4 x float> %.lcssa454499.lcssa558.lcssa, ptr %i.ag, align 16
  store float %.lcssa456501.lcssa561.lcssa, ptr %i.ac, align 8
  store float %.lcssa458503.lcssa564.lcssa, ptr %i.ab, align 4
  store i64 %.lcssa460505.lcssa567.lcssa, ptr %i.af, align 16
  store i64 %.lcssa462507.lcssa570.lcssa, ptr %i.ae, align 8
  store <2 x float> %i.aa, ptr %i.ad, align 16
  ret void

bb.c:                                             ; preds = %.lr.ph593, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread
  %i.al = phi i64 [ %i.k, %.lr.ph593 ], [ %i.tz, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.lcssa488540.lcssa610 = phi i64 [ 0, %.lr.ph593 ], [ %.lcssa488540.lcssa608, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.0591 = phi i64 [ %i.m, %.lr.ph593 ], [ %.3, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.037589 = phi i64 [ %i.i, %.lr.ph593 ], [ %i.ub, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %.lcssa444490.lcssa544588 = phi <4 x float> [ splat (float +inf), %.lr.ph593 ], [ %.lcssa444490.lcssa543, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa446491.lcssa547587 = phi <4 x float> [ splat (float -inf), %.lr.ph593 ], [ %.lcssa446491.lcssa546, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa448493.lcssa549586 = phi <4 x float> [ splat (float +inf), %.lr.ph593 ], [ %.lcssa448493.lcssa548, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa450495.lcssa552585 = phi <4 x float> [ splat (float -inf), %.lr.ph593 ], [ %.lcssa450495.lcssa551, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa452497.lcssa555584 = phi <4 x float> [ splat (float +inf), %.lr.ph593 ], [ %.lcssa452497.lcssa554, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa454499.lcssa558583 = phi <4 x float> [ splat (float -inf), %.lr.ph593 ], [ %.lcssa454499.lcssa557, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa456501.lcssa561582 = phi float [ 1.000000e+00, %.lr.ph593 ], [ %.lcssa456501.lcssa560, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa458503.lcssa564581 = phi float [ 0.000000e+00, %.lr.ph593 ], [ %.lcssa458503.lcssa563, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa460505.lcssa567580 = phi i64 [ 0, %.lr.ph593 ], [ %.lcssa460505.lcssa566, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa462507.lcssa570579 = phi i64 [ 0, %.lr.ph593 ], [ %.lcssa462507.lcssa569, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.am = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph593 ], [ %i.ua, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.an = load ptr, ptr %1, align 8, !nonnull !50, !align !62
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !noalias !6498 ; 3 uses
  %i.ao = load float, ptr %i.o, align 8, !noalias !6498 ; 4 uses
  %i.ap = load <2 x float>, ptr %i.an, align 4, !noalias !6499
  %i.aq = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x float> %i.ap, %i.aq
  %i.as = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = fdiv <2 x float> %i.ar, %i.au           ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = fmul float %i.aw, f0x3F800002
  %i.ay = fmul float %i.ao, %i.ax
  %i.az = tail call noundef float @llvm.floor.f32(float %i.ay) ; 2 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = select i1 %i.ba, float 0.000000e+00, float %i.az
  %i.bc = fptosi float %i.bb to i32               ; 2 uses
  %i.bd = extractelement <2 x float> %i.av, i64 1
  %i.be = fmul float %i.bd, f0x3F7FFFFC
  %i.bf = fmul float %i.ao, %i.be
  %i.bg = tail call noundef float @llvm.ceil.f32(float %i.bf) ; 2 uses
  %i.bh = fcmp olt float %i.bg, %i.ao
  %i.bi = select i1 %i.bh, float %i.bg, float %i.ao
  %i.bj = fptosi float %i.bi to i32               ; 2 uses
  %i.bk = sext i32 %i.bc to i64
  %i.bl = sext i32 %i.bj to i64
  %i.bm = load i64, ptr %i.q, align 8
  %.not.i = icmp ult i64 %.037589, %i.bm
  br i1 %.not.i, label %bb.d, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !56

bb.d:                                             ; preds = %bb.c
  %i.bn = load ptr, ptr %i.p, align 8
  %i.bo = load i64, ptr %i.r, align 8
  %i.bp = mul i64 %i.bo, %.037589
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp ; 9 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = load i64, ptr %i.s, align 8             ; 2 uses
  %.not34.i = icmp ugt i64 %i.bt, %i.bs
  br i1 %.not34.i, label %bb.e, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 10 ; 3 uses
  %i.bv = load i16, ptr %i.bu, align 2            ; 5 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 6 uses
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %i.ca = mul i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 4            ; 4 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add i32 %i.br, -1
  %i.cf = add i32 %i.ce, %i.ca
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = zext i32 %i.cg to i64
  %.not35.i = icmp ugt i64 %i.bt, %i.ch
  br i1 %.not35.i, label %.preheader417, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !56

.preheader417:                                    ; preds = %bb.e
  %i.ci = zext i16 %i.bv to i64
  %.not37.i432.not = icmp eq i16 %i.bv, 0
  br i1 %.not37.i432.not, label %.preheader414.lr.ph, label %.preheader415.lr.ph.a

.preheader415.lr.ph.a:                            ; preds = %.preheader417
  %i.cj = zext i16 %i.cc to i64
  %.not38.i429.not612 = icmp eq i16 %i.cc, 0
  %.not36.i427 = icmp ugt i32 %i.bc, %i.bj
  %i.ck = zext i32 %i.bz to i64
  %brmerge611 = select i1 %.not38.i429.not612, i1 true, i1 %.not36.i427
  br i1 %brmerge611, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337, label %.preheader415.lr.ph.split.split

.preheader415.lr.ph.split.split:                  ; preds = %.preheader415.lr.ph.a
  %i.cl = load ptr, ptr %i.t, align 8, !noalias !6500
  br label %.preheader415.a

.preheader415.a:                                  ; preds = %.preheader415.lr.ph.split.split, %..critedge40.i_crit_edge
  %.028.i433 = phi i64 [ 0, %.preheader415.lr.ph.split.split ], [ %i.dc, %..critedge40.i_crit_edge ] ; 2 uses
  %i.cm = mul nuw nsw i64 %.028.i433, %i.ck
  %invariant.op431 = add nuw nsw i64 %i.cm, %i.bs
  br label %.preheader

.preheader:                                       ; preds = %.preheader415.a, %..critedge.i_crit_edge
  %.027.i430 = phi i64 [ 0, %.preheader415.a ], [ %i.db, %..critedge.i_crit_edge ] ; 2 uses
  %.reass.reass = add nuw nsw i64 %.027.i430, %invariant.op431
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.cn = add i64 %.0.i428, 1                     ; 2 uses
  %.not36.i = icmp ugt i64 %i.cn, %i.bl
  br i1 %.not36.i, label %..critedge.i_crit_edge, label %bb.g, !llvm.loop !37

bb.g:                                             ; preds = %.preheader, %bb.f
  %.0.i428 = phi i64 [ %i.bk, %.preheader ], [ %i.cn, %bb.f ] ; 2 uses
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %.0.i428 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !6501
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !6501
  %i.cs = mul i64 %i.cr, %.reass.reass
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = load <4 x float>, ptr %i.ct, align 1, !noalias !6502 ; 2 uses
  %i.cv = fcmp ugt <4 x float> %i.cu, splat (float -1.844000e+18)
  %i.cw = fcmp olt <4 x float> %i.cu, splat (float 1.844000e+18)
  %i.cx = and <4 x i1> %i.cv, %i.cw
  %i.cy = bitcast <4 x i1> %i.cx to i4
  %i.cz = and i4 %i.cy, 7
  %i.da = icmp eq i4 %i.cz, 7
  br i1 %i.da, label %bb.f, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

..critedge.i_crit_edge:                           ; preds = %bb.f
  %i.db = add nuw nsw i64 %.027.i430, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.cj
  br i1 %exitcond.not, label %..critedge40.i_crit_edge, label %.preheader, !llvm.loop !38

..critedge40.i_crit_edge:                         ; preds = %..critedge.i_crit_edge
  %i.dc = add nuw nsw i64 %.028.i433, 1           ; 2 uses
  %exitcond645.not = icmp eq i64 %i.dc, %i.ci
  br i1 %exitcond645.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337, label %.preheader415.a, !llvm.loop !39

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337: ; preds = %..critedge40.i_crit_edge, %.preheader415.lr.ph.a
  %.not = icmp eq i16 %i.bv, 1
  br i1 %.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, label %.preheader414.lr.ph

.preheader414.lr.ph:                              ; preds = %.preheader417, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337
  %.sroa.5.0.insert.ext = shl i64 %.037589, 32
  br label %.preheader414

.preheader414:                                    ; preds = %.preheader414.lr.ph, %._crit_edge
  %i.dd = phi i16 [ %i.bv, %.preheader414.lr.ph ], [ %i.dk, %._crit_edge ]
  %i.de = phi i16 [ %i.cc, %.preheader414.lr.ph ], [ %i.dl, %._crit_edge ] ; 3 uses
  %.lcssa488541 = phi i64 [ %.lcssa488540.lcssa610, %.preheader414.lr.ph ], [ %.lcssa488540, %._crit_edge ] ; 2 uses
  %.1525 = phi i64 [ %.0591, %.preheader414.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.036524 = phi i32 [ 0, %.preheader414.lr.ph ], [ %.pre-phi, %._crit_edge ] ; 4 uses
  %.lcssa444490523 = phi <4 x float> [ %.lcssa444490.lcssa544588, %.preheader414.lr.ph ], [ %.lcssa444, %._crit_edge ] ; 2 uses
  %.lcssa446491522 = phi <4 x float> [ %.lcssa446491.lcssa547587, %.preheader414.lr.ph ], [ %.lcssa446, %._crit_edge ] ; 2 uses
  %.lcssa448493521 = phi <4 x float> [ %.lcssa448493.lcssa549586, %.preheader414.lr.ph ], [ %.lcssa448, %._crit_edge ] ; 2 uses
  %.lcssa450495520 = phi <4 x float> [ %.lcssa450495.lcssa552585, %.preheader414.lr.ph ], [ %.lcssa450, %._crit_edge ] ; 2 uses
  %.lcssa452497519 = phi <4 x float> [ %.lcssa452497.lcssa555584, %.preheader414.lr.ph ], [ %.lcssa452, %._crit_edge ] ; 2 uses
  %.lcssa454499518 = phi <4 x float> [ %.lcssa454499.lcssa558583, %.preheader414.lr.ph ], [ %.lcssa454, %._crit_edge ] ; 2 uses
  %.lcssa456501517 = phi float [ %.lcssa456501.lcssa561582, %.preheader414.lr.ph ], [ %.lcssa456, %._crit_edge ] ; 2 uses
  %.lcssa458503516 = phi float [ %.lcssa458503.lcssa564581, %.preheader414.lr.ph ], [ %.lcssa458, %._crit_edge ] ; 2 uses
  %.lcssa460505515 = phi i64 [ %.lcssa460505.lcssa567580, %.preheader414.lr.ph ], [ %.lcssa460, %._crit_edge ] ; 2 uses
  %.lcssa462507514 = phi i64 [ %.lcssa462507.lcssa570579, %.preheader414.lr.ph ], [ %.lcssa462, %._crit_edge ] ; 2 uses
  %i.df = phi <2 x float> [ %i.am, %.preheader414.lr.ph ], [ %i.dm, %._crit_edge ] ; 2 uses
  %.not613 = icmp eq i16 %i.de, 1
  br i1 %.not613, label %.preheader414.._crit_edge_crit_edge, label %.lr.ph473

.preheader414.._crit_edge_crit_edge:              ; preds = %.preheader414
  %.pre649.a = add i32 %.036524, 2
  br label %._crit_edge

.lr.ph473:                                        ; preds = %.preheader414
  %i.dg = zext i16 %i.de to i32
  %i.dh = zext i32 %.036524 to i64                ; 7 uses
  %i.di = add nuw nsw i64 %i.dh, 3
  %i.dj = add i32 %.036524, 2                     ; 2 uses
  %7 = and i32 %.036524, 65534
  %.masked = zext nneg i32 %7 to i64
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit
  %.pre = load i16, ptr %i.bu, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader414.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre649.a, %.preheader414.._crit_edge_crit_edge ], [ %i.dj, %._crit_edge.loopexit ] ; 2 uses
  %i.dk = phi i16 [ %i.dd, %.preheader414.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.dl = phi i16 [ 1, %.preheader414.._crit_edge_crit_edge ], [ %i.tv, %._crit_edge.loopexit ]
  %.lcssa488540 = phi i64 [ %.lcssa488541, %.preheader414.._crit_edge_crit_edge ], [ %i.ta, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa462 = phi i64 [ %.lcssa462507514, %.preheader414.._crit_edge_crit_edge ], [ %i.th, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa460 = phi i64 [ %.lcssa460505515, %.preheader414.._crit_edge_crit_edge ], [ %i.tc, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa458 = phi float [ %.lcssa458503516, %.preheader414.._crit_edge_crit_edge ], [ %i.sz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa456 = phi float [ %.lcssa456501517, %.preheader414.._crit_edge_crit_edge ], [ %i.sx, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa454 = phi <4 x float> [ %.lcssa454499518, %.preheader414.._crit_edge_crit_edge ], [ %i.sv, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa452 = phi <4 x float> [ %.lcssa452497519, %.preheader414.._crit_edge_crit_edge ], [ %i.su, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa450 = phi <4 x float> [ %.lcssa450495520, %.preheader414.._crit_edge_crit_edge ], [ %i.st, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa448 = phi <4 x float> [ %.lcssa448493521, %.preheader414.._crit_edge_crit_edge ], [ %i.ss, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa446 = phi <4 x float> [ %.lcssa446491522, %.preheader414.._crit_edge_crit_edge ], [ %i.sr, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa444 = phi <4 x float> [ %.lcssa444490523, %.preheader414.._crit_edge_crit_edge ], [ %i.sq, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1525, %.preheader414.._crit_edge_crit_edge ], [ %i.tn, %._crit_edge.loopexit ] ; 2 uses
  %i.dm = phi <2 x float> [ %i.df, %.preheader414.._crit_edge_crit_edge ], [ %i.tg, %._crit_edge.loopexit ] ; 2 uses
  %i.dn = zext i16 %i.dk to i32
  %i.do = add nsw i32 %i.dn, -1
  %i.dp = icmp ult i32 %.pre-phi, %i.do
  br i1 %i.dp, label %.preheader414, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619, !llvm.loop !6443

bb.h:                                             ; preds = %.lr.ph473, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit
  %i.dq = phi i64 [ %.lcssa488541, %.lr.ph473 ], [ %i.ta, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dr = phi i32 [ %i.dg, %.lr.ph473 ], [ %i.tw, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.ds = phi i16 [ %i.de, %.lr.ph473 ], [ %i.tv, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 3 uses
  %.2472 = phi i64 [ %.1525, %.lr.ph473 ], [ %i.tn, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 4 uses
  %.035471 = phi i32 [ 0, %.lr.ph473 ], [ %i.ti, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 3 uses
  %i.dt = phi <4 x float> [ %.lcssa444490523, %.lr.ph473 ], [ %i.sq, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.du = phi <4 x float> [ %.lcssa446491522, %.lr.ph473 ], [ %i.sr, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dv = phi <4 x float> [ %.lcssa448493521, %.lr.ph473 ], [ %i.ss, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dw = phi <4 x float> [ %.lcssa450495520, %.lr.ph473 ], [ %i.st, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dx = phi <4 x float> [ %.lcssa452497519, %.lr.ph473 ], [ %i.su, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dy = phi <4 x float> [ %.lcssa454499518, %.lr.ph473 ], [ %i.sv, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dz = phi float [ %.lcssa456501517, %.lr.ph473 ], [ %i.sx, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.ea = phi float [ %.lcssa458503516, %.lr.ph473 ], [ %i.sz, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.eb = phi i64 [ %.lcssa460505515, %.lr.ph473 ], [ %i.tc, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.ec = phi i64 [ %.lcssa462507514, %.lr.ph473 ], [ %i.th, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.ed = phi <2 x float> [ %i.df, %.lr.ph473 ], [ %i.tg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.ee = zext i32 %.035471 to i64                ; 26 uses
  %i.ef = load ptr, ptr %1, align 8, !nonnull !50, !align !62
  %i.eg = load float, ptr %i.o, align 8, !noalias !6503 ; 6 uses
  %i.eh = load float, ptr %i.n, align 4           ; 2 uses
  %i.ei = load float, ptr %i.u, align 8
  %i.ej = fsub float %i.ei, %i.eh
  %i.ek = load <2 x float>, ptr %i.ef, align 4
  %i.el = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fsub <2 x float> %i.ek, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fdiv <2 x float> %i.en, %i.ep           ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0 ; 3 uses
  %i.es = fmul float %i.eg, %i.er                 ; 3 uses
  %i.et = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.eu = fmul float %i.eg, %i.et                 ; 3 uses
  %i.ev = tail call noundef float @llvm.floor.f32(float %i.es) ; 3 uses
  %i.ew = tail call noundef float @llvm.ceil.f32(float %i.eu) ; 3 uses
  %i.ex = fcmp ogt float %i.ev, 0.000000e+00
  %i.ey = select i1 %i.ex, float %i.ev, float 0.000000e+00 ; 3 uses
  %i.ez = fcmp olt float %i.ew, %i.eg
  %i.fa = select i1 %i.ez, float %i.ew, float %i.eg ; 3 uses
  %i.fb = fptosi float %i.ey to i32
  %i.fc = fptosi float %i.fa to i32               ; 2 uses
  %i.fd = fptosi float %i.ev to i32
  %i.fe = tail call noundef i32 @llvm.smax.i32(i32 %i.fd, i32 -1) ; 4 uses
  %i.ff = fptosi float %i.ew to i32
  %i.fg = fptosi float %i.eg to i32
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = tail call noundef i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fh) ; 5 uses
  %i.fj = sext i32 %i.fb to i64                   ; 2 uses
  %i.fk = load i16, ptr %i.bu, align 2, !noalias !6504 ; 2 uses
  %i.fl = zext i16 %i.fk to i64                   ; 2 uses
  %i.fm = tail call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.fl) ; 5 uses
  %.not26.i.not24.i = icmp samesign ule i64 %i.fl, %i.dh ; 2 uses
  br i1 %.not26.i.not24.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit60.thread688, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.fn = add nuw nsw i64 %i.ee, 3
  %i.fo = zext i16 %i.ds to i64                   ; 2 uses
  %i.fp = tail call noundef i64 @llvm.umin.i64(i64 %i.fn, i64 %i.fo) ; 6 uses
  %.not.i19.i = icmp samesign ugt i64 %i.fo, %i.ee
  br i1 %.not.i19.i, label %.preheader.lr.ph.split.us.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit60.thread

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.fq = load i32, ptr %i.bq, align 4, !noalias !6505
  %i.fr = zext i32 %i.fq to i64
  %i.fs = load i32, ptr %i.by, align 4, !noalias !6505
  %i.ft = zext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.t, align 8, !noalias !6506
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %i.fj ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !6507 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !6507 ; 3 uses
  %.neg = or disjoint i64 %i.ee, 1
  %xtraiter = and i64 %i.fp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fz = or disjoint i64 %i.ee, 1
  %i.ga = icmp eq i64 %i.fp, %.neg
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %..critedge28.i_crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.022.i27.us.i = phi i64 [ %i.dh, %.preheader.lr.ph.split.us.i ], [ %i.hk, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.04.026.us.i = phi <4 x float> [ splat (float +inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa789, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.6.025.us.i = phi <4 x float> [ splat (float -inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %i.gb = mul i64 %.022.i27.us.i, %i.ft
  %invariant.op.us.i = add i64 %i.gb, %i.fr       ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.i
  %.reass.us.i.prol = add i64 %invariant.op.us.i, %i.ee
  %i.gc = mul i64 %.reass.us.i.prol, %i.fy
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gc
  %i.ge = load <4 x float>, ptr %i.gd, align 1, !noalias !6508 ; 4 uses
  %i.gf = fcmp ugt <4 x float> %i.ge, splat (float -1.844000e+18)
  %i.gg = fcmp olt <4 x float> %i.ge, splat (float 1.844000e+18)
  %i.gh = and <4 x i1> %i.gf, %i.gg
  %i.gi = bitcast <4 x i1> %i.gh to i4
  %i.gj = and i4 %i.gi, 7
  %i.gk = icmp eq i4 %i.gj, 7
  br i1 %i.gk, label %.prol.loopexit.unr-lcssa, label %.preheader.lr.ph.split.us.i47, !prof !56

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %i.gl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.026.us.i, <4 x float> %i.ge) ; 2 uses
  %i.gm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.025.us.i, <4 x float> %i.ge) ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us.i
  %.lcssa789.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  %.0.i22.us.i.unr = phi i64 [ %i.ee, %.preheader.us.i ], [ %i.fz, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.121.us.i.unr = phi <4 x float> [ %.sroa.04.026.us.i, %.preheader.us.i ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.120.us.i.unr = phi <4 x float> [ %.sroa.6.025.us.i, %.preheader.us.i ], [ %i.gm, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ga, label %..critedge28.i_crit_edge.us.i, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit
  %invariant.op = add i64 1, %invariant.op.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.preheader.us.i.new
  %.0.i22.us.i = phi i64 [ %.0.i22.us.i.unr, %.preheader.us.i.new ], [ %i.hj, %bb.k ] ; 3 uses
  %.sroa.04.121.us.i = phi <4 x float> [ %.sroa.04.121.us.i.unr, %.preheader.us.i.new ], [ %i.hh, %bb.k ]
  %.sroa.6.120.us.i = phi <4 x float> [ %.sroa.6.120.us.i.unr, %.preheader.us.i.new ], [ %i.hi, %bb.k ]
  %.reass.us.i = add i64 %invariant.op.us.i, %.0.i22.us.i
  %i.gn = mul i64 %.reass.us.i, %i.fy
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gn
  %i.gp = load <4 x float>, ptr %i.go, align 1, !noalias !6508 ; 4 uses
  %i.gq = fcmp ugt <4 x float> %i.gp, splat (float -1.844000e+18)
  %i.gr = fcmp olt <4 x float> %i.gp, splat (float 1.844000e+18)
  %i.gs = and <4 x i1> %i.gq, %i.gr
  %i.gt = bitcast <4 x i1> %i.gs to i4
  %i.gu = and i4 %i.gt, 7
  %i.gv = icmp eq i4 %i.gu, 7
  br i1 %i.gv, label %bb.j, label %.preheader.lr.ph.split.us.i47, !prof !56

bb.j:                                             ; preds = %bb.i
  %.reass.us.i.1.reass = add i64 %.0.i22.us.i, %invariant.op
  %i.gw = mul i64 %.reass.us.i.1.reass, %i.fy
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !6508 ; 4 uses
  %i.gz = fcmp ugt <4 x float> %i.gy, splat (float -1.844000e+18)
  %i.ha = fcmp olt <4 x float> %i.gy, splat (float 1.844000e+18)
  %i.hb = and <4 x i1> %i.gz, %i.ha
  %i.hc = bitcast <4 x i1> %i.hb to i4
  %i.hd = and i4 %i.hc, 7
  %i.he = icmp eq i4 %i.hd, 7
  br i1 %i.he, label %bb.k, label %.preheader.lr.ph.split.us.i47, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.hf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.120.us.i, <4 x float> %i.gp)
  %i.hg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.121.us.i, <4 x float> %i.gp)
  %i.hh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hg, <4 x float> %i.gy) ; 2 uses
  %i.hi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hf, <4 x float> %i.gy) ; 2 uses
  %i.hj = add i64 %.0.i22.us.i, 2                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.hj, %i.fp
  br i1 %exitcond.not.i.1, label %..critedge28.i_crit_edge.us.i, label %bb.i, !llvm.loop !40

..critedge28.i_crit_edge.us.i:                    ; preds = %bb.k, %.prol.loopexit
  %.lcssa789 = phi <4 x float> [ %.lcssa789.unr, %.prol.loopexit ], [ %i.hh, %bb.k ] ; 2 uses
  %.lcssa = phi <4 x float> [ %.lcssa.unr, %.prol.loopexit ], [ %i.hi, %bb.k ] ; 2 uses
  %i.hk = add nuw nsw i64 %.022.i27.us.i, 1       ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.hk, %i.fm
  br i1 %exitcond33.not.i, label %.preheader.lr.ph.split.us.i47, label %.preheader.us.i, !llvm.loop !41

.preheader.lr.ph.split.us.i47:                    ; preds = %..critedge28.i_crit_edge.us.i, %bb.j, %bb.i, %.prol.preheader
  %.sroa.7263.0346 = phi <4 x float> [ splat (float -inf), %bb.j ], [ splat (float -inf), %.prol.preheader ], [ splat (float -inf), %bb.i ], [ %.lcssa, %..critedge28.i_crit_edge.us.i ] ; 6 uses
  %.sroa.0260.0343 = phi <4 x float> [ splat (float +inf), %bb.j ], [ splat (float +inf), %.prol.preheader ], [ splat (float +inf), %bb.i ], [ %.lcssa789, %..critedge28.i_crit_edge.us.i ] ; 6 uses
  %i.hl = sext i32 %i.fc to i64
  %i.hm = load i32, ptr %i.bq, align 4, !noalias !6509
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load i32, ptr %i.by, align 4, !noalias !6509
  %i.hp = zext i32 %i.ho to i64
  %i.hq = load ptr, ptr %i.t, align 8, !noalias !6510
  %i.hr = getelementptr inbounds nuw [56 x i8], ptr %i.hq, i64 %i.hl ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse223BVHNBuilderMBlurSAHGridILi4EE29createPrimRefArrayMSMBlurGridEPNS_5SceneERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS6_Lm16EEEEERNS_20BuildProgressMonitorENS_4BBoxIfEEENKUlPNS_8GridMeshERKNS_5rangeImEEmmRKNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEE_clESG_SK_mmSR_:bb.a
  %i.pc = fadd <4 x float> %i.pb, %i.pa           ; 2 uses
  %.0.i40435 = add nsw i32 %i.fe, 1               ; 2 uses
  %i.pd = icmp slt i32 %.0.i40435, %i.fi
  br i1 %i.pd, label %.lr.ph, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit

.lr.ph:                                           ; preds = %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100
  %i.pe = fsub float %i.et, %i.er
  %i.pf = add nuw nsw i64 %i.ee, 3
  %i.pg = zext i16 %i.ds to i64                   ; 2 uses
  %i.ph = tail call i64 @llvm.umin.i64(i64 %i.pf, i64 %i.pg) ; 2 uses
  %.not.i19.i106 = icmp samesign ule i64 %i.pg, %i.ee
  %i.pi = zext nneg i32 %.0.i40435 to i64
  %brmerge = select i1 %.not26.i.not24.i, i1 true, i1 %.not.i19.i106
  %i.pj = sub nsw i64 %i.ph, %i.ee
  %i.pk = freeze i64 %i.pj                        ; 2 uses
  %xtraiter836 = and i64 %i.pk, 1
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  %i.pl = or disjoint i64 %i.ee, 1
  %i.pm = icmp eq i64 %i.pk, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120
  %indvars.iv = phi i64 [ %i.pi, %.lr.ph ], [ %indvars.iv.next, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ] ; 3 uses
  %.sroa.7243.0439 = phi <4 x float> [ %i.ou, %.lr.ph ], [ %i.sc, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ] ; 2 uses
  %.sroa.0240.0438 = phi <4 x float> [ %i.or, %.lr.ph ], [ %i.sa, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ] ; 2 uses
  %.sroa.7237.0437 = phi <4 x float> [ %i.pc, %.lr.ph ], [ %i.sd, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ] ; 2 uses
  %.sroa.0234.0436 = phi <4 x float> [ %i.oz, %.lr.ph ], [ %i.sb, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ] ; 2 uses
  %i.pn = trunc nsw i64 %indvars.iv to i32
  %i.po = sitofp i32 %i.pn to float
  %i.pp = fdiv float %i.po, %i.eg
  %i.pq = fsub float %i.pp, %i.er
  %i.pr = fdiv float %i.pq, %i.pe                 ; 2 uses
  %i.ps = fsub float 1.000000e+00, %i.pr
  %i.pt = insertelement <4 x float> poison, float %i.pr, i64 0
  %i.pu = shufflevector <4 x float> %i.pt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pv = fmul <4 x float> %.sroa.0234.0436, %i.pu
  %i.pw = insertelement <4 x float> poison, float %i.ps, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.py = fmul <4 x float> %.sroa.0240.0438, %i.px
  %i.pz = fadd <4 x float> %i.pv, %i.py
  %i.qa = fmul <4 x float> %.sroa.7237.0437, %i.pu
  %i.qb = fmul <4 x float> %.sroa.7243.0439, %i.px
  %i.qc = fadd <4 x float> %i.qa, %i.qb
  br i1 %brmerge, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, label %.preheader.lr.ph.split.us.i107

.preheader.lr.ph.split.us.i107:                   ; preds = %bb.v
  %i.qd = load i32, ptr %i.bq, align 4, !noalias !6521
  %i.qe = zext i32 %i.qd to i64
  %i.qf = load i32, ptr %i.by, align 4, !noalias !6521
  %i.qg = zext i32 %i.qf to i64
  %i.qh = load ptr, ptr %i.t, align 8, !noalias !6522
  %i.qi = getelementptr inbounds nuw [56 x i8], ptr %i.qh, i64 %indvars.iv ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !6523 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !6523 ; 3 uses
  br label %.preheader.us.i108

.preheader.us.i108:                               ; preds = %..critedge28.i_crit_edge.us.i118, %.preheader.lr.ph.split.us.i107
  %.022.i27.us.i109 = phi i64 [ %i.dh, %.preheader.lr.ph.split.us.i107 ], [ %i.rv, %..critedge28.i_crit_edge.us.i118 ] ; 2 uses
  %.sroa.04.026.us.i110 = phi <4 x float> [ splat (float +inf), %.preheader.lr.ph.split.us.i107 ], [ %.lcssa797.a, %..critedge28.i_crit_edge.us.i118 ] ; 2 uses
  %.sroa.6.025.us.i111 = phi <4 x float> [ splat (float -inf), %.preheader.lr.ph.split.us.i107 ], [ %.lcssa796, %..critedge28.i_crit_edge.us.i118 ] ; 2 uses
  %i.qm = mul i64 %.022.i27.us.i109, %i.qg
  %invariant.op.us.i112 = add i64 %i.qm, %i.qe    ; 3 uses
  br i1 %lcmp.mod837.not, label %.prol.loopexit835, label %.prol.preheader834

.prol.preheader834:                               ; preds = %.preheader.us.i108
  %.reass.us.i116.prol = add i64 %invariant.op.us.i112, %i.ee
  %i.qn = mul i64 %.reass.us.i116.prol, %i.ql
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qn
  %i.qp = load <4 x float>, ptr %i.qo, align 1, !noalias !6524 ; 4 uses
  %i.qq = fcmp ugt <4 x float> %i.qp, splat (float -1.844000e+18)
  %i.qr = fcmp olt <4 x float> %i.qp, splat (float 1.844000e+18)
  %i.qs = and <4 x i1> %i.qq, %i.qr
  %i.qt = bitcast <4 x i1> %i.qs to i4
  %i.qu = and i4 %i.qt, 7
  %i.qv = icmp eq i4 %i.qu, 7
  br i1 %i.qv, label %.prol.loopexit835.unr-lcssa, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, !prof !56

.prol.loopexit835.unr-lcssa:                      ; preds = %.prol.preheader834
  %i.qw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.026.us.i110, <4 x float> %i.qp) ; 2 uses
  %i.qx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.025.us.i111, <4 x float> %i.qp) ; 2 uses
  br label %.prol.loopexit835

.prol.loopexit835:                                ; preds = %.prol.loopexit835.unr-lcssa, %.preheader.us.i108
  %.lcssa797.unr.a = phi <4 x float> [ poison, %.preheader.us.i108 ], [ %i.qw, %.prol.loopexit835.unr-lcssa ]
  %.lcssa796.unr = phi <4 x float> [ poison, %.preheader.us.i108 ], [ %i.qx, %.prol.loopexit835.unr-lcssa ]
  %.0.i22.us.i113.unr = phi i64 [ %i.ee, %.preheader.us.i108 ], [ %i.pl, %.prol.loopexit835.unr-lcssa ]
  %.sroa.04.121.us.i114.unr = phi <4 x float> [ %.sroa.04.026.us.i110, %.preheader.us.i108 ], [ %i.qw, %.prol.loopexit835.unr-lcssa ]
  %.sroa.6.120.us.i115.unr = phi <4 x float> [ %.sroa.6.025.us.i111, %.preheader.us.i108 ], [ %i.qx, %.prol.loopexit835.unr-lcssa ]
  br i1 %i.pm, label %..critedge28.i_crit_edge.us.i118, label %.preheader.us.i108.new

.preheader.us.i108.new:                           ; preds = %.prol.loopexit835
  %invariant.op875 = add i64 1, %invariant.op.us.i112
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.preheader.us.i108.new
  %.0.i22.us.i113 = phi i64 [ %.0.i22.us.i113.unr, %.preheader.us.i108.new ], [ %i.ru, %bb.y ] ; 3 uses
  %.sroa.04.121.us.i114 = phi <4 x float> [ %.sroa.04.121.us.i114.unr, %.preheader.us.i108.new ], [ %i.rs, %bb.y ]
  %.sroa.6.120.us.i115 = phi <4 x float> [ %.sroa.6.120.us.i115.unr, %.preheader.us.i108.new ], [ %i.rt, %bb.y ]
  %.reass.us.i116 = add i64 %invariant.op.us.i112, %.0.i22.us.i113
  %i.qy = mul i64 %.reass.us.i116, %i.ql
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qy
  %i.ra = load <4 x float>, ptr %i.qz, align 1, !noalias !6524 ; 4 uses
  %i.rb = fcmp ugt <4 x float> %i.ra, splat (float -1.844000e+18)
  %i.rc = fcmp olt <4 x float> %i.ra, splat (float 1.844000e+18)
  %i.rd = and <4 x i1> %i.rb, %i.rc
  %i.re = bitcast <4 x i1> %i.rd to i4
  %i.rf = and i4 %i.re, 7
  %i.rg = icmp eq i4 %i.rf, 7
  br i1 %i.rg, label %bb.x, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, !prof !56

bb.x:                                             ; preds = %bb.w
  %.reass.us.i116.1.reass = add i64 %.0.i22.us.i113, %invariant.op875
  %i.rh = mul i64 %.reass.us.i116.1.reass, %i.ql
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.rh
  %i.rj = load <4 x float>, ptr %i.ri, align 1, !noalias !6524 ; 4 uses
  %i.rk = fcmp ugt <4 x float> %i.rj, splat (float -1.844000e+18)
  %i.rl = fcmp olt <4 x float> %i.rj, splat (float 1.844000e+18)
  %i.rm = and <4 x i1> %i.rk, %i.rl
  %i.rn = bitcast <4 x i1> %i.rm to i4
  %i.ro = and i4 %i.rn, 7
  %i.rp = icmp eq i4 %i.ro, 7
  br i1 %i.rp, label %bb.y, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, !prof !56

bb.y:                                             ; preds = %bb.x
  %i.rq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.120.us.i115, <4 x float> %i.ra)
  %i.rr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.121.us.i114, <4 x float> %i.ra)
  %i.rs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rr, <4 x float> %i.rj) ; 2 uses
  %i.rt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rq, <4 x float> %i.rj) ; 2 uses
  %i.ru = add i64 %.0.i22.us.i113, 2              ; 2 uses
  %exitcond.not.i117.1 = icmp eq i64 %i.ru, %i.ph
  br i1 %exitcond.not.i117.1, label %..critedge28.i_crit_edge.us.i118, label %bb.w, !llvm.loop !40

..critedge28.i_crit_edge.us.i118:                 ; preds = %bb.y, %.prol.loopexit835
  %.lcssa797.a = phi <4 x float> [ %.lcssa797.unr.a, %.prol.loopexit835 ], [ %i.rs, %bb.y ] ; 2 uses
  %.lcssa796 = phi <4 x float> [ %.lcssa796.unr, %.prol.loopexit835 ], [ %i.rt, %bb.y ] ; 2 uses
  %i.rv = add nuw nsw i64 %.022.i27.us.i109, 1    ; 2 uses
  %exitcond33.not.i119 = icmp eq i64 %i.rv, %i.fm
  br i1 %exitcond33.not.i119, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, label %.preheader.us.i108, !llvm.loop !41

_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120: ; preds = %..critedge28.i_crit_edge.us.i118, %bb.x, %bb.w, %.prol.preheader834, %bb.v
  %.sroa.0230.0 = phi <4 x float> [ splat (float +inf), %bb.x ], [ splat (float +inf), %bb.v ], [ splat (float +inf), %.prol.preheader834 ], [ splat (float +inf), %bb.w ], [ %.lcssa797.a, %..critedge28.i_crit_edge.us.i118 ]
  %.sroa.5231.0 = phi <4 x float> [ splat (float -inf), %bb.x ], [ splat (float -inf), %bb.v ], [ splat (float -inf), %.prol.preheader834 ], [ splat (float -inf), %bb.w ], [ %.lcssa796, %..critedge28.i_crit_edge.us.i118 ]
  %i.rw = fsub <4 x float> %.sroa.0230.0, %i.pz
  %i.rx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rw, <4 x float> zeroinitializer) ; 2 uses
  %i.ry = fsub <4 x float> %.sroa.5231.0, %i.qc
  %i.rz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ry, <4 x float> zeroinitializer) ; 2 uses
  %i.sa = fadd <4 x float> %.sroa.0240.0438, %i.rx ; 2 uses
  %i.sb = fadd <4 x float> %.sroa.0234.0436, %i.rx ; 2 uses
  %i.sc = fadd <4 x float> %.sroa.7243.0439, %i.rz ; 2 uses
  %i.sd = fadd <4 x float> %.sroa.7237.0437, %i.rz ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond647.not = icmp eq i32 %i.fi, %lftr.wideiv
  br i1 %exitcond647.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit, label %bb.v, !llvm.loop !42

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit: ; preds = %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100, %bb.o
  %.sroa.11.0 = phi <4 x float> [ %i.kk, %bb.o ], [ %i.pc, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100 ], [ %i.sd, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ]
  %.sroa.8.0 = phi <4 x float> [ %i.kh, %bb.o ], [ %i.oz, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100 ], [ %i.sb, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ]
  %.sroa.5122.0 = phi <4 x float> [ %i.kc, %bb.o ], [ %i.ou, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100 ], [ %i.sc, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ]
  %.sroa.0121.0 = phi <4 x float> [ %i.jz, %bb.o ], [ %i.or, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit100 ], [ %i.sa, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit120 ]
  %i.se = load i32, ptr %i.v, align 4
  %i.sf = add i32 %i.se, -1                       ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 4 uses
  %i.sg = trunc i64 %.2472 to i32
  %.sroa.0123.12.vec.insert = insertelement <4 x float> %.sroa.0121.0, float %i.x, i64 3 ; 3 uses
  %i.sh = bitcast i32 %i.sg to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5122.0, float %i.sh, i64 3 ; 3 uses
  %i.si = bitcast i32 %i.sf to float              ; 2 uses
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.8.0, float %i.si, i64 3 ; 3 uses
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.si, i64 3 ; 3 uses
  %i.sj = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.sk = fmul <4 x float> %.sroa.0123.12.vec.insert, splat (float 5.000000e-01)
  %i.sl = fadd <4 x float> %i.sk, %i.sj
  %i.sm = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.sn = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.so = fadd <4 x float> %i.sn, %i.sm
  %i.sp = fadd <4 x float> %i.sl, %i.so           ; 2 uses
  %i.sq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dt, <4 x float> %.sroa.0123.12.vec.insert) ; 2 uses
  %i.sr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.du, <4 x float> %.sroa.7.28.vec.insert) ; 2 uses
  %i.ss = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dv, <4 x float> %.sroa.12.44.vec.insert) ; 2 uses
  %i.st = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dw, <4 x float> %.sroa.18.60.vec.insert) ; 2 uses
  %i.su = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dx, <4 x float> %i.sp) ; 2 uses
  %i.sv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dy, <4 x float> %i.sp) ; 2 uses
  %.sroa.25.64.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.sw = fcmp olt float %i.dz, %.sroa.25.64.vec.extract
  %i.sx = select i1 %i.sw, float %i.dz, float %.sroa.25.64.vec.extract ; 2 uses
  %.sroa.25.68.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.sy = fcmp olt float %i.ea, %.sroa.25.68.vec.extract
  %i.sz = select i1 %i.sy, float %.sroa.25.68.vec.extract, float %i.ea ; 2 uses
  %i.ta = add i64 %i.dq, 1                        ; 2 uses
  %i.tb = zext i32 %i.sf to i64                   ; 3 uses
  %i.tc = add i64 %i.eb, %i.tb                    ; 2 uses
  %i.td = icmp ult i64 %i.ec, %i.tb
  %i.te = insertelement <2 x i1> poison, i1 %i.td, i64 0
  %i.tf = shufflevector <2 x i1> %i.te, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.tg = select <2 x i1> %i.tf, <2 x float> %.sroa.0.0.copyload, <2 x float> %i.ed ; 2 uses
  %i.th = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.tb) ; 2 uses
  %i.ti = add i32 %.035471, 2                     ; 3 uses
  %.not.i38 = icmp ult i32 %i.ti, %i.dr
  %8 = select i1 %.not.i38, i64 0, i64 32768
  %i.tj = zext i16 %i.fk to i32
  %.not.i39 = icmp ult i32 %i.dj, %i.tj
  %9 = select i1 %.not.i39, i64 0, i64 32768
  %i.tk = load ptr, ptr %i.y, align 8
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %.2472
  %.sroa.4.0.insert.ext = or i64 %9, %.masked
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.035.masked = and i32 %.035471, 65534
  %.masked409 = zext nneg i32 %.035.masked to i64
  %.sroa.0.0.insert.ext = or i64 %8, %.masked409
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.tl, align 4
  %i.tm = load ptr, ptr %i.z, align 8, !nonnull !50, !align !52
  %i.tn = add i64 %.2472, 1                       ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = getelementptr inbounds nuw [80 x i8], ptr %i.tp, i64 %.2472 ; 5 uses
  store <4 x float> %.sroa.0123.12.vec.insert, ptr %i.tq, align 16
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.tr, align 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.ts, align 16
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.tt, align 16
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  store <2 x float> %.sroa.0.0.copyload, ptr %i.tu, align 16
  %i.tv = load i16, ptr %i.cb, align 4            ; 3 uses
  %i.tw = zext i16 %i.tv to i32                   ; 2 uses
  %i.tx = add nsw i32 %i.tw, -1
  %i.ty = icmp ult i32 %i.ti, %i.tx
  br i1 %i.ty, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !6496

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619: ; preds = %._crit_edge
  %.pre648 = load i64, ptr %i.j, align 8
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread: ; preds = %bb.g, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337, %bb.e, %bb.d, %bb.c
  %i.tz = phi i64 [ %i.al, %bb.e ], [ %.pre648, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %i.al, %bb.c ], [ %i.al, %bb.d ], [ %i.al, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %i.al, %bb.g ] ; 2 uses
  %.lcssa488540.lcssa608 = phi i64 [ %.lcssa488540.lcssa610, %bb.e ], [ %.lcssa488540, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa488540.lcssa610, %bb.c ], [ %.lcssa488540.lcssa610, %bb.d ], [ %.lcssa488540.lcssa610, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa488540.lcssa610, %bb.g ] ; 2 uses
  %.lcssa462507.lcssa569 = phi i64 [ %.lcssa462507.lcssa570579, %bb.e ], [ %.lcssa462, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa462507.lcssa570579, %bb.c ], [ %.lcssa462507.lcssa570579, %bb.d ], [ %.lcssa462507.lcssa570579, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa462507.lcssa570579, %bb.g ] ; 2 uses
  %.lcssa460505.lcssa566 = phi i64 [ %.lcssa460505.lcssa567580, %bb.e ], [ %.lcssa460, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa460505.lcssa567580, %bb.c ], [ %.lcssa460505.lcssa567580, %bb.d ], [ %.lcssa460505.lcssa567580, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa460505.lcssa567580, %bb.g ] ; 2 uses
  %.lcssa458503.lcssa563 = phi float [ %.lcssa458503.lcssa564581, %bb.e ], [ %.lcssa458, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa458503.lcssa564581, %bb.c ], [ %.lcssa458503.lcssa564581, %bb.d ], [ %.lcssa458503.lcssa564581, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa458503.lcssa564581, %bb.g ] ; 2 uses
  %.lcssa456501.lcssa560 = phi float [ %.lcssa456501.lcssa561582, %bb.e ], [ %.lcssa456, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa456501.lcssa561582, %bb.c ], [ %.lcssa456501.lcssa561582, %bb.d ], [ %.lcssa456501.lcssa561582, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa456501.lcssa561582, %bb.g ] ; 2 uses
  %.lcssa454499.lcssa557 = phi <4 x float> [ %.lcssa454499.lcssa558583, %bb.e ], [ %.lcssa454, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa454499.lcssa558583, %bb.c ], [ %.lcssa454499.lcssa558583, %bb.d ], [ %.lcssa454499.lcssa558583, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa454499.lcssa558583, %bb.g ] ; 2 uses
  %.lcssa452497.lcssa554 = phi <4 x float> [ %.lcssa452497.lcssa555584, %bb.e ], [ %.lcssa452, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa452497.lcssa555584, %bb.c ], [ %.lcssa452497.lcssa555584, %bb.d ], [ %.lcssa452497.lcssa555584, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa452497.lcssa555584, %bb.g ] ; 2 uses
  %.lcssa450495.lcssa551 = phi <4 x float> [ %.lcssa450495.lcssa552585, %bb.e ], [ %.lcssa450, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa450495.lcssa552585, %bb.c ], [ %.lcssa450495.lcssa552585, %bb.d ], [ %.lcssa450495.lcssa552585, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa450495.lcssa552585, %bb.g ] ; 2 uses
  %.lcssa448493.lcssa548 = phi <4 x float> [ %.lcssa448493.lcssa549586, %bb.e ], [ %.lcssa448, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa448493.lcssa549586, %bb.c ], [ %.lcssa448493.lcssa549586, %bb.d ], [ %.lcssa448493.lcssa549586, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa448493.lcssa549586, %bb.g ] ; 2 uses
  %.lcssa446491.lcssa546 = phi <4 x float> [ %.lcssa446491.lcssa547587, %bb.e ], [ %.lcssa446, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa446491.lcssa547587, %bb.c ], [ %.lcssa446491.lcssa547587, %bb.d ], [ %.lcssa446491.lcssa547587, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa446491.lcssa547587, %bb.g ] ; 2 uses
  %.lcssa444490.lcssa543 = phi <4 x float> [ %.lcssa444490.lcssa544588, %bb.e ], [ %.lcssa444, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.lcssa444490.lcssa544588, %bb.c ], [ %.lcssa444490.lcssa544588, %bb.d ], [ %.lcssa444490.lcssa544588, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.lcssa444490.lcssa544588, %bb.g ] ; 2 uses
  %.3 = phi i64 [ %.0591, %bb.e ], [ %.2.lcssa, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %.0591, %bb.c ], [ %.0591, %bb.d ], [ %.0591, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %.0591, %bb.g ]
  %i.ua = phi <2 x float> [ %i.am, %bb.e ], [ %i.dm, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit619 ], [ %i.am, %bb.c ], [ %i.am, %bb.d ], [ %i.am, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread337 ], [ %i.am, %bb.g ] ; 2 uses
  %i.ub = add nuw i64 %.037589, 1                 ; 2 uses
  %i.uc = icmp ult i64 %i.ub, %i.tz
  br i1 %i.uc, label %bb.c, label %._crit_edge594, !llvm.loop !6497
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEEC2EPNS_22MemoryMonitorInterfaceES5_SA_SD_SE_SG_SI_RKNS1_8SettingsE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"struct.embree::sse2::CreateMSMBlurLeafGrid") align 8 %5, ptr noundef align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(64) %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %3, ptr %.sroa.3.0..sroa_idx9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree5Scene29BuildProgressMonitorInterfaceE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = icmp ugt i64 %i.j, 16
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 48) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #29
          to label %bb.f unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.l) #15
  %i.q = load ptr, ptr %8, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %8, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread21: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn14 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.p, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @__cxa_free_exception(ptr %i.l) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  ret void

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread21 ], [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.f:                                             ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES7_b(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(176) %2, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 8 uses
  %6 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 8 uses
  %7 = alloca %"struct.embree::range", align 8    ; 5 uses
  %8 = alloca %"struct.embree::range", align 8    ; 5 uses
  %9 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %11 = alloca %"struct.embree::range", align 8   ; 5 uses
  %12 = alloca %"struct.embree::range", align 8   ; 5 uses
  %13 = alloca %"struct.embree::range", align 8   ; 5 uses
  %14 = alloca %"struct.embree::range", align 8   ; 5 uses
  %15 = alloca %"struct.embree::range", align 8   ; 5 uses
  %16 = alloca %"struct.embree::range", align 8   ; 5 uses
  %17 = alloca %"struct.embree::range", align 8   ; 5 uses
  %18 = alloca %"struct.embree::range", align 8   ; 5 uses
  %19 = alloca %"struct.embree::BBox.58", align 8 ; 8 uses
  %20 = alloca %"struct.embree::BBox.58", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %21 = alloca %class.anon.473, align 8           ; 11 uses
  %22 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %23 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %24 = alloca %class.anon.474, align 8           ; 5 uses
  %25 = alloca %class.anon.475, align 8           ; 9 uses
  %26 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %27 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %28 = alloca %class.anon.476, align 8           ; 5 uses
  %29 = alloca %"struct.embree::BBox.58", align 8 ; 8 uses
  %30 = alloca %"struct.embree::BBox.58", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %31 = alloca %class.anon.473, align 8           ; 11 uses
  %32 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %33 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %34 = alloca %class.anon.474, align 8           ; 5 uses
  %35 = alloca %class.anon.475, align 8           ; 9 uses
  %36 = alloca %"class.embree::PrimInfoMBT", align 16 ; 17 uses
  %37 = alloca %"class.embree::PrimInfoMBT", align 16 ; 13 uses
  %38 = alloca %class.anon.476, align 8           ; 5 uses
  %39 = alloca %class.anon.506, align 8           ; 7 uses
  %40 = alloca %"struct.embree::LBBox", align 16  ; 7 uses
  %41 = alloca %class.anon.507, align 1           ; 3 uses
  %42 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %43 = alloca %"class.embree::PrimInfoMBT", align 16 ; 14 uses
  %44 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %45 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %46 = alloca %class.anon.144, align 8           ; 6 uses
  %47 = alloca %class.anon.145, align 1           ; 3 uses
  %48 = alloca %class.anon.146, align 1           ; 3 uses
  %49 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
end_hunk_1
