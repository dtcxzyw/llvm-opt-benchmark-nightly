Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/context?download=true
inline.NumInlined: 6156
inline.NumDeleted: 2235
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7xgboost7Context16SetDeviceOrdinalERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE:bb.a

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i, %._crit_edge.i.i.i76.i
  %.sroa.0187.2.i = phi ptr [ %spec.select.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %._crit_edge.i.i.i76.i ]
  %i.ny = ptrtoint ptr %.sroa.0187.2.i to i64
  %i.nz = sub i64 %i.ny, %i.le                    ; 2 uses
  %i.oa = add nsw i64 %i.nz, 1                    ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.oa ; 2 uses
  %i.oc = sub i64 %i.lb, %i.oa                    ; 2 uses
  %i.od = icmp eq i64 %i.lb, %i.oa
  br i1 %i.od, label %bb.bc, label %bb.be

.thread218.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.thread215.i
  switch i64 %i.lb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i: ; preds = %.thread218.i
  %i.oe = load i16, ptr %i.la, align 1
  %i.of = xor i16 %i.oe, 28771
  %i.og = getelementptr i8, ptr %i.la, i64 2
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = zext i8 %i.oh to i16
  %i.oj = xor i16 %i.oi, 117
  %i.ok = or i16 %i.of, %i.oj
  %i.ol = icmp ne i16 %i.ok, 0
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i: ; preds = %.thread218.i
  %i.oo = load i32, ptr %i.la, align 1
  %i.op = icmp ne i32 %i.oo, 1633973603
  %i.oq = zext i1 %i.op to i32
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %.thread238.thread251.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.i
  %i.os = load i32, ptr %i.la, align 1
  %i.ot = icmp ne i32 %i.os, 1818458483
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i: ; preds = %.thread218.i
  br i1 %i.mi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit75.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit73.i
  %i.ow = load i64, ptr %i.la, align 1
  %i.ox = icmp ne i64 %i.ow, 8462372802406873459
  %i.oy = zext i1 %i.ox to i32
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.i
  %i.pa = load i64, ptr %i.la, align 1
  %i.pb = icmp ne i64 %i.pa, 8462377200453384563
  %i.pc = zext i1 %i.pb to i32
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %.thread238.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread118: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit102.thread222.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread243.i unwind label %bb.as

bb.bc:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %.thread224.i unwind label %bb.bd

.thread224.i:                                     ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.be:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcET_SB_SB_RKT0_.exit96.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.pf = load i8, ptr %i.ob, align 1, !tbaa !15
  %i.pg = icmp eq i8 %i.pf, 45                    ; 3 uses
  %spec.select.i.i = zext i1 %i.pg to i64         ; 3 uses
  %.not.i105.i = icmp ugt i64 %i.oc, %spec.select.i.i
  br i1 %.not.i105.i, label %bb.bf, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ob, i64 %spec.select.i.i ; 5 uses
  %gepdiff.i.i = sub nuw nsw i64 %i.oc, %spec.select.i.i ; 2 uses
  %i.pi = ashr i64 %gepdiff.i.i, 2                ; 2 uses
  %i.pj = icmp sgt i64 %i.pi, 0
  br i1 %i.pj, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bf
  %i.pk = and i64 %gepdiff.i.i, -4
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ph, i64 %i.pk
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bj, %.lr.ph.preheader.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.px, %bb.bj ], [ %i.pi, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i = phi ptr [ %i.pw, %bb.bj ], [ %i.ph, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i = load i8, ptr %.02949.i.i.i.i.i.i, align 1, !tbaa !15
  %i.pl = sext i8 %.029.val32.i.i.i.i.i.i to i32
  %i.pm = add nsw i32 %i.pl, -58
  %isdigit.i.i.i.i.i.i.i.i = icmp ult i32 %i.pm, -10
  br i1 %isdigit.i.i.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  %.val31.i.i.i.i.i.i = load i8, ptr %i.pn, align 1, !tbaa !15
  %i.po = sext i8 %.val31.i.i.i.i.i.i to i32
  %i.pp = add nsw i32 %i.po, -58
  %isdigit.i.i33.i.i.i.i.i.i = icmp ult i32 %i.pp, -10
  br i1 %isdigit.i.i33.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pq = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  %.val30.i.i.i.i.i.i = load i8, ptr %i.pq, align 1, !tbaa !15
  %i.pr = sext i8 %.val30.i.i.i.i.i.i to i32
  %i.ps = add nsw i32 %i.pr, -58
  %isdigit.i.i34.i.i.i.i.i.i = icmp ult i32 %i.ps, -10
  br i1 %isdigit.i.i34.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pt = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  %.val.i.i.i.i.i.i = load i8, ptr %i.pt, align 1, !tbaa !15
  %i.pu = sext i8 %.val.i.i.i.i.i.i to i32
  %i.pv = add nsw i32 %i.pu, -58
  %isdigit.i.i35.i.i.i.i.i.i = icmp ult i32 %i.pv, -10
  br i1 %isdigit.i.i35.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pw = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 4
  %i.px = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.py = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.py, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !147

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bj, %bb.bf
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.ph, %bb.bf ], [ %scevgep.i.i.i.i.i.i, %bb.bj ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.pz = sub i64 %i.ld, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.pz, label %.lr.ph.i41.i.i.i.preheader [
    i64 3, label %bb.bk
    i64 2, label %bb.bm
    i64 1, label %bb.bo
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !15
  %i.qa = sext i8 %.029.val.i.i.i.i.i.i to i32
  %i.qb = add nsw i32 %i.qa, -58
  %isdigit.i.i36.i.i.i.i.i.i = icmp ult i32 %i.qb, -10
  br i1 %isdigit.i.i36.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qc = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.qc, %bb.bl ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !15
  %i.qd = sext i8 %.1.val.i.i.i.i.i.i to i32
  %i.qe = add nsw i32 %i.qd, -58
  %isdigit.i.i37.i.i.i.i.i.i = icmp ult i32 %i.qe, -10
  br i1 %isdigit.i.i37.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.qf, %bb.bn ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !15
  %i.qg = sext i8 %.2.val.i.i.i.i.i.i to i32
  %i.qh = add nsw i32 %i.qg, -58
  %isdigit.i.i38.i.i.i.i.i.i = icmp ult i32 %i.qh, -10
  br i1 %isdigit.i.i38.i.i.i.i.i.i, label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", label %.lr.ph.i41.i.i.i.preheader

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.bg
  %i.qi = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277": ; preds = %bb.bh
  %i.qj = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279": ; preds = %bb.bi
  %i.qk = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i"

"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277", %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279", %bb.bo, %bb.bm, %bb.bk
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.bm ], [ %.029.lcssa.i.i.i.i.i.i, %bb.bk ], [ %.2.i.i.i.i.i.i, %bb.bo ], [ %i.qk, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit279" ], [ %i.qj, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit277" ], [ %i.qi, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ql = icmp eq ptr %i.lc, %.028.i.i.i.i.i.i
  br i1 %i.ql, label %.lr.ph.i41.i.i.i.preheader, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i

.lr.ph.i41.i.i.i.preheader:                       ; preds = %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.bo, %._crit_edge.i.i.i.i.i.i
  br label %.lr.ph.i41.i.i.i

.lr.ph.i41.i.i.i:                                 ; preds = %.lr.ph.i41.i.i.i.preheader, %.critedge.i42.i.i.i
  %.471.i.i.i = phi ptr [ %i.qu, %.critedge.i42.i.i.i ], [ %i.ph, %.lr.ph.i41.i.i.i.preheader ] ; 3 uses
  %.9.i.i.i = phi i32 [ %.10.i.i.i, %.critedge.i42.i.i.i ], [ 0, %.lr.ph.i41.i.i.i.preheader ] ; 4 uses
  %.02238.i.i.i.i = phi i32 [ %i.qp, %.critedge.i42.i.i.i ], [ 32, %.lr.ph.i41.i.i.i.preheader ]
  %i.qm = load i8, ptr %.471.i.i.i, align 1, !tbaa !15
  %i.qn = add i8 %i.qm, -48                       ; 2 uses
  %i.qo = zext i8 %i.qn to i32                    ; 2 uses
  %.not31.i.i.i.i = icmp ult i8 %i.qn, 10
  br i1 %.not31.i.i.i.i, label %bb.bp, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i41.i.i.i
  %i.qp = add i32 %.02238.i.i.i.i, -4             ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, -1
  br i1 %i.qq, label %bb.bq, label %bb.br, !prof !148

bb.bq:                                            ; preds = %bb.bp
  %i.qr = mul i32 %.9.i.i.i, 10
  br label %.critedge.i42.i.i.i

bb.br:                                            ; preds = %bb.bp
  %20 = icmp ugt i32 %.9.i.i.i, 429496729
  br i1 %20, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.split.i.i.i.i, !prof !149

.split.i.i.i.i:                                   ; preds = %bb.br
  %21 = mul nuw i32 %.9.i.i.i, 10                 ; 2 uses
  %i.qs = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %21, i32 %i.qo)
  %i.qt = extractvalue { i32, i1 } %i.qs, 1
  br i1 %i.qt, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %.critedge.i42.i.i.i, !prof !38

.critedge.i42.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.bq
  %.10.i.i.i.a = phi i32 [ %i.qr, %bb.bq ], [ %21, %.split.i.i.i.i ]
  %.10.i.i.i = add i32 %.10.i.i.i.a, %i.qo        ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.471.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qu, %i.lc
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, label %.lr.ph.i41.i.i.i, !llvm.loop !150

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i: ; preds = %.critedge.i42.i.i.i, %.lr.ph.i41.i.i.i
  %.168.i.i.i = phi ptr [ %.471.i.i.i, %.lr.ph.i41.i.i.i ], [ %i.lc, %.critedge.i42.i.i.i ]
  %.0.i.i.i = phi i32 [ %.9.i.i.i, %.lr.ph.i41.i.i.i ], [ %.10.i.i.i, %.critedge.i42.i.i.i ] ; 3 uses
  %.not23.i.i = icmp eq ptr %.168.i.i.i, %i.ph
  %i.qv = select i1 %i.pg, i32 -2147483648, i32 2147483647
  %i.qw = icmp ugt i32 %.0.i.i.i, %i.qv
  %or.cond.i.i = select i1 %.not23.i.i, i1 true, i1 %i.qw, !prof !151
  br i1 %or.cond.i.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i, label %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i, !prof !151

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i: ; preds = %.split.i.i.i.i, %bb.br, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i", %bb.be, %.thread224.i
  %.sroa.2.1.i.ph.i = phi i64 [ 0, %"_ZSt6all_ofIPKcZN7xgboost12_GLOBAL__N_18ParseIntENS2_10StringViewEE3$_0EbT_S6_T0_.exit.i.i" ], [ 0, %.thread224.i ], [ 4294967295, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i ], [ 0, %bb.be ], [ 4294967295, %bb.br ], [ 4294967295, %.split.i.i.i.i ]
  store i64 %.sroa.2.1.i.ph.i, ptr %7, align 8
  invoke fastcc void @"_ZZN7xgboost12_GLOBAL__N_113MakeDeviceOrdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEv"(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(32) %i.hg)
          to label %bb.bt unwind label %bb.bs

_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i.i.i
  %i.qx = sub i32 0, %.0.i.i.i
  %i.qy = select i1 %i.pg, i32 %i.qx, i32 %.0.i.i.i ; 2 uses
  %i.qz = zext i32 %i.qy to i64
  %i.ra = or disjoint i64 %i.qz, 4294967296
  store i64 %i.ra, ptr %7, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.bs:                                            ; preds = %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bt:                                            ; preds = %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.thread.i
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %.pre295.i = load i8, ptr %i.rd, align 4, !tbaa !152, !range !123
  %i.re = trunc nuw i8 %.pre295.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  br i1 %i.re, label %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, label %bb.bu

._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge:     ; preds = %bb.bt
  %.pre196 = load i32, ptr %7, align 8, !tbaa !37, !noalias !154
  br label %_ZNRSt8optionalIiE5valueEv.exit.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc106.i unwind label %bb.bx

.noexc106.i:                                      ; preds = %bb.bu
  unreachable

_ZNRSt8optionalIiE5valueEv.exit.i:                ; preds = %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i
  %i.rf = phi i32 [ %i.qy, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %.pre196, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ]
  %i.rg = phi ptr [ %i.rb, %_ZN7xgboost12_GLOBAL__N_18ParseIntENS_10StringViewE.exit.i ], [ %i.rd, %._ZNRSt8optionalIiE5valueEv.exit.i_crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i16 32767, ptr %i.c, align 2, !tbaa !157
  %.not.i.i = icmp sgt i32 %i.rf, 32767
  br i1 %.not.i.i, label %bb.bv, label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

bb.bv:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit.i
  invoke void @_ZN4dmlc14LogCheckFormatIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i unwind label %bb.by

_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.bv
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not257.i = icmp eq ptr %.pr.i, null
  br i1 %.not257.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.rh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc107.i unwind label %bb.bz

.noexc107.i:                                      ; preds = %bb.bw
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.rh, ptr noundef nonnull @.str.4, i32 noundef 198)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.bz

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc107.i
  %i.ri = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.ca ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef nonnull @.str.40, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.rl = load ptr, ptr %8, align 8, !tbaa !158   ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !18
  %i.rp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef %i.rm, i64 noundef %i.ro)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ca ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rp, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.rr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rp, ptr noundef nonnull @.str.41, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.cc unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.by:                                            ; preds = %bb.bv
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.cf

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i, %.noexc107.i, %bb.bw
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.cb unwind label %bb.cw

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn.i = phi { ptr, i32 } [ %i.ru, %bb.bz ], [ %i.rv, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  br label %bb.cf

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %.pr225.i = load ptr, ptr %8, align 8, !tbaa !158 ; 4 uses
  %.not.i118.i = icmp eq ptr %.pr225.i, null
  br i1 %.not.i118.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rw = load ptr, ptr %.pr225.i, align 8, !tbaa !9 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.pr225.i, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cd
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !15
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr225.i, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.cc, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_LEIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  switch i64 %i.nz, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge [
    i64 4, label %_ZN7xgboosteqENS_10StringViewES0_.exit.i
    i64 8, label %_ZN7xgboosteqENS_10StringViewES0_.exit127.i
  ]

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i._ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i_crit_edge: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %.pre197 = load i8, ptr %i.rg, align 4, !tbaa !152, !range !123
  br label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.i:         ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.sb = load i32, ptr %i.la, align 1
  %i.sc = icmp ne i32 %i.sb, 1818458483
  %i.sd = zext i1 %i.sc to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.sd, 0
  %.pre199 = load i8, ptr %i.rg, align 4, !tbaa !152, !range !123 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i, label %_ZN7xgboosteqENS_10StringViewES0_.exit138.thread235.i

_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i:  ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit.i
  %i.se = trunc nuw i8 %.pre199 to i1
  br i1 %i.se, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %_ZN7xgboosteqENS_10StringViewES0_.exit.thread.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #34
          to label %.noexc120.i unwind label %bb.cg

.noexc120.i:                                      ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cb, %bb.by, %bb.bx
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %i.rt, %bb.by ], [ %i.rs, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.cn

bb.cg:                                            ; preds = %bb.ce
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZN7xgboosteqENS_10StringViewES0_.exit127.i:      ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.sg = load i64, ptr %i.la, align 1
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv:bb.a
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !280
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !281
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !283
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.n = load i32, ptr %0, align 8, !tbaa !235    ; 3 uses
  %i.o = and i32 %i.n, 16
  %.not7 = icmp eq i32 %i.o, 0
  %i.p = and i32 %i.n, 1
  %.not8 = icmp eq i32 %i.p, 0                    ; 2 uses
  %i.q = and i32 %i.n, 8
  %.not9 = icmp eq i32 %i.q, 0                    ; 4 uses
  br i1 %.not7, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  br i1 %.not8, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.m:                                             ; preds = %bb.i
  br i1 %.not9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.p:                                             ; preds = %bb.h
  br i1 %.not8, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.t:                                             ; preds = %bb.p
  br i1 %.not9, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.v:                                             ; preds = %bb.t
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br i1 %i.r, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !235    ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not4 = icmp eq i32 %i.t, 0
  %i.u = and i32 %i.s, 8
  %.not5 = icmp eq i32 %i.u, 0                    ; 2 uses
  br i1 %.not4, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.z:                                             ; preds = %bb.x
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.aa:                                            ; preds = %bb.w
  br i1 %.not5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ad:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.v = load i32, ptr %i.b, align 8, !tbaa !280
  switch i32 %i.v, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit18 [
    i32 4, label %bb.ae
    i32 14, label %bb.ar
    i32 6, label %bb.be
    i32 5, label %bb.bw
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !281
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !282
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !283
  switch i32 %i.ae, label %bb.ak [
    i32 0, label %bb.ah
    i32 2, label %bb.ai
    i32 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !257 ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !9   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %.not12.i = icmp samesign eq i64 %i.ak, 0
  br i1 %.not12.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %7, %bb.ao ] ; 2 uses
  %.sroa.08.013.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.as, %bb.ao ] ; 2 uses
  %4 = add i32 %.014.i, -214748365
  %5 = icmp ult i32 %4, -429496729
  br i1 %5, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %6 = mul nsw i32 %.014.i, 10                    ; 2 uses
  %i.an = load i8, ptr %.sroa.08.013.i, align 1, !tbaa !15
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.ap = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i8 noundef signext %i.an, i32 noundef 10) ; 2 uses
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 %i.ap)
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.60) #34
  unreachable

bb.ao:                                            ; preds = %bb.am
  %7 = add nsw i32 %i.ap, %6                      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.al
  br i1 %.not.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, label %bb.al

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit: ; preds = %bb.ao
  %i.at = sext i32 %7 to i64
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, %bb.ak
  %.0.lcssa.i = phi i64 [ 0, %bb.ak ], [ %i.at, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit ]
  %i.au = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, i64 noundef %.0.lcssa.i) ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !326
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !336
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !296 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !337
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ay, %i.bb
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !338
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !296
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.aq:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.co

bb.ar:                                            ; preds = %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !281
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !282
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !283
  switch i32 %i.bm, label %bb.ax [
    i32 0, label %bb.au
    i32 2, label %bb.av
    i32 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %i.bn = load i32, ptr %0, align 8, !tbaa !235   ; 2 uses
  %i.bo = and i32 %i.bn, 1
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = and i32 %i.bn, 8
  %.not2 = icmp eq i32 %i.bp, 0                   ; 2 uses
  br i1 %.not, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.ba:                                            ; preds = %bb.ay
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bb:                                            ; preds = %bb.ax
  br i1 %.not2, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.bd:                                            ; preds = %bb.bb
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %bb.co

bb.be:                                            ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !281
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !282
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !283
  switch i32 %i.by, label %bb.bk [
    i32 0, label %bb.bh
    i32 2, label %bb.bi
    i32 1, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !257 ; 3 uses
  %i.cb = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ca) ; 2 uses
  store ptr %i.ca, ptr %2, align 8, !tbaa !326
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !334
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ce = load i32, ptr %i.b, align 8, !tbaa !280
  %i.cf = icmp eq i32 %i.ce, 8
  br i1 %i.cf, label %bb.bl, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !281
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !282
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !283
  switch i32 %i.ck, label %bb.br [
    i32 0, label %bb.bo
    i32 2, label %bb.bp
    i32 1, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.br

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit17: ; preds = %bb.bk
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #34
  unreachable

bb.br:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !284, !noalias !421 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !290, !noalias !421 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !295, !noalias !450
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit38

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit38: ; preds = %bb.bf, %bb.bg
  %.sroa.559.0 = phi i64 [ %.sroa.559.0.copyload61, %bb.bg ], [ %.sroa.559.0.copyload, %bb.bf ]
  %.sroa.057.0 = phi ptr [ %.sroa.057.0.copyload58, %bb.bg ], [ %.sroa.057.0.copyload, %bb.bf ]
  %.sroa.662.0 = phi i64 [ %.sroa.662.0.copyload64, %bb.bg ], [ %.sroa.662.0.copyload, %bb.bf ]
  %storemerge.i.i.i37 = phi ptr [ %i.ey, %bb.bg ], [ %i.en, %bb.bf ]
  store ptr %storemerge.i.i.i37, ptr %i.dw, align 8, !tbaa !296, !noalias !450
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !257
  %i.fb = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fa) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !257 ; 3 uses
  %i.fd = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb(ptr noundef nonnull align 8 dereferenceable(88) %i.fc, i64 noundef -1, i64 noundef %.sroa.559.0, i1 noundef zeroext %i.ei) ; 2 uses
  store ptr %i.fc, ptr %3, align 8, !tbaa !326
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !334
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.057.0, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !274
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %i.fh, i64 %.sroa.662.0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.fb, ptr %i.fj, align 8, !tbaa !277
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !274
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %i.fd
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fb, ptr %i.fn, align 8, !tbaa !277
  store i64 %i.fb, ptr %i.ff, align 8, !tbaa !336
  %i.fo = load ptr, ptr %i.dw, align 8, !tbaa !296 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !337
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -24
  %.not.i.i39 = icmp eq ptr %i.fo, %i.fr
  br i1 %.not.i.i39, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !338
  %i.fs = load ptr, ptr %i.dw, align 8, !tbaa !296
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store ptr %i.ft, ptr %i.dw, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40

bb.bi:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit38
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41

bb.bj:                                            ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.gb = icmp eq ptr %i.fy, %i.ga
  br i1 %i.gb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !283
  switch i32 %i.gd, label %bb.bp [
    i32 0, label %bb.bm
    i32 2, label %bb.bn
    i32 1, label %bb.bo
  ]

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !284
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !284
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 10) #34
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !280
  %i.gl = icmp eq i32 %i.gk, 26
  br i1 %i.gl, label %bb.bs, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit42

bb.bs:                                            ; preds = %bb.br
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.gm = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.gn = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !283
  switch i32 %i.gq, label %bb.by [
    i32 0, label %bb.bv
    i32 2, label %bb.bw
    i32 1, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.by

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit42: ; preds = %bb.br
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #34
  unreachable

bb.by:                                            ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.gr = load ptr, ptr %i.gf, align 8, !tbaa !284, !noalias !451 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !290, !noalias !451 ; 2 uses
  %i.gu = icmp eq ptr %i.gr, %i.gt
  br i1 %i.gu, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false), !tbaa.struct !338
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44

bb.ca:                                            ; preds = %bb.by
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !291, !noalias !451
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !292, !noalias !456
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false), !tbaa.struct !338
  tail call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef 504) #33, !noalias !456
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !294, !noalias !456
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -8 ; 2 uses
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !291, !noalias !456
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !292, !noalias !456 ; 3 uses
  store ptr %i.hd, ptr %i.gs, align 8, !tbaa !290, !noalias !456
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 504
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !295, !noalias !456
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44: ; preds = %bb.bz, %bb.ca
  %storemerge.i.i.i43 = phi ptr [ %i.gv, %bb.bz ], [ %i.hg, %bb.ca ]
  store ptr %storemerge.i.i.i43, ptr %i.gf, align 8, !tbaa !296, !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !257 ; 6 uses
  %i.hj = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hi) ; 4 uses
  store ptr %i.hi, ptr %5, align 8, !tbaa !326
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !334
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 %i.hj, ptr %i.hl, align 8, !tbaa !336
  %i.hm = load ptr, ptr %i.fw, align 8, !tbaa !9  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !18 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ho
  %.not12.i = icmp samesign eq i64 %i.ho, 0
  br i1 %.not12.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ce, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %13, %bb.ce ] ; 2 uses
  %.sroa.08.013.i = phi ptr [ %i.hm, %.lr.ph.i ], [ %i.hw, %bb.ce ] ; 2 uses
  %10 = add i32 %.014.i, -214748365
  %11 = icmp ult i32 %10, -429496729
  br i1 %11, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %12 = mul nsw i32 %.014.i, 10                   ; 2 uses
  %i.hr = load i8, ptr %.sroa.08.013.i, align 1, !tbaa !15
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.ht = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, i8 noundef signext %i.hr, i32 noundef 10) ; 2 uses
  %i.hu = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %i.ht)
  %i.hv = extractvalue { i32, i1 } %i.hu, 1
  br i1 %i.hv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.60) #34
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %13 = add nsw i32 %i.ht, %12                    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.hw, %i.hp
  br i1 %.not.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %bb.cb

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %bb.ce, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44
  %.0.lcssa.i = phi i32 [ 0, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit44 ], [ %13, %bb.ce ] ; 2 uses
  %i.hx = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.hy = load i32, ptr %i.e, align 8, !tbaa !280 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 25
  br i1 %i.hz, label %bb.cf, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45

bb.cf:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.ia = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.ib = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45.thread, label %bb.cg

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45.thread: ; preds = %bb.cf
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit47

bb.cg:                                            ; preds = %bb.cf
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !283
  switch i32 %i.ie, label %bb.ck [
    i32 0, label %bb.ch
    i32 2, label %bb.ci
    i32 1, label %bb.cj
  ]

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cg
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cg, %bb.ch, %bb.ci, %bb.cj
  %.pr = load i32, ptr %i.e, align 8, !tbaa !280  ; 2 uses
  %i.if = icmp eq i32 %.pr, 26
  br i1 %i.if, label %bb.cl, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45

bb.cl:                                            ; preds = %bb.ck
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.ig = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.ih = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !283
  switch i32 %i.ik, label %bb.cr [
    i32 0, label %bb.co
    i32 2, label %bb.cp
    i32 1, label %bb.cq
  ]

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cn
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq
  %i.il = tail call noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef 10)
  %i.im = sext i32 %i.il to i64
  %i.in = sub nsw i64 %i.im, %i.hx
  %.pre = load i32, ptr %i.e, align 8, !tbaa !280
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45: ; preds = %bb.ck, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, %bb.cr
  %i.io = phi i32 [ %.pre, %bb.cr ], [ %i.hy, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ %.pr, %bb.ck ]
  %.023 = phi i1 [ false, %bb.cr ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ true, %bb.ck ]
  %.022 = phi i64 [ %i.in, %bb.cr ], [ 0, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ 0, %bb.ck ] ; 3 uses
  %i.ip = icmp eq i32 %i.io, 13
  br i1 %i.ip, label %bb.cs, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit47

bb.cs:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.iq = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.ir = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !283
  switch i32 %i.iu, label %bb.cy [
    i32 0, label %bb.cv
    i32 2, label %bb.cw
    i32 1, label %bb.cx
  ]

bb.cv:                                            ; preds = %bb.cu
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cy

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit47: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45.thread, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit45
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #34
  unreachable

bb.cy:                                            ; preds = %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx
  br i1 %.not, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iv = load i32, ptr %i.e, align 8, !tbaa !280
  %i.iw = icmp eq i32 %i.iv, 18
  br i1 %i.iw, label %bb.da, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48

bb.da:                                            ; preds = %bb.cz
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
  %i.ix = load ptr, ptr %i.fx, align 8, !tbaa !281
  %i.iy = load ptr, ptr %i.fz, align 8, !tbaa !282
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 27, ptr %i.e, align 8, !tbaa !280
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48

bb.dc:                                            ; preds = %bb.da
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !283
  switch i32 %i.jb, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48 [
    i32 0, label %bb.dd
    i32 2, label %bb.de
    i32 1, label %bb.df
  ]

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48

bb.de:                                            ; preds = %bb.dc
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48

bb.df:                                            ; preds = %bb.dc
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48: ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.cz, %bb.cy
  %i.jc = phi i1 [ false, %bb.cy ], [ false, %bb.cz ], [ true, %bb.db ], [ true, %bb.dc ], [ true, %bb.dd ], [ true, %bb.de ], [ true, %bb.df ] ; 2 uses
  %i.jd = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.jd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  br label %bb.dg

._crit_edge:                                      ; preds = %bb.dg, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48
  %i.jh = phi i64 [ %i.hj, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit48 ], [ %i.jn, %bb.dg ] ; 3 uses
  br i1 %.023, label %bb.dh, label %bb.di

bb.dg:                                            ; preds = %.lr.ph, %bb.dg
  %i.ji = phi i64 [ %i.hj, %.lr.ph ], [ %i.jn, %bb.dg ]
  %.02186 = phi i64 [ 0, %.lr.ph ], [ %i.jo, %bb.dg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.jj = load i64, ptr %i.je, align 8, !tbaa !334
  %i.jk = load ptr, ptr %i.jg, align 8, !tbaa !274
  %i.jl = getelementptr inbounds nuw [48 x i8], ptr %i.jk, i64 %i.ji
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.jj, ptr %i.jm, align 8, !tbaa !277
  %i.jn = load i64, ptr %i.jf, align 8, !tbaa !336 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.jo = add nuw nsw i64 %.02186, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.jo, %i.hx
  br i1 %exitcond.not, label %._crit_edge, label %bb.dg, !llvm.loop !457
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb0EEEvv:bb.a
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE26_M_insert_any_matcher_ecmaILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.d to i64
  store i64 %i.h, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.f, align 8, !tbaa !317
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !320
  %i.i = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !334
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !336
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !296  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !337
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !338
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !280
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9 [
    i32 2, label %bb.b
    i32 3, label %bb.m
    i32 1, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %.not12.i = icmp samesign eq i64 %i.o, 0
  br i1 %.not12.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %.014.i = phi i32 [ 0, %.lr.ph.i ], [ %1, %bb.l ] ; 2 uses
  %.sroa.08.013.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.z, %bb.l ] ; 2 uses
  %i.r = add i32 %.014.i, -268435456
  %i.s = icmp ult i32 %i.r, -536870912
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = shl nsw i32 %.014.i, 3                   ; 2 uses
  %i.u = load i8, ptr %.sroa.08.013.i, align 1, !tbaa !15
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.w = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext %i.u, i32 noundef 8) ; 2 uses
  %i.x = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 %i.w)
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.60) #34
  unreachable

bb.l:                                             ; preds = %bb.j
  %1 = add nsw i32 %i.w, %i.t                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, label %bb.i

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit: ; preds = %bb.l
  %.pre12 = load i64, ptr %i.n, align 8, !tbaa !18
  %i.aa = trunc i32 %1 to i8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit, %bb.h
  %i.ab = phi i64 [ 0, %bb.h ], [ %.pre12, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit ]
  %.0.lcssa.i = phi i8 [ 0, %bb.h ], [ %i.aa, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit.loopexit ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.ab, i64 noundef 1, i8 noundef signext %.0.lcssa.i) ; 0 uses
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.m:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !281
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !282
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !283
  switch i32 %i.al, label %bb.s [
    i32 0, label %bb.p
    i32 2, label %bb.q
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %.not12.i2 = icmp samesign eq i64 %i.ao, 0
  br i1 %.not12.i2, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i3
  %.014.i4 = phi i32 [ 0, %.lr.ph.i3 ], [ %2, %bb.w ] ; 2 uses
  %.sroa.08.013.i5 = phi ptr [ %i.am, %.lr.ph.i3 ], [ %i.az, %bb.w ] ; 2 uses
  %i.ar = add i32 %.014.i4, -134217728
  %i.as = icmp ult i32 %i.ar, -268435456
  br i1 %i.as, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = shl nsw i32 %.014.i4, 4                 ; 2 uses
  %i.au = load i8, ptr %.sroa.08.013.i5, align 1, !tbaa !15
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.aw = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %i.au, i32 noundef 16) ; 2 uses
  %i.ax = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.at, i32 %i.aw)
  %i.ay = extractvalue { i32, i1 } %i.ax, 1
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.60) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %2 = add nsw i32 %i.aw, %i.at                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i5, i64 1 ; 2 uses
  %.not.i6 = icmp eq ptr %i.az, %i.ap
  br i1 %.not.i6, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8.loopexit, label %bb.t

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8.loopexit: ; preds = %bb.w
  %.pre = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ba = trunc i32 %2 to i8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8.loopexit, %bb.s
  %i.bb = phi i64 [ 0, %bb.s ], [ %.pre, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8.loopexit ]
  %.0.lcssa.i7 = phi i8 [ 0, %bb.s ], [ %i.ba, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8.loopexit ]
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef %i.bb, i64 noundef 1, i8 noundef signext %.0.lcssa.i7) ; 0 uses
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.x:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !282
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 27, ptr %i.b, align 8, !tbaa !280
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.z:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !283
  switch i32 %i.bl, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9 [
    i32 0, label %bb.aa
    i32 2, label %bb.ab
    i32 1, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

bb.ac:                                            ; preds = %bb.z
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit9: ; preds = %bb.a, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  %.0 = phi i1 [ true, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ true, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit8 ], [ false, %bb.a ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ac ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0.insert.ext = zext i8 %i.e to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  store i16 %.sroa.4.0.insert.shift, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.g, align 8, !tbaa !317
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.f, align 8, !tbaa !320
  %i.h = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !334
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %i.j, align 8, !tbaa !336
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !296  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !337
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24
  %.not.i.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !338
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !296
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.k, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !320  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !320  ; 2 uses
  %.not.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.j, align 8
  store ptr %i.g, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.i, align 8, !tbaa !317
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.h, align 8, !tbaa !320
  %i.k = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !326
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !334
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.m, align 8, !tbaa !336
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !296  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !337
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -24
  %.not.i.i.i = icmp eq ptr %i.o, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !338
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !296
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.n, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !320  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !376
  %i.c = and i32 %i.b, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 11, ptr noundef nonnull @.str.57) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !309
  %.not8 = icmp ult i64 %1, %i.e
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.58) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !340    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !340  ; 2 uses
  %.not1516 = icmp eq ptr %i.f, %i.h
  br i1 %.not1516, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.h
  br i1 %.not15, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.j, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 3, ptr %2, align 8, !tbaa !298
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.l, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !313
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !315  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !316
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.r = load i32, ptr %3, align 8, !tbaa !298
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !317
  store ptr %i.w, ptr %i.u, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !320  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !315
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !315
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !315
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !274
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 48                ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 100000
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.56) #34
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.ak = load i64, ptr %.sroa.012.017, align 8, !tbaa !17
  %i.al = icmp eq i64 %1, %i.ak
  br i1 %i.al, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.59) #34
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.am = load i32, ptr %3, align 8, !tbaa !298
  %i.an = icmp eq i32 %i.am, 11
  br i1 %i.an, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !320 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #35
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.au = load i32, ptr %2, align 8, !tbaa !298
  %i.av = icmp eq i32 %i.au, 11
  br i1 %i.av, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !320 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %i.bb = add nsw i64 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i64 %i.bb

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #16
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not12 = icmp samesign eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %3, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.014 = phi i32 [ 0, %.lr.ph ], [ %3, %bb.e ]   ; 2 uses
  %.sroa.08.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014, i32 %1)
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = mul nsw i32 %.014, %1                      ; 2 uses
  %i.i = load i8, ptr %.sroa.08.013, align 1, !tbaa !15
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !420, !nonnull !124, !align !360
  %i.k = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext %i.i, i32 noundef %1) ; 2 uses
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.k)
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.60) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %3 = add nsw i32 %i.k, %2                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !480, !nonnull !124, !align !360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !363
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !157
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !420, !nonnull !124, !align !360 ; 2 uses
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.p, align 8, !tbaa !258
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.o, ptr %i.q, align 16, !tbaa !481
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.w = and i32 %i.v, 131071
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.62) #34
          to label %.noexc6 unwind label %bb.p

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.v, 16
  %i.z = load i16, ptr %i.y, align 16, !tbaa !504
  %i.aa = trunc i32 %i.v to i16
  %i.ab = or i16 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !505
  %i.ae = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.af = or i8 %i.ad, %i.ae
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.af to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ab to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ag = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ag, ptr %i.y, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !257 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %bb.f unwind label %bb.e       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load <2 x ptr>, ptr %1, align 16, !tbaa !200
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !200
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !506
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !506
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !158
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !507
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 16, !tbaa !508
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !508
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !509
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !510
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !510
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !511
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8, !tbaa !512
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.an, align 8, !tbaa !317
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !320
  %i.bm = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noundef nonnull align 8 %3)
          to label %bb.g unwind label %bb.q       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.aj, ptr %2, align 8, !tbaa !326
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !334
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !336
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !296 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !337
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bq, %i.bt
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !338
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !296
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.q

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.h, %bb.i
  %i.bw = load ptr, ptr %i.ak, align 8, !tbaa !320 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !514 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !511
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #33
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i: ; preds = %bb.l, %_ZNSt14_Function_baseD2Ev.exit
  %i.cf = load ptr, ptr %i.ba, align 16, !tbaa !515 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cg = load ptr, ptr %i.bd, align 16, !tbaa !509
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #33
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i:      ; preds = %bb.m, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
end_hunk_4
begin_hunk_5_@_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE6formatISt20back_insert_iteratorIS9_EEET_SI_S4_S4_NSt15regex_constants15match_flag_typeE:bb.a
  %.056.i.i.i.i.i202 = phi ptr [ %i.ny, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205 ], [ %.1, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread ] ; 2 uses
  %i.nl = load i8, ptr %.056.i.i.i.i.i202, align 1, !tbaa !15
  %i.nm = load i64, ptr %i.m, align 8, !tbaa !18  ; 4 uses
  %i.nn = add i64 %i.nm, 1                        ; 3 uses
  %i.no = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.n
  br i1 %i.np, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i.i.i200
  %i.nq = icmp ult i64 %i.nm, 16
  call void @llvm.assume(i1 %i.nq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203: ; preds = %.lr.ph.i.i.i.i.i200
  %i.nr = load i64, ptr %i.n, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207
  %i.ns = phi i64 [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i203 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i207 ]
  %i.nt = icmp ugt i64 %i.nn, %i.ns
  br i1 %i.nt, label %bb.br, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.nm, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc208 unwind label %bb.bs

.noexc208:                                        ; preds = %bb.br
  %.pre.i.i.i.i.i.i.i206 = load ptr, ptr %1, align 8, !tbaa !9
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205: ; preds = %.noexc208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204
  %i.nu = phi ptr [ %.pre.i.i.i.i.i.i.i206, %.noexc208 ], [ %i.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i204 ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nm
  store i8 %i.nl, ptr %i.nv, align 1, !tbaa !15
  store i64 %i.nn, ptr %i.m, align 8, !tbaa !18
  %i.nw = load ptr, ptr %1, align 8, !tbaa !9
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.nn
  store i8 0, ptr %i.nx, align 1, !tbaa !15
  %i.ny = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i202, i64 1
  %i.nz = add nsw i64 %.07.i.i.i.i.i201, -1
  %i.oa = icmp sgt i64 %.07.i.i.i.i.i201, 1
  br i1 %i.oa, label %.lr.ph.i.i.i.i.i200, label %_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209, !llvm.loop !917

bb.bs:                                            ; preds = %bb.br
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp272

_ZSt4copyIPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_T_SB_SA_.exit209: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i.i.i.i.i205, %.preheader280, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread, %._crit_edge, %bb.x
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %1

.loopexit.split-lp272:                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit271, %.loopexit.split-lp272.loopexit.split-lp, %.loopexit.split-lp272.loopexit, %bb.bs, %bb.y, %bb.u, %bb.n, %bb.an, %bb.as, %bb.at, %bb.az, %bb.bd, %bb.bq, %bb.am, %bb.j
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.ea, %bb.y ], [ %i.ob, %bb.bs ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp272.loopexit.split-lp ], [ %i.bs, %bb.n ], [ %i.dk, %bb.u ], [ %i.nh, %bb.bq ], [ %i.gm, %bb.am ], [ %i.gn, %bb.an ], [ %i.hb, %bb.at ], [ %i.ha, %bb.as ], [ %i.jn, %bb.az ], [ %i.ku, %bb.bd ], [ %lpad.loopexit273, %.loopexit271 ], [ %lpad.loopexit276, %.loopexit.split-lp272.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn69.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt7__cxx1114regex_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEcNS_12regex_traitsIcEEEppEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !840  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !840  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre2.i = ptrtoint ptr %i.b to i64
  %.pre4.i = sub i64 %.pre.i, %.pre2.i            ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i: ; preds = %bb.a
  %.not = icmp eq i64 %.pre4.i, 72
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !841, !range !123, !noundef !124
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %.not, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit: ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 %.pre4.i ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !841, !range !123, !noundef !124
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i
  br i1 %i.h, label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20, label %bb.j

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -64
  %i.n = getelementptr i8, ptr %i.i, i64 -72
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread
  %.in.in = getelementptr i8, ptr %i.b, i64 8
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55
  %.in.in67 = getelementptr i8, ptr %i.b, i64 8
  br label %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40

_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40: ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20
  %.in69.in = phi ptr [ %.in.in, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20 ], [ %.in.in67, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge ], [ %i.m, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53 ]
  %i.o = phi ptr [ %i.b, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20 ], [ %i.b, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.i20._ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEE4sizeEv.exit.thread.i39_crit_edge ], [ %i.n, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit34.thread53 ]
  %.in69 = load i64, ptr %.in69.in, align 8
  %i.p = inttoptr i64 %.in69 to ptr               ; 9 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !200  ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.v, align 8, !tbaa !914
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !914
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !919
  %i.z = or i32 %i.y, 96
  %i.aa = tail call noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %i.p, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.z, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !853
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -48
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !200
  %i.ai = getelementptr i8, ptr %i.ag, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !200
  %i.ak = icmp ne ptr %i.aj, %i.p
  %i.al = getelementptr i8, ptr %i.ag, i64 -32
  %i.am = zext i1 %i.ak to i8
  store i8 %i.am, ptr %i.al, align 8, !tbaa !841
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i64, ptr %0, align 8, !tbaa !200
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !200
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.f ], [ %i.p, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit40 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !818
  %i.as = or i32 %i.ar, 128                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !818
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !200
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !914
  %i.aw = tail call noundef zeroext i1 @_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb(ptr %.sroa.0.0, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i32 noundef %i.as, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !853
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !139 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr i8, ptr %i.ay, i64 %i.bb  ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -48
  store ptr %i.p, ptr %i.bd, align 8, !tbaa !200
  %i.be = getelementptr i8, ptr %i.bc, i64 -40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !200
  %i.bg = icmp ne ptr %i.bf, %i.p
  %i.bh = getelementptr i8, ptr %i.bc, i64 -32
  %i.bi = zext i1 %i.bg to i8
  store i8 %i.bi, ptr %i.bh, align 8, !tbaa !841
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %0, align 8, !tbaa !200
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !200
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.au, align 8, !tbaa !914
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread55, %bb.c, %bb.e, %bb.i, %bb.h, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit.thread, %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIisEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.212, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !37
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.213, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i16, ptr %2, align 2, !tbaa !157
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i16 noundef signext %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16, !alias.scope !928
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !18, !alias.scope !928
  store i8 0, ptr %i.i, align 8, !tbaa !15, !alias.scope !928
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113, !noalias !928 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !928 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115, !noalias !928 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !9, !alias.scope !928 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !15, !alias.scope !928
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #33
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !158
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !34
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #33
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #23 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.214
}

; Function Attrs: nounwind
declare void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost4JsonD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw sub ptr %i.h, i32 1 release, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN7xgboost4JsonD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #16, !inline_history !929
  br label %_ZN7xgboost4JsonD2Ev.exit.i.i.i

_ZN7xgboost4JsonD2Ev.exit.i.i.i:                  ; preds = %bb.c, %bb.b, %.lr.ph
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7xgboost4JsonD2Ev.exit.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
end_hunk_5
