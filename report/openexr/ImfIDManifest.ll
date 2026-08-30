Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 810
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK7Imf_3_410IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  store i32 4, ptr %i.sj, align 4, !tbaa !133
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i32 4, ptr %i.sl, align 4, !tbaa !133
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store i32 4, ptr %i.sn, align 4, !tbaa !133
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  store i32 4, ptr %i.sp, align 4, !tbaa !133
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  store i32 4, ptr %i.sr, align 4, !tbaa !133
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 40
  store i32 4, ptr %i.st, align 4, !tbaa !133
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  store i32 4, ptr %i.sv, align 4, !tbaa !133
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.31911386
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 56
  store i32 4, ptr %i.sx, align 4, !tbaa !133
  %i.sy = add nuw nsw i64 %.31911386, 8           ; 2 uses
  %exitcond1546.not.7 = icmp eq i64 %i.sy, %invariant.umin1385
  br i1 %exitcond1546.not.7, label %.preheader1170, label %.lr.ph1387, !llvm.loop !145

.lr.ph1390:                                       ; preds = %.lr.ph1390.prol.loopexit, %.lr.ph1390
  %.41921389 = phi i64 [ %i.to, %.lr.ph1390 ], [ %.41921389.unr, %.lr.ph1390.prol.loopexit ] ; 9 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  store i32 5, ptr %i.sz, align 4, !tbaa !133
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store i32 5, ptr %i.tb, align 4, !tbaa !133
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store i32 5, ptr %i.td, align 4, !tbaa !133
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  store i32 5, ptr %i.tf, align 4, !tbaa !133
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  store i32 5, ptr %i.th, align 4, !tbaa !133
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  store i32 5, ptr %i.tj, align 4, !tbaa !133
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  store i32 5, ptr %i.tl, align 4, !tbaa !133
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.41921389
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 56
  store i32 5, ptr %i.tn, align 4, !tbaa !133
  %i.to = add nuw i64 %.41921389, 8               ; 2 uses
  %exitcond1547.not.7 = icmp eq i64 %i.to, %.pre1573
  br i1 %exitcond1547.not.7, label %._crit_edge1391, label %.lr.ph1390, !llvm.loop !146

._crit_edge1391:                                  ; preds = %.lr.ph1390.prol.loopexit, %.lr.ph1390, %.preheader1170
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1391
  %i.tp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre1573, i1 true)
  %i.tq = shl nuw nsw i64 %i.tp, 1
  %i.tr = xor i64 %i.tq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0917.0, ptr %.0.lcssa.i.i.i.i.i237, i64 noundef %i.tr)
          to label %.noexc348 unwind label %bb.bp

.noexc348:                                        ; preds = %bb.bq
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0917.0, ptr %.0.lcssa.i.i.i.i.i237)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350 unwind label %bb.bp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350: ; preds = %.noexc348
  %i.ts = icmp ugt i64 %.pre1573, 2305843009213693951
  br i1 %i.ts, label %bb.br, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.br:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #33
          to label %.noexc352 unwind label %bb.bt

.noexc352:                                        ; preds = %bb.br
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350
  %i.tt = ashr exact i64 %.pre1571, 1
  %i.tu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #34
          to label %.noexc353 unwind label %bb.bt ; 15 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.tv = ptrtoaddr ptr %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %.pre1573 ; 5 uses
  store i32 0, ptr %i.tu, align 4, !tbaa !15
  %i.tx = getelementptr i8, ptr %i.tu, i64 4      ; 3 uses
  %i.ty = add nsw i64 %.pre1573, -1               ; 2 uses
  %i.tz = icmp eq i64 %i.ty, 0
  br i1 %i.tz, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc353
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ty, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.tx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !15
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc353
  %.0.i.i.i.i.i.ph = phi ptr [ %i.tx, %.noexc353 ], [ %i.ua, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %.0.i.i.i.i.i.ph1548 = ptrtoaddr ptr %.0.i.i.i.i.i.ph to i64
  %i.ub = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.bs unwind label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit659.thread ; 5 uses

bb.bs:                                            ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0917.0, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !135 ; 3 uses
  store i32 %i.ue, ptr %i.ub, align 4, !tbaa !133
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !135
  %.not5.i.i.i.i = icmp eq ptr %i.tu, %.0.i.i.i.i.i.ph
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i356.preheader

.lr.ph.i.i.i.i356.preheader:                      ; preds = %bb.bs
  %i.ug = add i64 %.0.i.i.i.i.i.ph1548, -4
  %i.uh = sub i64 %i.ug, %i.tv
  %i.ui = and i64 %i.uh, -4
  %i.uj = add i64 %i.ui, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tu, i8 -1, i64 %i.uj, i1 false), !tbaa !15
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i356.preheader, %bb.bs
  %i.uk = sext i32 %i.ue to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.uk
  store i32 0, ptr %i.ul, align 4, !tbaa !15
  %i.um = icmp samesign ugt i64 %.pre1573, 1
  br i1 %i.um, label %.lr.ph1397, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

.lr.ph1397:                                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %i.un = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.uo = ptrtoint ptr %i.tu to i64
  %i.up = sub i64 %i.un, %i.uo
  %i.uq = lshr i64 %i.up, 2                       ; 2 uses
  %i.ur = trunc i64 %i.uq to i32
  %sext = shl i64 %i.uq, 32
  %i.us = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.bu

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.br
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit661

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit659.thread: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.bu:                                            ; preds = %.lr.ph1397, %.critedge2
  %.01561396 = phi i64 [ 1, %.lr.ph1397 ], [ %i.wq, %.critedge2 ] ; 3 uses
  %.01571395 = phi i32 [ 1, %.lr.ph1397 ], [ %.1158.lcssa, %.critedge2 ] ; 2 uses
  %.sroa.31883.01394 = phi ptr [ %i.uc, %.lr.ph1397 ], [ %.sroa.31883.1, %.critedge2 ] ; 8 uses
  %.sroa.18.01393 = phi ptr [ %i.uc, %.lr.ph1397 ], [ %.sroa.18.1, %.critedge2 ] ; 5 uses
  %.sroa.0864.01392 = phi ptr [ %i.ub, %.lr.ph1397 ], [ %.sroa.0864.1, %.critedge2 ] ; 10 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0917.0, i64 %.01561396
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !135 ; 3 uses
  %i.uy = icmp eq i32 %i.ux, %.01571395
  br i1 %i.uy, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.uz = getelementptr inbounds i8, ptr %.sroa.18.01393, i64 -4
  store i32 %.01571395, ptr %i.uz, align 4, !tbaa !135
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.bw:                                            ; preds = %bb.bu
  %.not.i358 = icmp eq ptr %.sroa.18.01393, %.sroa.31883.01394
  br i1 %.not.i358, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.sroa.6.0.insert.ext = zext i32 %i.ux to i64   ; 2 uses
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0853.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.6.0.insert.ext
  store i64 %.sroa.0853.0.insert.insert, ptr %.sroa.18.01393, align 4
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.18.01393, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.by:                                            ; preds = %bb.bw
  %i.vb = ptrtoint ptr %.sroa.31883.01394 to i64  ; 2 uses
  %i.vc = ptrtoint ptr %.sroa.0864.01392 to i64   ; 3 uses
  %i.vd = sub i64 %i.vb, %i.vc                    ; 4 uses
  %i.ve = icmp eq i64 %i.vd, 9223372036854775800
  br i1 %i.ve, label %bb.bz, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc362 unwind label %.loopexit.split-lp1166

.noexc362:                                        ; preds = %bb.bz
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.by
  %i.vf = ashr exact i64 %i.vd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.vf, i64 1)
  %i.vg = add nsw i64 %.sroa.speculated.i.i.i, %i.vf ; 2 uses
  %i.vh = icmp ult i64 %i.vg, %i.vf
  %i.vi = call i64 @llvm.umin.i64(i64 %i.vg, i64 1152921504606846975)
  %i.vj = select i1 %i.vh, i64 1152921504606846975, i64 %i.vi ; 2 uses
  %i.vk = shl nuw nsw i64 %i.vj, 3
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #34
          to label %.noexc363 unwind label %.loopexit1165 ; 8 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vd
  %.sroa.6.0.insert.ext859 = zext i32 %i.ux to i64 ; 2 uses
  %.sroa.6.0.insert.shift860 = shl nuw i64 %.sroa.6.0.insert.ext859, 32
  %.sroa.0853.0.insert.insert857 = or disjoint i64 %.sroa.6.0.insert.shift860, %.sroa.6.0.insert.ext859
  store i64 %.sroa.0853.0.insert.insert857, ptr %i.vm, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0864.01392, %.sroa.31883.01394
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i359.preheader

.lr.ph.i.i.i.i.i359.preheader:                    ; preds = %.noexc363
  %i.vn = ptrtoaddr ptr %i.vl to i64
  %i.vo = add i64 %i.vb, -8
  %i.vp = sub i64 %i.vo, %i.vc                    ; 2 uses
  %i.vq = lshr i64 %i.vp, 3
  %i.vr = add nuw nsw i64 %i.vq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.vp, 24
  %i.vs = sub i64 %i.vc, %i.vn
  %diff.check = icmp ugt i64 %i.vs, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i359.preheader2203, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i359.preheader
  %n.vec = and i64 %i.vr, 4611686018427387900     ; 3 uses
  %i.vt = shl i64 %n.vec, 3                       ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vl, i64 %i.vt  ; 2 uses
  %i.vv = getelementptr i8, ptr %.sroa.0864.01392, i64 %i.vt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vl, i64 %i.vw ; 2 uses
  %next.gep1941 = getelementptr i8, ptr %.sroa.0864.01392, i64 %i.vw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.vx = getelementptr i8, ptr %next.gep1941, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1941, align 4, !alias.scope !150, !noalias !147
  %wide.load1942 = load <2 x i64>, ptr %i.vx, align 4, !alias.scope !150, !noalias !147
  %i.vy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !147, !noalias !150
  store <2 x i64> %wide.load1942, ptr %i.vy, align 4, !alias.scope !147, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vz = icmp eq i64 %index.next, %n.vec
  br i1 %i.vz, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i359.preheader2203

.lr.ph.i.i.i.i.i359.preheader2203:                ; preds = %.lr.ph.i.i.i.i.i359.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.vl, %.lr.ph.i.i.i.i.i359.preheader ], [ %i.vu, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0864.01392, %.lr.ph.i.i.i.i.i359.preheader ], [ %i.vv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i359

.lr.ph.i.i.i.i.i359:                              ; preds = %.lr.ph.i.i.i.i.i359.preheader2203, %.lr.ph.i.i.i.i.i359
  %.012.i.i.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i359 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i359.preheader2203 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i359 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i359.preheader2203 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.wa = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !150, !noalias !147
  store i64 %i.wa, ptr %.012.i.i.i.i.i, align 4, !alias.scope !147, !noalias !150
  %i.wb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i360 = icmp eq ptr %i.wb, %.sroa.31883.01394
  br i1 %.not.i.i.i.i.i360, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i359, !llvm.loop !155

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i359, %middle.block, %.noexc363
  %.0.lcssa.i.i.i.i.i361 = phi ptr [ %i.vl, %.noexc363 ], [ %i.vu, %middle.block ], [ %i.wc, %.lr.ph.i.i.i.i.i359 ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i361, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0864.01392, i64 noundef %i.vd) #35
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %i.vj
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

.loopexit1165:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit657

.loopexit.split-lp1166:                           ; preds = %bb.bz
  %lpad.loopexit.split-lp1168 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit657

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bx, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bv
  %.sroa.0864.1 = phi ptr [ %.sroa.0864.01392, %bb.bv ], [ %i.vl, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0864.01392, %bb.bx ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.01393, %bb.bv ], [ %i.wd, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.va, %bb.bx ] ; 2 uses
  %.sroa.31883.1 = phi ptr [ %.sroa.31883.01394, %bb.bv ], [ %i.we, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.31883.01394, %bb.bx ] ; 2 uses
  %i.wf = trunc i64 %.01561396 to i32
  %i.wg = load i32, ptr %i.uw, align 4, !tbaa !135 ; 2 uses
  %i.wh = sext i32 %i.wg to i64                   ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.wh
  store i32 %i.wf, ptr %i.wi, align 4, !tbaa !15
  %i.wj = add nsw i32 %i.wg, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.wj, i32 %i.ur) ; 2 uses
  %indvars.iv.next15501938 = add nsw i64 %i.wh, 1 ; 2 uses
  %i.wk = icmp slt i64 %indvars.iv.next15501938, %i.us
  br i1 %i.wk, label %.lr.ph1940, label %.critedge2

bb.ca:                                            ; preds = %.lr.ph1940
  %indvars.iv.next1550 = add nsw i64 %indvars.iv.next15501939, 1 ; 2 uses
  %i.wl = icmp slt i64 %indvars.iv.next1550, %i.us
  br i1 %i.wl, label %.lr.ph1940, label %.critedge2, !llvm.loop !156

.lr.ph1940:                                       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %bb.ca
  %indvars.iv.next15501939 = phi i64 [ %indvars.iv.next1550, %bb.ca ], [ %indvars.iv.next15501938, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.next15501939
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !15
  %i.wo = icmp sgt i32 %i.wn, -1
  br i1 %i.wo, label %bb.ca, label %.critedge2.split.loop.exit, !llvm.loop !156

.critedge2.split.loop.exit:                       ; preds = %.lr.ph1940
  %i.wp = trunc nsw i64 %indvars.iv.next15501939 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ca, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %.critedge2.split.loop.exit
  %.1158.lcssa = phi i32 [ %i.wp, %.critedge2.split.loop.exit ], [ %smax, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ], [ %smax, %bb.ca ]
  %i.wq = add nuw i64 %.01561396, 1               ; 2 uses
  %exitcond1552.not = icmp eq i64 %i.wq, %.pre1573
  br i1 %exitcond1552.not, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.bu, !llvm.loop !157

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.critedge2, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %._crit_edge1391
  %.sroa.19.01072 = phi ptr [ null, %._crit_edge1391 ], [ %i.tw, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tw, %.critedge2 ] ; 3 uses
  %.sroa.0890.01062 = phi ptr [ null, %._crit_edge1391 ], [ %i.tu, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tu, %.critedge2 ] ; 7 uses
  %.sroa.0864.2 = phi ptr [ null, %._crit_edge1391 ], [ %i.ub, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.0864.1, %.critedge2 ] ; 14 uses
  %.sroa.18.2 = phi ptr [ null, %._crit_edge1391 ], [ %i.uc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.18.1, %.critedge2 ] ; 3 uses
  %.sroa.31883.2 = phi ptr [ null, %._crit_edge1391 ], [ %i.uc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.31883.1, %.critedge2 ] ; 3 uses
  %.not3.i = icmp eq ptr %.sroa.0957.010091033, %.0.lcssa.i.i.i.i.i10181023 ; 3 uses
  br i1 %.not3.i, label %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i
  %.15.i = phi i32 [ %i.xe, %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ], [ 4, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ]
  %.sroa.01.04.i = phi ptr [ %i.xf, %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ], [ %.sroa.0957.010091033, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %i.wr = getelementptr i8, ptr %.sroa.01.04.i, i64 8
  %.val.val.i = load i64, ptr %i.wr, align 8, !tbaa !16 ; 10 uses
  %i.ws = trunc i64 %.val.val.i to i32
  %i.wt = add i32 %.15.i, %i.ws
  %i.wu = icmp ult i64 %.val.val.i, 128
  br i1 %i.wu, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i
  %i.wv = icmp ult i64 %.val.val.i, 16384
  br i1 %i.wv, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ww = icmp ult i64 %.val.val.i, 2097152
  br i1 %i.ww, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wx = icmp ult i64 %.val.val.i, 268435456
  br i1 %i.wx, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wy = icmp ult i64 %.val.val.i, 34359738368
  br i1 %i.wy, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wz = icmp ult i64 %.val.val.i, 4398046511104
  br i1 %i.wz, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xa = icmp ult i64 %.val.val.i, 562949953421312
  br i1 %i.xa, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xb = icmp ult i64 %.val.val.i, 72057594037927936
  br i1 %i.xb, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xc = icmp sgt i64 %.val.val.i, -1
  %i.xd = select i1 %i.xc, i32 9, i32 10
  br label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i

_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %.lr.ph.i
  %.0.i.i = phi i32 [ 8, %bb.ch ], [ 1, %.lr.ph.i ], [ 2, %bb.cb ], [ 3, %bb.cc ], [ 4, %bb.cd ], [ 5, %bb.ce ], [ 6, %bb.cf ], [ 7, %bb.cg ], [ %i.xd, %bb.ci ]
  %i.xe = add i32 %i.wt, %.0.i.i                  ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 32 ; 2 uses
  %.not.i364 = icmp eq ptr %i.xf, %.0.lcssa.i.i.i.i.i10181023
  br i1 %.not.i364, label %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, label %.lr.ph.i, !llvm.loop !158

_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.1.lcssa.i = phi i32 [ 4, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.xe, %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ]
  %i.xg = ptrtoint ptr %.sroa.18.2 to i64
  %i.xh = ptrtoint ptr %.sroa.0864.2 to i64       ; 2 uses
  %i.xi = sub i64 %i.xg, %i.xh                    ; 2 uses
  %i.xj = ashr exact i64 %i.xi, 3                 ; 7 uses
  %.tr = trunc i64 %i.xj to i32                   ; 2 uses
  %i.xk = shl i32 %.tr, 3
  %i.xl = add i32 %i.xk, 12
  %i.xm = add i32 %i.xl, %.1.lcssa.i              ; 2 uses
  %i.xn = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.xo = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %.not1457 = icmp eq ptr %i.xn, %i.xo
  br i1 %.not1457, label %._crit_edge1424, label %.lr.ph1423

._crit_edge1424:                                  ; preds = %bb.ex, %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit
  %.sroa.0830.0.lcssa = phi ptr [ null, %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ], [ %.sroa.0830.1, %bb.ex ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK7Imf_3_410IDManifest9serializeERSt6vectorIcSaIcEE:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i406: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i399, %bb.dm
  %i.abk = sub i64 %i.aav, %i.abg
  %spec.select7.i.i.i.i.i407 = call i64 @llvm.smax.i64(i64 %i.abk, i64 -2147483648)
  %.08.i.i.i.i.i408 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i407, i64 2147483647)
  %.0.i6.i.i.i.i409 = trunc nsw i64 %.08.i.i.i.i.i408 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i406, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i399
  %.0.i.i.i.i402 = phi i32 [ %i.abj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i399 ], [ %.0.i6.i.i.i.i409, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i406 ]
  %i.abl = icmp slt i32 %.0.i.i.i.i402, 0
  br i1 %i.abl, label %.critedge.i404, label %bb.ds

.critedge.i404:                                   ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i397, %bb.dk
  %.08.lcssa.i.i.i12.i405 = phi ptr [ %.19.i.i.i.i392, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401 ], [ %.19.i.i.i.i392, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i397 ], [ %i.c, %bb.dk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.aas, ptr %5, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.abm = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34
          to label %.noexc709 unwind label %bb.dx ; 9 uses

.noexc709:                                        ; preds = %.critedge.i404
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.abm, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc710 unwind label %bb.dx

.noexc710:                                        ; preds = %.noexc709
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32 ; 4 uses
  %i.abo = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i12.i405, ptr noundef nonnull align 8 dereferenceable(32) %i.abn)
          to label %bb.dn unwind label %bb.dq     ; 2 uses

bb.dn:                                            ; preds = %.noexc710
  %i.abp = extractvalue { ptr, ptr } %i.abo, 0    ; 2 uses
  %i.abq = extractvalue { ptr, ptr } %i.abo, 1    ; 5 uses
  %.not.i692 = icmp eq ptr %i.abq, null
  br i1 %.not.i692, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.not.i.i.i693 = icmp ne ptr %i.abp, null
  %i.abr = icmp eq ptr %i.abq, %i.c
  %or.cond.i.i.i694 = or i1 %.not.i.i.i693, %i.abr
  br i1 %or.cond.i.i.i694, label %.thread.i700, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 40
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !16 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 40
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !16 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i695 = call i64 @llvm.umin.i64(i64 %i.abv, i64 %i.abt) ; 2 uses
  %i.abw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i695, 0
  br i1 %i.abw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i702, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i696

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i696: ; preds = %bb.dp
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !20
  %i.abz = load ptr, ptr %i.abn, align 8, !tbaa !20
  %i.aca = call i32 @memcmp(ptr noundef %i.abz, ptr noundef %i.aby, i64 noundef %.sroa.speculated.i.i.i.i.i.i695) #32 ; 2 uses
  %.not.i.i.i.i.i.i697 = icmp eq i32 %i.aca, 0
  br i1 %.not.i.i.i.i.i.i697, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i702, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i698

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i702: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i696, %bb.dp
  %i.acb = sub i64 %i.abt, %i.abv
  %spec.select7.i.i.i.i.i.i.i703 = call i64 @llvm.smax.i64(i64 %i.acb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i704 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i703, i64 2147483647)
  %.0.i6.i.i.i.i.i.i705 = trunc nsw i64 %.08.i.i.i.i.i.i.i704 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i698

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i698: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i702, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i696
  %.0.i.i.i.i.i.i699 = phi i32 [ %i.aca, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i696 ], [ %.0.i6.i.i.i.i.i.i705, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i702 ]
  %i.acc = icmp slt i32 %.0.i.i.i.i.i.i699, 0
  br label %.thread.i700

.thread.i700:                                     ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i698, %bb.do
  %i.acd = phi i1 [ %i.acc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i698 ], [ true, %bb.do ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acd, ptr noundef nonnull %i.abm, ptr noundef nonnull %i.abq, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #32
  %i.ace = load i64, ptr %i.g, align 8, !tbaa !46
  %i.acf = add i64 %i.ace, 1
  store i64 %i.acf, ptr %i.g, align 8, !tbaa !46
  br label %.noexc414

bb.dq:                                            ; preds = %.noexc710
  %i.acg = landingpad { ptr, i32 }
          cleanup
  %i.ach = load ptr, ptr %i.abn, align 8, !tbaa !20 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abm, i64 48 ; 2 uses
  %i.acj = icmp eq ptr %i.ach, %i.aci
  br i1 %i.acj, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i740: ; preds = %bb.dq
  %i.ack = load i64, ptr %i.aci, align 8, !tbaa !21
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acl) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit743

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit743: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i740
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef 72) #35
  br label %.body711

bb.dr:                                            ; preds = %bb.dn
  %i.acm = load ptr, ptr %i.abn, align 8, !tbaa !20 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abm, i64 48 ; 2 uses
  %i.aco = icmp eq ptr %i.acm, %i.acn
  br i1 %i.aco, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i707, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i706

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i706: ; preds = %bb.dr
  %i.acp = load i64, ptr %i.acn, align 8, !tbaa !21
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acq) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i707

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i707: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i706
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef 72) #35
  br label %.noexc414

.noexc414:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i707, %.thread.i700
  %.sroa.0.010.i701 = phi ptr [ %i.abm, %.thread.i700 ], [ %i.abp, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i707 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc414, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401
  %.sroa.07.0.i403 = phi ptr [ %.sroa.0.010.i701, %.noexc414 ], [ %.19.i.i.i.i392, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i401 ]
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i403, i64 64
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !15
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.01062, i64 %i.act
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !15 ; 5 uses
  %i.acw = icmp ult i32 %i.acv, 128
  br i1 %i.acw, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.acx = icmp ult i32 %i.acv, 16384
  br i1 %i.acx, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.acy = icmp ult i32 %i.acv, 2097152
  br i1 %i.acy, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acz = icmp ult i32 %i.acv, 268435456
  br i1 %i.acz, label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ada = icmp sgt i32 %i.acv, -1
  %i.adb = select i1 %i.ada, i32 5, i32 10
  br label %_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418

_ZN7Imf_3_412_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit418: ; preds = %bb.dw, %bb.ds, %bb.dt, %bb.du, %bb.dv
  %.0.i417 = phi i32 [ %i.adb, %bb.dw ], [ 1, %bb.ds ], [ 2, %bb.dt ], [ 3, %bb.du ], [ 4, %bb.dv ]
  %i.adc = add i32 %.0.i417, %.21402              ; 2 uses
  %i.add = add nuw i64 %.01491403, 1              ; 2 uses
  %i.ade = load ptr, ptr %i.yv, align 8, !tbaa !11 ; 2 uses
  %i.adf = load ptr, ptr %i.yu, align 8, !tbaa !14 ; 2 uses
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = ashr exact i64 %i.adi, 5
  %i.adk = icmp ult i64 %i.add, %i.adj
  br i1 %i.adk, label %bb.dk, label %._crit_edge1405, !llvm.loop !164

bb.dx:                                            ; preds = %.noexc709, %.critedge.i404
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %.body711

._crit_edge1414.thread:                           ; preds = %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit382, %._crit_edge1414
  %.0151.lcssa1764 = phi i64 [ %i.aal, %._crit_edge1414 ], [ 0, %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit382 ] ; 2 uses
  %.1155.lcssa1763 = phi i32 [ %.2.lcssa, %._crit_edge1414 ], [ %i.zt, %_ZN7Imf_3_412_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit382 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.yb, i64 184 ; 2 uses
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !46
  %i.ado = shl i64 %i.adn, 2
  %i.adp = icmp ult i64 %.0151.lcssa1764, %i.ado
  %.not.i.i419 = icmp eq ptr %.sroa.15.01419, %.sroa.31.01420 ; 2 uses
  br i1 %i.adp, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %._crit_edge1414.thread
  br i1 %.not.i.i419, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i8 2, ptr %.sroa.15.01419, align 1, !tbaa !21
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.ea:                                            ; preds = %bb.dy
  %i.adq = ptrtoint ptr %.sroa.31.01420 to i64
  %i.adr = ptrtoint ptr %.sroa.0830.01418 to i64
  %i.ads = sub i64 %i.adq, %i.adr                 ; 8 uses
  %i.adt = icmp eq i64 %i.ads, 9223372036854775807
  br i1 %i.adt, label %bb.eb, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc422.a unwind label %.loopexit.split-lp1161

.noexc422.a:                                      ; preds = %bb.eb
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ea
  %.sroa.speculated.i.i.i.i420 = call i64 @llvm.umax.i64(i64 %i.ads, i64 1)
  %i.adu = add i64 %.sroa.speculated.i.i.i.i420, %i.ads ; 2 uses
  %i.adv = icmp ult i64 %i.adu, %i.ads
  %i.adw = call i64 @llvm.umin.i64(i64 %i.adu, i64 9223372036854775807)
  %i.adx = select i1 %i.adv, i64 9223372036854775807, i64 %i.adw ; 2 uses
  %i.ady = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adx) #34
          to label %.noexc423 unwind label %.loopexit1160 ; 4 uses

.noexc423:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.ads ; 2 uses
  store i8 2, ptr %i.adz, align 1, !tbaa !21
  %i.aea = icmp sgt i64 %i.ads, 0
  br i1 %i.aea, label %bb.ec, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.ec:                                            ; preds = %.noexc423
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ady, ptr align 1 %.sroa.0830.01418, i64 %i.ads, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ec, %.noexc423
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0830.01418, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0830.01418, i64 noundef %i.ads) #35
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adx
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.dz
  %.sroa.0830.2 = phi ptr [ %i.ady, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.0830.01418, %bb.dz ]
  %.pn1147 = phi ptr [ %i.adz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.15.01419, %bb.dz ]
  %.sroa.31.2 = phi ptr [ %i.aeb, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %.sroa.31.01420, %bb.dz ]
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn1147, i64 1
  %i.aec = trunc i64 %.0151.lcssa1764 to i32
  %i.aed = add i32 %.1155.lcssa1763, %i.aec
  br label %bb.ex

.loopexit1160:                                    ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1162 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

.loopexit.split-lp1161:                           ; preds = %bb.eb
  %lpad.loopexit.split-lp1163 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

bb.ee:                                            ; preds = %._crit_edge1414.thread
  br i1 %.not.i.i419, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i8 1, ptr %.sroa.15.01419, align 1, !tbaa !21
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433

bb.eg:                                            ; preds = %bb.ee
  %i.aee = ptrtoint ptr %.sroa.31.01420 to i64
  %i.aef = ptrtoint ptr %.sroa.0830.01418 to i64
  %i.aeg = sub i64 %i.aee, %i.aef                 ; 8 uses
  %i.aeh = icmp eq i64 %i.aeg, 9223372036854775807
  br i1 %i.aeh, label %bb.eh, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i425

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc431 unwind label %.loopexit.split-lp1156

.noexc431:                                        ; preds = %bb.eh
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i425: ; preds = %bb.eg
  %.sroa.speculated.i.i.i.i426 = call i64 @llvm.umax.i64(i64 %i.aeg, i64 1)
  %i.aei = add i64 %.sroa.speculated.i.i.i.i426, %i.aeg ; 2 uses
  %i.aej = icmp ult i64 %i.aei, %i.aeg
  %i.aek = call i64 @llvm.umin.i64(i64 %i.aei, i64 9223372036854775807)
  %i.ael = select i1 %i.aej, i64 9223372036854775807, i64 %i.aek ; 2 uses
  %i.aem = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ael) #34
          to label %.noexc432 unwind label %.loopexit1155 ; 4 uses

.noexc432:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i425
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aeg ; 2 uses
  store i8 1, ptr %i.aen, align 1, !tbaa !21
  %i.aeo = icmp sgt i64 %i.aeg, 0
  br i1 %i.aeo, label %bb.ei, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i428

bb.ei:                                            ; preds = %.noexc432
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aem, ptr align 1 %.sroa.0830.01418, i64 %i.aeg, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i428

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i428: ; preds = %bb.ei, %.noexc432
  %.not.i17.i.i.i429 = icmp eq ptr %.sroa.0830.01418, null
  br i1 %.not.i17.i.i.i429, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i428
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0830.01418, i64 noundef %i.aeg) #35
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430: ; preds = %bb.ej, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i428
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.ael
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433

_ZNSt6vectorIcSaIcEE9push_backEOc.exit433:        ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430, %bb.ef
  %.sroa.0830.3 = phi ptr [ %i.aem, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430 ], [ %.sroa.0830.01418, %bb.ef ]
  %.pn1146 = phi ptr [ %i.aen, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430 ], [ %.sroa.15.01419, %bb.ef ]
  %.sroa.31.3 = phi ptr [ %i.aep, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i430 ], [ %.sroa.31.01420, %bb.ef ]
  %.sroa.15.3 = getelementptr inbounds nuw i8, ptr %.pn1146, i64 1
  %i.aeq = load i64, ptr %i.adm, align 8, !tbaa !46
  %.tr202 = trunc i64 %i.aeq to i32
  %i.aer = shl i32 %.tr202, 2
  %i.aes = add i32 %i.aer, %.1155.lcssa1763
  br label %bb.ex

.loopexit1155:                                    ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i425
  %lpad.loopexit1157 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

.loopexit.split-lp1156:                           ; preds = %bb.eh
  %lpad.loopexit.split-lp1158 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

bb.ek:                                            ; preds = %._crit_edge1414
  %i.aet = getelementptr inbounds nuw i8, ptr %i.yb, i64 184 ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !46
  %i.aev = shl i64 %i.aeu, 3
  %i.aew = icmp ult i64 %i.aal, %i.aev
  %.not.i.i434 = icmp eq ptr %.sroa.15.01419, %.sroa.31.01420 ; 2 uses
  br i1 %i.aew, label %bb.el, label %bb.er

bb.el:                                            ; preds = %bb.ek
  br i1 %.not.i.i434, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i8 2, ptr %.sroa.15.01419, align 1, !tbaa !21
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443

bb.en:                                            ; preds = %bb.el
  %i.aex = ptrtoint ptr %.sroa.31.01420 to i64
  %i.aey = ptrtoint ptr %.sroa.0830.01418 to i64
  %i.aez = sub i64 %i.aex, %i.aey                 ; 8 uses
  %i.afa = icmp eq i64 %i.aez, 9223372036854775807
  br i1 %i.afa, label %bb.eo, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i435

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc441 unwind label %.loopexit.split-lp1151

.noexc441:                                        ; preds = %bb.eo
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i435: ; preds = %bb.en
  %.sroa.speculated.i.i.i.i436 = call i64 @llvm.umax.i64(i64 %i.aez, i64 1)
  %i.afb = add i64 %.sroa.speculated.i.i.i.i436, %i.aez ; 2 uses
  %i.afc = icmp ult i64 %i.afb, %i.aez
  %i.afd = call i64 @llvm.umin.i64(i64 %i.afb, i64 9223372036854775807)
  %i.afe = select i1 %i.afc, i64 9223372036854775807, i64 %i.afd ; 2 uses
  %i.aff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afe) #34
          to label %.noexc442 unwind label %.loopexit1150 ; 4 uses

.noexc442:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i435
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.aez ; 2 uses
  store i8 2, ptr %i.afg, align 1, !tbaa !21
  %i.afh = icmp sgt i64 %i.aez, 0
  br i1 %i.afh, label %bb.ep, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i438

bb.ep:                                            ; preds = %.noexc442
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aff, ptr align 1 %.sroa.0830.01418, i64 %i.aez, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i438

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i438: ; preds = %bb.ep, %.noexc442
  %.not.i17.i.i.i439 = icmp eq ptr %.sroa.0830.01418, null
  br i1 %.not.i17.i.i.i439, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i438
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0830.01418, i64 noundef %i.aez) #35
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440: ; preds = %bb.eq, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i438
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afe
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443

_ZNSt6vectorIcSaIcEE9push_backEOc.exit443:        ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440, %bb.em
  %.sroa.0830.4 = phi ptr [ %i.aff, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440 ], [ %.sroa.0830.01418, %bb.em ]
  %.pn1145 = phi ptr [ %i.afg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440 ], [ %.sroa.15.01419, %bb.em ]
  %.sroa.31.4 = phi ptr [ %i.afi, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i440 ], [ %.sroa.31.01420, %bb.em ]
  %.sroa.15.4 = getelementptr inbounds nuw i8, ptr %.pn1145, i64 1
  %i.afj = trunc i64 %i.aal to i32
  %i.afk = add i32 %.2.lcssa, %i.afj
  br label %bb.ex

.loopexit1150:                                    ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i435
  %lpad.loopexit1152 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

.loopexit.split-lp1151:                           ; preds = %bb.eo
  %lpad.loopexit.split-lp1153 = landingpad { ptr, i32 }
          cleanup
  br label %.body711

bb.er:                                            ; preds = %bb.ek
  br i1 %.not.i.i434, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i8 0, ptr %.sroa.15.01419, align 1, !tbaa !21
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453

bb.et:                                            ; preds = %bb.er
  %i.afl = ptrtoint ptr %.sroa.31.01420 to i64
  %i.afm = ptrtoint ptr %.sroa.0830.01418 to i64
  %i.afn = sub i64 %i.afl, %i.afm                 ; 8 uses
  %i.afo = icmp eq i64 %i.afn, 9223372036854775807
  br i1 %i.afo, label %bb.eu, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i445

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc451 unwind label %.loopexit.split-lp

.noexc451:                                        ; preds = %bb.eu
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i445: ; preds = %bb.et
  %.sroa.speculated.i.i.i.i446 = call i64 @llvm.umax.i64(i64 %i.afn, i64 1)
  %i.afp = add i64 %.sroa.speculated.i.i.i.i446, %i.afn ; 2 uses
  %i.afq = icmp ult i64 %i.afp, %i.afn
  %i.afr = call i64 @llvm.umin.i64(i64 %i.afp, i64 9223372036854775807)
  %i.afs = select i1 %i.afq, i64 9223372036854775807, i64 %i.afr ; 2 uses
  %i.aft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afs) #34
          to label %.noexc452 unwind label %.loopexit1149 ; 4 uses

.noexc452:                                        ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i445
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afn ; 2 uses
  store i8 0, ptr %i.afu, align 1, !tbaa !21
  %i.afv = icmp sgt i64 %i.afn, 0
  br i1 %i.afv, label %bb.ev, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i448

bb.ev:                                            ; preds = %.noexc452
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aft, ptr align 1 %.sroa.0830.01418, i64 %i.afn, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i448

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i448: ; preds = %bb.ev, %.noexc452
  %.not.i17.i.i.i449 = icmp eq ptr %.sroa.0830.01418, null
  br i1 %.not.i17.i.i.i449, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i448
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0830.01418, i64 noundef %i.afn) #35
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450: ; preds = %bb.ew, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i448
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afs
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453

_ZNSt6vectorIcSaIcEE9push_backEOc.exit453:        ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450, %bb.es
  %.sroa.0830.5 = phi ptr [ %i.aft, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.0830.01418, %bb.es ]
  %.pn = phi ptr [ %i.afu, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.15.01419, %bb.es ]
  %.sroa.31.5 = phi ptr [ %i.afw, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i450 ], [ %.sroa.31.01420, %bb.es ]
  %.sroa.15.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.afx = load i64, ptr %i.aet, align 8, !tbaa !46
  %.tr201 = trunc i64 %i.afx to i32
  %i.afy = shl i32 %.tr201, 3
  %i.afz = add i32 %i.afy, %.2.lcssa
  br label %bb.ex

.loopexit1149:                                    ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i445
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body711

.loopexit.split-lp:                               ; preds = %bb.eu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body711

bb.ex:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433
  %.sroa.0830.1 = phi ptr [ %.sroa.0830.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.0830.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433 ], [ %.sroa.0830.4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443 ], [ %.sroa.0830.5, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.15.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433 ], [ %.sroa.15.4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443 ], [ %.sroa.15.5, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ]
  %.sroa.31.1 = phi ptr [ %.sroa.31.2, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %.sroa.31.3, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433 ], [ %.sroa.31.4, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443 ], [ %.sroa.31.5, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %.3 = phi i32 [ %i.aed, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ %i.aes, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit433 ], [ %i.afk, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit443 ], [ %i.afz, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit453 ] ; 2 uses
  %i.aga = add nuw i64 %.01531422, 1              ; 2 uses
  %i.agb = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.agc = load ptr, ptr %0, align 8, !tbaa !38   ; 2 uses
  %i.agd = ptrtoint ptr %i.agb to i64
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = sdiv exact i64 %i.agf, 208
  %i.agh = icmp ult i64 %i.aga, %i.agg
  br i1 %i.agh, label %.lr.ph1423, label %._crit_edge1424, !llvm.loop !165

bb.ey:                                            ; preds = %._crit_edge1566, %bb.ck, %bb.cl, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.agi = phi ptr [ %.pre1567, %._crit_edge1566 ], [ %i.xs, %bb.ck ], [ %i.xs, %bb.cl ], [ %i.xs, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.agk = ptrtoint ptr %.0.lcssa.i.i.i.i.i10181023 to i64
  %i.agl = ptrtoint ptr %.sroa.0957.010091033 to i64 ; 2 uses
  %i.agm = sub i64 %i.agk, %i.agl
  %i.agn = lshr i64 %i.agm, 5
  %i.ago = trunc i64 %i.agn to i32
  store i32 0, ptr %i.agi, align 1
  store i32 %i.ago, ptr %i.agj, align 1
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 8 ; 2 uses
  br i1 %.not3.i, label %_ZN7Imf_3_412_GLOBAL__N_115writeStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPcRKT_i.exit, label %.lr.ph.i454

.lr.ph.i454:                                      ; preds = %bb.ey, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i
  %.5 = phi ptr [ %i.agv, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i ], [ %i.agp, %bb.ey ]
  %.sroa.020.027.i = phi ptr [ %i.agw, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i ], [ %.sroa.0957.010091033, %bb.ey ] ; 2 uses
  %i.agq = getelementptr i8, ptr %.sroa.020.027.i, i64 8
  %.val15.val.i = load i64, ptr %i.agq, align 8, !tbaa !16
  %sext.i = shl i64 %.val15.val.i, 32
  %i.agr = ashr exact i64 %sext.i, 32
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %.lr.ph.i454
  %.6 = phi ptr [ %.5, %.lr.ph.i454 ], [ %i.agv, %bb.ez ] ; 2 uses
  %.06.i.i = phi i64 [ %i.agr, %.lr.ph.i454 ], [ %i.agu, %bb.ez ] ; 2 uses
  %i.ags = trunc i64 %.06.i.i to i8
  %i.agt = and i8 %i.ags, 127
  %i.agu = lshr i64 %.06.i.i, 7                   ; 2 uses
  %.not.i.i455 = icmp eq i64 %i.agu, 0            ; 2 uses
  %masksel.i.i = select i1 %.not.i.i455, i8 0, i8 -128
  %.0.i.i456 = or disjoint i8 %masksel.i.i, %i.agt
  %i.agv = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 3 uses
  store i8 %.0.i.i456, ptr %.6, align 1, !tbaa !21
  br i1 %.not.i.i455, label %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i, label %bb.ez, !llvm.loop !166

_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i: ; preds = %bb.ez
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.020.027.i, i64 32 ; 2 uses
  %.not.i457 = icmp eq ptr %i.agw, %.0.lcssa.i.i.i.i.i10181023
  br i1 %.not.i457, label %.lr.ph31.i, label %.lr.ph.i454, !llvm.loop !167

.lr.ph31.i:                                       ; preds = %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i, %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i
  %.7 = phi ptr [ %.9, %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i ], [ %i.agv, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i ] ; 7 uses
  %.sroa.017.029.i = phi ptr [ %i.ait, %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i ], [ %.sroa.0957.010091033, %_ZN7Imf_3_412_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit.i ] ; 3 uses
  %i.agx = getelementptr i8, ptr %.sroa.017.029.i, i64 8
  %.val.val.i459 = load i64, ptr %i.agx, align 8, !tbaa !16 ; 5 uses
  %i.agy = trunc i64 %.val.val.i459 to i32        ; 4 uses
  %.not3.i.i.i = icmp eq i32 %i.agy, 0
  br i1 %.not3.i.i.i, label %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph31.i
  %.71945 = ptrtoaddr ptr %.7 to i64
  %.val16.val.i = load ptr, ptr %.sroa.017.029.i, align 8, !tbaa !20 ; 6 uses
  %i.agz = and i64 %.val.val.i459, 4294967295     ; 4 uses
  %min.iters.check1949 = icmp samesign ult i64 %i.agz, 4
  %.val16.val.i1946 = ptrtoaddr ptr %.val16.val.i to i64
  %i.aha = sub i64 %.val16.val.i1946, %.71945
  %diff.check1947 = icmp ugt i64 %i.aha, -32
  %or.cond2153 = select i1 %min.iters.check1949, i1 true, i1 %diff.check1947
  br i1 %or.cond2153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1950 = icmp samesign ult i64 %i.agz, 32
  br i1 %min.iters.check1950, label %vec.epilog.ph, label %vector.ph1951

vector.ph1951:                                    ; preds = %vector.main.loop.iter.check
  %i.ahb = and i64 %.val.val.i459, 28
  %n.vec1952 = and i64 %.val.val.i459, 4294967264 ; 6 uses
  %i.ahc = getelementptr i8, ptr %.7, i64 %n.vec1952 ; 2 uses
  %i.ahd = trunc nuw i64 %n.vec1952 to i32
  %i.ahe = sub i32 %i.agy, %i.ahd
  %i.ahf = getelementptr i8, ptr %.val16.val.i, i64 %n.vec1952
  br label %vector.body1953

vector.body1953:                                  ; preds = %vector.body1953, %vector.ph1951
  %index1954 = phi i64 [ 0, %vector.ph1951 ], [ %index.next1959, %vector.body1953 ] ; 3 uses
  %next.gep1955 = getelementptr i8, ptr %.7, i64 %index1954 ; 2 uses
  %next.gep1956 = getelementptr i8, ptr %.val16.val.i, i64 %index1954 ; 2 uses
  %i.ahg = getelementptr i8, ptr %next.gep1956, i64 16
  %wide.load1957 = load <16 x i8>, ptr %next.gep1956, align 1, !tbaa !21
  %wide.load1958 = load <16 x i8>, ptr %i.ahg, align 1, !tbaa !21
  %i.ahh = getelementptr i8, ptr %next.gep1955, i64 16
  store <16 x i8> %wide.load1957, ptr %next.gep1955, align 1, !tbaa !21
  store <16 x i8> %wide.load1958, ptr %i.ahh, align 1, !tbaa !21
  %index.next1959 = add nuw i64 %index1954, 32    ; 2 uses
  %i.ahi = icmp eq i64 %index.next1959, %n.vec1952
  br i1 %i.ahi, label %middle.block1960, label %vector.body1953, !llvm.loop !168

middle.block1960:                                 ; preds = %vector.body1953
  %cmp.n1961 = icmp eq i64 %i.agz, %n.vec1952
  br i1 %cmp.n1961, label %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1960
  %min.epilog.iters.check = icmp eq i64 %i.ahb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1952, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1965 = and i64 %.val.val.i459, 4294967292 ; 5 uses
  %i.ahj = getelementptr i8, ptr %.7, i64 %n.vec1965 ; 2 uses
  %i.ahk = trunc nuw i64 %n.vec1965 to i32
  %i.ahl = sub i32 %i.agy, %i.ahk
  %i.ahm = getelementptr i8, ptr %.val16.val.i, i64 %n.vec1965
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1966 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1970, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1967 = getelementptr i8, ptr %.7, i64 %index1966
  %next.gep1968 = getelementptr i8, ptr %.val16.val.i, i64 %index1966
  %wide.load1969 = load <4 x i8>, ptr %next.gep1968, align 1, !tbaa !21
  store <4 x i8> %wide.load1969, ptr %next.gep1967, align 1, !tbaa !21
  %index.next1970 = add nuw i64 %index1966, 4     ; 2 uses
  %i.ahn = icmp eq i64 %index.next1970, %n.vec1965
  br i1 %i.ahn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1971 = icmp eq i64 %i.agz, %n.vec1965
  br i1 %cmp.n1971, label %_ZN7Imf_3_43Xdr5writeINS_9CharPtrIOEPcEEvRT0_PKci.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.8.ph = phi ptr [ %.7, %iter.check ], [ %i.ahc, %vec.epilog.iter.check ], [ %i.ahj, %vec.epilog.middle.block ] ; 2 uses
  %.05.i.i.i.ph = phi i32 [ %i.agy, %iter.check ], [ %i.ahe, %vec.epilog.iter.check ], [ %i.ahl, %vec.epilog.middle.block ] ; 4 uses
  %.024.i.i.i.ph = phi ptr [ %.val16.val.i, %iter.check ], [ %i.ahf, %vec.epilog.iter.check ], [ %i.ahm, %vec.epilog.middle.block ] ; 2 uses
  %i.aho = add nsw i32 %.05.i.i.i.ph, -1
  %xtraiter2250 = and i32 %.05.i.i.i.ph, 7        ; 2 uses
  %lcmp.mod2251.not = icmp eq i32 %xtraiter2250, 0
  br i1 %lcmp.mod2251.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.8.prol = phi ptr [ %i.ahs, %.lr.ph.i.i.i.prol ], [ %.8.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.prol = phi i32 [ %i.ahp, %.lr.ph.i.i.i.prol ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi ptr [ %i.ahq, %.lr.ph.i.i.i.prol ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter2252 = phi i32 [ %prol.iter2252.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ahp = add nsw i32 %.05.i.i.i.prol, -1        ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.024.i.i.i.prol, i64 1 ; 2 uses
  %i.ahr = load i8, ptr %.024.i.i.i.prol, align 1, !tbaa !21
  %i.ahs = getelementptr inbounds nuw i8, ptr %.8.prol, i64 1 ; 3 uses
  store i8 %i.ahr, ptr %.8.prol, align 1, !tbaa !21
  %prol.iter2252.next = add i32 %prol.iter2252, 1 ; 2 uses
  %prol.iter2252.cmp.not = icmp eq i32 %prol.iter2252.next, %xtraiter2250
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_:bb.a
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !20  ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ae, label %bb.c, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !21
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !16
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !21
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !20
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !16
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !21
  store i64 %i.aq, ptr %i.aa, align 8, !tbaa !21
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !21
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !20
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !16
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !21
  store i64 %i.av, ptr %i.aa, align 8, !tbaa !21
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.z, ptr %i.x, align 8, !tbaa !20
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.aw = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.z, %bb.f ], [ %i.ad, %bb.g ]
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.ax, align 8, !tbaa !16
  store i8 0, ptr %i.aw, align 1, !tbaa !21
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, !llvm.loop !261

_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !20    ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %2, align 8, !tbaa !20    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit
  br i1 %i.bf, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !33

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bh, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !21
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !16
  %i.bm = load ptr, ptr %1, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bd, ptr %1, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !16
  %i.br = load i64, ptr %i.be, align 8, !tbaa !21
  store i64 %i.br, ptr %i.bb, align 8, !tbaa !21
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !21
  store ptr %i.bd, ptr %1, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !16
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !21
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %2, align 8, !tbaa !20
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.be, ptr %2, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.l ], [ %i.be, %bb.m ], [ %i.bd, %bb.h ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !16
  store i8 0, ptr %i.bx, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !20
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !16
  store ptr %i.t, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.ab, align 8, !tbaa !16
  store i8 0, ptr %i.t, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !262, !noalias !265
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !265, !noalias !262 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16, !alias.scope !265, !noalias !262 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !267
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !262, !noalias !265
  %i.al = load i64, ptr %i.af, align 8, !tbaa !21, !alias.scope !265, !noalias !262
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !21, !alias.scope !262, !noalias !265
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !265, !noalias !262
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !16, !alias.scope !262, !noalias !265
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !265, !noalias !262
  store i64 0, ptr %i.an, align 8, !tbaa !16, !alias.scope !265, !noalias !262
  store i8 0, ptr %i.af, align 8, !tbaa !21, !alias.scope !265, !noalias !262
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !268, !noalias !271
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !271, !noalias !268 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !271, !noalias !268 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !273
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !20, !alias.scope !268, !noalias !271
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !21, !alias.scope !271, !noalias !268
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !21, !alias.scope !268, !noalias !271
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !16, !alias.scope !271, !noalias !268
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !16, !alias.scope !268, !noalias !271
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !271, !noalias !268
  store i64 0, ptr %i.bc, align 8, !tbaa !16, !alias.scope !271, !noalias !268
  store i8 0, ptr %i.au, align 8, !tbaa !21, !alias.scope !271, !noalias !268
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !44
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN7Imf_3_410IDManifest20ChannelGroupManifestEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7Imf_3_410IDManifest20ChannelGroupManifestEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 4 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN7Imf_3_410IDManifest20ChannelGroupManifestEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  invoke void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC1Ev(ptr noundef nonnull align 8 dereferenceable(201) %.014.i.i.i)
          to label %_ZSt10_ConstructIN7Imf_3_410IDManifest20ChannelGroupManifestEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7Imf_3_410IDManifest20ChannelGroupManifestEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7Imf_3_410IDManifest20ChannelGroupManifestEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !274

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #32 ; 0 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %.014.i.i.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_:bb.a
  %i.ag = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.s, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i ; 2 uses
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !135
  %i.am = icmp slt i64 %i.ag, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !288

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = load <2 x i32>, ptr %i.n, align 4, !tbaa !15
  store <2 x i32> %i.ao, ptr %i.o, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32
  %i.ap = icmp sgt i64 %.1.i, %.09
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i
  %.022.i.i = phi i64 [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i.i = sdiv i64 %.0923.in.i.i, 2          ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0923.i.i ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !133 ; 3 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.as, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !15
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp sgt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.at, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !135 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.sroa.3.0.extract.trunc.i.i
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.ax = phi i32 [ %.pre.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.av, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.022.i.i ; 2 uses
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !133
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !135
  %i.ba = icmp sgt i64 %.0923.i.i, %.09
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, !llvm.loop !289

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.022.i.i, %bb.g ], [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %.sroa.02.0.copyload, ptr %i.bb, align 4
  %.not = icmp eq i64 %.09, 0
  %i.bc = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !291

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !217
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !159
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !21
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !217
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #35
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34: ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !217
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(201) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(201) %i.q, ptr noundef nonnull align 8 dereferenceable(201) %2)
          to label %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i) #32
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !275

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7Imf_3_410IDManifest20ChannelGroupManifestEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i29) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i29) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !275

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !38
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !101
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #37
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef nonnull align 8 dereferenceable(201) %1) unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %0, ptr %3, align 8, !tbaa !251
  %i.j = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !222  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !252

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !253

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.f, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  store i64 %i.p, ptr %i.g, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  store ptr %i.j, ptr %i.d, align 8, !tbaa !51
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit: ; preds = %bb.a, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc16, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775776
  br i1 %i.y, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !33

.noexc.i.i15:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34
          to label %.noexc16 unwind label %bb.r

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit
  %i.aa = phi ptr [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2ERKS9_.exit ], [ %i.z, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !44
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ae, ptr %i.af, ptr noundef %i.aa)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #35
  br label %.body

bb.h:                                             ; preds = %.noexc16
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_ESJ_:bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit
  %.sroa.06.09 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit ] ; 2 uses
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09) #36 ; 2 uses
  %i.o = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 64) #35
  %i.af = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.m, align 8, !tbaa !46
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !299

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISB_E.exit, %.critedge, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %0, ptr %5, align 8, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !226
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  store i64 %i.f, ptr %i.c, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !85
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i64, ptr %i.c, align 8, !tbaa !26
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = icmp ult i64 %i.n, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !46
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !14   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.f
  %i.ae = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.v, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.i, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #34 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !25
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.v, ptr %i.a, align 8, !tbaa !26
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !20
  %i.y = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.y, ptr %i.s, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !21
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !300, !noalias !303
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !303, !noalias !300 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16, !alias.scope !303, !noalias !300 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !305
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !300, !noalias !303
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !21, !alias.scope !303, !noalias !300
  store i64 %i.an, ptr %i.af, align 8, !tbaa !21, !alias.scope !300, !noalias !303
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !303, !noalias !300
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !16, !alias.scope !300, !noalias !303
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !303, !noalias !300
  store i64 0, ptr %i.ap, align 8, !tbaa !16, !alias.scope !303, !noalias !300
  store i8 0, ptr %i.ah, align 8, !tbaa !21, !alias.scope !303, !noalias !300
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !25, !alias.scope !306, !noalias !309
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !20, !alias.scope !309, !noalias !306 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16, !alias.scope !309, !noalias !306 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !311
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !20, !alias.scope !306, !noalias !309
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !21, !alias.scope !309, !noalias !306
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !21, !alias.scope !306, !noalias !309
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !16, !alias.scope !309, !noalias !306
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !16, !alias.scope !306, !noalias !309
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !20, !alias.scope !309, !noalias !306
  store i64 0, ptr %i.be, align 8, !tbaa !16, !alias.scope !309, !noalias !306
  store i8 0, ptr %i.aw, align 8, !tbaa !21, !alias.scope !309, !noalias !306
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !44
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #35
  invoke void @__cxa_rethrow() #33
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqRKSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EESJ_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not9.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi ptr [ %i.aq, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.sroa.03.010.i.i.i.i = phi ptr [ %i.ap, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 32
  %i.m = load i64, ptr %i.k, align 8, !tbaa !83
  %i.n = load i64, ptr %i.l, align 8, !tbaa !83
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i.i, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !14   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.d:                                             ; preds = %bb.c
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.d ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.al = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !210

_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.010.i.i.i.i) #36 ; 2 uses
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0.011.i.i.i.i) #36
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !312

_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit: ; preds = %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ true, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.c ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(201) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 208
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %i.q, ptr noundef nonnull align 8 dereferenceable(201) %2) #32
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i) #32
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !275

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i19) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i19) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !275

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !38
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !101
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfIDManifest.cpp() #27 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 23), align 1, !tbaa !21
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, align 8, !tbaa !25
  store i32 1701736302, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 20), align 4, !tbaa !21
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 22), align 2, !tbaa !21
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 30), align 2, !tbaa !21
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 30), align 2, !tbaa !21
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, align 8, !tbaa !25
  store i16 25705, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 18), align 2, !tbaa !21
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 19), align 1, !tbaa !21
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!14 = !{!12, !13, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !19, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !6, i64 16}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!17, !9, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!24 = distinct !{!24, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!25 = !{!18, !9, i64 0}
!26 = !{!19, !19, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!29 = distinct !{!29, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
end_hunk_4
