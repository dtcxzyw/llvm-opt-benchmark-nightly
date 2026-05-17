inline.NumInlined: 2127
inline.NumDeleted: 733
begin_hunk_0_@_ZN2v88internal40SetPrototypeSymmetricDifferenceAssembler43GenerateSetPrototypeSymmetricDifferenceImplEv:bb.a
  store ptr %i.aer, ptr %i.aet, align 8
  %i.aeu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #8 ; 7 uses
  store ptr %i.aeu, ptr %262, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 40 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %262, i64 16 ; 2 uses
  store ptr %i.aev, ptr %i.aew, align 8
  store ptr %i.aeh, ptr %i.aeu, align 8
  %.sroa.41573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  store ptr %i.aej, ptr %.sroa.41573.0..sroa_idx, align 8
  %.sroa.51574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  store ptr %i.ael, ptr %.sroa.51574.0..sroa_idx, align 8
  %.sroa.61575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  store ptr %i.aen, ptr %.sroa.61575.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aeu, i64 32
  store ptr %i.aeo, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %262, i64 8
  store ptr %i.aev, ptr %i.aex, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJS4_S5_SF_SF_SG_EEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISR_EEPNSK_IJDpT0_EEEST_(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull dead_on_return %260, ptr noundef nonnull %138, ptr noundef nonnull %261, ptr noundef nonnull %141, ptr noundef nonnull %262)
  %i.aey = load ptr, ptr %262, align 8            ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit257, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i251
  %i.aez = load ptr, ptr %i.aew, align 8
  %i.afa = ptrtoint ptr %i.aez to i64
  %i.afb = ptrtoint ptr %i.aey to i64
  %i.afc = sub i64 %i.afa, %i.afb
  call void @_ZdlPvm(ptr noundef nonnull %i.aey, i64 noundef %i.afc) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit257

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit257: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i251, %bb.cy
  %i.afd = load ptr, ptr %261, align 8            ; 3 uses
  %.not.i.i.i258 = icmp eq ptr %i.afd, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit257
  %i.afe = load ptr, ptr %i.aes, align 8
  %i.aff = ptrtoint ptr %i.afe to i64
  %i.afg = ptrtoint ptr %i.afd to i64
  %i.afh = sub i64 %i.aff, %i.afg
  call void @_ZdlPvm(ptr noundef nonnull %i.afd, i64 noundef %i.afh) #9
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259: ; preds = %bb.cz, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit257, %bb.cv
  %i.afi = getelementptr inbounds nuw i8, ptr %138, i64 64
  %i.afj = load i64, ptr %i.afi, align 8
  %.not1887 = icmp eq i64 %i.afj, 0
  br i1 %.not1887, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.dc) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  %i.afk = call noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #8 ; 4 uses
  store ptr %i.afk, ptr %64, align 8
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 5 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  store ptr %i.afl, ptr %i.afm, align 8
  store <4 x i8> <i8 8, i8 7, i8 9, i8 9>, ptr %i.afk, align 1
  %.sroa.7.0..sroa_idx.i.i263 = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  store i8 5, ptr %.sroa.7.0..sroa_idx.i.i263, align 1
  %i.afn = getelementptr inbounds nuw i8, ptr %64, i64 8
  store ptr %i.afl, ptr %i.afn, align 8
  %i.afo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %138, ptr noundef nonnull %64) #7
  %i.afp = load ptr, ptr %64, align 8             ; 3 uses
  %.not.i.i.i.i.i264 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i.i.i264, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i265, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.afq = load ptr, ptr %i.afm, align 8
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afp to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef %i.aft) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i265

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i265: ; preds = %bb.db, %bb.da
  %i.afu = load ptr, ptr %i.afo, align 8          ; 5 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = load ptr, ptr %i.afu, align 8          ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %i.afy = load ptr, ptr %i.afv, align 8          ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %i.aga = load ptr, ptr %i.afx, align 8          ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 32
  %i.agc = load ptr, ptr %i.afz, align 8          ; 2 uses
  %i.agd = load ptr, ptr %i.agb, align 8          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %263) #7
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %263, ptr noundef nonnull %113, i64 noundef 0, ptr noundef null, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %264) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %265) #7
  %i.age = getelementptr inbounds nuw i8, ptr %265, i64 8 ; 2 uses
  call void @_ZN2v88internal17CodeStubAssemblerC2EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.age, ptr noundef %i.a) #7
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal28CollectionsBuiltinsAssemblerE, i64 16), ptr %265, align 8
  store ptr %.sroa.01846.0, ptr %266, align 8
  store ptr %.sroa.01847.0, ptr %267, align 8
  store ptr %.sroa.01848.0, ptr %268, align 8
  store ptr %i.agd, ptr %269, align 8
  call void @_ZN2v88internal28CollectionsBuiltinsAssembler37NextKeyValueIndexTupleUnmodifiedTableENS0_5TNodeINS0_14OrderedHashMapEEENS2_INS0_6Int32TEEES6_NS2_INS0_7IntPtrTEEEPNS0_8compiler18CodeAssemblerLabelE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructKeyValueIndexTuple") align 8 %264, ptr noundef nonnull align 8 dereferenceable(24) %265, ptr noundef nonnull dead_on_return %266, ptr noundef nonnull dead_on_return %267, ptr noundef nonnull dead_on_return %268, ptr noundef nonnull dead_on_return %269, ptr noundef nonnull %263) #7
  %i.agf = getelementptr inbounds nuw i8, ptr %264, i64 8
  %i.agg = load <2 x ptr>, ptr %i.agf, align 8, !noalias !135
  %i.agh = load ptr, ptr %264, align 8, !noalias !135
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.age) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  %i.agi = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #8 ; 8 uses
  store ptr %i.agi, ptr %63, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 48 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  store ptr %i.agj, ptr %i.agk, align 8
  store ptr %i.afw, ptr %i.agi, align 8
  %.sroa.4.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  store ptr %i.afy, ptr %.sroa.4.0..sroa_idx.i.i276, align 8
  %.sroa.5.0..sroa_idx.i.i277 = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  store ptr %i.aga, ptr %.sroa.5.0..sroa_idx.i.i277, align 8
  %.sroa.6.0..sroa_idx.i.i278 = getelementptr inbounds nuw i8, ptr %i.agi, i64 24
  store ptr %i.agc, ptr %.sroa.6.0..sroa_idx.i.i278, align 8
  %.sroa.7.0..sroa_idx.i.i279 = getelementptr inbounds nuw i8, ptr %i.agi, i64 32
  store ptr %i.agd, ptr %.sroa.7.0..sroa_idx.i.i279, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.agi, i64 40
  store ptr %i.agd, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %i.agj, ptr %i.agl, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %140, ptr noundef nonnull %63) #7
  %i.agm = load ptr, ptr %63, align 8             ; 3 uses
  %.not.i.i.i.i.i280 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i.i.i.i280, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i265
  %i.agn = load ptr, ptr %i.agk, align 8
  %i.ago = ptrtoint ptr %i.agn to i64
  %i.agp = ptrtoint ptr %i.agm to i64
  %i.agq = sub i64 %i.ago, %i.agp
  call void @_ZdlPvm(ptr noundef nonnull %i.agm, i64 noundef %i.agq) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i265, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.ds) #7
  %i.agr = getelementptr inbounds nuw i8, ptr %263, i64 8
  %i.ags = load i64, ptr %i.agr, align 8
  %.not1888 = icmp eq i64 %i.ags, 0
  br i1 %.not1888, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %263) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  %i.agt = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #8 ; 8 uses
  store ptr %i.agt, ptr %62, align 8
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 48 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  store ptr %i.agu, ptr %i.agv, align 8
  store ptr %i.afw, ptr %i.agt, align 8
  %.sroa.4.0..sroa_idx.i.i281 = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  store ptr %i.afy, ptr %.sroa.4.0..sroa_idx.i.i281, align 8
  %.sroa.5.0..sroa_idx.i.i282 = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  store ptr %i.aga, ptr %.sroa.5.0..sroa_idx.i.i282, align 8
  %.sroa.6.0..sroa_idx.i.i283 = getelementptr inbounds nuw i8, ptr %i.agt, i64 24
  store ptr %i.agc, ptr %.sroa.6.0..sroa_idx.i.i283, align 8
  %.sroa.7.0..sroa_idx.i.i284 = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  store ptr %i.agd, ptr %.sroa.7.0..sroa_idx.i.i284, align 8
  %.sroa.8.0..sroa_idx.i.i285 = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  store ptr %i.agd, ptr %.sroa.8.0..sroa_idx.i.i285, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %i.agu, ptr %i.agw, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %139, ptr noundef nonnull %62) #7
  %i.agx = load ptr, ptr %62, align 8             ; 3 uses
  %.not.i.i.i.i.i286 = icmp eq ptr %i.agx, null
  br i1 %.not.i.i.i.i.i286, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit287, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.agy = load ptr, ptr %i.agv, align 8
  %i.agz = ptrtoint ptr %i.agy to i64
  %i.aha = ptrtoint ptr %i.agx to i64
  %i.ahb = sub i64 %i.agz, %i.aha
  call void @_ZdlPvm(ptr noundef nonnull %i.agx, i64 noundef %i.ahb) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit287

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit287: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %62)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.dk) #7
  br label %bb.df

bb.df:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit287, %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTESG_EJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EESL_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %263) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #7
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259
  %.sroa.01852.0 = phi ptr [ %i.agh, %bb.df ], [ null, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259 ] ; 2 uses
  %i.ahc = phi <2 x ptr> [ %i.agg, %bb.df ], [ splat (ptr null), %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit259 ]
  %i.ahd = getelementptr inbounds nuw i8, ptr %139, i64 64
  %i.ahe = load i64, ptr %i.ahd, align 8
  %.not1889 = icmp eq i64 %i.ahe, 0
  br i1 %.not1889, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.dk) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ahf = call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #8 ; 3 uses
  store ptr %i.ahf, ptr %2, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 6 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ahg, ptr %.sroa.7.0..sroa_idx.i, align 8
  store <6 x i8> <i8 8, i8 7, i8 9, i8 9, i8 5, i8 5>, ptr %i.ahf, align 1
  %i.ahh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ahg, ptr %i.ahh, align 8
  %i.ahi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %139, ptr noundef nonnull %2) #7
  %i.ahj = load ptr, ptr %2, align 8              ; 3 uses
  %.not.i.i.i.i1217 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i.i1217, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ahk = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahj to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.ahn) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i: ; preds = %bb.di, %bb.dh
  %i.aho = load ptr, ptr %i.ahi, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.ahq = load <2 x ptr>, ptr %i.aho, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  %i.ahr = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 4 uses
  store ptr %i.ahr, ptr %61, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24 ; 2 uses
  store ptr %i.ahs, ptr %i.ahp, align 8
  store ptr %.sroa.01820.0, ptr %i.ahr, align 8
  %.sroa.4.0..sroa_idx.i.i288 = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store <2 x ptr> %i.ahq, ptr %.sroa.4.0..sroa_idx.i.i288, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %i.ahs, ptr %i.aht, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %164, ptr noundef nonnull %61) #7
  %i.ahu = load ptr, ptr %61, align 8             ; 3 uses
  %.not.i.i.i.i.i290 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i.i.i290, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit291, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i
  %i.ahv = load ptr, ptr %i.ahp, align 8
  %i.ahw = ptrtoint ptr %i.ahv to i64
  %i.ahx = ptrtoint ptr %i.ahu to i64
  %i.ahy = sub i64 %i.ahw, %i.ahx
  call void @_ZdlPvm(ptr noundef nonnull %i.ahu, i64 noundef %i.ahy) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit291

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit291: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.kx) #7
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit291, %bb.dg
  %i.ahz = getelementptr inbounds nuw i8, ptr %140, i64 64
  %i.aia = load i64, ptr %i.ahz, align 8
  %.not1890 = icmp eq i64 %i.aia, 0
  br i1 %.not1890, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.ds) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aib = call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #8 ; 3 uses
  store ptr %i.aib, ptr %1, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 6 ; 2 uses
  %.sroa.7.0..sroa_idx.i1221 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.aic, ptr %.sroa.7.0..sroa_idx.i1221, align 8
  store <6 x i8> <i8 8, i8 7, i8 9, i8 9, i8 5, i8 5>, ptr %i.aib, align 1
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.aic, ptr %i.aid, align 8
  %i.aie = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %140, ptr noundef nonnull %1) #7
  %i.aif = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i.i1223 = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i.i1223, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i1224, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aig = load ptr, ptr %.sroa.7.0..sroa_idx.i1221, align 8
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = ptrtoint ptr %i.aif to i64
  %i.aij = sub i64 %i.aih, %i.aii
  call void @_ZdlPvm(ptr noundef nonnull %i.aif, i64 noundef %i.aij) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i1224

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i1224: ; preds = %bb.dm, %bb.dl
  %i.aik = load ptr, ptr %i.aie, align 8
  %i.ail = load <2 x ptr>, ptr %i.aik, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %270) #7
  store ptr %i.b, ptr %271, align 8
  store ptr %.sroa.01852.0, ptr %272, align 8
  store <2 x ptr> %i.ail, ptr %273, align 16
  call void @_ZN2v88internal25FastSymmetricDifference_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_44TorqueStructStableJSSetBackingTableWitness_0ENS0_47TorqueStructOrderedHashSetAndNumberOfElements_0EPKc(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructOrderedHashSetAndNumberOfElements_0") align 8 %270, ptr noundef %i.a, ptr noundef nonnull dead_on_return %271, ptr noundef nonnull dead_on_return %272, ptr nonnull dead_on_return poison, ptr noundef nonnull dead_on_return %273, ptr noundef nonnull @.str.2)
  %i.aim = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.ain = load <2 x ptr>, ptr %270, align 16, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  %i.aio = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #8 ; 5 uses
  store ptr %i.aio, ptr %60, align 8
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 40 ; 2 uses
  store ptr %i.aip, ptr %i.aim, align 8
  store <2 x ptr> %i.ain, ptr %i.aio, align 8
  %.sroa.5.0..sroa_idx.i.i293 = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  store ptr %.sroa.01852.0, ptr %.sroa.5.0..sroa_idx.i.i293, align 8
  %.sroa.6.0..sroa_idx.i.i294 = getelementptr inbounds nuw i8, ptr %i.aio, i64 24
  store <2 x ptr> %i.ahc, ptr %.sroa.6.0..sroa_idx.i.i294, align 8
  %i.aiq = getelementptr inbounds nuw i8, ptr %60, i64 8
  store ptr %i.aip, ptr %i.aiq, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %137, ptr noundef nonnull %60) #7
  %i.air = load ptr, ptr %60, align 8             ; 3 uses
  %.not.i.i.i.i.i296 = icmp eq ptr %i.air, null
  br i1 %.not.i.i.i.i.i296, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit297, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i1224
  %i.ais = load ptr, ptr %i.aim, align 8
  %i.ait = ptrtoint ptr %i.ais to i64
  %i.aiu = ptrtoint ptr %i.air to i64
  %i.aiv = sub i64 %i.ait, %i.aiu
  call void @_ZdlPvm(ptr noundef nonnull %i.air, i64 noundef %i.aiv) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit297

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit297: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i1224, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %60)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.cu) #7
  br label %bb.do

bb.do:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiENS0_5UnionIJS5_NS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEESF_NS0_7IntPtrTEEJNS0_5TNodeIS4_EENSH_IS5_EENSH_ISF_EESK_NSH_ISG_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit297, %bb.dk
  %i.aiw = getelementptr inbounds nuw i8, ptr %141, i64 64
  %i.aix = load i64, ptr %i.aiw, align 8
  %.not1891 = icmp eq i64 %i.aix, 0
  br i1 %.not1891, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.ea) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  %i.aiy = call noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #8 ; 4 uses
  store ptr %i.aiy, ptr %59, align 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 5 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  store ptr %i.aiz, ptr %i.aja, align 8
  store <4 x i8> <i8 8, i8 7, i8 9, i8 9>, ptr %i.aiy, align 1
  %.sroa.7.0..sroa_idx.i.i301 = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  store i8 5, ptr %.sroa.7.0..sroa_idx.i.i301, align 1
  %i.ajb = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %i.aiz, ptr %i.ajb, align 8
  %i.ajc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %141, ptr noundef nonnull %59) #7
  %i.ajd = load ptr, ptr %59, align 8             ; 3 uses
  %.not.i.i.i.i.i302 = icmp eq ptr %i.ajd, null
  br i1 %.not.i.i.i.i.i302, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i303, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aje = load ptr, ptr %i.aja, align 8
  %i.ajf = ptrtoint ptr %i.aje to i64
  %i.ajg = ptrtoint ptr %i.ajd to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  call void @_ZdlPvm(ptr noundef nonnull %i.ajd, i64 noundef %i.ajh) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i303

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i303: ; preds = %bb.dq, %bb.dp
  %i.aji = load ptr, ptr %i.ajc, align 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.ajk = load <2 x ptr>, ptr %i.aji, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  %i.ajl = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #8 ; 3 uses
  store ptr %i.ajl, ptr %58, align 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16 ; 2 uses
  store ptr %i.ajm, ptr %i.ajj, align 8
  store <2 x ptr> %i.ajk, ptr %i.ajl, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %i.ajm, ptr %i.ajn, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %142, ptr noundef nonnull %58) #7
  %i.ajo = load ptr, ptr %58, align 8             ; 3 uses
  %.not.i.i.i.i.i315 = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i.i.i.i315, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiEEJNS0_5TNodeIS4_EENS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit316, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i303
  %i.ajp = load ptr, ptr %i.ajj, align 8
  %i.ajq = ptrtoint ptr %i.ajp to i64
  %i.ajr = ptrtoint ptr %i.ajo to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr
  call void @_ZdlPvm(ptr noundef nonnull %i.ajo, i64 noundef %i.ajs) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiEEJNS0_5TNodeIS4_EENS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit316

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiEEJNS0_5TNodeIS4_EENS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit316: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i303, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.ei) #7
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetENS0_3SmiEEJNS0_5TNodeIS4_EENS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit316, %bb.do
  %i.ajt = getelementptr inbounds nuw i8, ptr %142, i64 64
  %i.aju = load i64, ptr %i.ajt, align 8
  %.not1892 = icmp eq i64 %i.aju, 0
  br i1 %.not1892, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.ei) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  %i.ajv = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #8 ; 4 uses
  store ptr %i.ajv, ptr %57, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 2 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  store ptr %i.ajw, ptr %i.ajx, align 8
  store i8 8, ptr %i.ajv, align 1
  %.sroa.4.0..sroa_idx.i.i317 = getelementptr inbounds nuw i8, ptr %i.ajv, i64 1
  store i8 7, ptr %.sroa.4.0..sroa_idx.i.i317, align 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %i.ajw, ptr %i.ajy, align 8
  %i.ajz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %142, ptr noundef nonnull %57) #7
  %i.aka = load ptr, ptr %57, align 8             ; 3 uses
  %.not.i.i.i.i.i318 = icmp eq ptr %i.aka, null
  br i1 %.not.i.i.i.i.i318, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i319, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.akb = load ptr, ptr %i.ajx, align 8
  %i.akc = ptrtoint ptr %i.akb to i64
  %i.akd = ptrtoint ptr %i.aka to i64
  %i.ake = sub i64 %i.akc, %i.akd
  call void @_ZdlPvm(ptr noundef nonnull %i.aka, i64 noundef %i.ake) #9
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i319

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i319: ; preds = %bb.du, %bb.dt
  %i.akf = load ptr, ptr %i.ajz, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.akh = load <2 x ptr>, ptr %i.akf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  %i.aki = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 4 uses
  store ptr %i.aki, ptr %56, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24 ; 2 uses
  store ptr %i.akj, ptr %i.akg, align 8
  store ptr %.sroa.01820.0, ptr %i.aki, align 8
  %.sroa.4.0..sroa_idx.i.i321 = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  store <2 x ptr> %i.akh, ptr %.sroa.4.0..sroa_idx.i.i321, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.akj, ptr %i.akk, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %163, ptr noundef nonnull %56) #7
  %i.akl = load ptr, ptr %56, align 8             ; 3 uses
  %.not.i.i.i.i.i323 = icmp eq ptr %i.akl, null
  br i1 %.not.i.i.i.i.i323, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit324, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i319
  %i.akm = load ptr, ptr %i.akg, align 8
  %i.akn = ptrtoint ptr %i.akm to i64
  %i.ako = ptrtoint ptr %i.akl to i64
  %i.akp = sub i64 %i.akn, %i.ako
  call void @_ZdlPvm(ptr noundef nonnull %i.akl, i64 noundef %i.akp) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit324

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit324: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i319, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.kp) #7
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_14OrderedHashSetES4_NS0_3SmiEEJNS0_5TNodeIS4_EES7_NS6_IS5_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit324, %bb.ds
  %i.akq = getelementptr inbounds nuw i8, ptr %143, i64 64
  %i.akr = load i64, ptr %i.akq, align 8
  %.not1893 = icmp eq i64 %i.akr, 0
  br i1 %.not1893, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull %i.el) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  %i.aks = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %143, ptr noundef nonnull %55) #7 ; 0 uses
  %i.akt = load ptr, ptr %55, align 8             ; 3 uses
  %.not.i.i.i.i.i325 = icmp eq ptr %i.akt, null
  br i1 %.not.i.i.i.i.i325, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit326, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aku = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = ptrtoint ptr %i.akv to i64
  %i.akx = ptrtoint ptr %i.akt to i64
  %i.aky = sub i64 %i.akw, %i.akx
  call void @_ZdlPvm(ptr noundef nonnull %i.akt, i64 noundef %i.aky) #9
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit326

end_hunk_0
