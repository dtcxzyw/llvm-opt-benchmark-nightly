inline.NumInlined: 22183
inline.NumDeleted: 7890
begin_hunk_0_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.fq = phi i8 [ 0, %bb.ag ], [ %i.fm, %_ZNK6google8protobuf15FieldDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.fq, ptr %16, align 8, !tbaa !956
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %16, ptr noundef %2)
          to label %bb.ap unwind label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load ptr, ptr %8, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i217: ; preds = %bb.as
  %i.gl = invoke noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.gh, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
          to label %.noexc219 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

.noexc219:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i217
  %i.gm = icmp eq i32 %i.gl, 0
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i218: ; preds = %.noexc219, %bb.as
  invoke void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc220 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, !inline_history !1050

.noexc220:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i218
  %i.gn = atomicrmw xchg ptr %i.gh, i32 221 release, align 4
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.at:                                            ; preds = %.noexc220
  invoke void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.gh, i1 noundef zeroext true)
          to label %.noexc101 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

.noexc101:                                        ; preds = %bb.at, %.noexc219, %.noexc220, %bb.ar, %bb.aq
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !343
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.gw = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.gu, ptr noundef nonnull %i.gv)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.av:                                            ; preds = %bb.au
  %i.gx = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.gv, ptr %i.hm, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.103, ptr noundef nonnull %5, i64 noundef 5)
          to label %bb.aw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  invoke void @_ZNK6google8protobuf15FieldDescriptor20DefaultValueAsStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.hp = load ptr, ptr %18, align 8, !tbaa !20
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hp, ptr %i.hs, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.104, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.bf unwind label %bb.bc

bb.az:                                            ; preds = %bb.ao
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i218, %bb.at, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i217
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.av, %bb.au
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  br label %bb.ch

bb.ba:                                            ; preds = %.invoke348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bb:                                            ; preds = %bb.ax
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bc:                                            ; preds = %bb.ay
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %25 = load ptr, ptr %18, align 8, !tbaa !20     ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %28 = load i64, ptr %26, align 8, !tbaa !22
  %29 = add i64 %28, 1
  call void @_ZdlPvm(ptr noundef %25, i64 noundef %29) #44
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.bb
  %.pn55 = phi { ptr, i32 } [ %i.hu, %bb.bb ], [ %i.hv, %bb.bd ], [ %i.hv, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  br label %bb.ch

bb.bf:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.hw = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %30 = load i8, ptr %i.cn, align 1
  %31 = and i8 %30, 4
  %.not57 = icmp eq i8 %31, 0
  br i1 %.not57, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit138, label %.invoke

bb.bg:                                            ; preds = %bb.aw
  %i.ib = and i8 %i.hn, 4
  %.not57.a = icmp eq i8 %i.ib, 0
  br i1 %.not57.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit138, label %.invoke

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.bg
  %32 = phi ptr [ @.str.89, %bb.bg ], [ @.str.105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !23
  %i.ie = and i64 %i.id, -2
end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.if, label %.invoke348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.invoke
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %32, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ih = load i64, ptr %i.ic, align 8, !tbaa !23
end_hunk_9
begin_hunk_10_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ik = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.106, i64 noundef 13)
          to label %bb.bh unwind label %bb.ba     ; 0 uses

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i123
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
end_hunk_10
begin_hunk_11_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

.invoke348:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %.invoke
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #47
          to label %.cont unwind label %bb.ba

.cont:                                            ; preds = %.invoke348
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.jh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit138 unwind label %bb.ba ; 0 uses

bb.bk:                                            ; preds = %bb.bh
  %i.ji = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit138: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i135, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.244 = phi i1 [ false, %bb.bg ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i135 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !919
end_hunk_12
begin_hunk_13_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ky, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
end_hunk_13
begin_hunk_14_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.lc, label %.invoke349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i146: ; preds = %bb.bv
  %.str.105..str.89 = select i1 %.244, ptr @.str.105, ptr @.str.89
  %i.ld = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %.str.105..str.89, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit149 unwind label %bb.bw ; 0 uses

end_hunk_14
begin_hunk_15_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br label %bb.cf

bb.bx:                                            ; preds = %bb.bu
  br i1 %.244, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit160

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i150, %bb.bx
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_15
begin_hunk_16_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ba, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.cg, %bb.az
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %22, %bb.az ], [ %.pn55, %bb.be ], [ %.pn60.pn, %bb.cg ], [ %i.ht, %bb.ba ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ]
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %16) #43
  br label %.body

end_hunk_16
begin_hunk_17_@_ZNK6google8protobuf14DescriptorPool27NewPlaceholderWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEENS1_15PlaceholderTypeE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not50.i = icmp eq i64 %1, 0
  br i1 %.not50.i, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.thread.i.a
  %.03252.i = phi i1 [ %.03252.i.be, %.thread.i.a ], [ false, %bb.c ]
  %.03651.i = phi ptr [ %.03651.i.be, %.thread.i.a ], [ %2, %bb.c ] ; 3 uses
  %i.g = load i8, ptr %.03651.i, align 1, !tbaa !22 ; 4 uses
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %or.cond38.i = icmp ult i8 %i.i, 26
  br i1 %or.cond38.i, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = add i8 %i.g, -48
  %or.cond9.i = icmp ult i8 %i.j, 10
  %i.k = icmp eq i8 %i.g, 95
  %or.cond12.i = or i1 %i.k, %or.cond9.i
  br i1 %or.cond12.i, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ne i8 %i.g, 46
  %or.cond39.i = or i1 %.03252.i, %i.l
  %15 = getelementptr inbounds nuw i8, ptr %.03651.i, i64 1 ; 2 uses
  %.not.i268 = icmp eq ptr %15, %i.f
  %or.cond39.i.a = select i1 %or.cond39.i, i1 true, i1 %.not.i268
  br i1 %or.cond39.i.a, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.thread.i.a

.thread.i.a:                                      ; preds = %bb.e, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.03252.i.be = phi i1 [ true, %bb.e ], [ false, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.03651.i.be = phi ptr [ %15, %bb.e ], [ %16, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  br label %.lr.ph.i

_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %.lr.ph.i
  %16 = getelementptr inbounds nuw i8, ptr %.03651.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %16, %i.f
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, label %.thread.i.a

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.m = load i8, ptr %2, align 1, !tbaa !22
end_hunk_17
begin_hunk_18_@_ZNK6google8protobuf14DescriptorPool27NewPlaceholderWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEENS1_15PlaceholderTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  resume { ptr, i32 } %.pn.pn.pn

_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.e, %bb.c, %bb.ao
  %.sroa.0196.1 = phi ptr [ %.sroa.0196.0, %bb.ao ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %bb.c ], [ @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, %bb.e ]
  ret ptr %.sroa.0196.1
}

end_hunk_18
begin_hunk_19_@_ZN6google8protobuf12_GLOBAL__N_128ValidateSymbolForDeclarationB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %bb.g

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i.a, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread
  %.03252.i = phi i1 [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread ], [ %.03252.i.be, %.thread.i.a ]
  %.03651.i = phi ptr [ %2, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread ], [ %.03651.i.be, %.thread.i.a ] ; 3 uses
  %i.r = load i8, ptr %.03651.i, align 1, !tbaa !22 ; 4 uses
  %i.s = and i8 %i.r, -33
  %i.t = add i8 %i.s, -65
  %or.cond38.i = icmp ult i8 %i.t, 26
  br i1 %or.cond38.i, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i8 %i.r, -48
  %or.cond9.i = icmp ult i8 %i.u, 10
  %i.v = icmp eq i8 %i.r, 95
  %or.cond12.i = or i1 %i.v, %or.cond9.i
  br i1 %or.cond12.i, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne i8 %i.r, 46
  %or.cond39.i = or i1 %.03252.i, %i.w
  %11 = getelementptr inbounds nuw i8, ptr %.03651.i, i64 1 ; 2 uses
  %.not.i30 = icmp eq ptr %11, %i.q
  %or.cond39.i.a = select i1 %or.cond39.i, i1 true, i1 %.not.i30
  br i1 %or.cond39.i.a, label %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.thread.i.a

.thread.i.a:                                      ; preds = %bb.d, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a
  %.03252.i.be = phi i1 [ false, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a ], [ true, %bb.d ]
  %.03651.i.be = phi ptr [ %12, %_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a ], [ %11, %bb.d ]
  br label %.lr.ph.i

_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.a: ; preds = %bb.c, %.lr.ph.i
  %12 = getelementptr inbounds nuw i8, ptr %.03651.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %12, %i.q
  br i1 %.not.i, label %bb.f, label %.thread.i.a

_ZN6google8protobufL21ValidateQualifiedNameESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  store i64 1, ptr %8, align 8
end_hunk_19
