Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bytestring_test?download=true
inline.NumInlined: 5484
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEv:bb.a
          cleanup
  br label %bb.ts

bb.tr:                                            ; preds = %bb.tn
  %i.bko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #20
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tr, %bb.tq
  %.pn480 = phi { ptr, i32 } [ %i.bko, %bb.tr ], [ %i.bkn, %bb.tq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  %i.bkp = load ptr, ptr %78, align 8, !tbaa !52  ; 3 uses
  %.not.i.i1150 = icmp eq ptr %i.bkp, null
  br i1 %.not.i.i1150, label %_ZN7testing7MessageD2Ev.exit1152, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1151

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1151: ; preds = %bb.ts
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !19
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8
  %i.bks = load ptr, ptr %i.bkr, align 8
  call void %i.bks(ptr noundef nonnull align 8 dereferenceable(128) %i.bkp) #20, !call_target !61, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1152

_ZN7testing7MessageD2Ev.exit1152:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1151, %bb.ts, %bb.tp
  %.pn480.pn = phi { ptr, i32 } [ %i.bkm, %bb.tp ], [ %.pn480, %bb.ts ], [ %.pn480, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %77) #20
  br label %bb.ub

bb.tt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1144, %_ZN7testing7MessageD2Ev.exit1149
  %i.bkt = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !47 ; 4 uses
  %.not.i.i1153 = icmp eq ptr %i.bku, null
  br i1 %.not.i.i1153, label %_ZN7testing15AssertionResultD2Ev.exit1157, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !50 ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bku, i64 16 ; 2 uses
  %i.bkx = icmp eq ptr %i.bkv, %i.bkw
  br i1 %i.bkx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1154: ; preds = %bb.tu
  %i.bky = load i64, ptr %i.bkw, align 8, !tbaa !62
  %i.bkz = add i64 %i.bky, 1
  call void @_ZdlPvm(ptr noundef %i.bkv, i64 noundef %i.bkz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155: ; preds = %bb.tu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1154
  call void @_ZdlPvm(ptr noundef nonnull %i.bku, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1157

_ZN7testing15AssertionResultD2Ev.exit1157:        ; preds = %bb.tt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  br label %bb.tv

bb.tv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit917, %_ZN7testing15AssertionResultD2Ev.exit1157
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1158 unwind label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.bla = landingpad { ptr, i32 }
          catch ptr null
  %i.blb = extractvalue { ptr, i32 } %i.bla, 0
  call void @__clang_call_terminate(ptr %i.blb) #21
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1158: ; preds = %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1158
  br label %bb.tx

bb.tx:                                            ; preds = %.preheader, %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit"
  %i.blc = phi ptr [ %i.bld, %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit" ], [ %i.ahx, %.preheader ] ; 5 uses
  %i.bld = getelementptr inbounds i8, ptr %i.blc, i64 -72 ; 2 uses
  %i.ble = getelementptr inbounds i8, ptr %i.blc, i64 -32
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i1159 = icmp eq ptr %i.blf, null
  br i1 %.not.i.i.i.i1159, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.blg = getelementptr inbounds i8, ptr %i.blc, i64 -16
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !93
  %i.bli = ptrtoint ptr %i.blh to i64
  %i.blj = ptrtoint ptr %i.blf to i64
  %i.blk = sub i64 %i.bli, %i.blj
  call void @_ZdlPvm(ptr noundef nonnull %i.blf, i64 noundef %i.blk) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.ty, %bb.tx
  %i.bll = getelementptr inbounds i8, ptr %i.blc, i64 -56
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.blm, null
  br i1 %.not.i.i.i1.i, label %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit", label %bb.tz

bb.tz:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.bln = getelementptr inbounds i8, ptr %i.blc, i64 -40
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !84
  %i.blp = ptrtoint ptr %i.blo to i64
  %i.blq = ptrtoint ptr %i.blm to i64
  %i.blr = sub i64 %i.blp, %i.blq
  call void @_ZdlPvm(ptr noundef nonnull %i.blm, i64 noundef %i.blr) #22
  br label %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit"

"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.tz
  %i.bls = icmp eq ptr %i.bld, %1
  br i1 %i.bls, label %bb.ua, label %bb.tx

bb.ua:                                            ; preds = %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.ub:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1152, %bb.tj
  %.pn480.pn.pn = phi { ptr, i32 } [ %.pn480.pn, %_ZN7testing7MessageD2Ev.exit1152 ], [ %i.bkd, %bb.tj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #20
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ti, %bb.ss, %bb.sc, %bb.rm, %bb.qw, %bb.qg, %bb.pq, %bb.pa, %bb.oj, %bb.nt, %bb.lg
  %.pn503.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn503.pn.pn.pn.pn.pn, %bb.nt ], [ %.pn480.pn.pn, %bb.ub ], [ %.pn476.pn.pn, %bb.ti ], [ %.pn472.pn.pn, %bb.ss ], [ %.pn468.pn.pn, %bb.sc ], [ %.pn464.pn.pn, %bb.rm ], [ %.pn460.pn.pn, %bb.qw ], [ %.pn456.pn.pn, %bb.qg ], [ %.pn452.pn.pn, %bb.pq ], [ %.pn447.pn.pn.pn, %bb.pa ], [ %.pn441.pn.pn.pn, %bb.oj ], [ %.pn434.pn.pn.pn, %bb.lg ]
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1161 unwind label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.blt = landingpad { ptr, i32 }
          catch ptr null
  %i.blu = extractvalue { ptr, i32 } %i.blt, 0
  call void @__clang_call_terminate(ptr %i.blu) #21
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1161: ; preds = %bb.uc, %bb.kr
  %.pn503.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.atl, %bb.kr ], [ %.pn503.pn.pn.pn.pn.pn.pn, %bb.uc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ue

bb.ue:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1161, %bb.kp
  %.pn503.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn503.pn.pn.pn.pn.pn.pn.pn, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit1161 ], [ %.pn426.pn.pn.pn.pn.pn.pn, %bb.kp ]
  br label %bb.uf

bb.uf:                                            ; preds = %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166", %bb.ue
  %i.blv = phi ptr [ %i.ahx, %bb.ue ], [ %i.blw, %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166" ] ; 5 uses
  %i.blw = getelementptr inbounds i8, ptr %i.blv, i64 -72 ; 2 uses
  %i.blx = getelementptr inbounds i8, ptr %i.blv, i64 -32
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i1162 = icmp eq ptr %i.bly, null
  br i1 %.not.i.i.i.i1162, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i1163, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.blz = getelementptr inbounds i8, ptr %i.blv, i64 -16
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !93
  %i.bmb = ptrtoint ptr %i.bma to i64
  %i.bmc = ptrtoint ptr %i.bly to i64
  %i.bmd = sub i64 %i.bmb, %i.bmc
  call void @_ZdlPvm(ptr noundef nonnull %i.bly, i64 noundef %i.bmd) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i1163

_ZNSt6vectorIjSaIjEED2Ev.exit.i1163:              ; preds = %bb.ug, %bb.uf
  %i.bme = getelementptr inbounds i8, ptr %i.blv, i64 -56
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i1.i1164 = icmp eq ptr %i.bmf, null
  br i1 %.not.i.i.i1.i1164, label %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166", label %bb.uh

bb.uh:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i1163
  %i.bmg = getelementptr inbounds i8, ptr %i.blv, i64 -40
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !84
  %i.bmi = ptrtoint ptr %i.bmh to i64
  %i.bmj = ptrtoint ptr %i.bmf to i64
  %i.bmk = sub i64 %i.bmi, %i.bmj
  call void @_ZdlPvm(ptr noundef nonnull %i.bmf, i64 noundef %i.bmk) #22
  br label %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166"

"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i1163, %bb.uh
  %i.bml = icmp eq ptr %i.blw, %1
  br i1 %i.bml, label %_ZNSt6vectorIhSaIhEED2Ev.exit.thread, label %bb.uf

_ZNSt6vectorIhSaIhEED2Ev.exit.thread:             ; preds = %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166", %bb.gu, %bb.gf, %bb.gg
  %.pn503.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gu ], [ %i.aih, %bb.gg ], [ %i.aih, %bb.gf ], [ %.pn503.pn.pn.pn.pn.pn.pn.pn.pn, %"_ZZN12_GLOBAL__N_120CBBTest_Unicode_Test8TestBodyEvEN3$_0D2Ev.exit1166" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn503.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare i32 @CBS_get_utf8(ptr noundef, ptr noundef) #0

declare i32 @CBB_add_utf8(ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114LiteralToBytesIcEESt6vectorIhSaIhEEPKT_(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 1, !tbaa !62      ; 2 uses
  %.not17 = icmp eq i8 %i.a, 0
  br i1 %.not17, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.d = phi i8 [ %i.a, %.preheader.lr.ph ], [ %i.u, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.promoted.a = phi ptr [ null, %.preheader.lr.ph ], [ %.promoted1629, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.018.a = phi ptr [ null, %.preheader.lr.ph ], [ %.promoted26, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %.018 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.t, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.not.i.i = icmp eq ptr %.018.a, %.promoted.a
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  store i8 %i.d, ptr %.018.a, align 1, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %.018.a, i64 1 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !85
  %.promoted16.pre = load ptr, ptr %i.c, align 8, !tbaa !84
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.c:                                             ; preds = %.preheader
  %i.f = load ptr, ptr %0, align 8, !tbaa !83     ; 6 uses
  %i.g = ptrtoint ptr %.promoted.a to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 9 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.290) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.k = add i64 %.sroa.speculated.i.i.i.i, %i.i  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 9223372036854775807)
  %i.n = select i1 %i.l, i64 9223372036854775807, i64 %i.m ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i ; 2 uses
  store i8 %i.d, ptr %i.p, align 1, !tbaa !62
  %i.q = icmp sgt i64 %i.i, 0
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc9
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.o, ptr %0, align 8, !tbaa !83
  store ptr %i.r, ptr %i.b, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 2 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !84
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.b
  %.promoted1629 = phi ptr [ %i.s, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.promoted16.pre, %bb.b ]
  %.promoted26 = phi ptr [ %i.r, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.e, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %.018, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !62    ; 2 uses
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !635

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119LiteralToCodePointsEPKDi(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr %1, align 4, !tbaa !91     ; 2 uses
  %.not12 = icmp eq i32 %i.a, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.d = phi ptr [ null, %.lr.ph ], [ %i.x, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 7 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.g = phi i32 [ %i.a, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.013 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %.not.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.f, align 4, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !94
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.290) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23
          to label %.noexc5 unwind label %.loopexit ; 5 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i32 %i.g, ptr %i.t, align 4, !tbaa !64
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.d, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %0, align 8, !tbaa !92
  store ptr %i.v, ptr %i.b, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !93
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c
  %i.x = phi ptr [ %i.s, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.d, %bb.c ]
  %i.y = phi ptr [ %i.w, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.e, %bb.c ]
  %i.z = phi ptr [ %i.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !91 ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !636

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.k) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.a
  ret void
}

declare i32 @CBS_get_latin1(ptr noundef, ptr noundef) #0

declare i32 @CBB_add_latin1(ptr noundef, i32 noundef) #0

declare i32 @CBS_get_ucs2_be(ptr noundef, ptr noundef) #0

declare i32 @CBB_add_ucs2_be(ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114LiteralToBytesIDsEESt6vectorIhSaIhEEPKT_(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i16, ptr %1, align 2, !tbaa !639    ; 2 uses
  %.not18 = icmp eq i16 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1
  %i.d = phi i16 [ %i.a, %.preheader.lr.ph ], [ %i.ap, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1 ]
  %.promoted = phi ptr [ null, %.preheader.lr.ph ], [ %.promoted27, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1 ] ; 6 uses
  %.019 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ao, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.1 ] ; 2 uses
  %.promoted16 = load ptr, ptr %i.c, align 8, !tbaa !84 ; 2 uses
  %i.e = lshr i16 %i.d, 8
  %i.f = trunc nuw i16 %i.e to i8                 ; 2 uses
  %.not.i.i = icmp eq ptr %.promoted, %.promoted16
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  store i8 %i.f, ptr %.promoted, align 1, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !85
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.c:                                             ; preds = %.preheader
  %i.h = load ptr, ptr %0, align 8, !tbaa !83     ; 6 uses
  %i.i = ptrtoint ptr %.promoted to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.h, %bb.c
  %.lcssa23 = phi ptr [ %.promoted, %bb.c ], [ %i.v, %bb.h ]
  %.lcssa21 = phi ptr [ %i.h, %bb.c ], [ %i.aa, %bb.h ]
  %.lcssa = phi i64 [ %i.j, %bb.c ], [ %i.ac, %bb.h ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.290) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable
end_hunk_0
