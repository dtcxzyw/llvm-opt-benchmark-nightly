Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hbond?download=true
inline.NumInlined: 2772
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_15Hbond12searchDonorsERKNS_19TopologyInformationEPNS1_6t_infoEPKSt6vectorIiSaIiEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i
  %i.aey = load i64, ptr %i.aew, align 8, !tbaa !30
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aez) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i, %bb.en
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aef, %bb.en ], [ %.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i ], [ %.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i ] ; 2 uses
  %.5.i = phi i1 [ true, %bb.en ], [ %.4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i ], [ %.4.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.afa = load ptr, ptr %17, align 8, !tbaa !99  ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.afc = icmp eq ptr %i.afa, %i.afb
  br i1 %i.afc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i
  %i.afd = load i64, ptr %i.afb, align 8, !tbaa !30
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afa, i64 noundef %i.afe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i, %bb.em
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aee, %bb.em ], [ %.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i ] ; 2 uses
  %.6.i = phi i1 [ true, %bb.em ], [ %.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i ], [ %.5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i ] ; 2 uses
  %i.aff = load ptr, ptr %18, align 8, !tbaa !99  ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i
  %i.afi = load i64, ptr %i.afg, align 8, !tbaa !30
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i, %bb.el
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aed, %bb.el ], [ %.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i ], [ %.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ] ; 2 uses
  %.7.i = phi i1 [ true, %bb.el ], [ %.6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i ], [ %.6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ]
  %i.afk = load ptr, ptr %19, align 8, !tbaa !99  ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !30
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.7.i, label %.sink.split.i, label %.body254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread93.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread.i, %bb.di
  %i.afp = getelementptr inbounds i8, ptr %.val97, i64 -56 ; 2 uses
  %i.afq = getelementptr inbounds i8, ptr %.val97, i64 -48 ; 3 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !148 ; 4 uses
  %i.afs = getelementptr inbounds i8, ptr %.val97, i64 -40 ; 3 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !118
  %.not.i.i248 = icmp eq ptr %i.afr, %i.aft
  br i1 %.not.i.i248, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread93.i
  store i32 %i.abo, ptr %i.afr, align 4, !tbaa !110
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  store ptr %i.afu, ptr %i.afq, align 8, !tbaa !148
  br label %bb.fb

bb.ew:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.thread93.i
  %i.afv = load ptr, ptr %i.afp, align 8, !tbaa !117 ; 4 uses
  %i.afw = ptrtoint ptr %i.afr to i64
  %i.afx = ptrtoint ptr %i.afv to i64             ; 2 uses
  %i.afy = sub i64 %i.afw, %i.afx                 ; 5 uses
  %i.afz = icmp eq i64 %i.afy, 9223372036854775804
  br i1 %i.afz, label %bb.ex, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #31
          to label %.noexc252 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc252:                                        ; preds = %bb.ex
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ew
  %i.aga = ashr exact i64 %i.afy, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aga, i64 1)
  %i.agb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aga ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %i.aga
  %i.agd = call i64 @llvm.umin.i64(i64 %i.agb, i64 2305843009213693951)
  %i.age = select i1 %i.agc, i64 2305843009213693951, i64 %i.agd ; 3 uses
  %.not.i.i.i.i249 = icmp ne i64 %i.age, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249)
  %i.agf = shl nuw nsw i64 %i.age, 2
  %i.agg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agf) #28
          to label %.noexc253 unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 %i.afy ; 2 uses
  store i32 %i.abo, ptr %i.agh, align 4, !tbaa !110
  %i.agi = icmp sgt i64 %i.afy, 0
  br i1 %i.agi, label %bb.ey, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ey:                                            ; preds = %.noexc253
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agg, ptr align 4 %i.afv, i64 %i.afy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ey, %.noexc253
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.afv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.agk = load ptr, ptr %i.afs, align 8, !tbaa !118
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = sub i64 %i.agl, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %i.afv, i64 noundef %i.agm) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ez, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.agg, ptr %i.afp, align 8, !tbaa !117
  store ptr %i.agj, ptr %i.afq, align 8, !tbaa !148
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.age
  store ptr %i.agn, ptr %i.afs, align 8, !tbaa !118
  br label %bb.fb

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %.sink.i = phi ptr [ %i.acc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %i.aea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ]
  %.pn42.pn.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #29
  br label %.body254

bb.fa:                                            ; preds = %bb.ek, %bb.dr
  unreachable

bb.fb:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.0260.0536, i64 8 ; 2 uses
  %.not328 = icmp eq ptr %i.ago, %.sroa.16.7
  br i1 %.not328, label %.loopexit, label %bb.ck

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ex
  %lpad.loopexit.split-lp978 = landingpad { ptr, i32 }
          cleanup
  br label %.body254

.loopexit:                                        ; preds = %bb.fb, %bb.b
  %i.agp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val95 = load ptr, ptr %i.agp, align 8, !tbaa !119
  %i.agq = getelementptr i8, ptr %2, i64 32
  %.val96 = load ptr, ptr %i.agq, align 8, !tbaa !120
  %i.agr = ptrtoint ptr %.val96 to i64
  %i.ags = ptrtoint ptr %.val95 to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = ashr exact i64 %i.agt, 6
  %i.agv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef %i.agu) ; 0 uses
  %.not.i.i.i256 = icmp eq ptr %.sroa.0288.9, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %.loopexit
  %i.agw = ptrtoint ptr %.sroa.28.9 to i64
  %i.agx = ptrtoint ptr %.sroa.0288.9 to i64
  %i.agy = sub i64 %i.agw, %i.agx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.9, i64 noundef %i.agy) #30
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %.loopexit, %bb.fc
  ret void

.body254:                                         ; preds = %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit359.split.us, %.loopexit.split-lp360, %.loopexit.split-lp355, %.loopexit354.split.us, %.loopexit354.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %.sroa.28.11 = phi ptr [ %.sroa.28.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.sroa.28.6477564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.sroa.28.2.ph.us, %.loopexit354.split.us ], [ %.sroa.28.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %.sroa.28.3.ph361, %.loopexit.split-lp360 ], [ %.sroa.28.9, %.sink.split.i ], [ %.sroa.28.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ], [ %.sroa.28.0531, %.loopexit.split-lp355 ], [ %.sroa.28.2.ph, %.loopexit354.split ], [ %.sroa.28.3.ph.us, %.loopexit359.split.us ], [ %.sroa.28.9, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0288.11 = phi ptr [ %.sroa.0288.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.sroa.0288.6480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.sroa.0288.2.ph.us, %.loopexit354.split.us ], [ %.sroa.0288.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %.sroa.0288.3.ph362, %.loopexit.split-lp360 ], [ %.sroa.0288.9, %.sink.split.i ], [ %.sroa.0288.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ], [ %.sroa.0288.0533, %.loopexit.split-lp355 ], [ %.sroa.0288.2.ph, %.loopexit354.split ], [ %.sroa.0288.3.ph.us, %.loopexit359.split.us ], [ %.sroa.0288.9, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %lpad.loopexit356.us, %.loopexit354.split.us ], [ %.pn42.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %lpad.loopexit.split-lp364, %.loopexit.split-lp360 ], [ %.pn42.pn.pn.pn.pn.pn.pn.pn.ph.i, %.sink.split.i ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp355 ], [ %lpad.loopexit356, %.loopexit354.split ], [ %lpad.loopexit363.us, %.loopexit359.split.us ], [ %lpad.loopexit.split-lp978, %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i257 = icmp eq ptr %.sroa.0288.11, null
  br i1 %.not.i.i.i257, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit258, label %.body254.thread

.body254.thread:                                  ; preds = %.body254
  %i.agz = ptrtoint ptr %.sroa.28.11 to i64
  %i.aha = ptrtoint ptr %.sroa.0288.11 to i64
  %i.ahb = sub i64 %i.agz, %i.aha
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0288.11, i64 noundef %i.ahb) #30
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit258

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit258:     ; preds = %.body254, %.body254.thread
  resume { ptr, i32 } %.pn82.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmx15analysismodules12_GLOBAL__N_15Hbond6linkDAEPNS1_6t_infoE(ptr noundef nonnull %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !174   ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !174 ; 2 uses
  %i.b = icmp eq ptr %.val, %.val31
  br i1 %i.b, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val38 = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.e = icmp eq ptr %.val38, %.val39
  br i1 %i.e, label %bb.g, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val37 = load ptr, ptr %i.g, align 8, !tbaa !159
  %.val36 = load ptr, ptr %i.f, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.058.079 = phi ptr [ %.val37, %.lr.ph ], [ %.sroa.058.1, %bb.f ] ; 3 uses
  %.sroa.059.078 = phi ptr [ %.val, %.lr.ph ], [ %.sroa.059.1, %bb.f ] ; 3 uses
  %.not76 = icmp eq ptr %.sroa.058.079, %.val36
  br i1 %.not76, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %.sroa.059.078, align 4, !tbaa !165 ; 2 uses
  %i.i = load i32, ptr %.sroa.058.079, align 8, !tbaa !163 ; 2 uses
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.059.078, i64 4
  store i8 1, ptr %i.k, align 4, !tbaa !217
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not = icmp sgt i32 %i.h, %i.i                 ; 2 uses
  %.sroa.059.1.idx = select i1 %.not, i64 0, i64 8
  %.sroa.059.1 = getelementptr inbounds nuw i8, ptr %.sroa.059.078, i64 %.sroa.059.1.idx ; 2 uses
  %.sroa.058.1.idx = select i1 %.not, i64 64, i64 0
  %.sroa.058.1 = getelementptr inbounds nuw i8, ptr %.sroa.058.079, i64 %.sroa.058.1.idx
  %.not75 = icmp eq ptr %.sroa.059.1, %.val31
  br i1 %.not75, label %.critedge, label %bb.c, !llvm.loop !495

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.b
  ret void

bb.g:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 24) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull @.str.78)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %.thread89

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.79)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %1, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx15analysismodules12_GLOBAL__N_15Hbond6linkDAEPNS1_6t_infoE, ptr %i.r, align 8, !tbaa !126
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.46, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !126
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 625, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !110
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.l, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr %i.l, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #31
          to label %bb.x unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread: ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.o:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.p:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.x, %bb.s ], [ %i.w, %bb.r ]
  %.1 = phi i1 [ %.0, %bb.s ], [ true, %bb.r ]
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.v, %bb.q ] ; 2 uses
  %.2 = phi i1 [ %.1, %bb.t ], [ true, %bb.q ]    ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !99     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.p ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn, %bb.u ] ; 2 uses
  %.3 = phi i1 [ true, %bb.p ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.2, %bb.u ] ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !99    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.4 = phi i1 [ true, %bb.o ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ai = load ptr, ptr %6, align 8, !tbaa !99    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.an = load ptr, ptr %5, align 8, !tbaa !99    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

.thread89:                                        ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ar = load ptr, ptr %5, align 8, !tbaa !99    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread: ; preds = %.thread89
  %i.au = load i64, ptr %i.as, align 8, !tbaa !30
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread96: ; preds = %.thread89
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = icmp ult i64 %10, 16
  call void @llvm.assume(i1 %11)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !30
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.4, label %bb.v, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.4, label %bb.v, label %bb.w

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread
  %.pn.pn.pn.pn.pn.pn.pn63.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread96 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn.pn.pn.pn.pn.pn.pn63 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn.pn.pn.pn.pn.pn63.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.l) #29
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.v
  %.pn.pn.pn.pn.pn.pn.pn62 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn.pn.pn.pn.pn.pn63, %bb.v ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn62

bb.x:                                             ; preds = %bb.n
  unreachable
}

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !112
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !99
  %i.j = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.j, ptr %i.e, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !30
  store i8 %i.l, ptr %i.k, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !29
  %i.o = load ptr, ptr %0, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !158  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #29
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !30
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #29
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !30
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !99
  %i.o = load i64, ptr %i.i, align 8, !tbaa !30
  store i64 %i.o, ptr %i.g, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
end_hunk_0
