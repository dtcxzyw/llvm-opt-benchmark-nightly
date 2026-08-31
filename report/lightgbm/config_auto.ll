Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/config_auto?download=true
inline.NumInlined: 5122
inline.NumDeleted: 599
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN8LightGBM6Config20GetMembersFromStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEE:._crit_edge.i.i
  %i.agj = icmp eq ptr %i.agi, %i.aga
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001: ; preds = %bb.fa
  %i.agk = load i64, ptr %i.aga, align 8, !tbaa !18
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %i.agm = load i32, ptr %i.agg, align 8, !tbaa !132
  %i.agn = icmp sgt i32 %i.agm, 0
  br i1 %i.agn, label %._crit_edge.i.i1007, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.311, i32 noundef 463)
          to label %._crit_edge.i.i1007 unwind label %bb.o

bb.fc:                                            ; preds = %.noexc.i998
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006

bb.fd:                                            ; preds = %.noexc999
  %i.agp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agq = load ptr, ptr %49, align 8, !tbaa !16  ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.aga
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004: ; preds = %bb.fd
  %i.ags = load i64, ptr %i.aga, align 8, !tbaa !18
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004, %bb.fc
  %.pn355 = phi { ptr, i32 } [ %i.ago, %bb.fc ], [ %i.agp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1004 ], [ %i.agp, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %.body

._crit_edge.i.i1007:                              ; preds = %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.agu = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.agu, ptr %50, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.agu, ptr noundef nonnull align 1 dereferenceable(5) @.str.112, i64 5, i1 false)
  %i.agv = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 5, ptr %i.agv, align 8, !tbaa !19
  %i.agw = getelementptr inbounds nuw i8, ptr %50, i64 21
  store i8 0, ptr %i.agw, align 1, !tbaa !18
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.agy = invoke noundef zeroext i1 @_ZN8LightGBM6Config6GetIntERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_Pi(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull %i.agx)
          to label %bb.fe unwind label %bb.fg     ; 0 uses

bb.fe:                                            ; preds = %._crit_edge.i.i1007
  %i.agz = load ptr, ptr %50, align 8, !tbaa !16  ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.agu
  br i1 %i.aha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011: ; preds = %bb.fe
  %i.ahb = load i64, ptr %i.agu, align 8, !tbaa !18
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.ahd = load i32, ptr %i.agx, align 4, !tbaa !133
  %i.ahe = icmp sgt i32 %i.ahd, 0
  br i1 %i.ahe, label %.noexc.i1018, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.311, i32 noundef 466)
          to label %.noexc.i1018 unwind label %bb.o

bb.fg:                                            ; preds = %._crit_edge.i.i1007
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  %i.ahg = load ptr, ptr %50, align 8, !tbaa !16  ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, %i.agu
  br i1 %i.ahh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %bb.fg
  %i.ahi = load i64, ptr %i.agu, align 8, !tbaa !18
  %i.ahj = add i64 %i.ahi, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  br label %.body

.noexc.i1018:                                     ; preds = %bb.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  %i.ahk = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 6 uses
  store ptr %i.ahk, ptr %51, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #27
  store i64 20, ptr %i.ap, align 8, !tbaa !14
  %i.ahl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef 0)
          to label %.noexc1019 unwind label %bb.ga ; 2 uses

.noexc1019:                                       ; preds = %.noexc.i1018
  store ptr %i.ahl, ptr %51, align 8, !tbaa !16
  %i.ahm = load i64, ptr %i.ap, align 8, !tbaa !14 ; 3 uses
  store i64 %i.ahm, ptr %i.ahk, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ahl, ptr noundef nonnull align 1 dereferenceable(20) @.str.114, i64 20, i1 false)
  %i.ahn = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %i.ahm, ptr %i.ahn, align 8, !tbaa !19
  %i.aho = load ptr, ptr %51, align 8, !tbaa !16
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahm
  store i8 0, ptr %i.ahp, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #27
  %i.ahq = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %.noexc1027 unwind label %bb.gb

.noexc1027:                                       ; preds = %.noexc1019
  %.not.i.i.not.i1021 = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i.not.i1021, label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033, label %bb.fh

bb.fh:                                            ; preds = %.noexc1027
  %i.ahr = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %.noexc1028 unwind label %bb.gb ; 2 uses

.noexc1028:                                       ; preds = %bb.fh
  %.not.i.i8.i1022 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i8.i1022, label %.invoke3085, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1023

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1023: ; preds = %.noexc1028
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 48
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !19
  %i.ahu = icmp eq i64 %i.aht, 0
  br i1 %i.ahu, label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033, label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1023
  %i.ahv = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %.noexc1030 unwind label %bb.gb ; 2 uses

.noexc1030:                                       ; preds = %bb.fi
  %.not.i.i9.i1024 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i9.i1024, label %.invoke3085, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1025

.invoke3085:                                      ; preds = %.noexc1030, %.noexc1028
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.371) #29
          to label %.cont3086 unwind label %bb.gb

.cont3086:                                        ; preds = %.invoke3085
  unreachable

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1025: ; preds = %.noexc1030
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ahw)
          to label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033 unwind label %bb.gb

_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1023, %.noexc1027, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1025
  %.0.i1026 = phi i1 [ false, %.noexc1027 ], [ false, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1023 ], [ true, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1025 ]
  %i.ahx = load ptr, ptr %51, align 8, !tbaa !16  ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, %i.ahk
  br i1 %i.ahy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034: ; preds = %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033
  %i.ahz = load i64, ptr %i.ahk, align 8, !tbaa !18
  %i.aia = add i64 %i.ahz, 1
  call void @_ZdlPvm(ptr noundef %i.ahx, i64 noundef %i.aia) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036: ; preds = %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1033, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1034
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br i1 %.0.i1026, label %bb.fj, label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036
  %.val = load ptr, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !134
  invoke fastcc void @_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef readonly %.val)
          to label %.noexc1041 unwind label %bb.gc

.noexc1041:                                       ; preds = %bb.fj
  %i.aib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !74, !noalias !134 ; 3 uses
  %i.aid = load ptr, ptr %2, align 8, !tbaa !71, !noalias !134 ; 3 uses
  %i.aie = ptrtoint ptr %i.aic to i64
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = ashr exact i64 %i.aig, 5               ; 3 uses
  %i.aii = icmp slt i64 %i.aih, 0
  br i1 %i.aii, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.noexc1041
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.390) #29
          to label %.noexc.i1040 unwind label %.thread.i, !noalias !134

.noexc.i1040:                                     ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %.noexc1041
  %.not35.i = icmp eq ptr %i.aic, %i.aid
  br i1 %.not35.i, label %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i: ; preds = %bb.fl
  %i.aij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aih) #31
          to label %.noexc9.i unwind label %.thread.i, !noalias !134 ; 3 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i
  %144 = ptrtoint ptr %i.aij to i64
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 %i.aih
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !76, !noalias !134
  %.pre13.i = load ptr, ptr %i.aib, align 8, !tbaa !76, !noalias !134
  br label %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i

_ZNSt6vectorIaSaIaEE7reserveEm.exit.i:            ; preds = %.noexc9.i, %bb.fl
  %.sroa.14.0 = phi ptr [ null, %bb.fl ], [ %i.aik, %.noexc9.i ] ; 3 uses
  %.sroa.10.0 = phi i64 [ 0, %bb.fl ], [ %144, %.noexc9.i ]
  %.sroa.10.0.a = phi ptr [ null, %bb.fl ], [ %i.aij, %.noexc9.i ] ; 3 uses
  %i.ail = phi ptr [ %i.aic, %bb.fl ], [ %.pre13.i, %.noexc9.i ] ; 3 uses
  %i.aim = phi ptr [ %i.aid, %bb.fl ], [ %.pre.i, %.noexc9.i ] ; 3 uses
  %.not8.i = icmp eq ptr %i.aim, %i.ail
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.sroa.10.1 = ptrtoint ptr %.sroa.10.1.a to i64
  %.pre16.i = load ptr, ptr %2, align 8, !tbaa !71, !noalias !134
  %.pre17.i = load ptr, ptr %i.aib, align 8, !tbaa !74, !noalias !134
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i
  %.sroa.14.3 = phi ptr [ %.sroa.14.0, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ], [ %.sroa.14.2, %._crit_edge.loopexit.i ]
  %.sroa.10.2 = phi i64 [ %.sroa.10.0, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ], [ %.sroa.10.1, %._crit_edge.loopexit.i ]
  %.sroa.02336.3 = phi ptr [ %.sroa.10.0.a, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ], [ %.pn2414.a, %._crit_edge.loopexit.i ]
  %i.ain = phi ptr [ %i.ail, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ], [ %.pre17.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.aio = phi ptr [ %i.aim, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ], [ %.pre16.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aio, %i.ain
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aiu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aio, %._crit_edge.i ] ; 3 uses
  %i.aip = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16, !noalias !134 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.air = icmp eq ptr %i.aip, %i.aiq
  br i1 %i.air, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ais = load i64, ptr %i.aiq, align 8, !tbaa !18, !noalias !134
  %i.ait = add i64 %i.ais, 1
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef %i.ait) #28, !noalias !134
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aiu, %i.ain
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !71, !noalias !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge.i
  %i.aiv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aio, %._crit_edge.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i1.i.i, label %bb.fy, label %bb.fm

bb.fm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !75, !noalias !134
  %i.aiy = ptrtoint ptr %i.aix to i64
  %i.aiz = ptrtoint ptr %i.aiv to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  call void @_ZdlPvm(ptr noundef nonnull %i.aiv, i64 noundef %i.aja) #28, !noalias !134
  br label %bb.fy

.thread.i:                                        ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i, %bb.fk
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.sroa.14.0, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ] ; 2 uses
  %.sroa.02336.1 = phi ptr [ %.pn2414.a, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.sroa.10.0.a, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ] ; 7 uses
  %i.ajc = phi ptr [ %.sroa.02336.2, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.sroa.14.0, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ] ; 3 uses
  %i.ajd = phi ptr [ %.sroa.10.1.a, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.sroa.10.0.a, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ] ; 3 uses
  %.sroa.02.09.i = phi ptr [ %i.akf, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %i.aim, %_ZNSt6vectorIaSaIaEE7reserveEm.exit.i ] ; 2 uses
  %i.aje = load ptr, ptr %.sroa.02.09.i, align 8, !tbaa !16, !noalias !134
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fo, %.lr.ph.i
  %.017.i.i.i = phi ptr [ %i.aje, %.lr.ph.i ], [ %i.ajg, %bb.fo ] ; 5 uses
  %i.ajf = load i8, ptr %.017.i.i.i, align 1, !tbaa !18, !noalias !134
  switch i8 %i.ajf, label %.loopexit.i.i.i [
    i8 32, label %bb.fo
    i8 45, label %bb.fp
    i8 43, label %bb.fq
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.ajg = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  br label %bb.fn, !llvm.loop !137

bb.fp:                                            ; preds = %bb.fn
  %i.ajh = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  br label %.loopexit.i.i.i

bb.fq:                                            ; preds = %bb.fn
  %i.aji = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.fn, %bb.fq, %bb.fp
  %.1.i.i.i = phi ptr [ %i.ajh, %bb.fp ], [ %i.aji, %bb.fq ], [ %.017.i.i.i, %bb.fn ] ; 2 uses
  %.016.i.i.i = phi i8 [ -1, %bb.fp ], [ 1, %bb.fq ], [ 1, %bb.fn ]
  %i.ajj = load i8, ptr %.1.i.i.i, align 1, !tbaa !18, !noalias !134 ; 2 uses
  %i.ajk = add i8 %i.ajj, -48
  %or.cond22.i.i.i = icmp ult i8 %i.ajk, 10
  br i1 %or.cond22.i.i.i, label %.lr.ph.i.i.i1039, label %_ZNK8LightGBM6Common17__StringToTHelperIaLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

.lr.ph.i.i.i1039:                                 ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i1039
  %i.ajl = phi i8 [ %i.ajp, %.lr.ph.i.i.i1039 ], [ %i.ajj, %.loopexit.i.i.i ]
  %.024.i.i.i = phi i8 [ %i.ajn, %.lr.ph.i.i.i1039 ], [ 0, %.loopexit.i.i.i ]
  %.223.i.i.i = phi ptr [ %i.ajo, %.lr.ph.i.i.i1039 ], [ %.1.i.i.i, %.loopexit.i.i.i ]
  %i.ajm = mul i8 %.024.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.ajl, -48
  %i.ajn = add i8 %narrow.i.i.i, %i.ajm           ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.223.i.i.i, i64 1 ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !18, !noalias !134 ; 2 uses
  %i.ajq = add i8 %i.ajp, -48
  %or.cond.i.i.i = icmp ult i8 %i.ajq, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i1039, label %.critedge.loopexit.i.i.i, !llvm.loop !138

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i1039
  %i.ajr = mul i8 %i.ajn, %.016.i.i.i
  br label %_ZNK8LightGBM6Common17__StringToTHelperIaLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNK8LightGBM6Common17__StringToTHelperIaLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.critedge.loopexit.i.i.i, %.loopexit.i.i.i
  %.0.lcssa.i.i.i = phi i8 [ 0, %.loopexit.i.i.i ], [ %i.ajr, %.critedge.loopexit.i.i.i ] ; 2 uses
  %.not.i.i.i1037 = icmp eq ptr %i.ajd, %i.ajc
  br i1 %.not.i.i.i1037, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIaLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  store i8 %.0.lcssa.i.i.i, ptr %i.ajd, align 1, !tbaa !18, !noalias !134
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

bb.fs:                                            ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIaLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ajs = ptrtoint ptr %i.ajc to i64
  %i.ajt = ptrtoint ptr %.sroa.02336.1 to i64     ; 2 uses
  %i.aju = sub i64 %i.ajs, %i.ajt                 ; 8 uses
  %i.ajv = icmp eq i64 %i.aju, 9223372036854775807
  br i1 %i.ajv, label %bb.ft, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.372) #29
          to label %.noexc10.i unwind label %.loopexit.split-lp.i, !noalias !134

.noexc10.i:                                       ; preds = %bb.ft
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.fs
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aju, i64 1)
  %i.ajw = add i64 %.sroa.speculated.i.i.i.i.i, %i.aju ; 2 uses
  %i.ajx = icmp ult i64 %i.ajw, %i.aju
  %i.ajy = call i64 @llvm.umin.i64(i64 %i.ajw, i64 9223372036854775807)
  %i.ajz = select i1 %i.ajx, i64 9223372036854775807, i64 %i.ajy ; 3 uses
  %.not.i.i.i.i.i1038 = icmp ne i64 %i.ajz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i1038)
  %i.aka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajz) #31
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !134 ; 4 uses

.noexc11.i:                                       ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.aju ; 2 uses
  store i8 %.0.lcssa.i.i.i, ptr %i.akb, align 1, !tbaa !18, !noalias !134
  %i.akc = icmp sgt i64 %i.aju, 0
  br i1 %i.akc, label %bb.fu, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.fu:                                            ; preds = %.noexc11.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aka, ptr align 1 %.sroa.02336.1, i64 %i.aju, i1 false), !noalias !134
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.fu, %.noexc11.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.02336.1, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02336.1, i64 noundef %i.aju) #28, !noalias !134
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.fv, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.ajz ; 2 uses
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.fr
  %.sroa.14.2 = phi ptr [ %i.akd, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.14.1, %bb.fr ] ; 2 uses
  %.pn2414.a = phi ptr [ %i.aka, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.02336.1, %bb.fr ] ; 2 uses
  %.sroa.02336.2 = phi ptr [ %i.akd, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.ajc, %bb.fr ]
  %i.ake = phi ptr [ %i.akb, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.ajd, %bb.fr ]
  %.sroa.10.1.a = getelementptr inbounds nuw i8, ptr %i.ake, i64 1 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.02.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.akf, %i.ail
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp.i:                             ; preds = %bb.ft
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i12.i = icmp eq ptr %.sroa.02336.1, null
  br i1 %.not.i.i.i12.i, label %_ZNSt6vectorIaSaIaEED2Ev.exit.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.akg = ptrtoint ptr %.sroa.14.1 to i64
  %i.akh = sub i64 %i.akg, %i.ajt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02336.1, i64 noundef %i.akh) #28, !noalias !134
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit.i

_ZNSt6vectorIaSaIaEED2Ev.exit.i:                  ; preds = %bb.fx, %bb.fw, %.thread.i
  %.pn38.i = phi { ptr, i32 } [ %i.ajb, %.thread.i ], [ %.pn.i, %bb.fw ], [ %.pn.i, %bb.fx ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !134
  br label %.body

bb.fy:                                            ; preds = %bb.fm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !134
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !139 ; 3 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !140
  store ptr %.sroa.02336.3, ptr %i.aki, align 8, !tbaa !139
  %145 = inttoptr i64 %.sroa.10.2 to ptr
  store ptr %145, ptr %i.akk, align 8, !tbaa !141
  store ptr %.sroa.14.3, ptr %i.akl, align 8, !tbaa !140
  %.not.i.i.i.i.i1042 = icmp eq ptr %i.akj, null
  br i1 %.not.i.i.i.i.i1042, label %_ZNSt6vectorIaSaIaEED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.akn = ptrtoint ptr %i.akm to i64
  %i.ako = ptrtoint ptr %i.akj to i64
  %i.akp = sub i64 %i.akn, %i.ako
  call void @_ZdlPvm(ptr noundef nonnull %i.akj, i64 noundef %i.akp) #28
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

bb.ga:                                            ; preds = %.noexc.i1018
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046

bb.gb:                                            ; preds = %.invoke3085, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1025, %bb.fi, %bb.fh, %.noexc1019
  %i.akr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aks = load ptr, ptr %51, align 8, !tbaa !16  ; 2 uses
  %i.akt = icmp eq ptr %i.aks, %i.ahk
  br i1 %i.akt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044: ; preds = %bb.gb
  %i.aku = load i64, ptr %i.ahk, align 8, !tbaa !18
  %i.akv = add i64 %i.aku, 1
  call void @_ZdlPvm(ptr noundef %i.aks, i64 noundef %i.akv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044, %bb.ga
  %.pn359 = phi { ptr, i32 } [ %i.akq, %bb.ga ], [ %i.akr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044 ], [ %i.akr, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %.body

bb.gc:                                            ; preds = %bb.fj
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIaSaIaEED2Ev.exit:                    ; preds = %bb.fy, %bb.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.akx = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  store ptr %i.akx, ptr %52, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #27
  store i64 27, ptr %i.ao, align 8, !tbaa !14
  %i.aky = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef 0)
          to label %.noexc1049 unwind label %bb.gh ; 2 uses

.noexc1049:                                       ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  store ptr %i.aky, ptr %52, align 8, !tbaa !16
  %i.akz = load i64, ptr %i.ao, align 8, !tbaa !14 ; 3 uses
  store i64 %i.akz, ptr %i.akx, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aky, ptr noundef nonnull align 1 dereferenceable(27) @.str.118, i64 27, i1 false)
  %i.ala = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.akz, ptr %i.ala, align 8, !tbaa !19
  %i.alb = load ptr, ptr %52, align 8, !tbaa !16
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.akz
  store i8 0, ptr %i.alc, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #27
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ale = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %.noexc1057 unwind label %bb.gi

.noexc1057:                                       ; preds = %.noexc1049
  %.not.i.i.not.i1051 = icmp eq ptr %i.ale, null
  br i1 %.not.i.i.not.i1051, label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063, label %bb.gd

bb.gd:                                            ; preds = %.noexc1057
  %i.alf = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %.noexc1058 unwind label %bb.gi ; 2 uses

.noexc1058:                                       ; preds = %bb.gd
  %.not.i.i8.i1052 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i8.i1052, label %.invoke3087, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1053

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1053: ; preds = %.noexc1058
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 48
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !19
  %i.ali = icmp eq i64 %i.alh, 0
  br i1 %i.ali, label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063, label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1053
  %i.alj = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %.noexc1060 unwind label %bb.gi ; 2 uses

.noexc1060:                                       ; preds = %bb.ge
  %.not.i.i9.i1054 = icmp eq ptr %i.alj, null
  br i1 %.not.i.i9.i1054, label %.invoke3087, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1055

.invoke3087:                                      ; preds = %.noexc1060, %.noexc1058
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.371) #29
          to label %.cont3088 unwind label %bb.gi

.cont3088:                                        ; preds = %.invoke3087
  unreachable

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1055: ; preds = %.noexc1060
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ald, ptr noundef nonnull align 8 dereferenceable(32) %i.alk)
          to label %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063 unwind label %bb.gi

_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit.i1053, %.noexc1057, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1055
  %i.all = load ptr, ptr %52, align 8, !tbaa !16  ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.akx
  br i1 %i.alm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064: ; preds = %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063
  %i.aln = load i64, ptr %i.akx, align 8, !tbaa !18
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.all, i64 noundef %i.alo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066: ; preds = %_ZN8LightGBM6Config9GetStringERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_PS7_.exit1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  %i.alp = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  store ptr %i.alp, ptr %53, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #27
  store i64 16, ptr %i.an, align 8, !tbaa !14
  %i.alq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef 0)
          to label %.noexc1069 unwind label %bb.gj ; 2 uses

.noexc1069:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066
  store ptr %i.alq, ptr %53, align 8, !tbaa !16
  %i.alr = load i64, ptr %i.an, align 8, !tbaa !14 ; 3 uses
  store i64 %i.alr, ptr %i.alp, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.alq, ptr noundef nonnull align 1 dereferenceable(16) @.str.121, i64 16, i1 false)
  %i.als = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %i.alr, ptr %i.als, align 8, !tbaa !19
  %i.alt = load ptr, ptr %53, align 8, !tbaa !16
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.alr
  store i8 0, ptr %i.alu, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #27
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.alw = invoke noundef zeroext i1 @_ZN8LightGBM6Config9GetDoubleERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_Pd(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %i.alv)
          to label %bb.gf unwind label %bb.gk     ; 0 uses

bb.gf:                                            ; preds = %.noexc1069
  %i.alx = load ptr, ptr %53, align 8, !tbaa !16  ; 2 uses
  %i.aly = icmp eq ptr %i.alx, %i.alp
  br i1 %i.aly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071: ; preds = %bb.gf
  %i.alz = load i64, ptr %i.alp, align 8, !tbaa !18
  %i.ama = add i64 %i.alz, 1
  call void @_ZdlPvm(ptr noundef %i.alx, i64 noundef %i.ama) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1071
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  %i.amb = load double, ptr %i.alv, align 8, !tbaa !142
  %i.amc = fcmp ult double %i.amb, 0.000000e+00
  br i1 %i.amc, label %bb.gg, label %._crit_edge.i.i1080

bb.gg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.311, i32 noundef 475)
          to label %._crit_edge.i.i1080 unwind label %bb.o

bb.gh:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit
  %i.amd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

bb.gi:                                            ; preds = %.invoke3087, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit10.i1055, %bb.ge, %bb.gd, %.noexc1049
  %i.ame = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amf = load ptr, ptr %52, align 8, !tbaa !16  ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.akx
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074: ; preds = %bb.gi
  %i.amh = load i64, ptr %i.akx, align 8, !tbaa !18
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074, %bb.gh
  %.pn361 = phi { ptr, i32 } [ %i.amd, %bb.gh ], [ %i.ame, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074 ], [ %i.ame, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %.body

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066
  %i.amj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079

bb.gk:                                            ; preds = %.noexc1069
  %i.amk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aml = load ptr, ptr %53, align 8, !tbaa !16  ; 2 uses
  %i.amm = icmp eq ptr %i.aml, %i.alp
  br i1 %i.amm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077: ; preds = %bb.gk
  %i.amn = load i64, ptr %i.alp, align 8, !tbaa !18
  %i.amo = add i64 %i.amn, 1
  call void @_ZdlPvm(ptr noundef %i.aml, i64 noundef %i.amo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077, %bb.gj
end_hunk_0
