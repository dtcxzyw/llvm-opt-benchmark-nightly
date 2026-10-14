Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc243 unwind label %.loopexit.split-lp479

.noexc243:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.cb
  %i.tc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ta) #25
          to label %.noexc244 unwind label %.loopexit478

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.ca
  %i.td = phi ptr [ null, %bb.ca ], [ %i.tc, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.td, ptr %i.st, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.st, i64 8 ; 2 uses
  store ptr %i.td, ptr %i.te, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.ta
  %i.tg = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store ptr %i.tf, ptr %i.tg, align 8
  %i.th = load ptr, ptr %12, align 8              ; 2 uses
  %i.ti = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.th, %i.ti
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i241:                          ; preds = %.noexc244, %.lr.ph.i.i.i.i.i.i.i241
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.tk, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.td, %.noexc244 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.tj, %.lr.ph.i.i.i.i.i.i.i241 ], [ %i.th, %.noexc244 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i242 = icmp eq ptr %i.tj, %i.ti
  br i1 %.not.i.i.i.i.i.i.i242, label %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, label %.lr.ph.i.i.i.i.i.i.i241, !llvm.loop !6

_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i241, %.noexc244
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.td, %.noexc244 ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i241 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.te, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tl, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 32, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.st, i64 56
  store ptr null, ptr %i.tm, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  store i32 0, ptr %i.tn, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.st, i64 72
  store ptr null, ptr %i.to, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.st, i64 80
  store i32 0, ptr %i.tp, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.st, i64 88
  store ptr null, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.st, i64 96
  store i8 %i.sv, ptr %i.tr, align 8
  %i.ts = load ptr, ptr %i.u, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 104
  store ptr %i.tt, ptr %i.u, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit

bb.cc:                                            ; preds = %bb.bz
  invoke void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.st, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit unwind label %.loopexit478

.loopexit478:                                     ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.cc
  %lpad.loopexit480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp479:                            ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit: ; preds = %bb.bs, %bb.bu, %bb.cc, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i, %.thread446
  %.4450 = phi i1 [ %.4451, %bb.cc ], [ %.4451, %.thread446 ], [ %.4451, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ %i.mr, %bb.bu ], [ %.2863, %bb.bs ]
  %.5137 = phi i32 [ 0, %bb.cc ], [ 0, %.thread446 ], [ 0, %_ZN6Assimp3IFC22ProjectedWindowContourC2ERKSt6vectorI10aiVector2tIdESaIS4_EERKSt4pairIS4_S4_Eb.exit.i ], [ 1, %bb.bu ], [ %.2134862, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.tu = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit
  %i.tv = load ptr, ptr %i.t, align 8
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tu to i64
  %i.ty = sub i64 %i.tw, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.ty) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE12emplace_backIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEERS2_DpOT_.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ai, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  %.6138 = phi i32 [ %.5137, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ 3, %bb.ai ]
  %.5 = phi i1 [ %.4450, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit ], [ %.0655, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ag, %bb.ah, %bb.ce, %bb.p
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420762 = phi ptr [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761, %bb.p ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, %bb.ag ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420763886, %bb.ce ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420763886, %bb.ah ] ; 4 uses
  %.sroa.11424.0..sroa.11424.0..sroa.11424.8.758 = phi ptr [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8., %bb.p ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425, %bb.ag ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.759896, %bb.ce ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.759896, %bb.ah ]
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.755 = phi ptr [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0., %bb.p ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420, %bb.ag ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420763886, %bb.ce ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420763886, %bb.ah ]
  %.9141 = phi i32 [ 3, %bb.p ], [ 3, %bb.ag ], [ %.6138, %bb.ce ], [ 3, %bb.ah ]
  %.8 = phi i1 [ %.0655, %bb.p ], [ %.0655, %bb.ag ], [ %.5, %bb.ce ], [ %.0655, %bb.ah ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.cf, %bb.cg
  %.not.i.i.i248 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ch
  switch i32 %.9141, label %.loopexit483 [
    i32 0, label %bb.ci
    i32 3, label %bb.ci
    i32 2, label %.thread452
  ]

bb.ci:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0406.0653, i64 88 ; 2 uses
  %.not457 = icmp eq ptr %i.tz, %i.k
  br i1 %.not457, label %.thread452, label %bb.g

bb.cj:                                            ; preds = %.loopexit478, %.loopexit.split-lp479, %bb.by, %bb.br
  %.pn159 = phi { ptr, i32 } [ %.pn157, %bb.br ], [ %i.ss, %bb.by ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ua = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i249 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i249, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ub = load ptr, ptr %i.t, align 8
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = ptrtoint ptr %i.ua to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %i.ue) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250: ; preds = %bb.ck, %bb.cj, %bb.ak
  %.pn159.pn = phi { ptr, i32 } [ %i.kg, %bb.ak ], [ %.pn159, %bb.cj ], [ %.pn159, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit463, %.loopexit.split-lp464, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %.pn159.pn, %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit250 ], [ %lpad.loopexit465, %.loopexit463 ], [ %lpad.loopexit.split-lp466, %.loopexit.split-lp464 ] ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i251, label %_ZNSt6vectorIjSaIjEED2Ev.exit252, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.bu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

_ZNSt6vectorIjSaIjEED2Ev.exit252:                 ; preds = %.loopexit473, %.loopexit.split-lp474, %bb.cm, %bb.cl
  %.pn164.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn, %bb.cm ], [ %.pn164.pn.pn.pn, %bb.cl ], [ %lpad.loopexit475, %.loopexit473 ], [ %lpad.loopexit.split-lp476, %.loopexit.split-lp474 ] ; 2 uses
  %.not.i.i.i253 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit252
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.thread452:                                       ; preds = %bb.ci, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %.pre769 = load ptr, ptr %11, align 8
  %.pre770 = load ptr, ptr %i.u, align 8
  %i.uf = icmp eq ptr %.pre769, %.pre770
  br i1 %i.uf, label %.loopexit483, label %bb.co

bb.co:                                            ; preds = %.thread452
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cp unwind label %bb.f

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cq unwind label %bb.f

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6Assimp3IFC21CleanupWindowContoursERSt6vectorINS0_22ProjectedWindowContourESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.cr unwind label %bb.f

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cs unwind label %bb.f

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ct unwind label %bb.f

bb.ct:                                            ; preds = %bb.cs
  %i.ug = load ptr, ptr %1, align 8               ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8            ; 3 uses
  %.not460657 = icmp eq ptr %i.ug, %i.ui
  br i1 %.not460657, label %._crit_edge661, label %.lr.ph660

.lr.ph660:                                        ; preds = %bb.ct
  %18 = load <8 x double>, ptr %9, align 8, !noalias !263 ; 12 uses
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %20 = load double, ptr %19, align 8, !noalias !263 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.uk = load double, ptr %i.uj, align 8, !noalias !263 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.um = load double, ptr %i.ul, align 8, !noalias !263 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.uo = load double, ptr %i.un, align 8, !noalias !263 ; 2 uses
  %21 = ptrtoaddr ptr %i.ui to i64
  %22 = ptrtoaddr ptr %i.ug to i64
  %i.up = add i64 %21, -24
  %i.uq = sub i64 %i.up, %22                      ; 2 uses
  %i.ur = udiv i64 %i.uq, 24
  %i.us = add nuw nsw i64 %i.ur, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.uq, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph660
  %n.vec = and i64 %i.us, 2305843009213693950     ; 3 uses
  %i.ut = mul i64 %n.vec, 24
  %i.uu = getelementptr i8, ptr %i.ug, i64 %i.ut
  %broadcast.splat = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat1099 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat1101 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat1103 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat1105 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %broadcast.splat1107 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %broadcast.splat1109 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %broadcast.splat1111 = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %broadcast.splatinsert1112 = insertelement <2 x double> poison, double %20, i64 0
  %broadcast.splat1113 = shufflevector <2 x double> %broadcast.splatinsert1112, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <2 x double> poison, double %i.uk, i64 0
  %broadcast.splat1115 = shufflevector <2 x double> %broadcast.splatinsert1114, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1116 = insertelement <2 x double> poison, double %i.um, i64 0
  %broadcast.splat1117 = shufflevector <2 x double> %broadcast.splatinsert1116, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1118 = insertelement <2 x double> poison, double %i.uo, i64 0
  %broadcast.splat1119 = shufflevector <2 x double> %broadcast.splatinsert1118, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uv = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ug, i64 %i.uv ; 4 uses
  %i.uw = getelementptr i8, ptr %i.ug, i64 %i.uv  ; 3 uses
  %next.gep1120 = getelementptr i8, ptr %i.uw, i64 24
  %i.ux = load double, ptr %next.gep, align 8, !noalias !263
  %i.uy = load double, ptr %next.gep1120, align 8, !noalias !263
  %i.uz = insertelement <2 x double> poison, double %i.ux, i64 0
  %i.va = insertelement <2 x double> %i.uz, double %i.uy, i64 1 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.vc = getelementptr i8, ptr %i.uw, i64 32
  %i.vd = load double, ptr %i.vb, align 8, !noalias !263
  %i.ve = load double, ptr %i.vc, align 8, !noalias !263
  %i.vf = insertelement <2 x double> poison, double %i.vd, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.ve, i64 1 ; 3 uses
  %i.vh = fmul <2 x double> %broadcast.splat1099, %i.vg
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.va, <2 x double> %i.vh)
  %i.vj = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.vk = getelementptr i8, ptr %i.uw, i64 40
  %i.vl = load double, ptr %i.vj, align 8, !noalias !263
  %i.vm = load double, ptr %i.vk, align 8, !noalias !263
  %i.vn = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.vo = insertelement <2 x double> %i.vn, double %i.vm, i64 1 ; 3 uses
  %i.vp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1101, <2 x double> %i.vo, <2 x double> %i.vi)
  %i.vq = fadd <2 x double> %i.vp, %broadcast.splat1103
  %i.vr = fmul <2 x double> %i.vg, %broadcast.splat1107
  %i.vs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1105, <2 x double> %i.va, <2 x double> %i.vr)
  %i.vt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1109, <2 x double> %i.vo, <2 x double> %i.vs)
  %i.vu = fadd <2 x double> %broadcast.splat1111, %i.vt
  %i.vv = fmul <2 x double> %i.vg, %broadcast.splat1115
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1113, <2 x double> %i.va, <2 x double> %i.vv)
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1117, <2 x double> %i.vo, <2 x double> %i.vw)
  %i.vy = fadd <2 x double> %broadcast.splat1119, %i.vx
  %i.vz = shufflevector <2 x double> %i.vq, <2 x double> %i.vu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wa = shufflevector <2 x double> %i.vy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.vz, <4 x double> %i.wa, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.wb = icmp eq i64 %index.next, %n.vec
  br i1 %i.wb, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.us, %n.vec
  br i1 %cmp.n, label %._crit_edge661, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph660, %middle.block
  %.sroa.0288.0658.ph = phi ptr [ %i.ug, %.lr.ph660 ], [ %i.uu, %middle.block ]
  %i.wc = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.wd = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.we = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.wf = shufflevector <8 x double> %18, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %scalar.ph

._crit_edge661:                                   ; preds = %scalar.ph, %middle.block, %bb.ct
  br i1 %3, label %bb.cu, label %.loopexit483

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0288.0658 = phi ptr [ %i.wz, %scalar.ph ], [ %.sroa.0288.0658.ph, %scalar.ph.preheader ] ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0288.0658, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0288.0658, i64 16 ; 2 uses
  %i.wi = load double, ptr %.sroa.0288.0658, align 8, !noalias !263 ; 2 uses
  %i.wj = load double, ptr %i.wg, align 8, !noalias !263 ; 2 uses
  %i.wk = load double, ptr %i.wh, align 8, !noalias !263 ; 2 uses
  %i.wl = insertelement <2 x double> poison, double %i.wj, i64 0
  %i.wm = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wn = fmul <2 x double> %i.wm, %i.wc
  %i.wo = insertelement <2 x double> poison, double %i.wi, i64 0
  %i.wp = shufflevector <2 x double> %i.wo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %i.wp, <2 x double> %i.wn)
  %i.wr = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.ws = shufflevector <2 x double> %i.wr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.ws, <2 x double> %i.wq)
  %i.wu = fadd <2 x double> %i.wt, %i.wf
  %i.wv = fmul double %i.wj, %i.uk
  %i.ww = call double @llvm.fmuladd.f64(double %20, double %i.wi, double %i.wv)
  %i.wx = call double @llvm.fmuladd.f64(double %i.um, double %i.wk, double %i.ww)
  %i.wy = fadd double %i.uo, %i.wx
  store <2 x double> %i.wu, ptr %.sroa.0288.0658, align 8
  store double %i.wy, ptr %i.wh, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0288.0658, i64 24 ; 2 uses
  %.not460 = icmp eq ptr %i.wz, %i.ui
  br i1 %.not460, label %._crit_edge661, label %scalar.ph, !llvm.loop !257

bb.cu:                                            ; preds = %._crit_edge661
  %i.xa = invoke noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.loopexit483 unwind label %bb.f ; 0 uses

.loopexit483:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %._crit_edge661, %bb.cu, %.thread452
  %.10 = phi i1 [ true, %._crit_edge661 ], [ false, %.thread452 ], [ true, %bb.cu ], [ %.8, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420762, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %.loopexit483
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 = load ptr, ptr %.sroa.18, align 8
  %i.xb = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.427 to i64
  %i.xc = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420762 to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420762, i64 noundef %i.xd) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %.loopexit483, %bb.cv
  %.10905 = phi i1 [ %.10, %bb.cv ], [ %.10, %.loopexit483 ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.xe = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.xe, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.xf = load ptr, ptr %..sroa.gep418, align 8
  %i.xg = ptrtoint ptr %i.xf to i64
  %i.xh = ptrtoint ptr %i.xe to i64
  %i.xi = sub i64 %i.xg, %i.xh
  call void @_ZdlPvm(ptr noundef nonnull %i.xe, i64 noundef %i.xi) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.xj = load ptr, ptr %11, align 8              ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8            ; 2 uses
  %.not4.i.i.i258 = icmp eq ptr %i.xj, %i.xl
  br i1 %.not4.i.i.i258, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.05.i.i.i260 = phi ptr [ %i.yc, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i ], [ %i.xj, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 5 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 56
  %i.xn = load ptr, ptr %i.xm, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i261 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i.i.i.i.i.i261, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i259
  %i.xo = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 88
  %i.xp = load ptr, ptr %i.xo, align 8            ; 2 uses
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xn to i64
  %i.xs = sub i64 %i.xq, %i.xr                    ; 2 uses
  %i.xt = ashr exact i64 %i.xs, 3
  %i.xu = sub nsw i64 0, %i.xt
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.xu
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xs) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.cx, %.lr.ph.i.i.i259
  %i.xw = load ptr, ptr %.05.i.i.i260, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.xw to i64
  %i.yb = sub i64 %i.xz, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %i.xw, i64 noundef %i.yb) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i: ; preds = %bb.cy, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.yc = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 104 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.yc, %i.xl
  br i1 %.not.i.i.i262, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i259, !llvm.loop !7

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.pr.i263 = load ptr, ptr %11, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257
  %i.yd = phi ptr [ %.pr.i263, %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.xj, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 3 uses
  %.not.i.i1.i264 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i1.i264, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i
  %i.ye = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8
  %i.yg = ptrtoint ptr %i.yf to i64
  %i.yh = ptrtoint ptr %i.yd to i64
  %i.yi = sub i64 %i.yg, %i.yh
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yi) #26
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.dd

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254: ; preds = %.loopexit468, %.loopexit.split-lp469, %bb.cn, %_ZNSt6vectorIjSaIjEED2Ev.exit252, %bb.f
  %.pn172 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn164.pn.pn.pn.pn, %bb.cn ], [ %.pn164.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit252 ], [ %lpad.loopexit470, %.loopexit468 ], [ %lpad.loopexit.split-lp471, %.loopexit.split-lp469 ]
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 = load ptr, ptr %.sroa.0419, align 8 ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 = load ptr, ptr %.sroa.18, align 8
  %i.yj = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 to i64
  %i.yk = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 to i64
  %i.yl = sub i64 %i.yj, %i.yk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, i64 noundef %i.yl) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.ym = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i267 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266
  %i.yn = load ptr, ptr %..sroa.gep418, align 8
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %i.ym to i64
  %i.yq = sub i64 %i.yo, %i.yp
  call void @_ZdlPvm(ptr noundef nonnull %i.ym, i64 noundef %i.yq) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, %bb.e
  %.pn172.pn = phi { ptr, i32 } [ %.pn172, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.dh

bb.dd:                                            ; preds = %bb.b, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit
  %.11 = phi i1 [ %.10905, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.yr = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i269 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ys = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8
  %i.yu = ptrtoint ptr %i.yt to i64
  %i.yv = ptrtoint ptr %i.yr to i64
  %i.yw = sub i64 %i.yu, %i.yv
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.yw) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.yx = load ptr, ptr %5, align 8               ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %.not4.i.i.i271 = icmp eq ptr %i.yx, %i.yz
  br i1 %.not4.i.i.i271, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i273 = phi ptr [ %i.zg, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i ], [ %i.yx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270 ] ; 3 uses
  %i.za = load ptr, ptr %.05.i.i.i273, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i274 = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i.i.i.i.i274, label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i272
  %i.zb = getelementptr inbounds nuw i8, ptr %.05.i.i.i273, i64 16
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = ptrtoint ptr %i.za to i64
  %i.zf = sub i64 %i.zd, %i.ze
  call void @_ZdlPvm(ptr noundef nonnull %i.za, i64 noundef %i.zf) #26
  br label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.df, %.lr.ph.i.i.i272
  %i.zg = getelementptr inbounds nuw i8, ptr %.05.i.i.i273, i64 24 ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.zg, %i.yz
  br i1 %.not.i.i.i275, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i272, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i276 = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

end_hunk_0
