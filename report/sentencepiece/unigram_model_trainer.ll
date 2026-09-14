Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model_trainer?download=true
inline.NumInlined: 5768
inline.NumDeleted: 2088
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIlEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEv:bb.a
  switch i64 %i.age, label %bb.hl [
    i64 1, label %bb.hk
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i
  ]

bb.hk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agj = load i8, ptr %i.agd, align 1, !tbaa !86
  store i8 %i.agj, ptr %i.agi, align 1, !tbaa !86
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i

bb.hl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agi, ptr align 1 %i.agd, i64 %i.age, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i: ; preds = %bb.hl, %bb.hk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agk = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !380 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.5572.0, i64 8
  store i64 %i.agk, ptr %i.agl, align 8, !tbaa !91
  %i.agm = load ptr, ptr %.sroa.5572.0, align 8, !tbaa !85
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agk
  store i8 0, ptr %i.agn, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !380
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.5572.0, i64 32
  store i64 0, ptr %i.ago, align 8, !tbaa !151
  br label %.noexc347

.noexc347:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i437, %bb.gx, %.noexc441.thread
  %.sroa.5572.1 = phi ptr [ %.sroa.5572.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i ], [ %i.aga, %.noexc441.thread ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i434, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i437 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i434, %bb.gx ]
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.5572.1, i64 32 ; 2 uses
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !107
  %i.agr = icmp sgt i64 %i.aap, %i.agq
  br i1 %i.agr, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %.noexc347
  store i64 %i.aap, ptr %i.agp, align 8, !tbaa !107
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %.noexc347
  %i.ags = load i64, ptr %i.vh, align 8
  %i.agt = lshr i64 %i.ags, 17
  %i.agu = load i64, ptr %34, align 8, !tbaa !180
  %i.agv = shl i64 %i.agu, 3
  %i.agw = icmp ugt i64 %i.agt, %i.agv
  br i1 %i.agw, label %bb.ho, label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit

bb.ho:                                            ; preds = %bb.hn
  invoke fastcc void @_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue2GcEv(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit unwind label %bb.hr

_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit: ; preds = %bb.hn, %bb.ho
  %i.agx = load ptr, ptr %39, align 8, !tbaa !85  ; 2 uses
  %i.agy = icmp eq ptr %i.agx, %i.vt
  br i1 %i.agy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit
  %i.agz = load i64, ptr %i.vt, align 8, !tbaa !86
  %i.aha = add i64 %i.agz, 1
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.aha) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %.pre958 = load ptr, ptr %38, align 8, !tbaa !160
  br label %bb.hp

bb.hp:                                            ; preds = %bb.gk, %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.ahb = phi ptr [ %i.zs, %bb.gk ], [ %.pre959, %bb.gm ], [ %.pre958, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ] ; 3 uses
  %.not.i.i.i352 = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i.i352, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit354, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ahc = load ptr, ptr %i.vy, align 8, !tbaa !161
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %i.ahb to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef %i.ahf) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit354

_ZNSt6vectorIDiSaIDiEED2Ev.exit354:               ; preds = %bb.hp, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0508.0837, i64 16 ; 2 uses
  %.not593 = icmp eq ptr %i.ahg, %i.zf
  br i1 %.not593, label %._crit_edge839.loopexit, label %.lr.ph838

.loopexit:                                        ; preds = %.noexc.i.i.i344
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

.loopexit.split-lp:                               ; preds = %bb.gq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

bb.hr:                                            ; preds = %bb.hg, %.split832.us, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i435, %bb.ho
  %i.ahh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahi = load ptr, ptr %39, align 8, !tbaa !85  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.vt
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %bb.hr
  %i.ahk = load i64, ptr %i.vt, align 8, !tbaa !86
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %bb.hr, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  %.pn179 = phi { ptr, i32 } [ %i.ahh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ahh, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %bb.hs

bb.hs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %bb.go
  %.pn179.pn = phi { ptr, i32 } [ %.pn179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ], [ %i.zz, %bb.go ] ; 2 uses
  %i.ahm = load ptr, ptr %38, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i358 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit360, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ahn = load ptr, ptr %i.vy, align 8, !tbaa !161
  %i.aho = ptrtoint ptr %i.ahn to i64
  %i.ahp = ptrtoint ptr %i.ahm to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  call void @_ZdlPvm(ptr noundef nonnull %i.ahm, i64 noundef %i.ahq) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit360

_ZNSt6vectorIDiSaIDiEED2Ev.exit360:               ; preds = %bb.ht, %bb.hs, %bb.gn
  %.pn179.pn.pn = phi { ptr, i32 } [ %i.zy, %bb.gn ], [ %.pn179.pn, %bb.hs ], [ %.pn179.pn, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ahr = load ptr, ptr %37, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit362, label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit360
  %i.ahs = load ptr, ptr %i.vo, align 8, !tbaa !190
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef %i.ahv) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit362

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit362: ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit360, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.hv

bb.hv:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit362, %bb.gj
  %.pn179.pn.pn.pn = phi { ptr, i32 } [ %.pn179.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit362 ], [ %i.zq, %bb.gj ] ; 2 uses
  %i.ahw = load ptr, ptr %36, align 8, !tbaa !85  ; 2 uses
  %i.ahx = icmp eq ptr %i.ahw, %i.vz
  br i1 %i.ahx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.hv
  %i.ahy = load i64, ptr %i.vz, align 8, !tbaa !86
  %i.ahz = add i64 %i.ahy, 1
  call void @_ZdlPvm(ptr noundef %i.ahw, i64 noundef %i.ahz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

bb.hw:                                            ; preds = %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340
  %i.aia = phi ptr [ %i.yn, %bb.gc ], [ %.pre961, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ] ; 3 uses
  %.not.i.i.i366 = icmp eq ptr %i.aia, null
  br i1 %.not.i.i.i366, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit368, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aib = load ptr, ptr %i.vk, align 8, !tbaa !161
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = ptrtoint ptr %i.aia to i64
  %i.aie = sub i64 %i.aic, %i.aid
  call void @_ZdlPvm(ptr noundef nonnull %i.aia, i64 noundef %i.aie) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit368

_ZNSt6vectorIDiSaIDiEED2Ev.exit368:               ; preds = %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  %i.aif = icmp ult ptr %i.yp, %i.wo
  br i1 %i.aif, label %bb.fm, label %.loopexit599.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.gi
  %.pn179.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zp, %bb.gi ], [ %.pn179.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %.pn179.pn.pn.pn, %bb.hv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.aig = load ptr, ptr %35, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i369 = icmp eq ptr %i.aig, null
  br i1 %.not.i.i.i369, label %.body, label %bb.hy

bb.hy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %i.aih = load ptr, ptr %i.vk, align 8, !tbaa !161
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = ptrtoint ptr %i.aig to i64
  %i.aik = sub i64 %i.aii, %i.aij
  call void @_ZdlPvm(ptr noundef nonnull %i.aig, i64 noundef %i.aik) #28
  br label %.body

.body:                                            ; preds = %.thread1125, %bb.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %bb.gb, %bb.ga
  %.pn179.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp603, %bb.ga ], [ %.pn179.pn.pn.pn.pn, %bb.hy ], [ %lpad.loopexit.split-lp603, %bb.gb ], [ %.pn179.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ %lpad.loopexit602, %.thread1125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.ir

.loopexit599.loopexit:                            ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit368
  %.pre962 = load i64, ptr %i.m, align 8, !tbaa !107
  br label %.loopexit599

.loopexit599:                                     ; preds = %.loopexit599.loopexit, %bb.fk, %bb.fl
  %i.ail = phi i64 [ %i.wc, %bb.fl ], [ %.pre962, %.loopexit599.loopexit ], [ %i.wc, %bb.fk ] ; 2 uses
  %i.aim = add nuw nsw i64 %.0137843, 1           ; 2 uses
  %i.ain = icmp slt i64 %i.aim, %i.ail
  br i1 %i.ain, label %bb.fk, label %._crit_edge846, !llvm.loop !367

bb.hz:                                            ; preds = %._crit_edge846
  %i.aio = load ptr, ptr %40, align 8, !tbaa !136 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !136 ; 2 uses
  %.not591847 = icmp eq ptr %i.aio, %i.aiq
  br i1 %.not591847, label %._crit_edge851, label %.lr.ph850

.lr.ph850:                                        ; preds = %bb.hz
  %i.air = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ig

._crit_edge851:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit, %bb.hz
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vh)
          to label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit unwind label %bb.ia

bb.ia:                                            ; preds = %._crit_edge851
  %i.ait = landingpad { ptr, i32 }
          catch ptr null
  %i.aiu = extractvalue { ptr, i32 } %i.ait, 0
  call void @__clang_call_terminate(ptr %i.aiu) #29
  unreachable

_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit: ; preds = %._crit_edge851
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  %i.aiv = load ptr, ptr %29, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i372 = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i.i372, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit
  %i.aiw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !193
  %i.aiy = ptrtoint ptr %i.aix to i64
  %i.aiz = ptrtoint ptr %i.aiv to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  call void @_ZdlPvm(ptr noundef nonnull %i.aiv, i64 noundef %i.aja) #28
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.ajb = load ptr, ptr %27, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i373 = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i.i373, label %_ZNSt6vectorIlSaIlEED2Ev.exit374, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ajc = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !193
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajb to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  call void @_ZdlPvm(ptr noundef nonnull %i.ajb, i64 noundef %i.ajg) #28
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit374

_ZNSt6vectorIlSaIlEED2Ev.exit374:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.ajh = load ptr, ptr %25, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i375 = icmp eq ptr %i.ajh, null
  br i1 %.not.i.i.i375, label %_ZNSt6vectorIlSaIlEED2Ev.exit376, label %bb.id

bb.id:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit374
  %i.aji = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !193
  %i.ajk = ptrtoint ptr %i.ajj to i64
  %i.ajl = ptrtoint ptr %i.ajh to i64
  %i.ajm = sub i64 %i.ajk, %i.ajl
  call void @_ZdlPvm(ptr noundef nonnull %i.ajh, i64 noundef %i.ajm) #28
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit376

_ZNSt6vectorIlSaIlEED2Ev.exit376:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit374, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %i.ajn = load ptr, ptr %23, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i377 = icmp eq ptr %i.ajn, null
  br i1 %.not.i.i.i377, label %_ZNSt6vectorIlSaIlEED2Ev.exit378, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit376
  %i.ajo = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !193
  %i.ajq = ptrtoint ptr %i.ajp to i64
  %i.ajr = ptrtoint ptr %i.ajn to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr
  call void @_ZdlPvm(ptr noundef nonnull %i.ajn, i64 noundef %i.ajs) #28
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit378

_ZNSt6vectorIlSaIlEED2Ev.exit378:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit376, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %.pre966 = load ptr, ptr %9, align 16, !tbaa !89
  br label %bb.iy

bb.if:                                            ; preds = %._crit_edge846
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.ig:                                            ; preds = %.lr.ph850, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit
  %.sroa.0502.0848 = phi ptr [ %i.aio, %.lr.ph850 ], [ %i.aks, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit ] ; 9 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.0502.0848, i64 32 ; 2 uses
  %i.ajv = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE4findIS9_EENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0502.0848)
          to label %bb.ih unwind label %bb.ik

bb.ih:                                            ; preds = %bb.ig
  %i.ajw = extractvalue { ptr, ptr } %i.ajv, 0
  %.not592 = icmp eq ptr %i.ajw, null
  br i1 %.not592, label %.critedge, label %bb.ii, !prof !130

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull @.str, i32 noundef 347, ptr noundef nonnull @.str.39) #33
          to label %bb.ij unwind label %bb.il

bb.ij:                                            ; preds = %bb.ii
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit381 unwind label %bb.im

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit381: ; preds = %bb.ij
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #29
  unreachable

bb.ik:                                            ; preds = %bb.ip, %bb.ig
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.il:                                            ; preds = %bb.ii
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br label %bb.iq

bb.im:                                            ; preds = %bb.ij
  %i.ajz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #29
  unreachable

.critedge:                                        ; preds = %bb.ih
  %i.aka = load ptr, ptr %i.air, align 8, !tbaa !81 ; 8 uses
  %i.akb = load ptr, ptr %i.ais, align 16, !tbaa !88
  %.not.i382 = icmp eq ptr %i.aka, %i.akb
  br i1 %.not.i382, label %bb.ip, label %bb.in

bb.in:                                            ; preds = %.critedge
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aka, i64 16 ; 3 uses
  store ptr %i.akc, ptr %i.aka, align 8, !tbaa !129
  %i.akd = load ptr, ptr %.sroa.0502.0848, align 8, !tbaa !85 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.0502.0848, i64 16 ; 5 uses
  %i.akf = icmp eq ptr %i.akd, %i.ake
  br i1 %i.akf, label %bb.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.io:                                            ; preds = %bb.in
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0502.0848, i64 8
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !91 ; 2 uses
  %i.aki = icmp ult i64 %i.akh, 16
  call void @llvm.assume(i1 %i.aki)
  %i.akj = add nuw nsw i64 %i.akh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akc, ptr noundef nonnull align 8 dereferenceable(1) %i.ake, i64 %i.akj, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.in
  store ptr %i.akd, ptr %i.aka, align 8, !tbaa !85
  %i.akk = load i64, ptr %i.ake, align 8, !tbaa !86
  store i64 %i.akk, ptr %i.akc, align 8, !tbaa !86
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.io
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0502.0848, i64 8 ; 2 uses
  %i.akm = load i64, ptr %i.akl, align 8, !tbaa !91
  %i.akn = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  store i64 %i.akm, ptr %i.akn, align 8, !tbaa !91
  store ptr %i.ake, ptr %.sroa.0502.0848, align 8, !tbaa !85
  store i64 0, ptr %i.akl, align 8, !tbaa !91
  store i8 0, ptr %i.ake, align 8, !tbaa !86
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aka, i64 32
  %i.akp = load i64, ptr %i.aju, align 8, !tbaa !107
  %i.akq = sitofp i64 %i.akp to float
  store float %i.akq, ptr %i.ako, align 8, !tbaa !93
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aka, i64 40
  store ptr %i.akr, ptr %i.air, align 8, !tbaa !81
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit

bb.ip:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE17_M_realloc_insertIJS6_RlEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.aka, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0502.0848, ptr noundef nonnull align 8 dereferenceable(8) %i.aju)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit unwind label %bb.ik

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit: ; preds = %bb.ip, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0502.0848, i64 40 ; 2 uses
  %.not591 = icmp eq ptr %i.aks, %i.aiq
  br i1 %.not591, label %._crit_edge851, label %bb.ig

bb.iq:                                            ; preds = %bb.il, %bb.ik
  %.pn174 = phi { ptr, i32 } [ %i.ajx, %bb.ik ], [ %i.ajy, %bb.il ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %bb.ir
end_hunk_0
begin_hunk_1_@_ZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %i.uj, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.em unwind label %bb.eu

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %i.uj, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.en unwind label %bb.ev

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef %i.uj, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.eo unwind label %bb.ew

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  store i32 0, ptr %i.m, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull @.str, i32 noundef 297) #33
          to label %bb.ep unwind label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %31, i64 22, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit unwind label %bb.ey

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit: ; preds = %bb.ep
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit323 unwind label %bb.ey

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit323: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.un = load ptr, ptr %23, align 8, !tbaa !197
  %i.uo = load ptr, ptr %25, align 8, !tbaa !197
  %i.up = load ptr, ptr %27, align 8, !tbaa !197
  %i.uq = load ptr, ptr %29, align 8, !tbaa !197
  %i.ur = invoke noundef i32 @_Z5esaxxIN9__gnu_cxx17__normal_iteratorIPDiSt6vectorIDiSaIDiEEEENS1_IPiS3_IiSaIiEEEEiEiT_T0_SC_SC_SC_T1_SD_RSD_(ptr %.sroa.0546.0.lcssa, ptr %i.un, ptr %i.uo, ptr %i.up, ptr %i.uq, i32 noundef %i.ui, i32 noundef 1114112, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.eq unwind label %bb.fa     ; 2 uses

bb.eq:                                            ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit323
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.es, label %bb.er, !prof !130

bb.er:                                            ; preds = %bb.eq
  %i.ut = sext i32 %i.ur to i64
  %i.uu = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef 0, i64 noundef %i.ut, ptr noundef nonnull @.str.37)
          to label %_ZN4absl12lts_2026052612log_internal12Check_EQImplEiiPKc.exit unwind label %bb.fa

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str, i32 noundef 301) #33
          to label %bb.fe unwind label %bb.fh

bb.et:                                            ; preds = %bb.eg
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit394

bb.eu:                                            ; preds = %bb.el
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit392

bb.ev:                                            ; preds = %bb.em
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit390

bb.ew:                                            ; preds = %bb.en
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit388

bb.ex:                                            ; preds = %bb.eo
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit, %bb.ep
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #34
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn167 = phi { ptr, i32 } [ %i.va, %bb.ey ], [ %i.uz, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.iv

bb.fa:                                            ; preds = %bb.er, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit323
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

_ZN4absl12lts_2026052612log_internal12Check_EQImplEiiPKc.exit: ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull @.str, i32 noundef 299, ptr noundef nonnull %i.uu) #33
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %_ZN4absl12lts_2026052612log_internal12Check_EQImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit326 unwind label %bb.fd

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit326: ; preds = %bb.fb
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #29
  unreachable

bb.fc:                                            ; preds = %_ZN4absl12lts_2026052612log_internal12Check_EQImplEiiPKc.exit
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.iv

bb.fd:                                            ; preds = %bb.fb
  %i.vd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #29
  unreachable

bb.fe:                                            ; preds = %bb.es
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 44, ptr nonnull @.str.38)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit unwind label %bb.fi

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit: ; preds = %bb.fe
  %i.ve = load i32, ptr %i.m, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ve, ptr %i.d, align 4, !tbaa !116
  %i.vf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vf)
          to label %bb.fg unwind label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !173
  %i.vi = sext i32 %i.vh to i64
  store i64 %i.vi, ptr %34, align 8, !tbaa !180
  %i.vj = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 9 uses
  store i64 0, ptr %i.vj, align 8
  %i.vk = load i32, ptr %i.m, align 4, !tbaa !116 ; 2 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %.lr.ph845, label %._crit_edge846

.lr.ph845:                                        ; preds = %bb.fg
  %i.vm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 5 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.vo = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 399
  %i.vq = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 333
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 334
  %i.vu = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  br label %bb.fk

._crit_edge846:                                   ; preds = %.loopexit599, %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  invoke fastcc void @_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue3GetB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.ib unwind label %bb.ih

bb.fh:                                            ; preds = %bb.es
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.ff, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit, %bb.fe
  %i.wd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #34
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn170 = phi { ptr, i32 } [ %i.wd, %bb.fi ], [ %i.wc, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.iv

bb.fk:                                            ; preds = %.lr.ph845, %.loopexit599
  %i.we = phi i32 [ %i.vk, %.lr.ph845 ], [ %45, %.loopexit599 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph845 ], [ %indvars.iv.next, %.loopexit599 ] ; 4 uses
  %i.wf = load ptr, ptr %25, align 8, !tbaa !199
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !116 ; 2 uses
  %i.wi = sext i32 %i.wh to i64
  %i.wj = load ptr, ptr %23, align 8, !tbaa !199
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wi
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !116 ; 2 uses
  %i.wm = load ptr, ptr %29, align 8, !tbaa !199
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !116 ; 2 uses
  %i.wp = icmp slt i32 %i.wo, 2
  br i1 %i.wp, label %.loopexit599, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.wq = sext i32 %i.wl to i64                   ; 2 uses
  %.not177 = icmp ugt i64 %i.ug, %i.wq
  br i1 %.not177, label %bb.fm, label %.loopexit599

bb.fm:                                            ; preds = %bb.fl
  %i.wr = add nuw nsw i32 %i.wo, %i.wl
  %i.ws = sext i32 %i.wr to i64                   ; 2 uses
  %.not178 = icmp ugt i64 %i.ug, %i.ws
  br i1 %.not178, label %bb.fn, label %.loopexit599

bb.fn:                                            ; preds = %bb.fm
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0546.0.lcssa, i64 %i.ws ; 3 uses
  %i.wu = load ptr, ptr %27, align 8, !tbaa !199
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !116
  %i.wx = sub nsw i32 %i.ww, %i.wh
  %i.wy = sext i32 %i.wx to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0546.0.lcssa, i64 %i.wq
  %44 = ptrtoint ptr %i.wt to i64                 ; 2 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %_ZNSt6vectorIDiSaIDiEED2Ev.exit369
  %.0136840 = phi ptr [ %43, %bb.fn ], [ %i.yt, %_ZNSt6vectorIDiSaIDiEED2Ev.exit369 ] ; 7 uses
  %i.wz = ptrtoint ptr %.0136840 to i64           ; 2 uses
  %i.xa = sub i64 %44, %i.wz                      ; 3 uses
  %i.xb = ashr i64 %i.xa, 4                       ; 2 uses
  %i.xc = icmp sgt i64 %i.xb, 0
  br i1 %i.xc, label %.lr.ph.i.i.i332, label %._crit_edge.i.i.i

.lr.ph.i.i.i332:                                  ; preds = %bb.fo
  %i.xd = and i64 %i.xa, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.0136840, i64 %i.xd ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.ft, %.lr.ph.i.i.i332
  %.047.i.i.i = phi i64 [ %i.xb, %.lr.ph.i.i.i332 ], [ %i.xq, %bb.ft ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %.0136840, %.lr.ph.i.i.i332 ], [ %i.xp, %bb.ft ] ; 9 uses
  %i.xe = load i32, ptr %.02946.i.i.i, align 4, !tbaa !149
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !149
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1222, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !149
  %i.xl = icmp eq i32 %i.xk, 0
  br i1 %i.xl, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1220, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !149
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.xq = add nsw i64 %.047.i.i.i, -1
  %i.xr = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.xr, label %bb.fp, label %._crit_edge.loopexit.i.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ft
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre55.i.i.i = sub i64 %44, %.pre54.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.fo
  %.pre-phi56.i.i.i = phi i64 [ %.pre55.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.xa, %bb.fo ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.0136840, %bb.fo ] ; 5 uses
  %i.xs = ashr exact i64 %.pre-phi56.i.i.i, 2
  switch i64 %i.xs, label %bb.fx [
    i64 3, label %bb.fu
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.fu:                                            ; preds = %._crit_edge.i.i.i
  %i.xt = load i32, ptr %.029.lcssa.i.i.i, align 4, !tbaa !149
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.fv
  %.1.i.i.i = phi ptr [ %i.xv, %bb.fv ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.xw = load i32, ptr %.1.i.i.i, align 4, !tbaa !149
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.fw
  %.2.i.i.i = phi ptr [ %i.xy, %bb.fw ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.xz = load i32, ptr %.2.i.i.i, align 4, !tbaa !149
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit, label %bb.fx

bb.fx:                                            ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit

_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.fs
  %i.yb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  br label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit

_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1220: ; preds = %bb.fr
  %i.yc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit

_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1222: ; preds = %bb.fq
  %i.yd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit

_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit:              ; preds = %bb.fp, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1220, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1222, %bb.fx, %._crit_edge._crit_edge52.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.fu
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.wt, %bb.fx ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.fu ], [ %i.yd, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1222 ], [ %i.yb, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.yc, %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit.loopexit.split.loop.exit1220 ], [ %.02946.i.i.i, %bb.fp ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.ye = ptrtoint ptr %.028.i.i.i to i64
  %i.yf = sub i64 %i.ye, %i.wz                    ; 7 uses
  %i.yg = icmp ugt i64 %i.yf, 9223372036854775804
  br i1 %i.yg, label %bb.fy, label %_ZNSt6vectorIDiSaIDiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.fy:                                            ; preds = %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #30
          to label %.noexc.i unwind label %bb.gc

.noexc.i:                                         ; preds = %bb.fy
  unreachable

_ZNSt6vectorIDiSaIDiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZSt4findIPKDiDiET_S2_S2_RKT0_.exit
  %.not.i.i.i333 = icmp eq ptr %.028.i.i.i, %.0136840
  br i1 %.not.i.i.i333, label %.thread.i.i, label %_ZNSt12_Vector_baseIDiSaIDiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIDiSaIDiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr null, i64 %i.yf ; 2 uses
  store ptr %i.yh, ptr %i.vm, align 8, !tbaa !161
  br label %bb.ge

_ZNSt12_Vector_baseIDiSaIDiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIDiSaIDiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.yi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yf) #31
          to label %.noexc4.i unwind label %.thread1124 ; 7 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIDiSaIDiEE11_M_allocateEm.exit.i.i
  store ptr %i.yi, ptr %35, align 8, !tbaa !160
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.yf ; 4 uses
  store ptr %i.yj, ptr %i.vm, align 8, !tbaa !161
  %i.yk = icmp samesign ugt i64 %i.yf, 4
  br i1 %i.yk, label %bb.fz, label %bb.ga, !prof !183

bb.fz:                                            ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yi, ptr nonnull align 4 %.0136840, i64 %i.yf, i1 false)
  br label %bb.ge

bb.ga:                                            ; preds = %.noexc4.i
  %i.yl = icmp eq i64 %i.yf, 4
  br i1 %i.yl, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.ym = load i32, ptr %.0136840, align 4, !tbaa !149
  store i32 %i.ym, ptr %i.yi, align 4, !tbaa !149
  br label %bb.ge

.thread1124:                                      ; preds = %_ZNSt12_Vector_baseIDiSaIDiEE11_M_allocateEm.exit.i.i
  %lpad.loopexit602 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gc:                                            ; preds = %bb.fy
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre963 = load ptr, ptr %35, align 8, !tbaa !160 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %.pre963, null
  br i1 %.not.i.i5.i, label %.body, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.yn = load ptr, ptr %i.vm, align 8, !tbaa !161
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %.pre963 to i64
  %i.yq = sub i64 %i.yo, %i.yp
  call void @_ZdlPvm(ptr noundef nonnull %.pre963, i64 noundef %i.yq) #28
  br label %.body

bb.ge:                                            ; preds = %bb.gb, %bb.ga, %bb.fz, %.thread.i.i
  %i.yr = phi ptr [ %i.yi, %bb.fz ], [ %i.yi, %bb.ga ], [ %i.yi, %bb.gb ], [ null, %.thread.i.i ] ; 2 uses
  %i.ys = phi ptr [ %i.yj, %bb.fz ], [ %i.yj, %bb.ga ], [ %i.yj, %bb.gb ], [ %i.yh, %.thread.i.i ] ; 2 uses
  store ptr %i.ys, ptr %i.vn, align 8, !tbaa !171
  %i.yt = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 4 ; 2 uses
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = ptrtoint ptr %i.yr to i64
  %i.yw = sub i64 %i.yu, %i.yv
  %i.yx = icmp ult i64 %i.yw, 5
  br i1 %i.yx, label %bb.hy, label %bb.gf, !llvm.loop !396

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  invoke void @_ZN13sentencepiece11string_util17UnicodeTextToUTF8B5cxx11ERKSt6vectorIDiSaIDiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.gg unwind label %bb.gk

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  %i.yy = load ptr, ptr %36, align 8, !tbaa !85   ; 2 uses
  %i.yz = load i64, ptr %i.vo, align 8, !tbaa !91 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.za = load i8, ptr %i.vp, align 1, !tbaa !184, !range !100, !noalias !417, !noundef !101
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.zc = load i8, ptr %i.vs, align 1, !tbaa !185, !range !100, !noalias !417, !noundef !101
  %i.zd = trunc nuw i8 %i.zc to i1
  %i.ze = load i8, ptr %i.vt, align 2, !tbaa !186, !range !100, !noalias !417, !noundef !101
  %i.zf = trunc nuw i8 %i.ze to i1
  invoke void @_ZN13sentencepiece14SplitIntoWordsESt17basic_string_viewIcSt11char_traitsIcEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.261") align 8 %37, i64 %i.yz, ptr %i.yy, i1 noundef zeroext %i.zd, i1 noundef zeroext %i.zf)
          to label %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit unwind label %bb.gl

bb.gi:                                            ; preds = %bb.gg
  %i.zg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit.thread unwind label %bb.gl ; 5 uses

_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit.thread: ; preds = %bb.gi
  store ptr %i.zg, ptr %37, align 8, !tbaa !189, !alias.scope !417
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16 ; 3 uses
  store ptr %i.zh, ptr %i.vq, align 8, !tbaa !190, !alias.scope !417
  store i64 %i.yz, ptr %i.zg, align 8, !noalias !417
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store ptr %i.yy, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !417
  store ptr %i.zh, ptr %i.vr, align 8, !tbaa !191, !alias.scope !417
  br label %.lr.ph838.preheader

_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit: ; preds = %bb.gh
  %.pre953 = load ptr, ptr %37, align 8, !tbaa !192 ; 3 uses
  %.pre954 = load ptr, ptr %i.vr, align 8, !tbaa !192 ; 2 uses
  %.not593836 = icmp eq ptr %.pre953, %.pre954
  br i1 %.not593836, label %._crit_edge839, label %.lr.ph838.preheader

.lr.ph838.preheader:                              ; preds = %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit.thread, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit
  %i.zi = phi ptr [ %i.zg, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit.thread ], [ %.pre953, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit ]
  %i.zj = phi ptr [ %i.zh, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit.thread ], [ %.pre954, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit ]
  br label %.lr.ph838

._crit_edge839.loopexit:                          ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit355
  %.pre961 = load ptr, ptr %37, align 8, !tbaa !189
  br label %._crit_edge839

._crit_edge839:                                   ; preds = %._crit_edge839.loopexit, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit
  %i.zk = phi ptr [ %.pre961, %._crit_edge839.loopexit ], [ %.pre953, %_ZZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEvENKUlSt17basic_string_viewIcS8_EE_clESF_.exit ] ; 3 uses
  %.not.i.i.i338 = icmp eq ptr %i.zk, null
  br i1 %.not.i.i.i338, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.gj

bb.gj:                                            ; preds = %._crit_edge839
  %i.zl = load ptr, ptr %i.vq, align 8, !tbaa !190
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zk to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zo) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge839, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.zp = load ptr, ptr %36, align 8, !tbaa !85   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.wb
end_hunk_1
begin_hunk_2_@_ZN13sentencepiece7unigram7Trainer30MakeSeedSentencePiecesInternalIiEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaISB_EEv:bb.a
  %i.agm = phi ptr [ %i.agk, %.noexc443 ], [ %i.agg, %bb.hl ] ; 2 uses
  switch i64 %i.agi, label %bb.hn [
    i64 1, label %bb.hm
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i
  ]

bb.hm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agn = load i8, ptr %i.agh, align 1, !tbaa !86
  store i8 %i.agn, ptr %i.agm, align 1, !tbaa !86
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i

bb.hn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agm, ptr align 1 %i.agh, i64 %i.agi, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i: ; preds = %bb.hn, %bb.hm, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ago = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !422 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.5573.0, i64 8
  store i64 %i.ago, ptr %i.agp, align 8, !tbaa !91
  %i.agq = load ptr, ptr %.sroa.5573.0, align 8, !tbaa !85
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.ago
  store i8 0, ptr %i.agr, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !422
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.5573.0, i64 32
  store i64 0, ptr %i.ags, align 8, !tbaa !151
  br label %.noexc348

.noexc348:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i438, %bb.gz, %.noexc442.thread
  %.sroa.5573.1 = phi ptr [ %.sroa.5573.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit.i ], [ %i.age, %.noexc442.thread ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i435, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i438 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i435, %bb.gz ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.5573.1, i64 32 ; 2 uses
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !107
  %i.agv = icmp sgt i64 %i.aat, %i.agu
  br i1 %i.agv, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.noexc348
  store i64 %i.aat, ptr %i.agt, align 8, !tbaa !107
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %.noexc348
  %i.agw = load i64, ptr %i.vj, align 8
  %i.agx = lshr i64 %i.agw, 17
  %i.agy = load i64, ptr %34, align 8, !tbaa !180
  %i.agz = shl i64 %i.agy, 3
  %i.aha = icmp ugt i64 %i.agx, %i.agz
  br i1 %i.aha, label %bb.hq, label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit

bb.hq:                                            ; preds = %bb.hp
  invoke fastcc void @_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue2GcEv(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit unwind label %bb.ht

_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit: ; preds = %bb.hp, %bb.hq
  %i.ahb = load ptr, ptr %39, align 8, !tbaa !85  ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.vv
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit
  %i.ahd = load i64, ptr %i.vv, align 8, !tbaa !86
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahe) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueue4PushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %.pre959 = load ptr, ptr %38, align 8, !tbaa !160
  br label %bb.hr

bb.hr:                                            ; preds = %bb.gm, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.ahf = phi ptr [ %i.zw, %bb.gm ], [ %.pre960, %bb.go ], [ %.pre959, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ] ; 3 uses
  %.not.i.i.i353 = icmp eq ptr %i.ahf, null
  br i1 %.not.i.i.i353, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit355, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ahg = load ptr, ptr %i.wa, align 8, !tbaa !161
  %i.ahh = ptrtoint ptr %i.ahg to i64
  %i.ahi = ptrtoint ptr %i.ahf to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  call void @_ZdlPvm(ptr noundef nonnull %i.ahf, i64 noundef %i.ahj) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit355

_ZNSt6vectorIDiSaIDiEED2Ev.exit355:               ; preds = %bb.hr, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.0509.0837, i64 16 ; 2 uses
  %.not593 = icmp eq ptr %i.ahk, %i.zj
  br i1 %.not593, label %._crit_edge839.loopexit, label %.lr.ph838

.loopexit:                                        ; preds = %.noexc.i.i.i345
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

.loopexit.split-lp:                               ; preds = %bb.gs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

bb.ht:                                            ; preds = %bb.hi, %.split832.us, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i436, %bb.hq
  %i.ahl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahm = load ptr, ptr %39, align 8, !tbaa !85  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.vv
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.ht
  %i.aho = load i64, ptr %i.vv, align 8, !tbaa !86
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.ht, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  %.pn179 = phi { ptr, i32 } [ %i.ahl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ahl, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %bb.gq
  %.pn179.pn = phi { ptr, i32 } [ %.pn179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %i.aad, %bb.gq ] ; 2 uses
  %i.ahq = load ptr, ptr %38, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i359 = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i.i359, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit361, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ahr = load ptr, ptr %i.wa, align 8, !tbaa !161
  %i.ahs = ptrtoint ptr %i.ahr to i64
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef %i.ahu) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit361

_ZNSt6vectorIDiSaIDiEED2Ev.exit361:               ; preds = %bb.hv, %bb.hu, %bb.gp
  %.pn179.pn.pn = phi { ptr, i32 } [ %i.aac, %bb.gp ], [ %.pn179.pn, %bb.hu ], [ %.pn179.pn, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ahv = load ptr, ptr %37, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i362 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit363, label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit361
  %i.ahw = load ptr, ptr %i.vq, align 8, !tbaa !190
  %i.ahx = ptrtoint ptr %i.ahw to i64
  %i.ahy = ptrtoint ptr %i.ahv to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  call void @_ZdlPvm(ptr noundef nonnull %i.ahv, i64 noundef %i.ahz) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit363

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit363: ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit361, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.hx

bb.hx:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit363, %bb.gl
  %.pn179.pn.pn.pn = phi { ptr, i32 } [ %.pn179.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit363 ], [ %i.zu, %bb.gl ] ; 2 uses
  %i.aia = load ptr, ptr %36, align 8, !tbaa !85  ; 2 uses
  %i.aib = icmp eq ptr %i.aia, %i.wb
  br i1 %i.aib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.hx
  %i.aic = load i64, ptr %i.wb, align 8, !tbaa !86
  %i.aid = add i64 %i.aic, 1
  call void @_ZdlPvm(ptr noundef %i.aia, i64 noundef %i.aid) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

bb.hy:                                            ; preds = %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %i.aie = phi ptr [ %i.yr, %bb.ge ], [ %.pre962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ] ; 3 uses
  %.not.i.i.i367 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit369, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aif = load ptr, ptr %i.vm, align 8, !tbaa !161
  %i.aig = ptrtoint ptr %i.aif to i64
  %i.aih = ptrtoint ptr %i.aie to i64
  %i.aii = sub i64 %i.aig, %i.aih
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef %i.aii) #28
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit369

_ZNSt6vectorIDiSaIDiEED2Ev.exit369:               ; preds = %bb.hy, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  %i.aij = icmp ult ptr %i.yt, %i.wt
  br i1 %i.aij, label %bb.fo, label %.loopexit599.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %bb.gk
  %.pn179.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zt, %bb.gk ], [ %.pn179.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %.pn179.pn.pn.pn, %bb.hx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.aik = load ptr, ptr %35, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i370 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i370, label %.body, label %bb.ia

bb.ia:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ail = load ptr, ptr %i.vm, align 8, !tbaa !161
  %i.aim = ptrtoint ptr %i.ail to i64
  %i.ain = ptrtoint ptr %i.aik to i64
  %i.aio = sub i64 %i.aim, %i.ain
  call void @_ZdlPvm(ptr noundef nonnull %i.aik, i64 noundef %i.aio) #28
  br label %.body

.body:                                            ; preds = %.thread1124, %bb.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %bb.gd, %bb.gc
  %.pn179.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp603, %bb.gc ], [ %.pn179.pn.pn.pn.pn, %bb.ia ], [ %lpad.loopexit.split-lp603, %bb.gd ], [ %.pn179.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %lpad.loopexit602, %.thread1124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.it

.loopexit599.loopexit:                            ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit369
  %.pre964 = load i32, ptr %i.m, align 4, !tbaa !116
  br label %.loopexit599

.loopexit599:                                     ; preds = %.loopexit599.loopexit, %bb.fk, %bb.fl, %bb.fm
  %45 = phi i32 [ %i.we, %bb.fm ], [ %.pre964, %.loopexit599.loopexit ], [ %i.we, %bb.fk ], [ %i.we, %bb.fl ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aip = sext i32 %45 to i64
  %i.aiq = icmp slt i64 %indvars.iv.next, %i.aip
  br i1 %i.aiq, label %bb.fk, label %._crit_edge846, !llvm.loop !409

bb.ib:                                            ; preds = %._crit_edge846
  %i.air = load ptr, ptr %40, align 8, !tbaa !136 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !136 ; 2 uses
  %.not591847 = icmp eq ptr %i.air, %i.ait
  br i1 %.not591847, label %._crit_edge851, label %.lr.ph850

.lr.ph850:                                        ; preds = %bb.ib
  %i.aiu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ii

._crit_edge851:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit, %bb.ib
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vj)
          to label %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit unwind label %bb.ic

bb.ic:                                            ; preds = %._crit_edge851
  %i.aiw = landingpad { ptr, i32 }
          catch ptr null
  %i.aix = extractvalue { ptr, i32 } %i.aiw, 0
  call void @__clang_call_terminate(ptr %i.aix) #29
  unreachable

_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit: ; preds = %._crit_edge851
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  %i.aiy = load ptr, ptr %29, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i373 = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i.i373, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.id

bb.id:                                            ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit
  %i.aiz = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !200
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = ptrtoint ptr %i.aiy to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef %i.ajd) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_120BoundedPriorityQueueD2Ev.exit, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.aje = load ptr, ptr %27, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIiSaIiEED2Ev.exit375, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ajf = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !200
  %i.ajh = ptrtoint ptr %i.ajg to i64
  %i.aji = ptrtoint ptr %i.aje to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  call void @_ZdlPvm(ptr noundef nonnull %i.aje, i64 noundef %i.ajj) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit375

_ZNSt6vectorIiSaIiEED2Ev.exit375:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.ajk = load ptr, ptr %25, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i376 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorIiSaIiEED2Ev.exit377, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit375
  %i.ajl = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !200
  %i.ajn = ptrtoint ptr %i.ajm to i64
  %i.ajo = ptrtoint ptr %i.ajk to i64
  %i.ajp = sub i64 %i.ajn, %i.ajo
  call void @_ZdlPvm(ptr noundef nonnull %i.ajk, i64 noundef %i.ajp) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit377

_ZNSt6vectorIiSaIiEED2Ev.exit377:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit375, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %i.ajq = load ptr, ptr %23, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i378 = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIiSaIiEED2Ev.exit379, label %bb.ig

bb.ig:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit377
  %i.ajr = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !200
  %i.ajt = ptrtoint ptr %i.ajs to i64
  %i.aju = ptrtoint ptr %i.ajq to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %i.ajq, i64 noundef %i.ajv) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit379

_ZNSt6vectorIiSaIiEED2Ev.exit379:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit377, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %.pre967 = load ptr, ptr %9, align 16, !tbaa !89
  br label %bb.ja

bb.ih:                                            ; preds = %._crit_edge846
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.ii:                                            ; preds = %.lr.ph850, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit
  %.sroa.0503.0848 = phi ptr [ %i.air, %.lr.ph850 ], [ %i.akv, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit ] ; 9 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.0503.0848, i64 32 ; 2 uses
  %i.ajy = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEJEE4findIS9_EENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0503.0848)
          to label %bb.ij unwind label %bb.im

bb.ij:                                            ; preds = %bb.ii
  %i.ajz = extractvalue { ptr, ptr } %i.ajy, 0
  %.not592 = icmp eq ptr %i.ajz, null
  br i1 %.not592, label %.critedge, label %bb.ik, !prof !130

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull @.str, i32 noundef 347, ptr noundef nonnull @.str.39) #33
          to label %bb.il unwind label %bb.in

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit382 unwind label %bb.io

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit382: ; preds = %bb.il
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #29
  unreachable

bb.im:                                            ; preds = %bb.ir, %bb.ii
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.in:                                            ; preds = %bb.ik
  %i.akb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br label %bb.is

bb.io:                                            ; preds = %bb.il
  %i.akc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #29
  unreachable

.critedge:                                        ; preds = %bb.ij
  %i.akd = load ptr, ptr %i.aiu, align 8, !tbaa !81 ; 8 uses
  %i.ake = load ptr, ptr %i.aiv, align 16, !tbaa !88
  %.not.i383 = icmp eq ptr %i.akd, %i.ake
  br i1 %.not.i383, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %.critedge
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 16 ; 3 uses
  store ptr %i.akf, ptr %i.akd, align 8, !tbaa !129
  %i.akg = load ptr, ptr %.sroa.0503.0848, align 8, !tbaa !85 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.0503.0848, i64 16 ; 5 uses
  %i.aki = icmp eq ptr %i.akg, %i.akh
  br i1 %i.aki, label %bb.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.iq:                                            ; preds = %bb.ip
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0503.0848, i64 8
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !91 ; 2 uses
  %i.akl = icmp ult i64 %i.akk, 16
  call void @llvm.assume(i1 %i.akl)
  %i.akm = add nuw nsw i64 %i.akk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akf, ptr noundef nonnull align 8 dereferenceable(1) %i.akh, i64 %i.akm, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ip
  store ptr %i.akg, ptr %i.akd, align 8, !tbaa !85
  %i.akn = load i64, ptr %i.akh, align 8, !tbaa !86
  store i64 %i.akn, ptr %i.akf, align 8, !tbaa !86
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.iq
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.0503.0848, i64 8 ; 2 uses
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !91
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  store i64 %i.akp, ptr %i.akq, align 8, !tbaa !91
  store ptr %i.akh, ptr %.sroa.0503.0848, align 8, !tbaa !85
  store i64 0, ptr %i.ako, align 8, !tbaa !91
  store i8 0, ptr %i.akh, align 8, !tbaa !86
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akd, i64 32
  %i.aks = load i64, ptr %i.ajx, align 8, !tbaa !107
  %i.akt = sitofp i64 %i.aks to float
  store float %i.akt, ptr %i.akr, align 8, !tbaa !93
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akd, i64 40
  store ptr %i.aku, ptr %i.aiu, align 8, !tbaa !81
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit

bb.ir:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE17_M_realloc_insertIJS6_RlEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.akd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0503.0848, ptr noundef nonnull align 8 dereferenceable(8) %i.ajx)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit unwind label %bb.im

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfESaIS7_EE12emplace_backIJS6_RlEEERS7_DpOT_.exit: ; preds = %bb.ir, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEC2IS5_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit.i
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.0503.0848, i64 40 ; 2 uses
  %.not591 = icmp eq ptr %i.akv, %i.ait
  br i1 %.not591, label %._crit_edge851, label %bb.ii

bb.is:                                            ; preds = %bb.in, %bb.im
  %.pn174 = phi { ptr, i32 } [ %i.aka, %bb.im ], [ %i.akb, %bb.in ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %bb.it

end_hunk_2
