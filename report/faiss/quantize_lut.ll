inline.NumInlined: 213
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_:bb.a
  %exitcond782.not = icmp eq i64 %i.qv, %i.ny
  br i1 %exitcond782.not, label %._crit_edge650, label %.lr.ph.i392.preheader, !llvm.loop !79

.preheader632:                                    ; preds = %.preheader632.lr.ph, %._crit_edge672
  %.0254679 = phi i64 [ 0, %.preheader632.lr.ph ], [ %i.ru, %._crit_edge672 ]
  %.0255678 = phi i64 [ 0, %.preheader632.lr.ph ], [ %i.rt, %._crit_edge672 ] ; 5 uses
  %.2261677 = phi i64 [ 0, %.preheader632.lr.ph ], [ %.3262.lcssa, %._crit_edge672 ] ; 5 uses
  br i1 %.not745, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.preheader632
  %i.qw = add i64 %1, %.2261677                   ; 3 uses
  br i1 %.not.i417, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader, label %.lr.ph.i418.preheader.preheader

.lr.ph.i418.preheader.preheader:                  ; preds = %.lr.ph671
  %i.qx = mul i64 %2, %.0255678
  %scevgep963 = getelementptr i8, ptr %6, i64 %i.qx
  %i.qy = add i64 %1, %.0255678
  %i.qz = mul i64 %2, %i.qy
  %scevgep964 = getelementptr i8, ptr %6, i64 %i.qz
  %i.ra = mul i64 %i.no, %.2261677
  %scevgep965 = getelementptr i8, ptr %4, i64 %i.ra
  %i.rb = add i64 %1, %.2261677
  %i.rc = shl i64 %i.rb, 2
  %i.rd = mul i64 %2, %i.rc
  %scevgep966 = getelementptr i8, ptr %4, i64 %i.rd
  %bound0967 = icmp ult ptr %scevgep963, %scevgep966
  %bound1968 = icmp ult ptr %scevgep965, %scevgep964
  %found.conflict969 = and i1 %bound0967, %bound1968
  %i.re = or i1 %found.conflict969, %i.nq
  br label %.lr.ph.i418.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader: ; preds = %.lr.ph671
  %i.rf = add i64 %1, %.0255678
  br label %._crit_edge672

.lr.ph.i409:                                      ; preds = %.lr.ph.i409.preheader1083, %.lr.ph.i409
  %.08.i410 = phi i64 [ %i.ro, %.lr.ph.i409 ], [ %.08.i410.ph, %.lr.ph.i409.preheader1083 ] ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0535.0616850, i64 %.08.i410
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !9
  %i.ri = fsub float %i.rh, %.2598.lcssa
  %i.rj = fmul float %.2243, %i.ri
  %i.rk = fadd float %i.rj, 5.000000e-01
  %i.rl = tail call float @llvm.floor.f32(float %i.rk)
  %i.rm = fptoui float %i.rl to i16
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.08.i410
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !65
  %i.ro = add nuw i64 %.08.i410, 1                ; 2 uses
  %exitcond.not.i411 = icmp eq i64 %i.ro, %0
  br i1 %exitcond.not.i411, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread, label %.lr.ph.i409, !llvm.loop !83

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412: ; preds = %._crit_edge664
  %.not.i.i.i413 = icmp eq ptr %.sroa.0535.0616850, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIfSaIfEED2Ev.exit414, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread: ; preds = %.lr.ph.i409, %middle.block999, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412
  %i.rp = ptrtoint ptr %.sroa.0535.0616850 to i64
  %i.rq = sub i64 %.sroa.10539.0617849, %i.rp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0535.0616850, i64 noundef %i.rq) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit414

_ZNSt6vectorIfSaIfEED2Ev.exit414:                 ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread
  %.not.i.i.i415 = icmp eq ptr %.sroa.0541.0, null
  br i1 %.not.i.i.i415, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

._crit_edge672:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader, %.preheader632
  %.3262.lcssa = phi i64 [ %.2261677, %.preheader632 ], [ %i.qw, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.qw, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ]
  %.1256.lcssa = phi i64 [ %.0255678, %.preheader632 ], [ %i.rf, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.tu, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ] ; 2 uses
  %i.rr = mul i64 %.1256.lcssa, %2
  %i.rs = getelementptr inbounds nuw i8, ptr %6, i64 %i.rr
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rs, i8 0, i64 %i.nn, i1 false)
  %i.rt = add i64 %.1256.lcssa, %i.nm
  %i.ru = add nuw i64 %.0254679, 1                ; 2 uses
  %exitcond786.not = icmp eq i64 %i.ru, %0
  br i1 %exitcond786.not, label %.lr.ph.i409.preheader, label %.preheader632, !llvm.loop !84

.lr.ph.i409.preheader:                            ; preds = %._crit_edge672
  %min.iters.check988 = icmp ult i64 %0, 4
  br i1 %min.iters.check988, label %.lr.ph.i409.preheader1083, label %vector.ph989

vector.ph989:                                     ; preds = %.lr.ph.i409.preheader
  %n.vec990 = and i64 %0, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert991 = insertelement <4 x float> poison, float %.2598.lcssa, i64 0
  %broadcast.splat992 = shufflevector <4 x float> %broadcast.splatinsert991, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert993 = insertelement <4 x float> poison, float %.2243, i64 0
  %broadcast.splat994 = shufflevector <4 x float> %broadcast.splatinsert993, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph989
  %index996 = phi i64 [ 0, %vector.ph989 ], [ %index.next998, %vector.body995 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0535.0616850, i64 %index996
  %wide.load997 = load <4 x float>, ptr %i.rv, align 4, !tbaa !9
  %i.rw = fsub <4 x float> %wide.load997, %broadcast.splat992
  %i.rx = fmul <4 x float> %broadcast.splat994, %i.rw
  %i.ry = fadd <4 x float> %i.rx, splat (float 5.000000e-01)
  %i.rz = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ry)
  %i.sa = fptoui <4 x float> %i.rz to <4 x i16>
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index996
  store <4 x i16> %i.sa, ptr %i.sb, align 2, !tbaa !65
  %index.next998 = add nuw i64 %index996, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next998, %n.vec990
  br i1 %i.sc, label %middle.block999, label %vector.body995, !llvm.loop !85

middle.block999:                                  ; preds = %vector.body995
  %cmp.n1000 = icmp eq i64 %0, %n.vec990
  br i1 %cmp.n1000, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread, label %.lr.ph.i409.preheader1083

.lr.ph.i409.preheader1083:                        ; preds = %.lr.ph.i409.preheader, %middle.block999
  %.08.i410.ph = phi i64 [ 0, %.lr.ph.i409.preheader ], [ %n.vec990, %middle.block999 ]
  br label %.lr.ph.i409

.lr.ph.i418.preheader:                            ; preds = %.lr.ph.i418.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit
  %.1256669 = phi i64 [ %i.tu, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.0255678, %.lr.ph.i418.preheader.preheader ] ; 2 uses
  %.3262668 = phi i64 [ %i.tt, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.2261677, %.lr.ph.i418.preheader.preheader ] ; 3 uses
  %i.sd = mul i64 %.3262668, %2
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.sd ; 4 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.3262668
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !9 ; 4 uses
  %i.sh = mul i64 %.1256669, %2
  %i.si = getelementptr inbounds nuw i8, ptr %6, i64 %i.sh ; 4 uses
  %brmerge1215 = select i1 %min.iters.check973, i1 true, i1 %i.re
  br i1 %brmerge1215, label %.lr.ph.i418.preheader1084, label %vector.ph974

vector.ph974:                                     ; preds = %.lr.ph.i418.preheader
  %broadcast.splatinsert976 = insertelement <4 x float> poison, float %i.sg, i64 0
  %broadcast.splat977 = shufflevector <4 x float> %broadcast.splatinsert976, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph974
  %index981 = phi i64 [ 0, %vector.ph974 ], [ %index.next983, %vector.body980 ] ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %index981
  %wide.load982 = load <4 x float>, ptr %i.sj, align 4, !tbaa !9, !alias.scope !86
  %i.sk = fsub <4 x float> %wide.load982, %broadcast.splat977
  %i.sl = fmul <4 x float> %broadcast.splat979, %i.sk
  %i.sm = fadd <4 x float> %i.sl, splat (float 5.000000e-01)
  %i.sn = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.sm)
  %i.so = fptoui <4 x float> %i.sn to <4 x i8>
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 %index981
  store <4 x i8> %i.so, ptr %i.sp, align 1, !tbaa !47, !alias.scope !89, !noalias !86
  %index.next983 = add nuw i64 %index981, 4       ; 2 uses
  %i.sq = icmp eq i64 %index.next983, %n.vec975
  br i1 %i.sq, label %middle.block984, label %vector.body980, !llvm.loop !91

middle.block984:                                  ; preds = %vector.body980
  br i1 %cmp.n985, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418.preheader1084

.lr.ph.i418.preheader1084:                        ; preds = %.lr.ph.i418.preheader, %middle.block984
  %.08.i419.ph = phi i64 [ %n.vec975, %middle.block984 ], [ 0, %.lr.ph.i418.preheader ] ; 5 uses
  %.neg1186 = or disjoint i64 %.08.i419.ph, 1
  br i1 %lcmp.mod1145.not, label %.lr.ph.i418.prol.loopexit, label %.lr.ph.i418.prol

.lr.ph.i418.prol:                                 ; preds = %.lr.ph.i418.preheader1084
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.08.i419.ph
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !9
  %i.st = fsub float %i.ss, %i.sg
  %i.su = fmul float %.2243, %i.st
  %i.sv = fadd float %i.su, 5.000000e-01
  %i.sw = tail call float @llvm.floor.f32(float %i.sv)
  %i.sx = fptoui float %i.sw to i8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.si, i64 %.08.i419.ph
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !47
  %i.sz = or disjoint i64 %.08.i419.ph, 1
  br label %.lr.ph.i418.prol.loopexit

.lr.ph.i418.prol.loopexit:                        ; preds = %.lr.ph.i418.prol, %.lr.ph.i418.preheader1084
  %.08.i419.unr = phi i64 [ %.08.i419.ph, %.lr.ph.i418.preheader1084 ], [ %i.sz, %.lr.ph.i418.prol ]
  %i.ta = icmp eq i64 %2, %.neg1186
  br i1 %i.ta, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418

.lr.ph.i418:                                      ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418
  %.08.i419 = phi i64 [ %i.ts, %.lr.ph.i418 ], [ %.08.i419.unr, %.lr.ph.i418.prol.loopexit ] ; 4 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.08.i419
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !9
  %i.td = fsub float %i.tc, %i.sg
  %i.te = fmul float %.2243, %i.td
  %i.tf = fadd float %i.te, 5.000000e-01
  %i.tg = tail call float @llvm.floor.f32(float %i.tf)
  %i.th = fptoui float %i.tg to i8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.si, i64 %.08.i419
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !47
  %i.tj = add nuw i64 %.08.i419, 1                ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.tj
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !9
  %i.tm = fsub float %i.tl, %i.sg
  %i.tn = fmul float %.2243, %i.tm
  %i.to = fadd float %i.tn, 5.000000e-01
  %i.tp = tail call float @llvm.floor.f32(float %i.to)
  %i.tq = fptoui float %i.tp to i8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.tj
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !47
  %i.ts = add nuw i64 %.08.i419, 2                ; 2 uses
  %exitcond.not.i420.1 = icmp eq i64 %i.ts, %2
  br i1 %exitcond.not.i420.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418, !llvm.loop !92

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit: ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418, %middle.block984
  %i.tt = add i64 %.3262668, 1                    ; 2 uses
  %i.tu = add i64 %.1256669, 1                    ; 2 uses
  %exitcond785.not = icmp eq i64 %i.tt, %i.qw
  br i1 %exitcond785.not, label %._crit_edge672, label %.lr.ph.i418.preheader, !llvm.loop !93

bb.w:                                             ; preds = %bb.p
  %i.tv = mul i64 %2, %1
  %i.tw = mul i64 %i.tv, %0                       ; 5 uses
  %i.tx = icmp ugt i64 %i.tw, 2305843009213693951
  br i1 %i.tx, label %.noexc428, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422

.noexc428:                                        ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422: ; preds = %bb.w
  %.not.i.i.i.i423 = icmp eq i64 %i.tw, 0
  br i1 %.not.i.i.i.i423, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %.noexc429

.noexc429:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422
  %i.ty = shl nuw nsw i64 %i.tw, 2
  %i.tz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ty) #15 ; 5 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.tw ; 2 uses
  store float 0.000000e+00, ptr %i.tz, align 4, !tbaa !9
  %i.ub = add nsw i64 %i.tw, -1                   ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424: ; preds = %.noexc429
  %i.ud = getelementptr i8, ptr %i.tz, i64 4
  %.idx.i.i.i.i.i.i.i425 = shl nuw nsw i64 %i.ub, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ud, i8 0, i64 %.idx.i.i.i.i.i.i.i425, i1 false), !tbaa !9
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424, %.noexc429, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422
  %.sroa.0504.0 = phi ptr [ %i.tz, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424 ], [ %i.tz, %.noexc429 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422 ] ; 9 uses
  %.sroa.10507.0 = phi ptr [ %i.ua, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424 ], [ %i.ua, %.noexc429 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422 ] ; 2 uses
  %.not746 = icmp eq i64 %0, 0                    ; 3 uses
  br i1 %.not746, label %._crit_edge694.split, label %.lr.ph693

.lr.ph693:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
  %i.ue = uitofp i64 %1 to float
  %.not747 = icmp eq i64 %1, 0
  br i1 %.not747, label %.preheader.lr.ph, label %.lr.ph693.split

.lr.ph693.split:                                  ; preds = %.lr.ph693
  %.not748 = icmp eq i64 %2, 0
  br i1 %.not748, label %._crit_edge694.split, label %.preheader631.lr.ph.us.preheader

.preheader631.lr.ph.us.preheader:                 ; preds = %.lr.ph693.split
  %min.iters.check1003 = icmp ult i64 %2, 8
  %n.vec1005 = and i64 %2, -8                     ; 3 uses
  %cmp.n1014 = icmp eq i64 %2, %n.vec1005
  br label %.preheader631.lr.ph.us

.preheader631.lr.ph.us:                           ; preds = %.preheader631.lr.ph.us.preheader, %._crit_edge688.split.us.us
  %.0245692.us = phi i64 [ %i.uy, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ] ; 2 uses
  %.0246691.us = phi i64 [ %i.ui, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ]
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0245692.us
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !9
  %i.uh = fdiv float %i.ug, %i.ue                 ; 2 uses
  %broadcast.splatinsert1006 = insertelement <4 x float> poison, float %i.uh, i64 0
  %broadcast.splat1007 = shufflevector <4 x float> %broadcast.splatinsert1006, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader631.us.us.a

.preheader631.us.us.a:                            ; preds = %._crit_edge684.us.us, %.preheader631.lr.ph.us
  %.0240687.us.us.a = phi i64 [ 0, %.preheader631.lr.ph.us ], [ %i.ux, %._crit_edge684.us.us ]
  %.1247686.us.us = phi i64 [ %.0246691.us, %.preheader631.lr.ph.us ], [ %i.ui, %._crit_edge684.us.us ] ; 4 uses
  %i.ui = add i64 %2, %.1247686.us.us             ; 3 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %.preheader631.us.us.a
  %i.uj = add i64 %.1247686.us.us, %n.vec1005
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1004
  %index1009 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1012, %vector.body1008 ] ; 2 uses
  %i.uk = add i64 %.1247686.us.us, %index1009     ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.uk ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %wide.load1010 = load <4 x float>, ptr %i.ul, align 4, !tbaa !9
  %wide.load1011 = load <4 x float>, ptr %i.um, align 4, !tbaa !9
  %i.un = fadd <4 x float> %broadcast.splat1007, %wide.load1010
  %i.uo = fadd <4 x float> %broadcast.splat1007, %wide.load1011
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.uk ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store <4 x float> %i.un, ptr %i.up, align 4, !tbaa !9
  store <4 x float> %i.uo, ptr %i.uq, align 4, !tbaa !9
  %index.next1012 = add nuw i64 %index1009, 8     ; 2 uses
  %i.ur = icmp eq i64 %index.next1012, %n.vec1005
  br i1 %i.ur, label %middle.block1013, label %vector.body1008, !llvm.loop !94

middle.block1013:                                 ; preds = %vector.body1008
  br i1 %cmp.n1014, label %._crit_edge684.us.us, label %scalar.ph1002.preheader

scalar.ph1002.preheader:                          ; preds = %.preheader631.us.us.a, %middle.block1013
  %.2248681.us.us.ph = phi i64 [ %.1247686.us.us, %.preheader631.us.us.a ], [ %i.uj, %middle.block1013 ]
  br label %scalar.ph1002

scalar.ph1002:                                    ; preds = %scalar.ph1002.preheader, %scalar.ph1002
  %.2248681.us.us = phi i64 [ %i.uw, %scalar.ph1002 ], [ %.2248681.us.us.ph, %scalar.ph1002.preheader ] ; 3 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2248681.us.us
  %i.ut = load float, ptr %i.us, align 4, !tbaa !9
  %i.uu = fadd float %i.uh, %i.ut
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %.2248681.us.us
  store float %i.uu, ptr %i.uv, align 4, !tbaa !9
  %i.uw = add i64 %.2248681.us.us, 1              ; 2 uses
  %exitcond787.not = icmp eq i64 %i.uw, %i.ui
  br i1 %exitcond787.not, label %._crit_edge684.us.us, label %scalar.ph1002, !llvm.loop !95

._crit_edge684.us.us:                             ; preds = %scalar.ph1002, %middle.block1013
  %i.ux = add nuw i64 %.0240687.us.us.a, 1        ; 2 uses
  %exitcond788.not = icmp eq i64 %i.ux, %1
  br i1 %exitcond788.not, label %._crit_edge688.split.us.us, label %.preheader631.us.us.a, !llvm.loop !96

._crit_edge688.split.us.us:                       ; preds = %._crit_edge684.us.us
  %i.uy = add nuw i64 %.0245692.us, 1             ; 2 uses
  %exitcond789.not = icmp eq i64 %i.uy, %0
  br i1 %exitcond789.not, label %._crit_edge694.split, label %.preheader631.lr.ph.us, !llvm.loop !97

._crit_edge694.split:                             ; preds = %._crit_edge688.split.us.us, %.lr.ph693.split, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
  %i.uz = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.uz, label %bb.x, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431

bb.x:                                             ; preds = %._crit_edge694.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc434 unwind label %bb.z

.noexc434:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge694.split
  %.not.i.i.i.i432 = icmp eq i64 %1, 0            ; 3 uses
  br i1 %.not.i.i.i.i432, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.va = shl nuw nsw i64 %1, 2                   ; 7 uses
  %i.vb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.va) #15
          to label %.noexc435 unwind label %bb.z  ; 7 uses

.noexc435:                                        ; preds = %bb.y
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.va
  %i.vd = add nsw i64 %i.va, -4                   ; 2 uses
  %i.ve = lshr exact i64 %i.vd, 2
  %i.vf = add nuw nsw i64 %i.ve, 1                ; 2 uses
  %min.iters.check1017 = icmp ult i64 %i.vd, 28
  br i1 %min.iters.check1017, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %.noexc435
  %n.vec1019 = and i64 %i.vf, 9223372036854775800 ; 3 uses
  %i.vg = shl i64 %n.vec1019, 2
  %i.vh = getelementptr i8, ptr %i.vb, i64 %i.vg
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1020 ] ; 2 uses
  %i.vi = shl i64 %index1021, 2
  %next.gep = getelementptr i8, ptr %i.vb, i64 %i.vi ; 2 uses
  %i.vj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !tbaa !9
  store <4 x float> splat (float +inf), ptr %i.vj, align 4, !tbaa !9
  %index.next1022 = add nuw i64 %index1021, 8     ; 2 uses
  %i.vk = icmp eq i64 %index.next1022, %n.vec1019
  br i1 %i.vk, label %middle.block1023, label %vector.body1020, !llvm.loop !98

middle.block1023:                                 ; preds = %vector.body1020
  %cmp.n1024 = icmp eq i64 %i.vf, %n.vec1019
  br i1 %cmp.n1024, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc435, %middle.block1023
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.vb, %.noexc435 ], [ %i.vh, %middle.block1023 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float +inf, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !9
  %i.vl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vl, %i.vc
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !99

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block1023
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %1
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.va) #15
          to label %.noexc444 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit447 ; 6 uses

.noexc444:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.va
  %i.vp = add nsw i64 %i.va, -4                   ; 2 uses
  %i.vq = lshr exact i64 %i.vp, 2
  %i.vr = add nuw nsw i64 %i.vq, 1                ; 2 uses
  %min.iters.check1027 = icmp ult i64 %i.vp, 28
  br i1 %min.iters.check1027, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %.noexc444
  %n.vec1029 = and i64 %i.vr, 9223372036854775800 ; 3 uses
  %i.vs = shl i64 %n.vec1029, 2
  %i.vt = getelementptr i8, ptr %i.vn, i64 %i.vs
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1033, %vector.body1030 ] ; 2 uses
  %i.vu = shl i64 %index1031, 2
  %next.gep1032 = getelementptr i8, ptr %i.vn, i64 %i.vu ; 2 uses
  %i.vv = getelementptr i8, ptr %next.gep1032, i64 16
  store <4 x float> splat (float -inf), ptr %next.gep1032, align 4, !tbaa !9
  store <4 x float> splat (float -inf), ptr %i.vv, align 4, !tbaa !9
  %index.next1033 = add nuw i64 %index1031, 8     ; 2 uses
  %i.vw = icmp eq i64 %index.next1033, %n.vec1029
  br i1 %i.vw, label %middle.block1034, label %vector.body1030, !llvm.loop !100

middle.block1034:                                 ; preds = %vector.body1030
  %cmp.n1035 = icmp eq i64 %i.vr, %n.vec1029
  br i1 %cmp.n1035, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader

.lr.ph.i.i.i.i.i.i.i.i.i438.preheader:            ; preds = %.noexc444, %middle.block1034
  %.07.i.i.i.i.i.i.i.i.i439.ph = phi ptr [ %i.vn, %.noexc444 ], [ %i.vt, %middle.block1034 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i438

.lr.ph.i.i.i.i.i.i.i.i.i438:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i438
  %.07.i.i.i.i.i.i.i.i.i439 = phi ptr [ %i.vx, %.lr.ph.i.i.i.i.i.i.i.i.i438 ], [ %.07.i.i.i.i.i.i.i.i.i439.ph, %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  store float -inf, ptr %.07.i.i.i.i.i.i.i.i.i439, align 4, !tbaa !9
  %i.vx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i439, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i440 = icmp eq ptr %i.vx, %i.vo
  br i1 %.not.i.i.i.i.i.i.i.i.i440, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438, !llvm.loop !101

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438, %middle.block1034
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %1
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = ptrtoint ptr %i.vm to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445:         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.14.0625 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.wa, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  %.sroa.0495.0623 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vb, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.0489.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vn, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vz, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  br i1 %.not746, label %.preheader629, label %.preheader630.lr.ph

.preheader630.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %.preheader.lr.ph, label %.preheader630.lr.ph.split

.preheader630.lr.ph.split:                        ; preds = %.preheader630.lr.ph
  %.not.i448 = icmp eq i64 %2, 0
  br i1 %.not.i448, label %.lr.ph710.preheader, label %.preheader630.preheader

.preheader630.preheader:                          ; preds = %.preheader630.lr.ph.split
  %i.wb = add i64 %2, -1                          ; 2 uses
  %xtraiter1147 = and i64 %2, 3                   ; 3 uses
  %i.wc = icmp ult i64 %i.wb, 3
  %unroll_iter1152 = and i64 %2, -4
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1147, 0
  %lcmp.mod1151 = icmp ne i64 %xtraiter1147, 0
  %xtraiter1154 = and i64 %2, 3                   ; 3 uses
  %i.wd = icmp ult i64 %i.wb, 3
  %unroll_iter1159 = and i64 %2, -4
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1154, 0
  %lcmp.mod1158 = icmp ne i64 %xtraiter1154, 0
  br label %.preheader630

.preheader630:                                    ; preds = %.preheader630.preheader, %._crit_edge700.split
  %.0236704 = phi i64 [ %i.wg, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  %.0237703 = phi i64 [ %i.ye, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  br label %.lr.ph.i449.preheader

.preheader629:                                    ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %._crit_edge711, label %.lr.ph710.preheader

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorIfSaIfEED2Ev.exit447:                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.wf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.va) #16
  br label %bb.ac

._crit_edge700.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %i.wg = add nuw i64 %.0236704, 1                ; 2 uses
  %exitcond791.not = icmp eq i64 %i.wg, %0
  br i1 %exitcond791.not, label %.lr.ph710.preheader, label %.preheader630, !llvm.loop !102

.lr.ph710.preheader:                              ; preds = %._crit_edge700.split, %.preheader630.lr.ph.split, %.preheader629
  %xtraiter1161 = and i64 %1, 1
  %i.wh = icmp eq i64 %1, 1
  br i1 %i.wh, label %.lr.ph710.epil.preheader, label %.lr.ph710.preheader.new

.lr.ph710.preheader.new:                          ; preds = %.lr.ph710.preheader
  %unroll_iter1167 = and i64 %1, 2305843009213693950
  br label %.lr.ph710

.lr.ph.i449.preheader:                            ; preds = %.preheader630, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %.0235698 = phi i64 [ 0, %.preheader630 ], [ %i.yf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 3 uses
  %.1238697 = phi i64 [ %.0237703, %.preheader630 ], [ %i.ye, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 2 uses
  %i.wi = mul i64 %.1238697, %2
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.wi ; 10 uses
  br i1 %i.wc, label %.lr.ph.i449.epil.preheader, label %.lr.ph.i449

.lr.ph.i449:                                      ; preds = %.lr.ph.i449.preheader, %.lr.ph.i449
  %.011.i450 = phi i64 [ %i.wz, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ] ; 5 uses
  %.0810.i451 = phi float [ %.1.i452.3, %.lr.ph.i449 ], [ +inf, %.lr.ph.i449.preheader ] ; 2 uses
  %niter1153 = phi i64 [ %niter1153.next.3, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ]
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i450
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !9 ; 2 uses
  %i.wm = fcmp olt float %i.wl, %.0810.i451
  %.1.i452 = select i1 %i.wm, float %i.wl, float %.0810.i451 ; 2 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i450
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !9 ; 2 uses
  %i.wq = fcmp olt float %i.wp, %.1.i452
  %.1.i452.1 = select i1 %i.wq, float %i.wp, float %.1.i452 ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i450
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !9 ; 2 uses
  %i.wu = fcmp olt float %i.wt, %.1.i452.1
  %.1.i452.2 = select i1 %i.wu, float %i.wt, float %.1.i452.1 ; 2 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i450
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !9 ; 2 uses
  %i.wy = fcmp olt float %i.wx, %.1.i452.2
  %.1.i452.3 = select i1 %i.wy, float %i.wx, float %.1.i452.2 ; 3 uses
  %i.wz = add nuw i64 %.011.i450, 4               ; 2 uses
  %niter1153.next.3 = add nuw i64 %niter1153, 4   ; 2 uses
  %niter1153.ncmp.3 = icmp eq i64 %niter1153.next.3, %unroll_iter1152
  br i1 %niter1153.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa, label %.lr.ph.i449, !llvm.loop !17

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa: ; preds = %.lr.ph.i449
  br i1 %lcmp.mod1149.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, label %.lr.ph.i449.epil.preheader

.lr.ph.i449.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa, %.lr.ph.i449.preheader
  %.011.i450.epil.init = phi i64 [ 0, %.lr.ph.i449.preheader ], [ %i.wz, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ]
  %.0810.i451.epil.init = phi float [ +inf, %.lr.ph.i449.preheader ], [ %.1.i452.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1151)
  br label %.lr.ph.i449.epil

.lr.ph.i449.epil:                                 ; preds = %.lr.ph.i449.epil, %.lr.ph.i449.epil.preheader
  %.011.i450.epil = phi i64 [ %i.xd, %.lr.ph.i449.epil ], [ %.011.i450.epil.init, %.lr.ph.i449.epil.preheader ] ; 2 uses
  %.0810.i451.epil = phi float [ %.1.i452.epil, %.lr.ph.i449.epil ], [ %.0810.i451.epil.init, %.lr.ph.i449.epil.preheader ] ; 2 uses
  %epil.iter1148 = phi i64 [ %epil.iter1148.next, %.lr.ph.i449.epil ], [ 0, %.lr.ph.i449.epil.preheader ]
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i450.epil
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !9 ; 2 uses
  %i.xc = fcmp olt float %i.xb, %.0810.i451.epil
  %.1.i452.epil = select i1 %i.xc, float %i.xb, float %.0810.i451.epil ; 2 uses
  %i.xd = add nuw i64 %.011.i450.epil, 1
  %epil.iter1148.next = add i64 %epil.iter1148, 1 ; 2 uses
  %epil.iter1148.cmp.not = icmp eq i64 %epil.iter1148.next, %xtraiter1147
  br i1 %epil.iter1148.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, label %.lr.ph.i449.epil, !llvm.loop !103

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455: ; preds = %.lr.ph.i449.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa
  %.1.i452.lcssa = phi float [ %.1.i452.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ], [ %.1.i452.epil, %.lr.ph.i449.epil ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623, i64 %.0235698 ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !9 ; 2 uses
  %i.xg = fcmp olt float %.1.i452.lcssa, %i.xf
  %.sroa.speculated486 = select i1 %i.xg, float %.1.i452.lcssa, float %i.xf
  store float %.sroa.speculated486, ptr %i.xe, align 4, !tbaa !9
  br i1 %i.wd, label %.lr.ph.i458.epil.preheader, label %.lr.ph.i458

.lr.ph.i458:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, %.lr.ph.i458
  %.011.i459 = phi i64 [ %i.xw, %.lr.ph.i458 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ] ; 5 uses
  %.0810.i460 = phi float [ %.1.i461.3, %.lr.ph.i458 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ] ; 2 uses
  %niter1160 = phi i64 [ %niter1160.next.3, %.lr.ph.i458 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ]
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i459
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !9 ; 2 uses
  %i.xj = fcmp ogt float %i.xi, %.0810.i460
  %.1.i461 = select i1 %i.xj, float %i.xi, float %.0810.i460 ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i459
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !9 ; 2 uses
  %i.xn = fcmp ogt float %i.xm, %.1.i461
  %.1.i461.1 = select i1 %i.xn, float %i.xm, float %.1.i461 ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i459
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !9 ; 2 uses
  %i.xr = fcmp ogt float %i.xq, %.1.i461.1
  %.1.i461.2 = select i1 %i.xr, float %i.xq, float %.1.i461.1 ; 2 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i459
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 12
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !9 ; 2 uses
  %i.xv = fcmp ogt float %i.xu, %.1.i461.2
  %.1.i461.3 = select i1 %i.xv, float %i.xu, float %.1.i461.2 ; 3 uses
  %i.xw = add nuw i64 %.011.i459, 4               ; 2 uses
  %niter1160.next.3 = add nuw i64 %niter1160, 4   ; 2 uses
  %niter1160.ncmp.3 = icmp eq i64 %niter1160.next.3, %unroll_iter1159
  br i1 %niter1160.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa, label %.lr.ph.i458, !llvm.loop !20

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa: ; preds = %.lr.ph.i458
  br i1 %lcmp.mod1156.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit, label %.lr.ph.i458.epil.preheader

.lr.ph.i458.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455
  %.011.i459.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ], [ %i.xw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ]
  %.0810.i460.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ], [ %.1.i461.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1158)
  br label %.lr.ph.i458.epil

.lr.ph.i458.epil:                                 ; preds = %.lr.ph.i458.epil, %.lr.ph.i458.epil.preheader
  %.011.i459.epil = phi i64 [ %i.ya, %.lr.ph.i458.epil ], [ %.011.i459.epil.init, %.lr.ph.i458.epil.preheader ] ; 2 uses
  %.0810.i460.epil = phi float [ %.1.i461.epil, %.lr.ph.i458.epil ], [ %.0810.i460.epil.init, %.lr.ph.i458.epil.preheader ] ; 2 uses
  %epil.iter1155 = phi i64 [ %epil.iter1155.next, %.lr.ph.i458.epil ], [ 0, %.lr.ph.i458.epil.preheader ]
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.011.i459.epil
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !9 ; 2 uses
  %i.xz = fcmp ogt float %i.xy, %.0810.i460.epil
  %.1.i461.epil = select i1 %i.xz, float %i.xy, float %.0810.i460.epil ; 2 uses
  %i.ya = add nuw i64 %.011.i459.epil, 1
  %epil.iter1155.next = add i64 %epil.iter1155, 1 ; 2 uses
  %epil.iter1155.cmp.not = icmp eq i64 %epil.iter1155.next, %xtraiter1154
  br i1 %epil.iter1155.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit, label %.lr.ph.i458.epil, !llvm.loop !104

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit: ; preds = %.lr.ph.i458.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa
  %.1.i461.lcssa = phi float [ %.1.i461.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ], [ %.1.i461.epil, %.lr.ph.i458.epil ] ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0, i64 %.0235698 ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !9 ; 2 uses
  %i.yd = fcmp olt float %i.yc, %.1.i461.lcssa
  %.sroa.speculated482 = select i1 %i.yd, float %.1.i461.lcssa, float %i.yc
  store float %.sroa.speculated482, ptr %i.yb, align 4, !tbaa !9
  %i.ye = add i64 %.1238697, 1                    ; 2 uses
  %i.yf = add nuw i64 %.0235698, 1                ; 2 uses
  %exitcond790.not = icmp eq i64 %i.yf, %1
  br i1 %exitcond790.not, label %._crit_edge700.split, label %.lr.ph.i449.preheader, !llvm.loop !105

._crit_edge711.loopexit.unr-lcssa:                ; preds = %.lr.ph710
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1161, 0
  br i1 %lcmp.mod1163.not, label %._crit_edge711, label %.lr.ph710.epil.preheader

.lr.ph710.epil.preheader:                         ; preds = %._crit_edge711.loopexit.unr-lcssa, %.lr.ph710.preheader
  %.0234709.epil.init = phi i64 [ 0, %.lr.ph710.preheader ], [ %i.zi, %._crit_edge711.loopexit.unr-lcssa ] ; 2 uses
  %.3599708.epil.init = phi float [ 0.000000e+00, %.lr.ph710.preheader ], [ %i.zh, %._crit_edge711.loopexit.unr-lcssa ]
  %.0600707.epil.init = phi float [ -inf, %.lr.ph710.preheader ], [ %.sroa.speculated.1, %._crit_edge711.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1166 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1166)
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0, i64 %.0234709.epil.init
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !9
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623, i64 %.0234709.epil.init
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !9 ; 2 uses
  %i.yk = fsub float %i.yh, %i.yj                 ; 2 uses
  %i.yl = fcmp olt float %.0600707.epil.init, %i.yk
  %.sroa.speculated.epil = select i1 %i.yl, float %i.yk, float %.0600707.epil.init
  %i.ym = fadd float %.3599708.epil.init, %i.yj
  br label %._crit_edge711

._crit_edge711:                                   ; preds = %.lr.ph710.epil.preheader, %._crit_edge711.loopexit.unr-lcssa, %.preheader629
  %.not.i.i.i.i432852859882 = phi i1 [ true, %.preheader629 ], [ false, %._crit_edge711.loopexit.unr-lcssa ], [ false, %.lr.ph710.epil.preheader ]
  %.0600.lcssa = phi float [ -inf, %.preheader629 ], [ %.sroa.speculated.1, %._crit_edge711.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph710.epil.preheader ] ; 2 uses
  %.3599.lcssa = phi float [ 0.000000e+00, %.preheader629 ], [ %i.zh, %._crit_edge711.loopexit.unr-lcssa ], [ %i.ym, %.lr.ph710.epil.preheader ] ; 2 uses
  %i.yn = fcmp ogt float %.0600.lcssa, 0.000000e+00
  %i.yo = fdiv float 2.550000e+02, %.0600.lcssa
  %i.yp = select i1 %i.yn, float %i.yo, float 0.000000e+00 ; 2 uses
  br i1 %.not746, label %._crit_edge726, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader630.lr.ph, %.lr.ph693, %._crit_edge711
  %i.yq = phi float [ %i.yp, %._crit_edge711 ], [ 0.000000e+00, %.lr.ph693 ], [ 0.000000e+00, %.preheader630.lr.ph ] ; 3 uses
  %.3599.lcssa910 = phi float [ %.3599.lcssa, %._crit_edge711 ], [ 0.000000e+00, %.lr.ph693 ], [ 0.000000e+00, %.preheader630.lr.ph ]
  %.sroa.11.0867878908 = phi i64 [ %.sroa.11.0, %._crit_edge711 ], [ 0, %.lr.ph693 ], [ %.sroa.11.0, %.preheader630.lr.ph ]
  %.sroa.0489.0865879906 = phi ptr [ %.sroa.0489.0, %._crit_edge711 ], [ null, %.lr.ph693 ], [ %.sroa.0489.0, %.preheader630.lr.ph ]
  %.sroa.0495.0623863880904 = phi ptr [ %.sroa.0495.0623, %._crit_edge711 ], [ null, %.lr.ph693 ], [ %.sroa.0495.0623, %.preheader630.lr.ph ] ; 2 uses
  %.sroa.14.0625861881902 = phi i64 [ %.sroa.14.0625, %._crit_edge711 ], [ 0, %.lr.ph693 ], [ %.sroa.14.0625, %.preheader630.lr.ph ]
  %.not.i.i.i.i432852859882901 = phi i1 [ %.not.i.i.i.i432852859882, %._crit_edge711 ], [ true, %.lr.ph693 ], [ true, %.preheader630.lr.ph ]
  %.not.i473 = icmp eq i64 %2, 0
  %i.yr = sub i64 %7, %1                          ; 2 uses
  %i.ys = mul i64 %i.yr, %2
  %min.iters.check1038 = icmp ult i64 %2, 4
  %n.vec1040 = and i64 %2, -4                     ; 3 uses
  %broadcast.splatinsert1043 = insertelement <4 x float> poison, float %i.yq, i64 0
  %broadcast.splat1044 = shufflevector <4 x float> %broadcast.splatinsert1043, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n1050 = icmp eq i64 %2, %n.vec1040
  br label %.preheader

.lr.ph710:                                        ; preds = %.lr.ph710, %.lr.ph710.preheader.new
  %.0234709 = phi i64 [ 0, %.lr.ph710.preheader.new ], [ %i.zi, %.lr.ph710 ] ; 4 uses
  %.3599708 = phi float [ 0.000000e+00, %.lr.ph710.preheader.new ], [ %i.zh, %.lr.ph710 ]
  %.0600707 = phi float [ -inf, %.lr.ph710.preheader.new ], [ %.sroa.speculated.1, %.lr.ph710 ] ; 2 uses
  %niter1168 = phi i64 [ 0, %.lr.ph710.preheader.new ], [ %niter1168.next.1, %.lr.ph710 ]
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0, i64 %.0234709
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !9
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623, i64 %.0234709
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !9 ; 2 uses
  %i.yx = fsub float %i.yu, %i.yw                 ; 2 uses
  %i.yy = fcmp olt float %.0600707, %i.yx
  %.sroa.speculated = select i1 %i.yy, float %i.yx, float %.0600707 ; 2 uses
  %i.yz = fadd float %.3599708, %i.yw
  %i.za = or disjoint i64 %.0234709, 1            ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !9
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623, i64 %i.za
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !9 ; 2 uses
  %i.zf = fsub float %i.zc, %i.ze                 ; 2 uses
  %i.zg = fcmp olt float %.sroa.speculated, %i.zf
  %.sroa.speculated.1 = select i1 %i.zg, float %i.zf, float %.sroa.speculated ; 3 uses
  %i.zh = fadd float %i.yz, %i.ze                 ; 3 uses
  %i.zi = add nuw i64 %.0234709, 2                ; 2 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %._crit_edge711.loopexit.unr-lcssa, label %.lr.ph710, !llvm.loop !106

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge718
  %.0232725 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.zt, %._crit_edge718 ]
  %.0233724 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.zs, %._crit_edge718 ] ; 3 uses
  %.2723 = phi i64 [ 0, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge718 ] ; 3 uses
  br i1 %.not.i.i.i.i432852859882901, label %._crit_edge718, label %.lr.ph717

.lr.ph717:                                        ; preds = %.preheader
  br i1 %.not.i473, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.us.preheader, label %.lr.ph.i474.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.us.preheader: ; preds = %.lr.ph717
  %i.zj = add i64 %1, %.2723
  %i.zk = add i64 %1, %.0233724
  br label %._crit_edge718

._crit_edge726:                                   ; preds = %._crit_edge718, %._crit_edge711
  %i.zl = phi float [ %i.yp, %._crit_edge711 ], [ %i.yq, %._crit_edge718 ] ; 2 uses
  %.3599.lcssa911 = phi float [ %.3599.lcssa, %._crit_edge711 ], [ %.3599.lcssa910, %._crit_edge718 ] ; 2 uses
  %.sroa.11.0867878909 = phi i64 [ %.sroa.11.0, %._crit_edge711 ], [ %.sroa.11.0867878908, %._crit_edge718 ]
  %.sroa.0489.0865879907 = phi ptr [ %.sroa.0489.0, %._crit_edge711 ], [ %.sroa.0489.0865879906, %._crit_edge718 ] ; 3 uses
  %.sroa.0495.0623863880905 = phi ptr [ %.sroa.0495.0623, %._crit_edge711 ], [ %.sroa.0495.0623863880904, %._crit_edge718 ] ; 3 uses
  %.sroa.14.0625861881903 = phi i64 [ %.sroa.14.0625, %._crit_edge711 ], [ %.sroa.14.0625861881902, %._crit_edge718 ]
  %.not.i.i.i467 = icmp eq ptr %.sroa.0489.0865879907, null
  br i1 %.not.i.i.i467, label %_ZNSt6vectorIfSaIfEED2Ev.exit468, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge726
  %i.zm = ptrtoint ptr %.sroa.0489.0865879907 to i64
  %i.zn = sub i64 %.sroa.11.0867878909, %i.zm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0489.0865879907, i64 noundef %i.zn) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit468

_ZNSt6vectorIfSaIfEED2Ev.exit468:                 ; preds = %._crit_edge726, %bb.aa
  %.not.i.i.i469 = icmp eq ptr %.sroa.0495.0623863880905, null
  br i1 %.not.i.i.i469, label %_ZNSt6vectorIfSaIfEED2Ev.exit470, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit468
  %i.zo = ptrtoint ptr %.sroa.0495.0623863880905 to i64
  %i.zp = sub i64 %.sroa.14.0625861881903, %i.zo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0623863880905, i64 noundef %i.zp) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit470

_ZNSt6vectorIfSaIfEED2Ev.exit470:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit468, %bb.ab
  %.not.i.i.i471 = icmp eq ptr %.sroa.0504.0, null
  br i1 %.not.i.i.i471, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

._crit_edge718:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.us.preheader, %.preheader
  %.3.lcssa = phi i64 [ %.2723, %.preheader ], [ %i.zj, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.us.preheader ], [ %i.aar, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit ]
  %.1.lcssa = phi i64 [ %.0233724, %.preheader ], [ %i.zk, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.us.preheader ], [ %i.aas, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit ] ; 2 uses
  %i.zq = mul i64 %.1.lcssa, %2
  %i.zr = getelementptr inbounds nuw i8, ptr %6, i64 %i.zq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.zr, i8 0, i64 %i.ys, i1 false)
  %i.zs = add i64 %.1.lcssa, %i.yr
  %i.zt = add nuw i64 %.0232725, 1                ; 2 uses
  %exitcond794.not = icmp eq i64 %i.zt, %0
  br i1 %exitcond794.not, label %._crit_edge726, label %.preheader, !llvm.loop !107

.lr.ph.i474.preheader:                            ; preds = %.lr.ph717, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit
  %.0716 = phi i64 [ %i.aat, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit ], [ 0, %.lr.ph717 ] ; 2 uses
  %.1715 = phi i64 [ %i.aas, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit ], [ %.0233724, %.lr.ph717 ] ; 2 uses
  %.3714 = phi i64 [ %i.aar, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit ], [ %.2723, %.lr.ph717 ] ; 2 uses
  %i.zu = mul i64 %.3714, %2
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623863880904, i64 %.0716
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !9 ; 2 uses
  %i.zy = mul i64 %.1715, %2
  %i.zz = getelementptr inbounds nuw i8, ptr %6, i64 %i.zy ; 2 uses
  br i1 %min.iters.check1038, label %.lr.ph.i474.preheader1077, label %vector.ph1039

vector.ph1039:                                    ; preds = %.lr.ph.i474.preheader
  %broadcast.splatinsert1041 = insertelement <4 x float> poison, float %i.zx, i64 0
  %broadcast.splat1042 = shufflevector <4 x float> %broadcast.splatinsert1041, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %vector.ph1039
  %index1046 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1048, %vector.body1045 ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %index1046
  %wide.load1047 = load <4 x float>, ptr %i.aaa, align 4, !tbaa !9
  %i.aab = fsub <4 x float> %wide.load1047, %broadcast.splat1042
  %i.aac = fmul <4 x float> %broadcast.splat1044, %i.aab
  %i.aad = fadd <4 x float> %i.aac, splat (float 5.000000e-01)
  %i.aae = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.aad)
  %i.aaf = fptoui <4 x float> %i.aae to <4 x i8>
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zz, i64 %index1046
  store <4 x i8> %i.aaf, ptr %i.aag, align 1, !tbaa !47
  %index.next1048 = add nuw i64 %index1046, 4     ; 2 uses
  %i.aah = icmp eq i64 %index.next1048, %n.vec1040
  br i1 %i.aah, label %middle.block1049, label %vector.body1045, !llvm.loop !108

middle.block1049:                                 ; preds = %vector.body1045
  br i1 %cmp.n1050, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit, label %.lr.ph.i474.preheader1077

.lr.ph.i474.preheader1077:                        ; preds = %.lr.ph.i474.preheader, %middle.block1049
  %.08.i475.ph = phi i64 [ 0, %.lr.ph.i474.preheader ], [ %n.vec1040, %middle.block1049 ]
  br label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %.lr.ph.i474.preheader1077, %.lr.ph.i474
  %.08.i475 = phi i64 [ %i.aaq, %.lr.ph.i474 ], [ %.08.i475.ph, %.lr.ph.i474.preheader1077 ] ; 3 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %.08.i475
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !9
  %i.aak = fsub float %i.aaj, %i.zx
  %i.aal = fmul float %i.yq, %i.aak
  %i.aam = fadd float %i.aal, 5.000000e-01
  %i.aan = tail call float @llvm.floor.f32(float %i.aam)
  %i.aao = fptoui float %i.aan to i8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zz, i64 %.08.i475
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !47
  %i.aaq = add nuw i64 %.08.i475, 1               ; 2 uses
  %exitcond.not.i476 = icmp eq i64 %i.aaq, %2
  br i1 %exitcond.not.i476, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit, label %.lr.ph.i474, !llvm.loop !109

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit477.loopexit: ; preds = %.lr.ph.i474, %middle.block1049
  %i.aar = add i64 %.3714, 1                      ; 2 uses
  %i.aas = add i64 %.1715, 1                      ; 2 uses
  %i.aat = add nuw i64 %.0716, 1                  ; 2 uses
  %exitcond793.not = icmp eq i64 %i.aat, %1
  br i1 %exitcond793.not, label %._crit_edge718, label %.lr.ph.i474.preheader, !llvm.loop !110

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit447, %bb.z
  %.pn286 = phi { ptr, i32 } [ %i.wf, %_ZNSt6vectorIfSaIfEED2Ev.exit447 ], [ %i.we, %bb.z ] ; 2 uses
  %.not.i.i.i478 = icmp eq ptr %.sroa.0504.0, null
  br i1 %.not.i.i.i478, label %_ZNSt6vectorIfSaIfEED2Ev.exit388, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aau = ptrtoint ptr %.sroa.10507.0 to i64
  %i.aav = ptrtoint ptr %.sroa.0504.0 to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0504.0, i64 noundef %i.aaw) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit388

_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split:         ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit470, %_ZNSt6vectorIfSaIfEED2Ev.exit414, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, %._crit_edge739.split, %._crit_edge739.split.thread
  %.sroa.10507.0.sink = phi ptr [ %.sroa.13547.0, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %.sroa.12568.0, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.sroa.12588.0842, %._crit_edge739.split ], [ %.sroa.12588.0842, %._crit_edge739.split.thread ], [ %.sroa.10507.0, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ]
  %.sroa.0504.0.sink928 = phi ptr [ %.sroa.0541.0, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %.sroa.0562.0, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.sroa.0582.0844, %._crit_edge739.split ], [ %.sroa.0582.0844, %._crit_edge739.split.thread ], [ %.sroa.0504.0, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ] ; 2 uses
  %.4.ph = phi float [ %.2598.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %i.gw, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.0596.lcssa, %._crit_edge739.split ], [ %.0596.lcssa, %._crit_edge739.split.thread ], [ %.3599.lcssa911, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ]
  %.3244.ph = phi float [ %.2243, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %.1242, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.0241, %._crit_edge739.split ], [ %.0241, %._crit_edge739.split.thread ], [ %i.zl, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ]
  %i.aax = ptrtoint ptr %.sroa.10507.0.sink to i64
  %i.aay = ptrtoint ptr %.sroa.0504.0.sink928 to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0504.0.sink928, i64 noundef %i.aaz) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split, %_ZNSt6vectorIfSaIfEED2Ev.exit470, %_ZNSt6vectorIfSaIfEED2Ev.exit414, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, %._crit_edge739.split
  %.4 = phi float [ %i.gw, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.2598.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %.3599.lcssa911, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ], [ %.0596.lcssa, %._crit_edge739.split ], [ %.4.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split ]
  %.3244 = phi float [ %.1242, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit ], [ %.2243, %_ZNSt6vectorIfSaIfEED2Ev.exit414 ], [ %i.zl, %_ZNSt6vectorIfSaIfEED2Ev.exit470 ], [ %.0241, %._crit_edge739.split ], [ %.3244.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split ]
  %.not292 = icmp eq ptr %9, null
  br i1 %.not292, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  store float %.3244, ptr %9, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.not293 = icmp eq ptr %10, null
  br i1 %.not293, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store float %.4, ptr %10, align 4, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit388:                 ; preds = %bb.ac, %bb.ad, %bb.t, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn289.pn = phi { ptr, i32 } [ %.pn286, %bb.ad ], [ %i.nr, %bb.u ], [ %.pn286, %bb.ac ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.nr, %bb.t ]
  resume { ptr, i32 } %.pn289.pn

bb.ai:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !47
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !44
  %i.p = load ptr, ptr %0, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #14
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !113

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !47
  store i8 %i.t, ptr %i.s, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.x, ptr %i.w, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !47
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !47
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !48
  store i64 %.0, ptr %i.h, align 8, !tbaa !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12quantize_lut24aq_quantize_LUT_and_biasEmmmPKfS2_miPhmPtPfS5_(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7, i64 noundef %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc65

.noexc65:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.b = shl nuw nsw i64 %1, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #15 ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !9
  %i.e = add nsw i64 %1, -1                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc65
  %i.g = getelementptr i8, ptr %i.c, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !9
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc65, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.d, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.d, %.noexc65 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0105.0 = phi ptr [ %i.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.c, %.noexc65 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.not.i = icmp eq i64 %0, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.h = icmp ult i64 %0, 4
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %0, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ] ; 5 uses
  %.0810.i = phi float [ +inf, %.lr.ph.i.preheader.new ], [ %.1.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 2 uses
  %i.k = fcmp olt float %i.j, %.0810.i
  %.1.i = select i1 %i.k, float %i.j, float %.0810.i ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  %i.o = fcmp olt float %i.n, %.1.i
  %.1.i.1 = select i1 %i.o, float %i.n, float %.1.i ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !9  ; 2 uses
  %i.s = fcmp olt float %i.r, %.1.i.1
  %.1.i.2 = select i1 %i.s, float %i.r, float %.1.i.1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !9  ; 2 uses
  %i.w = fcmp olt float %i.v, %.1.i.2
  %.1.i.3 = select i1 %i.w, float %i.v, float %.1.i.2 ; 3 uses
  %i.x = add nuw i64 %.011.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i67.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

.lr.ph.i67.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i67.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i67.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i67.preheader.unr-lcssa ]
  %.0810.i.epil.init = phi float [ +inf, %.lr.ph.i.preheader ], [ %.1.i.3, %.lr.ph.i67.preheader.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.ab, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0810.i.epil = phi float [ %.1.i.epil, %.lr.ph.i.epil ], [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !9  ; 2 uses
  %i.aa = fcmp olt float %i.z, %.0810.i.epil
  %.1.i.epil = select i1 %i.aa, float %i.z, float %.0810.i.epil ; 2 uses
  %i.ab = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i67.preheader, label %.lr.ph.i.epil, !llvm.loop !114

.lr.ph.i67.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i67.preheader.unr-lcssa
  %.1.i.lcssa = phi float [ %.1.i.3, %.lr.ph.i67.preheader.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %xtraiter174 = and i64 %0, 3                    ; 3 uses
  %i.ac = icmp ult i64 %0, 4
  br i1 %i.ac, label %.lr.ph.i67.epil.preheader, label %.lr.ph.i67.preheader.new

.lr.ph.i67.preheader.new:                         ; preds = %.lr.ph.i67.preheader
  %unroll_iter179 = and i64 %0, -4
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67, %.lr.ph.i67.preheader.new
  %.011.i68 = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %i.as, %.lr.ph.i67 ] ; 5 uses
  %.0810.i69 = phi float [ -inf, %.lr.ph.i67.preheader.new ], [ %.1.i70.3, %.lr.ph.i67 ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %niter180.next.3, %.lr.ph.i67 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9 ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.0810.i69
  %.1.i70 = select i1 %i.af, float %i.ae, float %.0810.i69 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.1.i70
  %.1.i70.1 = select i1 %i.aj, float %i.ai, float %.1.i70 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !9 ; 2 uses
  %i.an = fcmp ogt float %i.am, %.1.i70.1
  %.1.i70.2 = select i1 %i.an, float %i.am, float %.1.i70.1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, %.1.i70.2
  %.1.i70.3 = select i1 %i.ar, float %i.aq, float %.1.i70.2 ; 3 uses
  %i.as = add nuw i64 %.011.i68, 4                ; 2 uses
  %niter180.next.3 = add i64 %niter180, 4         ; 2 uses
  %niter180.ncmp.3 = icmp eq i64 %niter180.next.3, %unroll_iter179
  br i1 %niter180.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i67, !llvm.loop !20

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i67
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i67.epil.preheader

.lr.ph.i67.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i67.preheader
  %.011.i68.epil.init = phi i64 [ 0, %.lr.ph.i67.preheader ], [ %i.as, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %.0810.i69.epil.init = phi float [ -inf, %.lr.ph.i67.preheader ], [ %.1.i70.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i67.epil

.lr.ph.i67.epil:                                  ; preds = %.lr.ph.i67.epil, %.lr.ph.i67.epil.preheader
  %.011.i68.epil = phi i64 [ %i.aw, %.lr.ph.i67.epil ], [ %.011.i68.epil.init, %.lr.ph.i67.epil.preheader ] ; 2 uses
  %.0810.i69.epil = phi float [ %.1.i70.epil, %.lr.ph.i67.epil ], [ %.0810.i69.epil.init, %.lr.ph.i67.epil.preheader ] ; 2 uses
  %epil.iter175 = phi i64 [ %epil.iter175.next, %.lr.ph.i67.epil ], [ 0, %.lr.ph.i67.epil.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68.epil
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.0810.i69.epil
  %.1.i70.epil = select i1 %i.av, float %i.au, float %.0810.i69.epil ; 2 uses
  %i.aw = add nuw i64 %.011.i68.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i67.epil, !llvm.loop !115

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i67.epil, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.08.lcssa.i112 = phi float [ +inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.1.i.lcssa, %.lr.ph.i67.epil ], [ %.1.i.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ] ; 4 uses
  %.08.lcssa.i72 = phi float [ -inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.1.i70.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ], [ %.1.i70.epil, %.lr.ph.i67.epil ]
  %i.ax = fsub float %.08.lcssa.i72, %.08.lcssa.i112 ; 4 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %.not.i73 = icmp eq i64 %2, 0
  %i.ay = sub i64 %1, %5                          ; 4 uses
  %i.az = sitofp i32 %6 to float                  ; 2 uses
  br i1 %.not.i73, label %.lr.ph.split.us, label %.lr.ph.i74.preheader.preheader

.lr.ph.i74.preheader.preheader:                   ; preds = %.lr.ph
  %xtraiter181 = and i64 %2, 3                    ; 3 uses
  %i.ba = icmp ult i64 %2, 4
  %unroll_iter186 = and i64 %2, -4
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod185 = icmp ne i64 %xtraiter181, 0
  %xtraiter188 = and i64 %2, 3                    ; 3 uses
  %i.bb = icmp ult i64 %2, 4
  %unroll_iter193 = and i64 %2, -4
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  %lcmp.mod192 = icmp ne i64 %xtraiter188, 0
  br label %.lr.ph.i74.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bc = fmul float %i.az, -inf                  ; 3 uses
  %xtraiter195 = and i64 %1, 1
  %i.bd = icmp eq i64 %1, 1
  br i1 %i.bd, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter201 = and i64 %1, 2305843009213693950
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us, %.lr.ph.split.us.new
  %.060118.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %i.bn, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ] ; 4 uses
  %.062117.us = phi float [ 0.000000e+00, %.lr.ph.split.us.new ], [ %i.bm, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %.063116.us = phi float [ %i.ax, %.lr.ph.split.us.new ], [ %i.bl, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %niter202 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter202.next.1, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118.us
  store float +inf, ptr %i.be, align 4, !tbaa !9
  %.not.us = icmp ult i64 %.060118.us, %i.ay
  %i.bf = select i1 %.not.us, float -inf, float %i.bc
  %i.bg = fadd float %.063116.us, %i.bf
  %i.bh = fadd float %.062117.us, +inf
  %i.bi = or disjoint i64 %.060118.us, 1          ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %i.bi
  store float +inf, ptr %i.bj, align 4, !tbaa !9
  %.not.us.1 = icmp ult i64 %i.bi, %i.ay
  %i.bk = select i1 %.not.us.1, float -inf, float %i.bc
  %i.bl = fadd float %i.bg, %i.bk                 ; 3 uses
  %i.bm = fadd float %i.bh, +inf                  ; 3 uses
  %i.bn = add nuw i64 %.060118.us, 2              ; 2 uses
  %niter202.next.1 = add nuw i64 %niter202, 2     ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us
  %lcmp.mod197.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %._crit_edge, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.060118.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.062117.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ]
  %.063116.us.epil.init = phi float [ %i.ax, %.lr.ph.split.us ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod200 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118.us.epil.init
  store float +inf, ptr %i.bo, align 4, !tbaa !9
  %.not.us.epil = icmp ult i64 %.060118.us.epil.init, %i.ay
  %i.bp = select i1 %.not.us.epil, float -inf, float %i.bc
  %i.bq = fadd float %.063116.us.epil.init, %i.bp
  %i.br = fadd float %.062117.us.epil.init, +inf
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %.0110.lcssa = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ -inf, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated100, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %.063.lcssa = phi float [ %i.ax, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ %i.bq, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ], [ %i.ec, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %.062.lcssa = phi float [ 0.000000e+00, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ %i.br, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ], [ %i.ed, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %i.bs = insertelement <2 x float> poison, float %.063.lcssa, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %.0110.lcssa, i64 1 ; 2 uses
  %i.bu = fcmp ogt <2 x float> %i.bt, zeroinitializer
  %i.bv = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.bt
  %i.bw = select <2 x i1> %i.bu, <2 x float> %i.bv, <2 x float> splat (float +inf) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.by = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.bz = fcmp olt float %i.bx, %i.by
  %.sroa.speculated = select i1 %i.bz, float %i.bx, float %i.by ; 2 uses
  %i.ca = tail call float @llvm.fabs.f32(float %.sroa.speculated)
  %i.cb = fcmp one float %i.ca, +inf
  %.061 = select i1 %i.cb, float %.sroa.speculated, float 0.000000e+00 ; 7 uses
  %.not.i93 = icmp eq i64 %2, 0
  %or.cond = or i1 %.not.i.i.i.i, %.not.i93
  br i1 %or.cond, label %._crit_edge126.split, label %.lr.ph.i94.preheader.preheader

.lr.ph.i94.preheader.preheader:                   ; preds = %._crit_edge
  %i.cc = mul i64 %2, %1                          ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.cc
  %i.cd = shl i64 %i.cc, 2
  %scevgep147 = getelementptr i8, ptr %3, i64 %i.cd
  %min.iters.check = icmp ult i64 %2, 4
  %bound0 = icmp ult ptr %7, %scevgep147
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ce = and i64 %2, -6917529027641081856
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = or i1 %found.conflict, %i.cf
  %n.vec = and i64 %2, 6917529027641081852        ; 3 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %.061, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %2, %n.vec
  %xtraiter203 = and i64 %2, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br label %.lr.ph.i94.preheader

.lr.ph.i74.preheader:                             ; preds = %.lr.ph.i74.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit
  %.060118 = phi i64 [ %i.ee, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ 0, %.lr.ph.i74.preheader.preheader ] ; 4 uses
  %.062117 = phi float [ %i.ed, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ 0.000000e+00, %.lr.ph.i74.preheader.preheader ]
  %.063116 = phi float [ %i.ec, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ %i.ax, %.lr.ph.i74.preheader.preheader ]
  %.0110115 = phi float [ %.sroa.speculated100, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ -inf, %.lr.ph.i74.preheader.preheader ] ; 2 uses
  %i.ch = mul i64 %.060118, %2
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch ; 10 uses
  br i1 %i.ba, label %.lr.ph.i74.epil.preheader, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.011.i75 = phi i64 [ %i.cy, %.lr.ph.i74 ], [ 0, %.lr.ph.i74.preheader ] ; 5 uses
  %.0810.i76 = phi float [ %.1.i77.3, %.lr.ph.i74 ], [ +inf, %.lr.ph.i74.preheader ] ; 2 uses
  %niter187 = phi i64 [ %niter187.next.3, %.lr.ph.i74 ], [ 0, %.lr.ph.i74.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i75
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !9 ; 2 uses
  %i.cl = fcmp olt float %i.ck, %.0810.i76
  %.1.i77 = select i1 %i.cl, float %i.ck, float %.0810.i76 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i75
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9 ; 2 uses
  %i.cp = fcmp olt float %i.co, %.1.i77
  %.1.i77.1 = select i1 %i.cp, float %i.co, float %.1.i77 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i75
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !9 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.1.i77.1
  %.1.i77.2 = select i1 %i.ct, float %i.cs, float %.1.i77.1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i75
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cx = fcmp olt float %i.cw, %.1.i77.2
  %.1.i77.3 = select i1 %i.cx, float %i.cw, float %.1.i77.2 ; 3 uses
  %i.cy = add nuw i64 %.011.i75, 4                ; 2 uses
  %niter187.next.3 = add nuw i64 %niter187, 4     ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa, label %.lr.ph.i74, !llvm.loop !17

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa: ; preds = %.lr.ph.i74
  br i1 %lcmp.mod183.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa, %.lr.ph.i74.preheader
  %.011.i75.epil.init = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %i.cy, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ]
  %.0810.i76.epil.init = phi float [ +inf, %.lr.ph.i74.preheader ], [ %.1.i77.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %.lr.ph.i74.epil

.lr.ph.i74.epil:                                  ; preds = %.lr.ph.i74.epil, %.lr.ph.i74.epil.preheader
  %.011.i75.epil = phi i64 [ %i.dc, %.lr.ph.i74.epil ], [ %.011.i75.epil.init, %.lr.ph.i74.epil.preheader ] ; 2 uses
  %.0810.i76.epil = phi float [ %.1.i77.epil, %.lr.ph.i74.epil ], [ %.0810.i76.epil.init, %.lr.ph.i74.epil.preheader ] ; 2 uses
  %epil.iter182 = phi i64 [ %epil.iter182.next, %.lr.ph.i74.epil ], [ 0, %.lr.ph.i74.epil.preheader ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i75.epil
  %i.da = load float, ptr %i.cz, align 4, !tbaa !9 ; 2 uses
  %i.db = fcmp olt float %i.da, %.0810.i76.epil
  %.1.i77.epil = select i1 %i.db, float %i.da, float %.0810.i76.epil ; 2 uses
  %i.dc = add nuw i64 %.011.i75.epil, 1
  %epil.iter182.next = add i64 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i64 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, label %.lr.ph.i74.epil, !llvm.loop !117

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80: ; preds = %.lr.ph.i74.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa
  %.1.i77.lcssa = phi float [ %.1.i77.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ], [ %.1.i77.epil, %.lr.ph.i74.epil ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118
  store float %.1.i77.lcssa, ptr %i.dd, align 4, !tbaa !9
  br i1 %i.bb, label %.lr.ph.i82.epil.preheader, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, %.lr.ph.i82
  %.011.i83 = phi i64 [ %i.dt, %.lr.ph.i82 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ] ; 5 uses
  %.0810.i84 = phi float [ %.1.i85.3, %.lr.ph.i82 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ] ; 2 uses
  %niter194 = phi i64 [ %niter194.next.3, %.lr.ph.i82 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i83
  %i.df = load float, ptr %i.de, align 4, !tbaa !9 ; 2 uses
  %i.dg = fcmp ogt float %i.df, %.0810.i84
  %.1.i85 = select i1 %i.dg, float %i.df, float %.0810.i84 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i83
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %.1.i85
  %.1.i85.1 = select i1 %i.dk, float %i.dj, float %.1.i85 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !9 ; 2 uses
  %i.do = fcmp ogt float %i.dn, %.1.i85.1
  %.1.i85.2 = select i1 %i.do, float %i.dn, float %.1.i85.1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i83
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !9 ; 2 uses
  %i.ds = fcmp ogt float %i.dr, %.1.i85.2
  %.1.i85.3 = select i1 %i.ds, float %i.dr, float %.1.i85.2 ; 3 uses
  %i.dt = add nuw i64 %.011.i83, 4                ; 2 uses
  %niter194.next.3 = add nuw i64 %niter194, 4     ; 2 uses
  %niter194.ncmp.3 = icmp eq i64 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa, label %.lr.ph.i82, !llvm.loop !20

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa: ; preds = %.lr.ph.i82
  br i1 %lcmp.mod190.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, label %.lr.ph.i82.epil.preheader

.lr.ph.i82.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80
  %.011.i83.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ], [ %i.dt, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ]
  %.0810.i84.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ], [ %.1.i85.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i82.epil

.lr.ph.i82.epil:                                  ; preds = %.lr.ph.i82.epil, %.lr.ph.i82.epil.preheader
  %.011.i83.epil = phi i64 [ %i.dx, %.lr.ph.i82.epil ], [ %.011.i83.epil.init, %.lr.ph.i82.epil.preheader ] ; 2 uses
  %.0810.i84.epil = phi float [ %.1.i85.epil, %.lr.ph.i82.epil ], [ %.0810.i84.epil.init, %.lr.ph.i82.epil.preheader ] ; 2 uses
  %epil.iter189 = phi i64 [ %epil.iter189.next, %.lr.ph.i82.epil ], [ 0, %.lr.ph.i82.epil.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.011.i83.epil
  %i.dv = load float, ptr %i.du, align 4, !tbaa !9 ; 2 uses
  %i.dw = fcmp ogt float %i.dv, %.0810.i84.epil
  %.1.i85.epil = select i1 %i.dw, float %i.dv, float %.0810.i84.epil ; 2 uses
  %i.dx = add nuw i64 %.011.i83.epil, 1
  %epil.iter189.next = add i64 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i64 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, label %.lr.ph.i82.epil, !llvm.loop !118

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit: ; preds = %.lr.ph.i82.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa
  %.1.i85.lcssa = phi float [ %.1.i85.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ], [ %.1.i85.epil, %.lr.ph.i82.epil ]
  %i.dy = fsub float %.1.i85.lcssa, %.1.i77.lcssa ; 4 uses
  %i.dz = fcmp olt float %.0110115, %i.dy
  %.sroa.speculated100 = select i1 %i.dz, float %i.dy, float %.0110115 ; 2 uses
  %.not = icmp ult i64 %.060118, %i.ay
  %i.ea = fmul float %i.dy, %i.az
  %i.eb = select i1 %.not, float %i.dy, float %i.ea
  %i.ec = fadd float %.063116, %i.eb              ; 2 uses
  %i.ed = fadd float %.062117, %.1.i77.lcssa      ; 2 uses
  %i.ee = add nuw i64 %.060118, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i74.preheader, !llvm.loop !116

._crit_edge126.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, %._crit_edge
  %i.ef = fadd float %.08.lcssa.i112, %.062.lcssa
  %i.eg = mul i64 %2, %1
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 %i.eg
  %i.ei = sub i64 %8, %1
  %i.ej = mul i64 %i.ei, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.ej, i1 false)
  br i1 %.not.i, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %._crit_edge126.split
  %min.iters.check152 = icmp ult i64 %0, 4
  br i1 %min.iters.check152, label %.lr.ph.i91.preheader166, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.i91.preheader
  %n.vec154 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert155 = insertelement <4 x float> poison, float %.08.lcssa.i112, i64 0
  %broadcast.splat156 = shufflevector <4 x float> %broadcast.splatinsert155, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %.061, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph153
  %index160 = phi i64 [ 0, %vector.ph153 ], [ %index.next162, %vector.body159 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index160
  %wide.load161 = load <4 x float>, ptr %i.ek, align 4, !tbaa !9
  %i.el = fsub <4 x float> %wide.load161, %broadcast.splat156
  %i.em = fmul <4 x float> %broadcast.splat158, %i.el
  %i.en = fadd <4 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.en)
  %i.ep = fptoui <4 x float> %i.eo to <4 x i16>
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index160
  store <4 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !65
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next162, %n.vec154
  br i1 %i.er, label %middle.block163, label %vector.body159, !llvm.loop !119

middle.block163:                                  ; preds = %vector.body159
  %cmp.n164 = icmp eq i64 %0, %n.vec154
  br i1 %cmp.n164, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91.preheader166

.lr.ph.i91.preheader166:                          ; preds = %.lr.ph.i91.preheader, %middle.block163
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i91.preheader ], [ %n.vec154, %middle.block163 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader166, %.lr.ph.i91
  %.08.i = phi i64 [ %i.fa, %.lr.ph.i91 ], [ %.08.i.ph, %.lr.ph.i91.preheader166 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.08.i
  %i.et = load float, ptr %i.es, align 4, !tbaa !9
  %i.eu = fsub float %i.et, %.08.lcssa.i112
  %i.ev = fmul float %.061, %i.eu
  %i.ew = fadd float %i.ev, 5.000000e-01
  %i.ex = tail call float @llvm.floor.f32(float %i.ew)
  %i.ey = fptoui float %i.ex to i16
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %.08.i
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !65
  %i.fa = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i92 = icmp eq i64 %i.fa, %0
  br i1 %exitcond.not.i92, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91, !llvm.loop !120

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit: ; preds = %.lr.ph.i91, %middle.block163, %._crit_edge126.split
  store float %.061, ptr %10, align 4, !tbaa !9
  store float %i.ef, ptr %11, align 4, !tbaa !9
  %.not.i.i.i = icmp eq ptr %.sroa.0105.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit
  %i.fb = ptrtoint ptr %.sroa.12.0 to i64
  %i.fc = ptrtoint ptr %.sroa.0105.0 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0, i64 noundef %i.fd) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, %bb.b
  ret void

.lr.ph.i94.preheader:                             ; preds = %.lr.ph.i94.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit
  %.0123 = phi i64 [ %i.gt, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit ], [ 0, %.lr.ph.i94.preheader.preheader ] ; 3 uses
  %i.fe = mul i64 %.0123, %2                      ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fe ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.0123
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !9 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 %i.fe ; 4 uses
  %brmerge = or i1 %min.iters.check, %i.cg
  br i1 %brmerge, label %.lr.ph.i94.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i94.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index
  %wide.load = load <4 x float>, ptr %i.fj, align 4, !tbaa !9, !alias.scope !121
  %i.fk = fsub <4 x float> %wide.load, %broadcast.splat
  %i.fl = fmul <4 x float> %broadcast.splat150, %i.fk
  %i.fm = fadd <4 x float> %i.fl, splat (float 5.000000e-01)
  %i.fn = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.fm)
  %i.fo = fptoui <4 x float> %i.fn to <4 x i8>
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 %index
  store <4 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !47, !alias.scope !124, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i94.preheader167

.lr.ph.i94.preheader167:                          ; preds = %.lr.ph.i94.preheader, %middle.block
  %.08.i95.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i94.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.08.i95.ph, 1
  br i1 %lcmp.mod204.not, label %.lr.ph.i94.prol.loopexit, label %.lr.ph.i94.prol

.lr.ph.i94.prol:                                  ; preds = %.lr.ph.i94.preheader167
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.08.i95.ph
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !9
  %i.ft = fsub float %i.fs, %i.fh
  %i.fu = fmul float %.061, %i.ft
  %i.fv = fadd float %i.fu, 5.000000e-01
  %i.fw = tail call float @llvm.floor.f32(float %i.fv)
  %i.fx = fptoui float %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.08.i95.ph
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !47
  %i.fz = or disjoint i64 %.08.i95.ph, 1
  br label %.lr.ph.i94.prol.loopexit

.lr.ph.i94.prol.loopexit:                         ; preds = %.lr.ph.i94.prol, %.lr.ph.i94.preheader167
  %.08.i95.unr = phi i64 [ %.08.i95.ph, %.lr.ph.i94.preheader167 ], [ %i.fz, %.lr.ph.i94.prol ]
  %i.ga = icmp eq i64 %2, %.neg
  br i1 %i.ga, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94
  %.08.i95 = phi i64 [ %i.gs, %.lr.ph.i94 ], [ %.08.i95.unr, %.lr.ph.i94.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.08.i95
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !9
  %i.gd = fsub float %i.gc, %i.fh
  %i.ge = fmul float %.061, %i.gd
  %i.gf = fadd float %i.ge, 5.000000e-01
  %i.gg = tail call float @llvm.floor.f32(float %i.gf)
  %i.gh = fptoui float %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.08.i95
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !47
  %i.gj = add nuw i64 %.08.i95, 1                 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !9
  %i.gm = fsub float %i.gl, %i.fh
  %i.gn = fmul float %.061, %i.gm
  %i.go = fadd float %i.gn, 5.000000e-01
  %i.gp = tail call float @llvm.floor.f32(float %i.go)
  %i.gq = fptoui float %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gj
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !47
  %i.gs = add nuw i64 %.08.i95, 2                 ; 2 uses
  %exitcond.not.i96.1 = icmp eq i64 %i.gs, %2
  br i1 %exitcond.not.i96.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i94, !llvm.loop !127

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit: ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94, %middle.block
  %i.gt = add nuw i64 %.0123, 1                   ; 2 uses
  %exitcond133.not = icmp eq i64 %i.gt, %1
  br i1 %exitcond133.not, label %._crit_edge126.split, label %.lr.ph.i94.preheader, !llvm.loop !128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN5faiss12quantize_lut22aq_estimate_norm_scaleEmmmPKf(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = sub i64 %0, %2                           ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.b = icmp ult i64 %1, 4
  %unroll_iter = and i64 %1, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  %xtraiter89 = and i64 %1, 3                     ; 3 uses
  %i.c = icmp ult i64 %1, 4
  %unroll_iter94 = and i64 %1, -4
  %lcmp.mod91.not = icmp eq i64 %xtraiter89, 0
  %lcmp.mod93 = icmp ne i64 %xtraiter89, 0
  br label %.lr.ph.i.preheader

.preheader:                                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit, %bb.a
  %.059.lcssa = phi float [ -inf, %bb.a ], [ %.sroa.speculated54, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit ] ; 2 uses
  %i.d = icmp uge i64 %i.a, %0
  %.not.i35 = icmp eq i64 %1, 0
  %or.cond = or i1 %i.d, %.not.i35
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i36.preheader.preheader

.lr.ph.i36.preheader.preheader:                   ; preds = %.preheader
  %i.e = add i64 %1, -1                           ; 2 uses
  %xtraiter96 = and i64 %1, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.e, 3
  %unroll_iter101 = and i64 %1, -4
  %lcmp.mod98.not = icmp eq i64 %xtraiter96, 0
  %lcmp.mod100 = icmp ne i64 %xtraiter96, 0
  %xtraiter103 = and i64 %1, 3                    ; 3 uses
  %i.g = icmp ult i64 %i.e, 3
  %unroll_iter108 = and i64 %1, -4
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod107 = icmp ne i64 %xtraiter103, 0
  br label %.lr.ph.i36.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit
  %.066 = phi i64 [ %i.az, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %.05965 = phi float [ %.sroa.speculated54, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit ], [ -inf, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %i.h = mul i64 %.066, %1
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h ; 10 uses
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.0810.i = phi float [ %.1.i.3, %.lr.ph.i ], [ +inf, %.lr.ph.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !9  ; 2 uses
  %i.l = fcmp olt float %i.k, %.0810.i
  %.1.i = select i1 %i.l, float %i.k, float %.0810.i ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !9  ; 2 uses
  %i.p = fcmp olt float %i.o, %.1.i
  %.1.i.1 = select i1 %i.p, float %i.o, float %.1.i ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %i.t = fcmp olt float %i.s, %.1.i.1
  %.1.i.2 = select i1 %i.t, float %i.s, float %.1.i.1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !9  ; 2 uses
  %i.x = fcmp olt float %i.w, %.1.i.2
  %.1.i.3 = select i1 %i.x, float %i.w, float %.1.i.2 ; 3 uses
  %i.y = add nuw i64 %.011.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i29.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

.lr.ph.i29.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.lr.ph.i29.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i29.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i29.preheader.unr-lcssa ]
  %.0810.i.epil.init = phi float [ +inf, %.lr.ph.i.preheader ], [ %.1.i.3, %.lr.ph.i29.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.ac, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0810.i.epil = phi float [ %.1.i.epil, %.lr.ph.i.epil ], [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i.epil
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %i.ab = fcmp olt float %i.aa, %.0810.i.epil
  %.1.i.epil = select i1 %i.ab, float %i.aa, float %.0810.i.epil ; 2 uses
  %i.ac = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i29.preheader, label %.lr.ph.i.epil, !llvm.loop !129

.lr.ph.i29.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i29.preheader.unr-lcssa
  %.1.i.lcssa = phi float [ %.1.i.3, %.lr.ph.i29.preheader.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil ]
  br i1 %i.c, label %.lr.ph.i29.epil.preheader, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader, %.lr.ph.i29
  %.011.i30 = phi i64 [ %i.as, %.lr.ph.i29 ], [ 0, %.lr.ph.i29.preheader ] ; 5 uses
  %.0810.i31 = phi float [ %.1.i32.3, %.lr.ph.i29 ], [ -inf, %.lr.ph.i29.preheader ] ; 2 uses
  %niter95 = phi i64 [ %niter95.next.3, %.lr.ph.i29 ], [ 0, %.lr.ph.i29.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i30
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9 ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.0810.i31
  %.1.i32 = select i1 %i.af, float %i.ae, float %.0810.i31 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.1.i32
  %.1.i32.1 = select i1 %i.aj, float %i.ai, float %.1.i32 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !9 ; 2 uses
  %i.an = fcmp ogt float %i.am, %.1.i32.1
  %.1.i32.2 = select i1 %i.an, float %i.am, float %.1.i32.1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, %.1.i32.2
  %.1.i32.3 = select i1 %i.ar, float %i.aq, float %.1.i32.2 ; 3 uses
  %i.as = add nuw i64 %.011.i30, 4                ; 2 uses
  %niter95.next.3 = add nuw i64 %niter95, 4       ; 2 uses
  %niter95.ncmp.3 = icmp eq i64 %niter95.next.3, %unroll_iter94
  br i1 %niter95.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i29, !llvm.loop !20

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i29
  br i1 %lcmp.mod91.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit, label %.lr.ph.i29.epil.preheader

.lr.ph.i29.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i29.preheader
  %.011.i30.epil.init = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %i.as, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %.0810.i31.epil.init = phi float [ -inf, %.lr.ph.i29.preheader ], [ %.1.i32.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.lr.ph.i29.epil

.lr.ph.i29.epil:                                  ; preds = %.lr.ph.i29.epil, %.lr.ph.i29.epil.preheader
  %.011.i30.epil = phi i64 [ %i.aw, %.lr.ph.i29.epil ], [ %.011.i30.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %.0810.i31.epil = phi float [ %.1.i32.epil, %.lr.ph.i29.epil ], [ %.0810.i31.epil.init, %.lr.ph.i29.epil.preheader ] ; 2 uses
  %epil.iter90 = phi i64 [ %epil.iter90.next, %.lr.ph.i29.epil ], [ 0, %.lr.ph.i29.epil.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.011.i30.epil
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.0810.i31.epil
  %.1.i32.epil = select i1 %i.av, float %i.au, float %.0810.i31.epil ; 2 uses
  %i.aw = add nuw i64 %.011.i30.epil, 1
  %epil.iter90.next = add i64 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i64 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit, label %.lr.ph.i29.epil, !llvm.loop !130

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit: ; preds = %.lr.ph.i29.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa
  %.1.i32.lcssa = phi float [ %.1.i32.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ], [ %.1.i32.epil, %.lr.ph.i29.epil ]
  %i.ax = fsub float %.1.i32.lcssa, %.1.i.lcssa   ; 2 uses
  %i.ay = fcmp olt float %.05965, %i.ax
  %.sroa.speculated54 = select i1 %i.ay, float %i.ax, float %.05965 ; 2 uses
  %i.az = add nuw i64 %.066, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.a
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.i.preheader, !llvm.loop !131

._crit_edge:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit, %.lr.ph, %.preheader
  %.059.lcssa82 = phi float [ %.059.lcssa, %.preheader ], [ -inf, %.lr.ph ], [ %.059.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit ]
  %.060.lcssa = phi float [ -inf, %.preheader ], [ -inf, %.lr.ph ], [ %.sroa.speculated, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit ]
  %i.ba = fdiv float %.060.lcssa, %.059.lcssa82
  ret float %i.ba

.lr.ph.i36.preheader:                             ; preds = %.lr.ph.i36.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit
  %.02670 = phi i64 [ %i.ct, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit ], [ %i.a, %.lr.ph.i36.preheader.preheader ] ; 2 uses
  %.06069 = phi float [ %.sroa.speculated, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit ], [ -inf, %.lr.ph.i36.preheader.preheader ] ; 2 uses
  %i.bb = mul i64 %.02670, %1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bb ; 10 uses
  br i1 %i.f, label %.lr.ph.i36.epil.preheader, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36
  %.011.i37 = phi i64 [ %i.bs, %.lr.ph.i36 ], [ 0, %.lr.ph.i36.preheader ] ; 5 uses
  %.0810.i38 = phi float [ %.1.i39.3, %.lr.ph.i36 ], [ +inf, %.lr.ph.i36.preheader ] ; 2 uses
  %niter102 = phi i64 [ %niter102.next.3, %.lr.ph.i36 ], [ 0, %.lr.ph.i36.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i37
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9 ; 2 uses
  %i.bf = fcmp olt float %i.be, %.0810.i38
  %.1.i39 = select i1 %i.bf, float %i.be, float %.0810.i38 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !9 ; 2 uses
  %i.bj = fcmp olt float %i.bi, %.1.i39
  %.1.i39.1 = select i1 %i.bj, float %i.bi, float %.1.i39 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9 ; 2 uses
  %i.bn = fcmp olt float %i.bm, %.1.i39.1
  %.1.i39.2 = select i1 %i.bn, float %i.bm, float %.1.i39.1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !9 ; 2 uses
  %i.br = fcmp olt float %i.bq, %.1.i39.2
  %.1.i39.3 = select i1 %i.br, float %i.bq, float %.1.i39.2 ; 3 uses
  %i.bs = add nuw i64 %.011.i37, 4                ; 2 uses
  %niter102.next.3 = add nuw i64 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.lr.ph.i44.preheader.unr-lcssa, label %.lr.ph.i36, !llvm.loop !17

.lr.ph.i44.preheader.unr-lcssa:                   ; preds = %.lr.ph.i36
  br i1 %lcmp.mod98.not, label %.lr.ph.i44.preheader, label %.lr.ph.i36.epil.preheader

.lr.ph.i36.epil.preheader:                        ; preds = %.lr.ph.i44.preheader.unr-lcssa, %.lr.ph.i36.preheader
  %.011.i37.epil.init = phi i64 [ 0, %.lr.ph.i36.preheader ], [ %i.bs, %.lr.ph.i44.preheader.unr-lcssa ]
  %.0810.i38.epil.init = phi float [ +inf, %.lr.ph.i36.preheader ], [ %.1.i39.3, %.lr.ph.i44.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i36.epil

.lr.ph.i36.epil:                                  ; preds = %.lr.ph.i36.epil, %.lr.ph.i36.epil.preheader
  %.011.i37.epil = phi i64 [ %i.bw, %.lr.ph.i36.epil ], [ %.011.i37.epil.init, %.lr.ph.i36.epil.preheader ] ; 2 uses
  %.0810.i38.epil = phi float [ %.1.i39.epil, %.lr.ph.i36.epil ], [ %.0810.i38.epil.init, %.lr.ph.i36.epil.preheader ] ; 2 uses
  %epil.iter97 = phi i64 [ %epil.iter97.next, %.lr.ph.i36.epil ], [ 0, %.lr.ph.i36.epil.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i37.epil
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9 ; 2 uses
  %i.bv = fcmp olt float %i.bu, %.0810.i38.epil
  %.1.i39.epil = select i1 %i.bv, float %i.bu, float %.0810.i38.epil ; 2 uses
  %i.bw = add nuw i64 %.011.i37.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.lr.ph.i44.preheader, label %.lr.ph.i36.epil, !llvm.loop !132

.lr.ph.i44.preheader:                             ; preds = %.lr.ph.i36.epil, %.lr.ph.i44.preheader.unr-lcssa
  %.1.i39.lcssa = phi float [ %.1.i39.3, %.lr.ph.i44.preheader.unr-lcssa ], [ %.1.i39.epil, %.lr.ph.i36.epil ]
  br i1 %i.g, label %.lr.ph.i44.epil.preheader, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader, %.lr.ph.i44
  %.011.i45 = phi i64 [ %i.cm, %.lr.ph.i44 ], [ 0, %.lr.ph.i44.preheader ] ; 5 uses
  %.0810.i46 = phi float [ %.1.i47.3, %.lr.ph.i44 ], [ -inf, %.lr.ph.i44.preheader ] ; 2 uses
  %niter109 = phi i64 [ %niter109.next.3, %.lr.ph.i44 ], [ 0, %.lr.ph.i44.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i45
  %i.by = load float, ptr %i.bx, align 4, !tbaa !9 ; 2 uses
  %i.bz = fcmp ogt float %i.by, %.0810.i46
  %.1.i47 = select i1 %i.bz, float %i.by, float %.0810.i46 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !9 ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %.1.i47
  %.1.i47.1 = select i1 %i.cd, float %i.cc, float %.1.i47 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !9 ; 2 uses
  %i.ch = fcmp ogt float %i.cg, %.1.i47.1
  %.1.i47.2 = select i1 %i.ch, float %i.cg, float %.1.i47.1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i45
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !9 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %.1.i47.2
  %.1.i47.3 = select i1 %i.cl, float %i.ck, float %.1.i47.2 ; 3 uses
  %i.cm = add nuw i64 %.011.i45, 4                ; 2 uses
  %niter109.next.3 = add nuw i64 %niter109, 4     ; 2 uses
  %niter109.ncmp.3 = icmp eq i64 %niter109.next.3, %unroll_iter108
  br i1 %niter109.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa, label %.lr.ph.i44, !llvm.loop !20

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa: ; preds = %.lr.ph.i44
  br i1 %lcmp.mod105.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit, label %.lr.ph.i44.epil.preheader

.lr.ph.i44.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa, %.lr.ph.i44.preheader
  %.011.i45.epil.init = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.cm, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa ]
  %.0810.i46.epil.init = phi float [ -inf, %.lr.ph.i44.preheader ], [ %.1.i47.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.i44.epil

.lr.ph.i44.epil:                                  ; preds = %.lr.ph.i44.epil, %.lr.ph.i44.epil.preheader
  %.011.i45.epil = phi i64 [ %i.cq, %.lr.ph.i44.epil ], [ %.011.i45.epil.init, %.lr.ph.i44.epil.preheader ] ; 2 uses
  %.0810.i46.epil = phi float [ %.1.i47.epil, %.lr.ph.i44.epil ], [ %.0810.i46.epil.init, %.lr.ph.i44.epil.preheader ] ; 2 uses
  %epil.iter104 = phi i64 [ %epil.iter104.next, %.lr.ph.i44.epil ], [ 0, %.lr.ph.i44.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011.i45.epil
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9 ; 2 uses
  %i.cp = fcmp ogt float %i.co, %.0810.i46.epil
  %.1.i47.epil = select i1 %i.cp, float %i.co, float %.0810.i46.epil ; 2 uses
  %i.cq = add nuw i64 %.011.i45.epil, 1
  %epil.iter104.next = add i64 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i64 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit, label %.lr.ph.i44.epil, !llvm.loop !133

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit: ; preds = %.lr.ph.i44.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa
  %.1.i47.lcssa = phi float [ %.1.i47.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit50.loopexit.unr-lcssa ], [ %.1.i47.epil, %.lr.ph.i44.epil ]
  %i.cr = fsub float %.1.i47.lcssa, %.1.i39.lcssa ; 2 uses
  %i.cs = fcmp olt float %.06069, %i.cr
  %.sroa.speculated = select i1 %i.cs, float %i.cr, float %.06069 ; 2 uses
  %i.ct = add nuw i64 %.02670, 1                  ; 2 uses
  %exitcond76.not = icmp eq i64 %i.ct, %0
  br i1 %exitcond76.not, label %._crit_edge, label %.lr.ph.i36.preheader, !llvm.loop !134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !12, !13, !14}
!25 = distinct !{!25, !12, !14, !13}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !14, !13}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12, !14, !13}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !13, !14}
!36 = distinct !{!36, !12, !14, !13}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !42, i64 0}
!42 = !{!"p1 omnipotent char", !43, i64 0}
!43 = !{!"any pointer", !7, i64 0}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !46, i64 8, !7, i64 16}
!46 = !{!"long", !7, i64 0}
!47 = !{!7, !7, i64 0}
!48 = !{!45, !42, i64 0}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !12}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !12, !13, !14}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !12}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = distinct !{!67, !12, !13, !14}
!68 = distinct !{!68, !12, !14, !13}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !12, !13, !14}
!75 = distinct !{!75, !12, !13}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !12, !14, !13}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12, !13, !14}
!86 = !{!87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!90}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !12, !13, !14}
!92 = distinct !{!92, !12, !13}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12, !13, !14}
!95 = distinct !{!95, !12, !14, !13}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12, !13, !14}
!99 = distinct !{!99, !12, !14, !13}
!100 = distinct !{!100, !12, !13, !14}
!101 = distinct !{!101, !12, !14, !13}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12, !13, !14}
!109 = distinct !{!109, !12, !14, !13}
!110 = distinct !{!110, !12}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !8, i64 0}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !12, !13, !14}
!120 = distinct !{!120, !12, !14, !13}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!125}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !12, !13, !14}
!127 = distinct !{!127, !12, !13}
!128 = distinct !{!128, !12}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !12}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !12}
end_hunk_0
