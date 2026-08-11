inline.NumInlined: 213
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_:bb.a
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
  %.0245692.us = phi i64 [ %i.ux, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ] ; 2 uses
  %.0246691.us = phi i64 [ %12, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ]
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0245692.us
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !9
  %i.uh = fdiv float %i.ug, %i.ue                 ; 2 uses
  %broadcast.splatinsert1006 = insertelement <4 x float> poison, float %i.uh, i64 0
  %broadcast.splat1007 = shufflevector <4 x float> %broadcast.splatinsert1006, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader631.us.us

.preheader631.us.us:                              ; preds = %._crit_edge684.us.us, %.preheader631.lr.ph.us
  %.0240687.us.us.a = phi i64 [ 0, %.preheader631.lr.ph.us ], [ %i.uw, %._crit_edge684.us.us ]
  %.1247686.us.us.a = phi i64 [ %.0246691.us, %.preheader631.lr.ph.us ], [ %12, %._crit_edge684.us.us ] ; 4 uses
  %12 = add i64 %2, %.1247686.us.us.a             ; 3 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %.preheader631.us.us
  %i.ui = add i64 %.1247686.us.us.a, %n.vec1005
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1004
  %index1009 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1012, %vector.body1008 ] ; 2 uses
  %i.uj = add i64 %.1247686.us.us.a, %index1009   ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %wide.load1010.a = load <4 x float>, ptr %i.uk, align 4, !tbaa !9
  %wide.load1011 = load <4 x float>, ptr %i.ul, align 4, !tbaa !9
  %i.um = fadd <4 x float> %broadcast.splat1007, %wide.load1010.a
  %i.un = fadd <4 x float> %broadcast.splat1007, %wide.load1011
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.uj ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store <4 x float> %i.um, ptr %i.uo, align 4, !tbaa !9
  store <4 x float> %i.un, ptr %i.up, align 4, !tbaa !9
  %index.next1012 = add nuw i64 %index1009, 8     ; 2 uses
  %i.uq = icmp eq i64 %index.next1012, %n.vec1005
  br i1 %i.uq, label %middle.block1013, label %vector.body1008, !llvm.loop !94

middle.block1013:                                 ; preds = %vector.body1008
  br i1 %cmp.n1014, label %._crit_edge684.us.us, label %scalar.ph1002.preheader

scalar.ph1002.preheader:                          ; preds = %.preheader631.us.us, %middle.block1013
  %.2248681.us.us.ph = phi i64 [ %.1247686.us.us.a, %.preheader631.us.us ], [ %i.ui, %middle.block1013 ]
  br label %scalar.ph1002

scalar.ph1002:                                    ; preds = %scalar.ph1002.preheader, %scalar.ph1002
  %.2248681.us.us = phi i64 [ %i.uv, %scalar.ph1002 ], [ %.2248681.us.us.ph, %scalar.ph1002.preheader ] ; 3 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2248681.us.us
  %i.us = load float, ptr %i.ur, align 4, !tbaa !9
  %i.ut = fadd float %i.uh, %i.us
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %.2248681.us.us
  store float %i.ut, ptr %i.uu, align 4, !tbaa !9
  %i.uv = add i64 %.2248681.us.us, 1              ; 2 uses
  %exitcond787.not = icmp eq i64 %i.uv, %12
  br i1 %exitcond787.not, label %._crit_edge684.us.us, label %scalar.ph1002, !llvm.loop !95

._crit_edge684.us.us:                             ; preds = %scalar.ph1002, %middle.block1013
  %i.uw = add nuw i64 %.0240687.us.us.a, 1        ; 2 uses
  %exitcond788.not = icmp eq i64 %i.uw, %1
  br i1 %exitcond788.not, label %._crit_edge688.split.us.us, label %.preheader631.us.us, !llvm.loop !96

._crit_edge688.split.us.us:                       ; preds = %._crit_edge684.us.us
  %i.ux = add nuw i64 %.0245692.us, 1             ; 2 uses
  %exitcond789.not = icmp eq i64 %i.ux, %0
  br i1 %exitcond789.not, label %._crit_edge694.split, label %.preheader631.lr.ph.us, !llvm.loop !97

._crit_edge694.split:                             ; preds = %._crit_edge688.split.us.us, %.lr.ph693.split, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
  %i.uy = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.uy, label %bb.x, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431

bb.x:                                             ; preds = %._crit_edge694.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc434 unwind label %bb.z

.noexc434:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge694.split
  %.not.i.i.i.i432 = icmp eq i64 %1, 0            ; 3 uses
  br i1 %.not.i.i.i.i432, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.uz = shl nuw nsw i64 %1, 2                   ; 7 uses
  %i.va = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #15
          to label %.noexc435 unwind label %bb.z  ; 7 uses

.noexc435:                                        ; preds = %bb.y
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uz
  %i.vc = add nsw i64 %i.uz, -4                   ; 2 uses
  %i.vd = lshr exact i64 %i.vc, 2
  %i.ve = add nuw nsw i64 %i.vd, 1                ; 2 uses
  %min.iters.check1017 = icmp ult i64 %i.vc, 28
  br i1 %min.iters.check1017, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %.noexc435
  %n.vec1019 = and i64 %i.ve, 9223372036854775800 ; 3 uses
  %i.vf = shl i64 %n.vec1019, 2
  %i.vg = getelementptr i8, ptr %i.va, i64 %i.vf
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1020 ] ; 2 uses
  %i.vh = shl i64 %index1021, 2
  %next.gep = getelementptr i8, ptr %i.va, i64 %i.vh ; 2 uses
  %i.vi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !tbaa !9
  store <4 x float> splat (float +inf), ptr %i.vi, align 4, !tbaa !9
  %index.next1022 = add nuw i64 %index1021, 8     ; 2 uses
  %i.vj = icmp eq i64 %index.next1022, %n.vec1019
  br i1 %i.vj, label %middle.block1023, label %vector.body1020, !llvm.loop !98

middle.block1023:                                 ; preds = %vector.body1020
  %cmp.n1024 = icmp eq i64 %i.ve, %n.vec1019
  br i1 %cmp.n1024, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc435, %middle.block1023
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.va, %.noexc435 ], [ %i.vg, %middle.block1023 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vk, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float +inf, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !9
  %i.vk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vk, %i.vb
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !99

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block1023
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %1
  %i.vm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #15
          to label %.noexc444 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit447 ; 6 uses

.noexc444:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.uz
  %i.vo = add nsw i64 %i.uz, -4                   ; 2 uses
  %i.vp = lshr exact i64 %i.vo, 2
  %i.vq = add nuw nsw i64 %i.vp, 1                ; 2 uses
  %min.iters.check1027 = icmp ult i64 %i.vo, 28
  br i1 %min.iters.check1027, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %.noexc444
  %n.vec1029 = and i64 %i.vq, 9223372036854775800 ; 3 uses
  %i.vr = shl i64 %n.vec1029, 2
  %i.vs = getelementptr i8, ptr %i.vm, i64 %i.vr
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1033, %vector.body1030 ] ; 2 uses
  %i.vt = shl i64 %index1031, 2
  %next.gep1032 = getelementptr i8, ptr %i.vm, i64 %i.vt ; 2 uses
  %i.vu = getelementptr i8, ptr %next.gep1032, i64 16
  store <4 x float> splat (float -inf), ptr %next.gep1032, align 4, !tbaa !9
  store <4 x float> splat (float -inf), ptr %i.vu, align 4, !tbaa !9
  %index.next1033 = add nuw i64 %index1031, 8     ; 2 uses
  %i.vv = icmp eq i64 %index.next1033, %n.vec1029
  br i1 %i.vv, label %middle.block1034, label %vector.body1030, !llvm.loop !100

middle.block1034:                                 ; preds = %vector.body1030
  %cmp.n1035 = icmp eq i64 %i.vq, %n.vec1029
  br i1 %cmp.n1035, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader

.lr.ph.i.i.i.i.i.i.i.i.i438.preheader:            ; preds = %.noexc444, %middle.block1034
  %.07.i.i.i.i.i.i.i.i.i439.ph = phi ptr [ %i.vm, %.noexc444 ], [ %i.vs, %middle.block1034 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i438

.lr.ph.i.i.i.i.i.i.i.i.i438:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i438
  %.07.i.i.i.i.i.i.i.i.i439 = phi ptr [ %i.vw, %.lr.ph.i.i.i.i.i.i.i.i.i438 ], [ %.07.i.i.i.i.i.i.i.i.i439.ph, %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  store float -inf, ptr %.07.i.i.i.i.i.i.i.i.i439, align 4, !tbaa !9
  %i.vw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i439, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i440 = icmp eq ptr %i.vw, %i.vn
  br i1 %.not.i.i.i.i.i.i.i.i.i440, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438, !llvm.loop !101

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438, %middle.block1034
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %1
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = ptrtoint ptr %i.vl to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445:         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.14.0625 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vz, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  %.sroa.0495.0623 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.va, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.0489.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vm, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vy, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  br i1 %.not746, label %.preheader629, label %.preheader630.lr.ph

.preheader630.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %.preheader.lr.ph, label %.preheader630.lr.ph.split

.preheader630.lr.ph.split:                        ; preds = %.preheader630.lr.ph
  %.not.i448 = icmp eq i64 %2, 0
  br i1 %.not.i448, label %.lr.ph710.preheader, label %.preheader630.preheader

.preheader630.preheader:                          ; preds = %.preheader630.lr.ph.split
  %i.wa = add i64 %2, -1                          ; 2 uses
  %xtraiter1147 = and i64 %2, 3                   ; 3 uses
  %i.wb = icmp ult i64 %i.wa, 3
  %unroll_iter1152 = and i64 %2, -4
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1147, 0
  %lcmp.mod1151 = icmp ne i64 %xtraiter1147, 0
  %xtraiter1154 = and i64 %2, 3                   ; 3 uses
  %i.wc = icmp ult i64 %i.wa, 3
  %unroll_iter1159 = and i64 %2, -4
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1154, 0
  %lcmp.mod1158 = icmp ne i64 %xtraiter1154, 0
  br label %.preheader630

.preheader630:                                    ; preds = %.preheader630.preheader, %._crit_edge700.split
  %.0236704 = phi i64 [ %i.wf, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  %.0237703 = phi i64 [ %i.yd, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  br label %.lr.ph.i449.preheader

.preheader629:                                    ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %._crit_edge711, label %.lr.ph710.preheader

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorIfSaIfEED2Ev.exit447:                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.we = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.uz) #16
  br label %bb.ac

._crit_edge700.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %i.wf = add nuw i64 %.0236704, 1                ; 2 uses
  %exitcond791.not = icmp eq i64 %i.wf, %0
  br i1 %exitcond791.not, label %.lr.ph710.preheader, label %.preheader630, !llvm.loop !102

.lr.ph710.preheader:                              ; preds = %._crit_edge700.split, %.preheader630.lr.ph.split, %.preheader629
  %xtraiter1161 = and i64 %1, 1
  %i.wg = icmp eq i64 %1, 1
  br i1 %i.wg, label %.lr.ph710.epil.preheader, label %.lr.ph710.preheader.new

.lr.ph710.preheader.new:                          ; preds = %.lr.ph710.preheader
  %unroll_iter1167 = and i64 %1, 2305843009213693950
  br label %.lr.ph710

.lr.ph.i449.preheader:                            ; preds = %.preheader630, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %.0235698 = phi i64 [ 0, %.preheader630 ], [ %i.ye, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 3 uses
  %.1238697 = phi i64 [ %.0237703, %.preheader630 ], [ %i.yd, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 2 uses
  %i.wh = mul i64 %.1238697, %2
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.wh ; 10 uses
  br i1 %i.wb, label %.lr.ph.i449.epil.preheader, label %.lr.ph.i449

.lr.ph.i449:                                      ; preds = %.lr.ph.i449.preheader, %.lr.ph.i449
  %.011.i450 = phi i64 [ %i.wy, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ] ; 5 uses
  %.0810.i451 = phi float [ %.1.i452.3, %.lr.ph.i449 ], [ +inf, %.lr.ph.i449.preheader ] ; 2 uses
  %niter1153 = phi i64 [ %niter1153.next.3, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ]
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.011.i450
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !9 ; 2 uses
  %i.wl = fcmp olt float %i.wk, %.0810.i451
  %.1.i452 = select i1 %i.wl, float %i.wk, float %.0810.i451 ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.011.i450
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !9 ; 2 uses
  %i.wp = fcmp olt float %i.wo, %.1.i452
  %.1.i452.1 = select i1 %i.wp, float %i.wo, float %.1.i452 ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.011.i450
end_hunk_0
