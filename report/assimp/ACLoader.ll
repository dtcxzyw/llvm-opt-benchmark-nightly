inline.NumInlined: 1445
inline.NumDeleted: 684
begin_hunk_0_@_ZN6Assimp12AC3DImporter17LoadObjectSectionERSt6vectorINS0_6ObjectESaIS2_EE:bb.a
    i8 9, label %bb.fn
    i8 13, label %bb.fn
    i8 10, label %bb.fn
    i8 0, label %bb.fn
    i8 12, label %bb.fn
  ]

bb.fn:                                            ; preds = %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm, %bb.fm
  %.not11.i288 = icmp eq i8 %i.qz, 0
  %i.ra = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %storemerge.i289 = select i1 %.not11.i288, ptr %i.qy, ptr %i.ra ; 4 uses
  store ptr %storemerge.i289, ptr %i.d, align 8
  %i.rb = ptrtoint ptr %storemerge.i289 to i64
  %i.rc = sub i64 %i.fc, %i.rb
  %scevgep.i.i291 = getelementptr i8, ptr %storemerge.i289, i64 %i.rc
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fq, %bb.fn
  %.0.i.i292 = phi ptr [ %storemerge.i289, %bb.fn ], [ %i.re, %bb.fq ] ; 4 uses
  %i.rd = load i8, ptr %.0.i.i292, align 1
  switch i8 %i.rd, label %.critedge.i.i294 [
    i8 32, label %bb.fp
    i8 9, label %bb.fp
  ]

bb.fp:                                            ; preds = %bb.fo, %bb.fo
  %.not.i.i293 = icmp eq ptr %.0.i.i292, %i.ez
  br i1 %.not.i.i293, label %.critedge.i.i294, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i.i292, i64 1
  br label %bb.fo, !llvm.loop !6

.critedge.i.i294:                                 ; preds = %bb.fp, %bb.fo
  %.0.lcssa.i.i295 = phi ptr [ %.0.i.i292, %bb.fo ], [ %scevgep.i.i291, %bb.fp ] ; 3 uses
  store ptr %.0.lcssa.i.i295, ptr %i.d, align 8
  %i.rf = load i8, ptr %.0.lcssa.i.i295, align 1  ; 2 uses
  %i.rg = add i8 %i.rf, -58
  %or.cond11.i297 = icmp ult i8 %i.rg, -10
  br i1 %or.cond11.i297, label %.thread, label %.lr.ph.i298

.thread:                                          ; preds = %.critedge.i.i294
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 noundef 0)
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i298:                                      ; preds = %.critedge.i.i294, %.lr.ph.i298
  %i.rh = phi i8 [ %i.rm, %.lr.ph.i298 ], [ %i.rf, %.critedge.i.i294 ]
  %.013.i299 = phi i32 [ %i.rk, %.lr.ph.i298 ], [ 0, %.critedge.i.i294 ]
  %.0812.i300 = phi ptr [ %i.rl, %.lr.ph.i298 ], [ %.0.lcssa.i.i295, %.critedge.i.i294 ]
  %i.ri = mul i32 %.013.i299, 10
  %narrow.i301 = add nsw i8 %i.rh, -48
  %i.rj = zext nneg i8 %narrow.i301 to i32
  %i.rk = add i32 %i.ri, %i.rj                    ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.0812.i300, i64 1 ; 3 uses
  %i.rm = load i8, ptr %i.rl, align 1             ; 2 uses
  %i.rn = add i8 %i.rm, -58
  %or.cond.i302 = icmp ult i8 %i.rn, -10
  br i1 %or.cond.i302, label %_ZN6Assimp9strtoul10EPKcPS1_.exit306, label %.lr.ph.i298, !llvm.loop !8

_ZN6Assimp9strtoul10EPKcPS1_.exit306:             ; preds = %.lr.ph.i298
  store ptr %i.rl, ptr %i.d, align 8
  %i.ro = icmp ugt i32 %i.rk, 22369620
  br i1 %i.ro, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit306
  %i.rp = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.rp, ptr noundef nonnull @.str.18)
          to label %bb.fs unwind label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void @__cxa_throw(ptr nonnull %i.rp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.rp) #25
  br label %bb.kj

bb.fu:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit306
  %i.rr = zext nneg i32 %i.rk to i64
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 noundef %i.rr)
  %.not656 = icmp eq i32 %i.rk, 0
  br i1 %.not656, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.fu
  %.pre751 = load ptr, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.2
  %i.rs = phi ptr [ %i.un, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.2 ], [ %.pre751, %.lr.ph.preheader ] ; 3 uses
  %.068645 = phi i32 [ %i.uo, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.2 ], [ 0, %.lr.ph.preheader ]
  %i.rt = load ptr, ptr %i.j, align 8             ; 4 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64               ; 3 uses
  %i.rw = sub i64 %i.rv, %i.ru
  %scevgep.i.i.i307 = getelementptr i8, ptr %i.rs, i64 %i.rw
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %.lr.ph
  %.0.i.i.i308 = phi ptr [ %i.rs, %.lr.ph ], [ %i.ry, %bb.fx ] ; 7 uses
  %i.rx = load i8, ptr %.0.i.i.i308, align 1
  switch i8 %i.rx, label %bb.fw [
    i8 13, label %.critedge.i.i.i309
    i8 10, label %.critedge.i.i.i309
    i8 0, label %.critedge.i.i.i309
    i8 35, label %.critedge.i.i.i309
  ]

bb.fw:                                            ; preds = %bb.fv
  %.not22.i.i.i322 = icmp eq ptr %.0.i.i.i308, %i.rt
  br i1 %.not22.i.i.i322, label %.critedge.i.i.i309, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.i.i.i308, i64 1
  br label %bb.fv, !llvm.loop !3

.critedge.i.i.i309:                               ; preds = %bb.fw, %bb.fv, %bb.fv, %bb.fv, %bb.fv
  %.0.lcssa.i.i.i310 = phi ptr [ %.0.i.i.i308, %bb.fv ], [ %.0.i.i.i308, %bb.fv ], [ %.0.i.i.i308, %bb.fv ], [ %.0.i.i.i308, %bb.fv ], [ %scevgep.i.i.i307, %bb.fw ] ; 3 uses
  %.0.lcssa24.i.i.i311 = ptrtoint ptr %.0.lcssa.i.i.i310 to i64
  %i.rz = sub i64 %i.rv, %.0.lcssa24.i.i.i311
  %scevgep25.i.i.i312 = getelementptr i8, ptr %.0.lcssa.i.i.i310, i64 %i.rz
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %.critedge.i.i.i309
  %.1.i.i.i313 = phi ptr [ %.0.lcssa.i.i.i310, %.critedge.i.i.i309 ], [ %i.sb, %bb.ga ] ; 4 uses
  %i.sa = load i8, ptr %.1.i.i.i313, align 1
  switch i8 %i.sa, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i315 [
    i8 13, label %bb.fz
    i8 10, label %bb.fz
  ]

bb.fz:                                            ; preds = %bb.fy, %bb.fy
  %.not23.i.i.i314 = icmp eq ptr %.1.i.i.i313, %i.rt
  br i1 %.not23.i.i.i314, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i315, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.sb = getelementptr inbounds nuw i8, ptr %.1.i.i.i313, i64 1
  br label %bb.fy, !llvm.loop !5

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i315:       ; preds = %bb.fz, %bb.fy
  %.1.lcssa.i.i.i316 = phi ptr [ %.1.i.i.i313, %bb.fy ], [ %scevgep25.i.i.i312, %bb.fz ] ; 4 uses
  store ptr %.1.lcssa.i.i.i316, ptr %i.d, align 8
  %i.sc = ptrtoint ptr %.1.lcssa.i.i.i316 to i64
  %i.sd = sub i64 %i.rv, %i.sc
  %scevgep.i.i1.i317 = getelementptr i8, ptr %.1.lcssa.i.i.i316, i64 %i.sd
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gd, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i315
  %.in.i318 = phi ptr [ %i.sf, %bb.gd ], [ %.1.lcssa.i.i.i316, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i315 ] ; 4 uses
  %i.se = load i8, ptr %.in.i318, align 1
  switch i8 %i.se, label %.critedge.i.i3.i320 [
    i8 32, label %bb.gc
    i8 9, label %bb.gc
  ]

bb.gc:                                            ; preds = %bb.gb, %bb.gb
  %.not.i.i.i319 = icmp eq ptr %.in.i318, %i.rt
  br i1 %.not.i.i.i319, label %.critedge.i.i3.i320, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.sf = getelementptr inbounds nuw i8, ptr %.in.i318, i64 1
  br label %bb.gb, !llvm.loop !6

.critedge.i.i3.i320:                              ; preds = %bb.gc, %bb.gb
  %.0.lcssa.i.i4.i321 = phi ptr [ %.in.i318, %bb.gb ], [ %scevgep.i.i1.i317, %bb.gc ] ; 2 uses
  store ptr %.0.lcssa.i.i4.i321, ptr %i.d, align 8
  %i.sg = load i8, ptr %.0.lcssa.i.i4.i321, align 1 ; 3 uses
  switch i8 %i.sg, label %bb.ge [
    i8 13, label %_ZN6Assimp12AC3DImporter11GetNextLineEv.exit323
    i8 10, label %_ZN6Assimp12AC3DImporter11GetNextLineEv.exit323
    i8 0, label %_ZN6Assimp12AC3DImporter11GetNextLineEv.exit323
    i8 12, label %_ZN6Assimp12AC3DImporter11GetNextLineEv.exit323
  ]

_ZN6Assimp12AC3DImporter11GetNextLineEv.exit323:  ; preds = %.critedge.i.i3.i320, %.critedge.i.i3.i320, %.critedge.i.i3.i320, %.critedge.i.i3.i320
  %i.sh = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.sh, ptr noundef nonnull @.str.19)
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ge:                                            ; preds = %.critedge.i.i3.i320
  %i.si = add i8 %i.sg, -48
  %or.cond.i324 = icmp ult i8 %i.si, 10
  br i1 %or.cond.i324, label %bb.gg, label %switch.early.test

switch.early.test:                                ; preds = %bb.ge
  switch i8 %i.sg, label %bb.gf [
    i8 45, label %bb.gg
    i8 43, label %bb.gg
  ]

bb.gf:                                            ; preds = %switch.early.test
  %i.sj = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.sj, ptr noundef nonnull @.str.20)
  %i.sk = load ptr, ptr %i.d, align 8
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -1
  store ptr %i.sl, ptr %i.d, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.gg:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ge
  %i.sm = load ptr, ptr %i.eh, align 8            ; 5 uses
  %i.sn = load ptr, ptr %i.ei, align 8
  %.not.i325 = icmp eq ptr %i.sm, %i.sn
  br i1 %.not.i325, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  store <3 x float> zeroinitializer, ptr %i.sm, align 4
  %i.so = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store ptr %i.sp, ptr %i.eh, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.gi:                                            ; preds = %bb.gg
  %i.sq = load ptr, ptr %i.eg, align 8            ; 5 uses
  %i.sr = ptrtoint ptr %i.sm to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss                    ; 4 uses
  %i.su = icmp eq i64 %i.st, 9223372036854775800
  br i1 %i.su, label %bb.gj, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.gj:                                            ; preds = %bb.gi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.gi
  %i.sv = sdiv exact i64 %i.st, 12                ; 3 uses
  %.sroa.speculated.i.i.i326 = call i64 @llvm.umax.i64(i64 %i.sv, i64 1)
  %i.sw = add nsw i64 %.sroa.speculated.i.i.i326, %i.sv ; 2 uses
  %i.sx = icmp ult i64 %i.sw, %i.sv
  %i.sy = call i64 @llvm.umin.i64(i64 %i.sw, i64 768614336404564650)
  %i.sz = select i1 %i.sx, i64 768614336404564650, i64 %i.sy ; 3 uses
  %.not.i.i.i327 = icmp ne i64 %i.sz, 0
  call void @llvm.assume(i1 %.not.i.i.i327)
  %i.ta = mul nuw nsw i64 %i.sz, 12
  %i.tb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ta) #27 ; 5 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.st
  store <3 x float> zeroinitializer, ptr %i.tc, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.sq, %i.sm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.te, %.lr.ph.i.i.i.i.i ], [ %i.tb, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.td, %.lr.ph.i.i.i.i.i ], [ %i.sq, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !10
  %i.td = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.td, %i.sm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.tb, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.te, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i22.i.i = icmp eq ptr %i.sq, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef %i.st) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.gk, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i
  store ptr %i.tb, ptr %i.eg, align 8
  store ptr %i.tf, ptr %i.eh, align 8
  %i.tg = getelementptr inbounds nuw [12 x i8], ptr %i.tb, i64 %i.sz
  store ptr %i.tg, ptr %i.ei, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.gh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.th = phi ptr [ %i.so, %bb.gh ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.ti = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.tj = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.tk = ptrtoint ptr %i.ti to i64
  %i.tl = ptrtoint ptr %i.tj to i64               ; 4 uses
  %i.tm = sub i64 %i.tl, %i.tk
  %scevgep.i.i.i.i328 = getelementptr i8, ptr %i.ti, i64 %i.tm ; 2 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.0.i.i.i.i329 = phi ptr [ %i.ti, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ], [ %i.to, %bb.gn ] ; 4 uses
  %i.tn = load i8, ptr %.0.i.i.i.i329, align 1    ; 2 uses
  switch i8 %i.tn, label %.critedge.i.i.i.i333 [
    i8 32, label %bb.gm
    i8 9, label %bb.gm
  ]

bb.gm:                                            ; preds = %bb.gl, %bb.gl
  %.not.i.i.i.i330 = icmp eq ptr %.0.i.i.i.i329, %i.tj
  br i1 %.not.i.i.i.i330, label %.critedge.i.ithread-pre-split.i.i331, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.to = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i329, i64 1
  br label %bb.gl, !llvm.loop !6

.critedge.i.ithread-pre-split.i.i331:             ; preds = %bb.gm
  %.pr.i.i332 = load i8, ptr %scevgep.i.i.i.i328, align 1
  br label %.critedge.i.i.i.i333

.critedge.i.i.i.i333:                             ; preds = %bb.gl, %.critedge.i.ithread-pre-split.i.i331
  %i.tp = phi i8 [ %.pr.i.i332, %.critedge.i.ithread-pre-split.i.i331 ], [ %i.tn, %bb.gl ]
  %.0.lcssa.i.i.i.i334 = phi ptr [ %scevgep.i.i.i.i328, %.critedge.i.ithread-pre-split.i.i331 ], [ %.0.i.i.i.i329, %bb.gl ] ; 3 uses
  switch i8 %i.tp, label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit.i336 [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335:  ; preds = %.critedge.i.i.i.i333, %.critedge.i.i.i.i333, %.critedge.i.i.i.i333, %.critedge.i.i.i.i333
  %i.tq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.tq, ptr noundef nonnull @.str.83)
  br label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit.i336

_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit.i336:   ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.i335, %.critedge.i.i.i.i333
  %i.tr = ptrtoint ptr %.0.lcssa.i.i.i.i334 to i64
  %i.ts = sub i64 %i.tl, %i.tr
  %scevgep.i.i.i24.i340 = getelementptr i8, ptr %.0.lcssa.i.i.i.i334, i64 %i.ts ; 2 uses
  br label %bb.go

bb.go:                                            ; preds = %bb.gq, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit.i336
  %.0.i.i.i25.i341 = phi ptr [ %.0.lcssa.i.i.i.i334, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit.i336 ], [ %i.tu, %bb.gq ] ; 4 uses
  %i.tt = load i8, ptr %.0.i.i.i25.i341, align 1  ; 2 uses
  switch i8 %i.tt, label %.critedge.i.i.i29.i345 [
    i8 32, label %bb.gp
    i8 9, label %bb.gp
  ]

bb.gp:                                            ; preds = %bb.go, %bb.go
  %.not.i.i.i26.i342 = icmp eq ptr %.0.i.i.i25.i341, %i.tj
  br i1 %.not.i.i.i26.i342, label %.critedge.i.ithread-pre-split.i27.i343, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.i.i.i25.i341, i64 1
  br label %bb.go, !llvm.loop !6

.critedge.i.ithread-pre-split.i27.i343:           ; preds = %bb.gp
  %.pr.i28.i344 = load i8, ptr %scevgep.i.i.i24.i340, align 1
  br label %.critedge.i.i.i29.i345

.critedge.i.i.i29.i345:                           ; preds = %bb.go, %.critedge.i.ithread-pre-split.i27.i343
  %i.tv = phi i8 [ %.pr.i28.i344, %.critedge.i.ithread-pre-split.i27.i343 ], [ %i.tt, %bb.go ]
  %.0.lcssa.i.i.i30.i346 = phi ptr [ %scevgep.i.i.i24.i340, %.critedge.i.ithread-pre-split.i27.i343 ], [ %.0.i.i.i25.i341, %bb.go ]
  switch i8 %i.tv, label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348 [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347: ; preds = %.critedge.i.i.i29.i345, %.critedge.i.i.i29.i345, %.critedge.i.i.i29.i345, %.critedge.i.i.i29.i345
  %i.tw = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.tw, ptr noundef nonnull @.str.83)
  br label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348

_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347, %.critedge.i.i.i29.i345
  %i.tx = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i30.i346, ptr noundef nonnull align 4 dereferenceable(4) %i.th, i1 noundef zeroext true) ; 3 uses
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = sub i64 %i.tl, %i.ty
  %scevgep.i.i.i24.i340.1 = getelementptr i8, ptr %i.tx, i64 %i.tz ; 2 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gt, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348
  %.0.i.i.i25.i341.1 = phi ptr [ %i.tx, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348 ], [ %i.ub, %bb.gt ] ; 4 uses
  %i.ua = load i8, ptr %.0.i.i.i25.i341.1, align 1 ; 2 uses
  switch i8 %i.ua, label %.critedge.i.i.i29.i345.1 [
    i8 32, label %bb.gs
    i8 9, label %bb.gs
  ]

bb.gs:                                            ; preds = %bb.gr, %bb.gr
  %.not.i.i.i26.i342.1 = icmp eq ptr %.0.i.i.i25.i341.1, %i.tj
  br i1 %.not.i.i.i26.i342.1, label %.critedge.i.ithread-pre-split.i27.i343.1, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i.i.i25.i341.1, i64 1
  br label %bb.gr, !llvm.loop !6

.critedge.i.ithread-pre-split.i27.i343.1:         ; preds = %bb.gs
  %.pr.i28.i344.1 = load i8, ptr %scevgep.i.i.i24.i340.1, align 1
  br label %.critedge.i.i.i29.i345.1

.critedge.i.i.i29.i345.1:                         ; preds = %bb.gr, %.critedge.i.ithread-pre-split.i27.i343.1
  %i.uc = phi i8 [ %.pr.i28.i344.1, %.critedge.i.ithread-pre-split.i27.i343.1 ], [ %i.ua, %bb.gr ]
  %.0.lcssa.i.i.i30.i346.1 = phi ptr [ %scevgep.i.i.i24.i340.1, %.critedge.i.ithread-pre-split.i27.i343.1 ], [ %.0.i.i.i25.i341.1, %bb.gr ]
  switch i8 %i.uc, label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.1 [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1: ; preds = %.critedge.i.i.i29.i345.1, %.critedge.i.i.i29.i345.1, %.critedge.i.i.i29.i345.1, %.critedge.i.i.i29.i345.1
  %i.ud = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ud, ptr noundef nonnull @.str.83)
  br label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.1

_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.1: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.1, %.critedge.i.i.i29.i345.1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.uf = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i30.i346.1, ptr noundef nonnull align 4 dereferenceable(4) %i.ue, i1 noundef zeroext true) ; 3 uses
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = sub i64 %i.tl, %i.ug
  %scevgep.i.i.i24.i340.2 = getelementptr i8, ptr %i.uf, i64 %i.uh ; 2 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gw, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.1
  %.0.i.i.i25.i341.2 = phi ptr [ %i.uf, %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.1 ], [ %i.uj, %bb.gw ] ; 4 uses
  %i.ui = load i8, ptr %.0.i.i.i25.i341.2, align 1 ; 2 uses
  switch i8 %i.ui, label %.critedge.i.i.i29.i345.2 [
    i8 32, label %bb.gv
    i8 9, label %bb.gv
  ]

bb.gv:                                            ; preds = %bb.gu, %bb.gu
  %.not.i.i.i26.i342.2 = icmp eq ptr %.0.i.i.i25.i341.2, %i.tj
  br i1 %.not.i.i.i26.i342.2, label %.critedge.i.ithread-pre-split.i27.i343.2, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.uj = getelementptr inbounds nuw i8, ptr %.0.i.i.i25.i341.2, i64 1
  br label %bb.gu, !llvm.loop !6

.critedge.i.ithread-pre-split.i27.i343.2:         ; preds = %bb.gv
  %.pr.i28.i344.2 = load i8, ptr %scevgep.i.i.i24.i340.2, align 1
  br label %.critedge.i.i.i29.i345.2

.critedge.i.i.i29.i345.2:                         ; preds = %bb.gu, %.critedge.i.ithread-pre-split.i27.i343.2
  %i.uk = phi i8 [ %.pr.i28.i344.2, %.critedge.i.ithread-pre-split.i27.i343.2 ], [ %i.ui, %bb.gu ]
  %.0.lcssa.i.i.i30.i346.2 = phi ptr [ %scevgep.i.i.i24.i340.2, %.critedge.i.ithread-pre-split.i27.i343.2 ], [ %.0.i.i.i25.i341.2, %bb.gu ]
  switch i8 %i.uk, label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.2 [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.2
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.2
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.2
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.2
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i31.i347.2: ; preds = %.critedge.i.i.i29.i345.2, %.critedge.i.i.i29.i345.2, %.critedge.i.i.i29.i345.2, %.critedge.i.i.i29.i345.2
  %i.ul = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ul, ptr noundef nonnull @.str.83)
  br label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit32.i348.2

end_hunk_0
