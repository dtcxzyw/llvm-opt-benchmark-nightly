Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_ops_main?download=true
inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 368
loop-unroll.NumUnrolled: 512
begin_hunk_0_@_ZN6duckdb11AddFunction11GetFunctionERKNS_11LogicalTypeES3_:bb.a
          to label %bb.ma unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817.thread

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #25
  %i.afm = load i8, ptr %2, align 8, !tbaa !60
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %135, i8 noundef zeroext %i.afm)
          to label %bb.mb unwind label %bb.md

bb.mb:                                            ; preds = %bb.ma
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.afk, ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %135)
          to label %bb.mc unwind label %bb.me

bb.mc:                                            ; preds = %bb.mb
  invoke void @__cxa_throw(ptr nonnull %i.afk, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.mh unwind label %bb.me

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820.thread: ; preds = %bb.ly
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.md:                                            ; preds = %bb.ma
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814

bb.me:                                            ; preds = %bb.mc, %bb.mb
  %.0 = phi i1 [ false, %bb.mc ], [ true, %bb.mb ] ; 2 uses
  %i.afp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afq = load ptr, ptr %135, align 8, !tbaa !38 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %135, i64 16
  %i.afs = icmp eq ptr %i.afq, %i.afr
  br i1 %i.afs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812: ; preds = %bb.me
  call void @_ZdlPv(ptr noundef %i.afq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814: ; preds = %bb.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812, %bb.md
  %.pn363 = phi { ptr, i32 } [ %i.afo, %bb.md ], [ %i.afp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812 ], [ %i.afp, %bb.me ] ; 4 uses
  %.1 = phi i1 [ true, %bb.md ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i812 ], [ %.0, %bb.me ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #25
  %i.aft = load ptr, ptr %134, align 8, !tbaa !38 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %134, i64 16
  %i.afv = icmp eq ptr %i.aft, %i.afu
  br i1 %i.afv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814
  call void @_ZdlPv(ptr noundef %i.aft) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit814, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i815
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #25
  %i.afw = load ptr, ptr %132, align 8, !tbaa !38 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.afy = icmp eq ptr %i.afw, %i.afx
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817.thread: ; preds = %bb.lz
  %i.afz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #25
  %i.aga = load ptr, ptr %132, align 8, !tbaa !38 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %132, i64 16
  %i.agc = icmp eq ptr %i.aga, %i.agb
  br i1 %i.agc, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817.thread
  call void @_ZdlPv(ptr noundef %i.aga) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817
  call void @_ZdlPv(ptr noundef %i.afw) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  br i1 %.1, label %bb.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  br i1 %.1, label %bb.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818.thread
  %.pn363.pn.pn1095.ph = phi { ptr, i32 } [ %i.afz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818.thread ], [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820.thread ], [ %i.afz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  br label %bb.mf

bb.mf:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820
  %.pn363.pn.pn1095 = phi { ptr, i32 } [ %.pn363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818 ], [ %.pn363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.pn363.pn.pn1095.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.afk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

bb.mg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit778, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %.loopexit1142, %.loopexit1140, %.loopexit1138, %.loopexit1136, %.loopexit1134, %.loopexit1126, %.loopexit1124, %.loopexit1122, %.loopexit1116, %.loopexit1114, %.loopexit1112, %.loopexit1110, %.loopexit1108, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %.pn381.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781 ], [ %.pn381.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390 ], [ %.pn374.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420 ], [ %.pn363.pn.pn1095, %bb.mf ], [ %.pn363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.pn367.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %.pn357.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479 ], [ %.pn351.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507 ], [ %.pn339.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ], [ %.pn333.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %.pn345.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %.pn327.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583 ], [ %.pn321.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611 ], [ %.pn309.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651 ], [ %.pn303.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %.pn297.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671 ], [ %.pn315.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639 ], [ %.pn291.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697 ], [ %.pn285.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725 ], [ %.pn279.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753 ], [ %.pn363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818 ], [ %.pn327.pn.pn.pn, %.loopexit1122 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809 ], [ %.pn381.pn.pn.pn, %.loopexit ], [ %.pn273.pn.pn.pn, %.loopexit1140 ], [ %.pn374.pn.pn.pn.pn, %.loopexit1108 ], [ %.pn291.pn.pn.pn, %.loopexit1134 ], [ %.pn367.pn.pn.pn.pn, %.loopexit1110 ], [ %.pn279.pn.pn.pn, %.loopexit1138 ], [ %.pn357.pn.pn.pn, %.loopexit1112 ], [ %.pn321.pn.pn.pn, %.loopexit1124 ], [ %.pn351.pn.pn.pn, %.loopexit1114 ], [ %.pn285.pn.pn.pn, %.loopexit1136 ], [ %.pn345.pn.pn.pn, %.loopexit1116 ], [ %.pn315.pn.pn.pn, %.loopexit1126 ], [ %.pn.pn.pn.pn, %.loopexit1142 ]
  resume { ptr, i32 } %.pn381.pn.pn.pn.pn.pn

bb.mh:                                            ; preds = %bb.mc
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType9IsNumericEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122BindDecimalAddSubtractINS_11AddOperatorENS_23DecimalAddOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS4_INS_10ExpressionES6_ISE_ELb1EEELb1ESaISG_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.171", align 8 ; 5 uses
  %8 = alloca %"class.std::function", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call fastcc void @_ZN6duckdb12_GLOBAL__N_121BindDecimalArithmeticILb0EEENS_10unique_ptrINS0_25DecimalArithmeticBindDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.val = load ptr, ptr %7, align 8, !tbaa !148   ; 6 uses
  %i.a = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_ELb1EEptEv(ptr %.val)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !152, !range !153, !noundef !154
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73    ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_23DecimalAddOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %8, i8 noundef zeroext %i.f)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.k, align 16, !tbaa !68
  store <2 x ptr> %i.i, ptr %i.l, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

.thread:                                          ; preds = %bb.j, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i

bb.h:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i13 = icmp eq ptr %.val, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i: ; preds = %.thread, %bb.h
  %lpad.phi29 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.h ]
  %i.r = load ptr, ptr %.val, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(9) %.val) #25, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i
  %lpad.phi30 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.h ], [ %lpad.phi29, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %lpad.phi30

bb.i:                                             ; preds = %bb.b
  switch i8 %i.f, label %bb.j [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.i
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !354
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %5, i8 noundef zeroext %i.f)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !354 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72, !noalias !354 ; 3 uses
  %.not.i.i.not.i.i.i14 = icmp eq ptr %i.x, null  ; 2 uses
  %.sroa.039.0.copyload = load ptr, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0 = select i1 %.not.i.i.not.i.i.i14, i64 0, i64 %.sroa.5.0.copyload
  %.sroa.039.0 = select i1 %.not.i.i.not.i.i.i14, ptr null, ptr %.sroa.039.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !354
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i16, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17, label %bb.k

_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ac, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
  %.sroa.0.0 = phi ptr [ %.sroa.039.0, %.noexc ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0, %.noexc ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ad = phi ptr [ %i.z, %.noexc ], [ %i.ab, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ae = phi ptr [ %i.y, %.noexc ], [ %i.aa, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.af = phi ptr [ %i.v, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ag = phi ptr [ %i.x, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx35, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17: ; preds = %bb.k, %.noexc
  %i.ah = phi ptr [ %i.ad, %bb.k ], [ %i.z, %.noexc ]
  %i.ai = phi ptr [ %i.ae, %bb.k ], [ %i.y, %.noexc ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %i.v, %.noexc ]
  %i.ak = phi ptr [ %i.ag, %bb.k ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i15.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i15.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68 ; 3 uses
  store ptr %i.an, ptr %i.al, align 16, !tbaa !68
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !68
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !68
  %.not.i.i.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i18, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17
  %i.aq = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.au = load i8, ptr %i.at, align 1, !tbaa !73
  %.off = add i8 %i.au, 53
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_13TryDecimalAddENS0_22AddPropagateStatisticsENS_11AddOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE, ptr %i.av, align 8, !tbaa !155
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.n
  store ptr %.val, ptr %0, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_126SerializeDecimalArithmeticERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.21), !inline_history !355
  %i.f = load i8, ptr %i.b, align 1, !tbaa !361, !range !153, !noundef !154
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load ptr, ptr %0, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %i.g), !inline_history !355
  %i.k = load ptr, ptr %0, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !355
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.o = load ptr, ptr %0, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.22), !inline_history !356
  %i.r = load ptr, ptr %0, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !357
  call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.u = load ptr, ptr %0, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !357
  %i.x = load ptr, ptr %0, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !356
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 102, ptr noundef nonnull @.str.23), !inline_history !358
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = load ptr, ptr %0, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.ak), !inline_history !359
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !158 ; 2 uses
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !158 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ao, %bb.a ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !360
  call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.at = load ptr, ptr %0, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !360
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.ap
  br i1 %.not.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.ax = load ptr, ptr %0, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !359
  %i.ba = load ptr, ptr %0, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !358
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_11AddOperatorENS_23DecimalAddOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 16 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 10 uses
  %8 = alloca %"class.std::function", align 8     ; 3 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.21), !inline_history !4
  %i.d = load ptr, ptr %1, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !5 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.k = load ptr, ptr %1, align 8, !tbaa !79, !noalias !372
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !372
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.22), !noalias !372, !inline_history !6
  %i.n = load ptr, ptr %1, align 8, !tbaa !79, !noalias !373
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !373
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !373, !inline_history !7
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.q = load ptr, ptr %1, align 8, !tbaa !79, !noalias !373
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !79, !noalias !372
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %common.resume.i

common.resume:                                    ; preds = %.body, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %common.resume.i ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = load ptr, ptr %1, align 8, !tbaa !79, !noalias !374
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !374
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.23)
          to label %.noexc unwind label %bb.h, !inline_history !8

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  invoke void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %.noexc
  %i.aa = load ptr, ptr %1, align 8, !tbaa !79, !noalias !374
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc17
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %.noexc17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !73  ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_23DecimalAddOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %8, i8 noundef zeroext %i.af)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !68
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ag, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !68 ; 2 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 16, !tbaa !68
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.h:                                             ; preds = %.noexc, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.af, label %bb.j [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.i
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !375
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %4, i8 noundef zeroext %i.af)
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71, !noalias !375 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72, !noalias !375 ; 2 uses
  %.not.i.i.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i.i.i18, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit

_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51: ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc19
  %.sroa.049.0.copyload = load ptr, ptr %4, align 8, !noalias !375
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41, !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.az, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
  %.sroa.0.0 = phi ptr [ %.sroa.049.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_11AddOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ba = phi ptr [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bb = phi ptr [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bc = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx46, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, %bb.k
  %i.bd = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bf = phi ptr [ %i.bc, %bb.k ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_11AddOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %.sroa.0.i.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i20.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 16, !tbaa !68
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !68
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !68
  %.not.i.i.i23 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i23, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22
  %i.bm = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr null, ptr %i.bp, align 8, !tbaa !155
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.o

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.br = load i8, ptr %9, align 8, !tbaa !60
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !68
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !68
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.o ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.cb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %bb.o, !inline_history !9 ; 3 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataE, i64 16), ptr %i.cb, align 8, !tbaa !79, !noalias !376
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = zext i1 %i.g to i8
  store i8 %i.cd, ptr %i.cc, align 8, !tbaa !152
  store ptr %i.cb, ptr %0, align 8, !tbaa !83
  %i.ce = load ptr, ptr %7, align 8, !tbaa !65    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.o:                                             ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit, %bb.j, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

.body:                                            ; preds = %bb.h, %bb.b, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.o ], [ %i.ar, %bb.h ], [ %i.ad, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !377
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !377
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, %bb.h
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #25
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_14TryAddOperatorENS0_22AddPropagateStatisticsENS_11AddOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.61") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb16SubtractFunction11GetFunctionERKNS_11LogicalTypeES3_:bb.a
  %i.wi = load i8, ptr %1, align 8, !tbaa !60
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, i8 noundef zeroext %i.wi)
          to label %bb.hl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  %i.wj = load i8, ptr %2, align 8, !tbaa !60
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, i8 noundef zeroext %i.wj)
          to label %bb.hm unwind label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %bb.hn unwind label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  invoke void @__cxa_throw(ptr nonnull %i.wh, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.hr unwind label %bb.hp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580.thread: ; preds = %bb.hj
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ho:                                            ; preds = %bb.hl
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574

bb.hp:                                            ; preds = %bb.hn, %bb.hm
  %.0 = phi i1 [ false, %bb.hn ], [ true, %bb.hm ] ; 2 uses
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = load ptr, ptr %83, align 8, !tbaa !38   ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572: ; preds = %bb.hp
  call void @_ZdlPv(ptr noundef %i.wn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %bb.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572, %bb.ho
  %.pn229 = phi { ptr, i32 } [ %i.wl, %bb.ho ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572 ], [ %i.wm, %bb.hp ] ; 4 uses
  %.1 = phi i1 [ true, %bb.ho ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572 ], [ %.0, %bb.hp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25
  %i.wq = load ptr, ptr %82, align 8, !tbaa !38   ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  call void @_ZdlPv(ptr noundef %i.wq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  %i.wt = load ptr, ptr %80, align 8, !tbaa !38   ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.wv = icmp eq ptr %i.wt, %i.wu
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread: ; preds = %bb.hk
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  %i.wx = load ptr, ptr %80, align 8, !tbaa !38   ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.wz = icmp eq ptr %i.wx, %i.wy
  br i1 %i.wz, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread
  call void @_ZdlPv(ptr noundef %i.wx) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577
  call void @_ZdlPv(ptr noundef %i.wt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  br i1 %.1, label %bb.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  br i1 %.1, label %bb.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578.thread
  %.pn229.pn.pn809.ph = phi { ptr, i32 } [ %i.ww, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578.thread ], [ %i.wk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580.thread ], [ %i.ww, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  br label %bb.hq

bb.hq:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580
  %.pn229.pn.pn809 = phi { ptr, i32 } [ %.pn229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578 ], [ %.pn229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580 ], [ %.pn229.pn.pn809.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.wh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit510, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %.loopexit842, %.loopexit840, %.loopexit838, %.loopexit836, %.loopexit834, %.loopexit832, %.loopexit830, %.loopexit828, %.loopexit826, %.loopexit824, %.loopexit822, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580, %bb.hq
  %.pn247.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn181.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541 ], [ %.pn247.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %.pn240.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286 ], [ %.pn229.pn.pn809, %bb.hq ], [ %.pn229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580 ], [ %.pn233.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317 ], [ %.pn223.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn217.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.pn211.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %.pn205.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429 ], [ %.pn199.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.pn193.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485 ], [ %.pn187.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513 ], [ %.pn229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i578 ], [ %.pn211.pn.pn.pn, %.loopexit830 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569 ], [ %.pn247.pn.pn.pn, %.loopexit ], [ %.pn181.pn.pn.pn, %.loopexit840 ], [ %.pn240.pn.pn.pn.pn, %.loopexit822 ], [ %.pn199.pn.pn.pn, %.loopexit834 ], [ %.pn233.pn.pn.pn.pn, %.loopexit824 ], [ %.pn187.pn.pn.pn, %.loopexit838 ], [ %.pn223.pn.pn.pn, %.loopexit826 ], [ %.pn205.pn.pn.pn, %.loopexit832 ], [ %.pn217.pn.pn.pn, %.loopexit828 ], [ %.pn193.pn.pn.pn, %.loopexit836 ], [ %.pn.pn.pn.pn, %.loopexit842 ]
  resume { ptr, i32 } %.pn247.pn.pn.pn.pn.pn

bb.hr:                                            ; preds = %bb.hn
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_122BindDecimalAddSubtractINS_16SubtractOperatorENS_28DecimalSubtractOverflowCheckELb1EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS4_INS_10ExpressionES6_ISE_ELb1EEELb1ESaISG_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 7 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.171", align 8 ; 5 uses
  %8 = alloca %"class.std::function", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call fastcc void @_ZN6duckdb12_GLOBAL__N_121BindDecimalArithmeticILb0EEENS_10unique_ptrINS0_25DecimalArithmeticBindDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.val = load ptr, ptr %7, align 8, !tbaa !148   ; 6 uses
  %i.a = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_ELb1EEptEv(ptr %.val)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !152, !range !153, !noundef !154
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73    ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_28DecimalSubtractOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %8, i8 noundef zeroext %i.f)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.k, align 16, !tbaa !68
  store <2 x ptr> %i.i, ptr %i.l, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

.thread:                                          ; preds = %bb.j, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i

bb.h:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i13 = icmp eq ptr %.val, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i: ; preds = %.thread, %bb.h
  %lpad.phi29 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.h ]
  %i.r = load ptr, ptr %.val, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(9) %.val) #25, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i
  %lpad.phi30 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.h ], [ %lpad.phi29, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %lpad.phi30

bb.i:                                             ; preds = %bb.b
  switch i8 %i.f, label %bb.j [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.i
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !398
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %5, i8 noundef zeroext %i.f)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !398 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72, !noalias !398 ; 3 uses
  %.not.i.i.not.i.i.i14 = icmp eq ptr %i.x, null  ; 2 uses
  %.sroa.039.0.copyload = load ptr, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0 = select i1 %.not.i.i.not.i.i.i14, i64 0, i64 %.sroa.5.0.copyload
  %.sroa.039.0 = select i1 %.not.i.i.not.i.i.i14, ptr null, ptr %.sroa.039.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !398
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i16, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17, label %bb.k

_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.ac, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
  %.sroa.0.0 = phi ptr [ %.sroa.039.0, %.noexc ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0, %.noexc ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ad = phi ptr [ %i.z, %.noexc ], [ %i.ab, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ae = phi ptr [ %i.y, %.noexc ], [ %i.aa, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.af = phi ptr [ %i.v, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ag = phi ptr [ %i.x, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx35, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17: ; preds = %bb.k, %.noexc
  %i.ah = phi ptr [ %i.ad, %bb.k ], [ %i.z, %.noexc ]
  %i.ai = phi ptr [ %i.ae, %bb.k ], [ %i.y, %.noexc ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %i.v, %.noexc ]
  %i.ak = phi ptr [ %i.ag, %bb.k ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i15.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i15.sroa.0.0.copyload, ptr %i.ai, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68 ; 3 uses
  store ptr %i.an, ptr %i.al, align 16, !tbaa !68
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !68
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !68
  %.not.i.i.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i18, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17
  %i.aq = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i17, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit19, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.au = load i8, ptr %i.at, align 1, !tbaa !73
  %.off = add i8 %i.au, 53
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_18TryDecimalSubtractENS0_27SubtractPropagateStatisticsENS_16SubtractOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE, ptr %i.av, align 8, !tbaa !155
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit24: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.n
  store ptr %.val, ptr %0, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16SubtractOperatorENS_28DecimalSubtractOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 16 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 10 uses
  %8 = alloca %"class.std::function", align 8     ; 3 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.21), !inline_history !4
  %i.d = load ptr, ptr %1, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !5 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.k = load ptr, ptr %1, align 8, !tbaa !79, !noalias !409
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !409
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.22), !noalias !409, !inline_history !6
  %i.n = load ptr, ptr %1, align 8, !tbaa !79, !noalias !410
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !410
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !410, !inline_history !7
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.q = load ptr, ptr %1, align 8, !tbaa !79, !noalias !410
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !79, !noalias !409
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %common.resume.i

common.resume:                                    ; preds = %.body, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %common.resume.i ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = load ptr, ptr %1, align 8, !tbaa !79, !noalias !411
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !411
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.23)
          to label %.noexc unwind label %bb.h, !inline_history !8

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  invoke void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %.noexc
  %i.aa = load ptr, ptr %1, align 8, !tbaa !79, !noalias !411
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc17
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %.noexc17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !73  ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_28DecimalSubtractOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %8, i8 noundef zeroext %i.af)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !68
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ag, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !68 ; 2 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 16, !tbaa !68
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.h:                                             ; preds = %.noexc, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.af, label %bb.j [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.i
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !412
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %4, i8 noundef zeroext %i.af)
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71, !noalias !412 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72, !noalias !412 ; 2 uses
  %.not.i.i.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i.i.i18, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit

_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51: ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc19
  %.sroa.049.0.copyload = load ptr, ptr %4, align 8, !noalias !412
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.az, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
  %.sroa.0.0 = phi ptr [ %.sroa.049.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16SubtractOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ba = phi ptr [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bb = phi ptr [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bc = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx46, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, %bb.k
  %i.bd = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bf = phi ptr [ %i.bc, %bb.k ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16SubtractOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %.sroa.0.i.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i20.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 16, !tbaa !68
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !68
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !68
  %.not.i.i.i23 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i23, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22
  %i.bm = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr null, ptr %i.bp, align 8, !tbaa !155
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.o

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.br = load i8, ptr %9, align 8, !tbaa !60
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !68
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !68
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.o ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.cb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %bb.o, !inline_history !9 ; 3 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataE, i64 16), ptr %i.cb, align 8, !tbaa !79, !noalias !413
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = zext i1 %i.g to i8
  store i8 %i.cd, ptr %i.cc, align 8, !tbaa !152
  store ptr %i.cb, ptr %0, align 8, !tbaa !83
  %i.ce = load ptr, ptr %7, align 8, !tbaa !65    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.o:                                             ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit, %bb.j, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

.body:                                            ; preds = %bb.h, %bb.b, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.o ], [ %i.ar, %bb.h ], [ %i.ad, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_19TrySubtractOperatorENS0_27SubtractPropagateStatisticsENS_16SubtractOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.61") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %20 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %23 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %24 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %25 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %26 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %27 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %28 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %30 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %31 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %32 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %34 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %36 = alloca %"class.std::function", align 8    ; 3 uses
  %37 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163, !nonnull !154, !align !164 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !165, !nonnull !154, !align !164 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0) ; 10 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %29)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %31)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.e unwind label %bb.ba

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.g unwind label %bb.ba

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !73
  switch i8 %i.j, label %bb.an [
    i8 3, label %bb.l
    i8 5, label %bb.s
    i8 7, label %bb.z
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_119BindDecimalMultiplyERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
  store i32 0, ptr %i.dx, align 4, !tbaa !77
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !79
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !14
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !14
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i90 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i90, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.bc ], [ %i.eg, %bb.bd ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.be, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, !prof !80

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba, %bb.ay
  %i.ei = load ptr, ptr %i.bs, align 8, !tbaa !74 ; 8 uses
  store <2 x ptr> %i.dq, ptr %i.br, align 8, !tbaa !68
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ej, align 8, !tbaa !76
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !77
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !79
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25, !inline_history !14
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25, !inline_history !14
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i5.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i5.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i7.i.i = phi i32 [ %i.em, %bb.bi ], [ %i.ew, %bb.bj ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i7.i.i, 1
  br i1 %i.ex, label %bb.bk, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, !prof !80

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #25
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

_ZN6duckdb11LogicalTypeaSEOS0_.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i, %bb.bk
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bl:                                            ; preds = %bb.aw
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ax
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.bm ], [ %i.ey, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.av
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bn ], [ %i.di, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit.split-lp

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.ah, %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  %i.fa = add nuw i64 %.0157, 1                   ; 2 uses
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !179
  %i.fc = load ptr, ptr %3, align 8, !tbaa !180
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = icmp ult i64 %i.fa, %i.fg
  br i1 %i.fh, label %bb.ad, label %._crit_edge159, !llvm.loop !423

bb.bp:                                            ; preds = %._crit_edge159
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i107: ; preds = %bb.bp
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.fj = load i8, ptr %14, align 8, !tbaa !60
  store i8 %i.fj, ptr %i.fi, align 8, !tbaa !60
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !68
  %i.fq = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !68
  store <2 x ptr> %i.fp, ptr %i.fn, align 8, !tbaa !68
  store <2 x ptr> %i.fq, ptr %i.fo, align 8, !tbaa !68
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #25
  %i.fr = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.f)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bq:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i107
  %i.fs = load i8, ptr %i.g, align 8, !tbaa !152, !range !153, !noundef !154
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !73  ; 3 uses
  br i1 %i.ft, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_28DecimalMultiplyOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %15, i8 noundef zeroext %i.fv)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fy = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !68
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.bt, %bb.bs
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.fw, align 8, !tbaa !41
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.gc = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !68
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !68 ; 2 uses
  store <2 x ptr> %i.gc, ptr %i.ga, align 16, !tbaa !68
  store <2 x ptr> %i.fy, ptr %i.gb, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ge = invoke noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.bw:                                            ; preds = %bb.bq
  switch i8 %i.fv, label %bb.bx [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.bw
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !427
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %5, i8 noundef zeroext %i.fv)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bx
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !71, !noalias !427 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !72, !noalias !427 ; 3 uses
  %.not.i.i.not.i.i.i91 = icmp eq ptr %i.gk, null ; 2 uses
  %.sroa.0218.0.copyload = load ptr, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0 = select i1 %.not.i.i.not.i.i.i91, i64 0, i64 %.sroa.5.0.copyload
  %.sroa.0218.0 = select i1 %.not.i.i.not.i.i.i91, ptr null, ptr %.sroa.0218.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !427
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i93 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.not.i.i.i93, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i94, label %bb.by

_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.bw, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.bw ]
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.gp, align 16
  br label %bb.by

bb.by:                                            ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread, %.noexc
  %.sroa.0.0 = phi ptr [ %.sroa.0218.0, %.noexc ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0, %.noexc ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gq = phi ptr [ %i.gm, %.noexc ], [ %i.go, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gr = phi ptr [ %i.gl, %.noexc ], [ %i.gn, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gs = phi ptr [ %i.gi, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.gt = phi ptr [ %i.gk, %.noexc ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %4, align 16
  %.sroa.4.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx214, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i94

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i94: ; preds = %bb.by, %.noexc
  %i.gu = phi ptr [ %i.gq, %bb.by ], [ %i.gm, %.noexc ]
  %i.gv = phi ptr [ %i.gr, %bb.by ], [ %i.gl, %.noexc ] ; 2 uses
  %i.gw = phi ptr [ %i.gs, %bb.by ], [ %i.gi, %.noexc ]
  %i.gx = phi ptr [ %i.gt, %bb.by ], [ null, %.noexc ]
  %.sroa.0.i.i.i.i92.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i92.sroa.0.0.copyload, ptr %i.gv, align 8, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !68 ; 3 uses
  store ptr %i.ha, ptr %i.gy, align 16, !tbaa !68
  store ptr %i.gx, ptr %i.gz, align 8, !tbaa !68
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !68
  store ptr %i.hc, ptr %i.gu, align 8, !tbaa !68
  store ptr %i.gw, ptr %i.hb, align 8, !tbaa !68
  %.not.i.i.i95 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i95, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit96, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i94
  %i.hd = invoke noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit96 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit96: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i94, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit96, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !73
  %.not = icmp eq i8 %i.hh, -52
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_18TryDecimalMultiplyENS0_27MultiplyPropagateStatisticsENS_16MultiplyOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE, ptr %i.hi, align 8, !tbaa !155
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.cb
  store ptr %i.f, ptr %0, align 8, !tbaa !83
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn69.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.split-lp, %bb.ac
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.loopexit.split-lp ], [ %i.bt, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit102

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit102: ; preds = %.loopexit.split-lp137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.x, %bb.cc
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn73132, %bb.x ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn69.pn.pn, %bb.cc ], [ %.pn75.pn.pn, %bb.s ], [ %lpad.loopexit.split-lp208, %.loopexit.split-lp137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hj = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #25, !inline_history !3
  resume { ptr, i32 } %.pn75.pn.pn.pn.pn

bb.cd:                                            ; preds = %bb.v, %bb.m
  unreachable
}

declare void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16MultiplyOperatorENS_28DecimalMultiplyOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 16 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector", align 8    ; 10 uses
  %8 = alloca %"class.std::function", align 8     ; 3 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.21), !inline_history !4
  %i.d = load ptr, ptr %1, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !5 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.k = load ptr, ptr %1, align 8, !tbaa !79, !noalias !438
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !438
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.22), !noalias !438, !inline_history !6
  %i.n = load ptr, ptr %1, align 8, !tbaa !79, !noalias !439
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !439
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !439, !inline_history !7
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.q = load ptr, ptr %1, align 8, !tbaa !79, !noalias !439
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !79, !noalias !438
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %common.resume.i

common.resume:                                    ; preds = %.body, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %common.resume.i ], [ %.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = load ptr, ptr %1, align 8, !tbaa !79, !noalias !440
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !440
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.23)
          to label %.noexc unwind label %bb.h, !inline_history !8

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  invoke void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %.noexc
  %i.aa = load ptr, ptr %1, align 8, !tbaa !79, !noalias !440
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc17
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %.noexc17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !73  ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  invoke fastcc void @_ZN6duckdbL23GetScalarBinaryFunctionINS_28DecimalMultiplyOverflowCheckEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %8, i8 noundef zeroext %i.af)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !68
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !72
  %.not.i.i.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !146
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ag, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !68 ; 2 uses
  store <2 x ptr> %i.am, ptr %i.ak, align 16, !tbaa !68
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.h:                                             ; preds = %.noexc, %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEET_tPKc.exit
  switch i8 %i.af, label %bb.j [
    i8 11, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i: ; preds = %bb.i
  br label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !441
  invoke fastcc void @_ZN6duckdbL24GetScalarIntegerFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable align 8 %4, i8 noundef zeroext %i.af)
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71, !noalias !441 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72, !noalias !441 ; 2 uses
  %.not.i.i.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.not.i.i.i18, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, label %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit

_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51: ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread: ; preds = %bb.i, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i
  %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink = phi ptr [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit8.i ], [ @_ZN6duckdb14ScalarFunction14BinaryFunctionIfffNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit: ; preds = %.noexc19
  %.sroa.049.0.copyload = load ptr, ptr %4, align 8, !noalias !441
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.az, align 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread
  %.sroa.0.0 = phi ptr [ %.sroa.049.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %_ZN6duckdb14ScalarFunction14BinaryFunctionIdddNS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE.sink, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.0.copyload, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ 0, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.ba = phi ptr [ %i.ay, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ %i.ax, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bb = phi ptr [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  %i.bc = phi ptr [ %i.av, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit ], [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread ]
  store ptr %.sroa.0.0, ptr %3, align 16
  %.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx46, align 8, !tbaa !41
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22: ; preds = %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51, %bb.k
  %i.bd = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.at, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bf = phi ptr [ %i.bc, %bb.k ], [ null, %_ZN6duckdbL23GetScalarBinaryFunctionINS_16MultiplyOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEENS_12PhysicalTypeE.exit.thread51 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %.sroa.0.i.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 16, i1 false), !tbaa.struct !146
  store <2 x i64> %.sroa.0.i.i.i.i20.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 16, !tbaa !68
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !68
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !68
  %.not.i.i.i23 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i23, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22
  %i.bm = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #29
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr null, ptr %i.bp, align 8, !tbaa !155
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.o

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.br = load i8, ptr %9, align 8, !tbaa !60
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !68
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !68
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !68
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.o ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.cb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %bb.o, !inline_history !9 ; 3 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataE, i64 16), ptr %i.cb, align 8, !tbaa !79, !noalias !442
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = zext i1 %i.g to i8
  store i8 %i.cd, ptr %i.cc, align 8, !tbaa !152
  store ptr %i.cb, ptr %0, align 8, !tbaa !83
  %i.ce = load ptr, ptr %7, align 8, !tbaa !65    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit
  %i.ci = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.o:                                             ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit, %bb.j, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

.body:                                            ; preds = %bb.h, %bb.b, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.o ], [ %i.ar, %bb.h ], [ %i.ad, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

declare noundef zeroext i1 @_ZN6duckdb14TypeIsIntegralENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_19TryMultiplyOperatorENS0_27MultiplyPropagateStatisticsENS_16MultiplyOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.61") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %20 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %23 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %24 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %25 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %26 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %27 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %28 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %30 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %31 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %32 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %34 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %36 = alloca %"class.std::function", align 8    ; 3 uses
  %37 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163, !nonnull !154, !align !164 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !165, !nonnull !154, !align !164 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0) ; 10 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %29)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %31)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.e unwind label %bb.ba

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.g unwind label %bb.ba

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !73
  switch i8 %i.j, label %bb.an [
    i8 3, label %bb.l
end_hunk_2
