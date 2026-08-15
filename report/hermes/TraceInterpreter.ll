inline.NumInlined: 3334
inline.NumDeleted: 1601
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook6hermes7tracing16TraceInterpreter20execFromMemoryBufferB5cxx11EOSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEOSt6vectorIS8_SaIS8_EERKNS2_14ExecuteOptionsERKSt8functionIFSt10shared_ptrINS_3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE:bb.a
bb.bm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  %i.im = invoke noundef zeroext i1 %i.ik(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.il, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.bm, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !144 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !74
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #36
  br label %_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83

_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %.pre112 = load ptr, ptr %11, align 8, !tbaa !201 ; 5 uses
  %.pre113 = load ptr, ptr %i.ap, align 8, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %.not4.i.i.i = icmp eq ptr %.pre112, %.pre113
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ja, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre112, %_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83 ] ; 3 uses
  %i.iv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !144 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !74
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ja, %.pre113
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !241

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83
  %.not.i.i1.i = icmp eq ptr %.pre112, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !203
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %.pre112 to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.pre112, i64 noundef %i.jf) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.jh)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85 unwind label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #34
  unreachable

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev.exit85: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void

bb.bq:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.am
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.br, %bb.be, %bb.bd, %bb.an
  %.pn = phi { ptr, i32 } [ %.pn21.pn.pn22.i, %bb.be ], [ %i.jl, %bb.br ], [ %i.el, %bb.an ], [ %.pn21.pn.pn.i, %bb.bd ]
  call void @_ZN6hermes2vm8GCConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %17) #35
  br label %bb.bs

bb.bs:                                            ; preds = %.body, %bb.bq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jk, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.bt

bb.bt:                                            ; preds = %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bs
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bs ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.phi, %bb.ag ], [ %i.do, %bb.af ]
  call void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #35
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.i
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.bt ], [ %i.bo, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.h
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.bu ], [ %i.bn, %bb.h ]
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.g
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.bv ], [ %i.bm, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @_ZNSt11_Tuple_implILm0EJN8facebook6hermes7tracing10SynthTraceEN6hermes2vm13RuntimeConfig7BuilderENS5_8GCConfig7BuilderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(576) %7) #35
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50, %bb.f, %bb.bw
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.bw ], [ %i.bh, %bb.f ], [ %i.bh, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #35, !inline_history !242
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(316) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.100", align 8  ; 14 uses
  %.sroa.0 = alloca [20 x i8], align 1            ; 7 uses
  %11 = alloca %"struct.std::array", align 1      ; 5 uses
  %12 = alloca %"struct.std::array", align 1      ; 5 uses
  %13 = alloca %"struct.std::pair.117", align 8   ; 8 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.loopexit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1, !tbaa !199
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %.not112134 = icmp eq ptr %i.a, %i.c
  br i1 %.not112134, label %.loopexit116, label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.d, %i.c
  br i1 %.not112, label %.loopexit116, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.sroa.0105.0135 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0105.0135, align 8, !tbaa !160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %.not51 = icmp eq i32 %i.i, 1
  br i1 %.not51, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  store i8 0, ptr %4, align 1, !tbaa !199
  br label %.loopexit116

.loopexit116:                                     ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %.not113141 = icmp eq ptr %i.j, %i.l
  br i1 %.not113141, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit116
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.bg, ptr %i.m, align 8
  store ptr %i.be, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit116
  %i.o = phi ptr [ %i.bg, %._crit_edge ], [ null, %.loopexit116 ] ; 4 uses
  %i.p = phi ptr [ %i.bf, %._crit_edge ], [ null, %.loopexit116 ] ; 5 uses
  store ptr %i.p, ptr %10, align 8
  %i.q = invoke noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv()
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.0101.0142 = phi ptr [ %i.j, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit ] ; 14 uses
  %i.u = load i64, ptr %.sroa.0101.0142, align 8, !tbaa !160 ; 3 uses
  store ptr null, ptr %.sroa.0101.0142, align 8, !tbaa !160
  %i.v = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37
          to label %bb.g unwind label %bb.l       ; 6 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), ptr %i.v, align 8, !tbaa !94, !noalias !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !160, !noalias !244
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.v to i64
  store i64 %i.x, ptr %i.s, align 8, !tbaa !249
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc85 unwind label %.thread.loopexit.split-lp

.noexc85:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i80 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i80)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #37
          to label %.noexc86 unwind label %.thread.loopexit ; 10 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = ptrtoint ptr %i.v to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !249
  %.not10.i.i.i.i81 = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i81, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %.noexc86
  %i.al = add i64 %i.y, -8
  %i.am = sub i64 %i.al, %i.z                     ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i82.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i82.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.ap = add i64 %i.y, -8
  %i.aq = sub i64 %i.ap, %i.z
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep307 = getelementptr i8, ptr %i.t, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ar
  %bound0 = icmp ult ptr %i.ai, %scevgep308
  %bound1 = icmp ult ptr %i.t, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i82.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.t, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.t, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.aw = getelementptr i8, ptr %next.gep309, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %wide.load310 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  store <2 x i64> %wide.load310, ptr %i.ax, align 8, !tbaa !249, !alias.scope !259, !noalias !256
  %i.ay = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep309, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !249, !alias.scope !256, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82.preheader322

.lr.ph.i.i.i.i82.preheader322:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i82.preheader, %middle.block
  %.012.i.i.i.i83.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i82.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i82.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.preheader322, %.lr.ph.i.i.i.i82
  %.012.i.i.i.i83 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i82 ], [ %.012.i.i.i.i83.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i82 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i82.preheader322 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  store i64 %i.ba, ptr %.012.i.i.i.i83, align 8, !tbaa !249, !alias.scope !251, !noalias !254
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !249, !alias.scope !254, !noalias !251
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i83, i64 8 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.bb, %i.r
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i82, !llvm.loop !262

_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i82, %middle.block, %.noexc86
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %.noexc86 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i82 ]
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %.noexc, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #36
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.h
  %i.be = phi ptr [ %i.bd, %.noexc ], [ %i.r, %bb.h ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %i.s, %bb.h ]
  %i.bf = phi ptr [ %i.ai, %.noexc ], [ %i.t, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0101.0142, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.bh, %i.l
  br i1 %.not113, label %._crit_edge, label %bb.f

.thread.loopexit:                                 ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !94
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp, %.thread.loopexit
  %i.bi = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EEE17OwnedMemoryBuffer, i64 16), %.thread.loopexit ], [ %.pre, %.thread.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #35, !inline_history !263
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.l:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.s, ptr %i.m, align 8
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.t, ptr %10, align 8
  %.not.i68 = icmp eq i64 %i.u, 0
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69: ; preds = %bb.l
  %i.bm = inttoptr i64 %i.u to ptr                ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bm) #35, !inline_history !193
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

bb.m:                                             ; preds = %bb.e
  %.not.i71 = icmp eq ptr %i.q, null
  br i1 %.not.i71, label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE)
          to label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit unwind label %bb.q, !inline_history !264

_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.m ], [ %i.bs, %bb.n ] ; 4 uses
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  store i8 1, ptr %5, align 1, !tbaa !199
  %.not114153 = icmp eq ptr %i.p, %i.o
  br i1 %.not114153, label %.loopexit, label %.lr.ph156

bb.p:                                             ; preds = %.critedge61
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0154, i64 8 ; 2 uses
  %.not114 = icmp eq ptr %i.bt, %i.o
  br i1 %.not114, label %.loopexit, label %.lr.ph156

bb.q:                                             ; preds = %bb.n, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.lr.ph156:                                        ; preds = %bb.o, %bb.p
  %.sroa.092.0154 = phi ptr [ %i.bt, %bb.p ], [ %i.p, %bb.o ] ; 3 uses
  %i.bv = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %.lr.ph156
  %i.ca = load ptr, ptr %.sroa.092.0154, align 8, !tbaa !249 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.bz, i64 noundef %i.ce)
          to label %.critedge61 unwind label %bb.u

.critedge61:                                      ; preds = %bb.s
  br i1 %i.ci, label %bb.p, label %bb.t

bb.t:                                             ; preds = %.critedge61
  store i8 0, ptr %5, align 1, !tbaa !199
  br label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.r, %.lr.ph156
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

.loopexit:                                        ; preds = %bb.p, %bb.o, %bb.t, %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.ck, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.co, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not115157 = icmp eq ptr %i.p, %i.o
  br i1 %.not115157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %bb.v

._crit_edge161:                                   ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, %.loopexit
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 229
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !265, !range !67, !noundef !68
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %bb.au

bb.v:                                             ; preds = %.lr.ph160, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit
  %.sroa.088.0158 = phi ptr [ %i.p, %.lr.ph160 ], [ %i.ex, %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i8 0, i64 20, i1 false)
  %i.cv = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.cz, i64 noundef %i.de)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %i.di, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.dj = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %11, ptr %i.dn, i64 %i.ds)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.ak

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %14

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %14

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.dv = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr %.sroa.088.0158, align 8, !tbaa !249 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef i64 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %12, ptr %i.dz, i64 %i.ee)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %14

bb.ak:                                            ; preds = %bb.ai, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.0, i64 20, i1 false), !tbaa.struct !266
  invoke void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS3_St14default_deleteIS3_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.088.0158)
          to label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit unwind label %bb.ar

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %bb.ak
  %i.eg = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE16_M_insert_uniqueISA_EES2_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit unwind label %bb.as ; 0 uses

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit: ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.eh = load ptr, ptr %i.cr, align 8, !tbaa !184 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ei, align 8, !tbaa !187
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !189
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #35, !inline_history !267
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #35, !inline_history !267
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i = phi i32 [ %i.el, %bb.ao ], [ %i.ev, %bb.ap ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ew, label %bb.aq, label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit, !prof !125

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #35
  br label %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit

_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev.exit: ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE6insertEOSC_.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.088.0158, i64 8 ; 2 uses
  %.not115 = icmp eq ptr %i.ex, %i.o
  br i1 %.not115, label %._crit_edge161, label %bb.v

bb.ar:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEEC2IRS1_St10unique_ptrIS7_St14default_deleteIS7_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #35
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.as ], [ %i.ey, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %14

14:                                               ; preds = %bb.at, %bb.aj, %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.du, %bb.ae ], [ %i.ef, %bb.aj ], [ %i.dt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.body

bb.au:                                            ; preds = %._crit_edge161
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.fa, align 8, !tbaa !268 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val62 = load ptr, ptr %i.fb, align 8, !tbaa !268 ; 2 uses
  %.not53.i = icmp eq ptr %.val, %.val62
  br i1 %.not53.i, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %i.fc = icmp eq ptr %.sroa.013.2.i, %.sroa.1018.2.i
  br i1 %i.fc, label %bb.bx, label %bb.be

.lr.ph.i:                                         ; preds = %bb.au, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i
  %.sroa.013.057.i = phi ptr [ %.sroa.013.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.au ] ; 11 uses
  %.sroa.1018.056.i = phi ptr [ %.sroa.1018.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.au ] ; 9 uses
  %.sroa.1622.055.i = phi ptr [ %.sroa.1622.2.i, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ null, %bb.au ] ; 6 uses
  %.sroa.010.054.i = phi ptr [ %i.gt, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i ], [ %.val, %bb.au ] ; 3 uses
  %i.fd = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !94
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef i32 %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %.lr.ph.i
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.aw, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.fj = load ptr, ptr %.sroa.010.054.i, align 8, !tbaa !110 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 5 uses
  %i.fl = load ptr, ptr %i.cl, align 8, !tbaa !76 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fl, %bb.aw ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ck, %bb.aw ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fn = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fm, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 noundef 20) #35
  %i.fo = icmp slt i32 %i.fn, 0                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.fo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.fo, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i78, label %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !269

_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fp = icmp eq ptr %.19.i.i.i.i, %i.ck
  br i1 %i.fp, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fr = call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.fk, ptr noundef nonnull align 1 dereferenceable(20) %i.fq, i64 noundef 20) #35
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %_ZNKSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.aw
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.ft = load <16 x i8>, ptr %i.fk, align 1
  %.fr = freeze <16 x i8> %i.ft
  %i.fu = icmp eq <16 x i8> %.fr, zeroinitializer ; 2 uses
  %i.fv = load <4 x i8>, ptr %.sroa.17.0..sroa_idx.i, align 1
  %.fr312 = freeze <4 x i8> %i.fv
  %i.fw = icmp eq <4 x i8> %.fr312, zeroinitializer
  %i.fx = shufflevector <16 x i1> %i.fu, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.fx, %i.fw
  %i.fy = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <16 x i1> %i.fy, <16 x i1> %i.fu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ga = bitcast <16 x i1> %i.fz to i16
  %i.gb = icmp eq i16 %i.ga, -1
  br i1 %i.gb, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i
  %.not.i.i = icmp eq ptr %.sroa.1018.056.i, %.sroa.1622.055.i
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.1018.056.i, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 20, i1 false), !tbaa.struct !266
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.1018.056.i, i64 20
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gd = ptrtoint ptr %.sroa.1018.056.i to i64
  %i.ge = ptrtoint ptr %.sroa.013.057.i to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.ba, label %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #38
          to label %.noexc.i unwind label %.loopexit.split-lp35.i

.noexc.i:                                         ; preds = %bb.ba
  unreachable

_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.gh = sdiv exact i64 %i.gf, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 461168601842738790)
  %i.gl = select i1 %i.gj, i64 461168601842738790, i64 %i.gk ; 3 uses
  %.not.i.i.i40.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i40.i)
  %i.gm = mul nuw nsw i64 %i.gl, 20
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #37
          to label %.noexc41.i unwind label %.loopexit34.i ; 4 uses

.noexc41.i:                                       ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.go, ptr noundef nonnull align 1 dereferenceable(20) %i.fk, i64 20, i1 false), !tbaa.struct !266
  %i.gp = icmp sgt i64 %i.gf, 0
  br i1 %i.gp, label %bb.bb, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.bb:                                            ; preds = %.noexc41.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr align 1 %.sroa.013.057.i, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.bb, %.noexc41.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %.not.i17.i.i.i = icmp eq ptr %.sroa.013.057.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.057.i, i64 noundef %i.gf) #36
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.gn, i64 %i.gl
  br label %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i

bb.bd:                                            ; preds = %.lr.ph.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit34.i:                                    ; preds = %_ZNKSt6vectorISt5arrayIhLm20EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit36.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp35.i:                           ; preds = %bb.ba
  %lpad.loopexit.split-lp37.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ay, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i, %bb.av
  %.sroa.1622.2.i = phi ptr [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1622.055.i, %bb.av ], [ %.sroa.1622.055.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gr, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.1622.055.i, %bb.ay ] ; 3 uses
  %.sroa.1018.2.i = phi ptr [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.1018.056.i, %bb.av ], [ %.sroa.1018.056.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gq, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gc, %bb.ay ] ; 6 uses
  %.sroa.013.2.i = phi ptr [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.thread.i ], [ %.sroa.013.057.i, %bb.av ], [ %.sroa.013.057.i, %_ZNKSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEE5countERSB_.exit.i ], [ %i.gn, %_ZNSt6vectorISt5arrayIhLm20EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.013.057.i, %bb.ay ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.gt, %.val62
  br i1 %.not.i77, label %._crit_edge.i, label %.lr.ph.i

bb.be:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.013.2.i)
          to label %bb.bf unwind label %.loopexit.split-lp82.i

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !92 ; 2 uses
  %i.gy = load i64, ptr %i.gu, align 8, !tbaa !92
  %i.gz = sub i64 4611686018427387903, %i.gy
  %i.ha = icmp ult i64 %i.gz, %i.gx
  br i1 %i.ha, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i: ; preds = %bb.bf
  %i.hb = load ptr, ptr %8, align 8, !tbaa !144
  %i.hc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.hb, i64 noundef %i.gx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i unwind label %.loopexit29.loopexit.split-lp.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i
  %i.hd = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gw
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i
  %i.hf = load i64, ptr %i.gw, align 8, !tbaa !74
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.013.2.i, i64 20 ; 2 uses
  %.not26.peel.i = icmp eq ptr %i.hh, %.sroa.1018.2.i
  br i1 %.not26.peel.i, label %._crit_edge65.i, label %.peel.next.i

._crit_edge65.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i
  %i.hi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24)
          to label %bb.bi unwind label %bb.bk     ; 0 uses

bb.bg:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

.peel.next.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.05.061.i = phi ptr [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.i ] ; 2 uses
  %i.hk = load i64, ptr %i.gu, align 8, !tbaa !92
  %i.hl = and i64 %i.hk, -2
  %i.hm = icmp eq i64 %i.hl, 4611686018427387902
  br i1 %i.hm, label %.loopexit78.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

.loopexit78.i:                                    ; preds = %.peel.next.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
          to label %.noexc42.i unwind label %.loopexit.split-lp.i

.noexc42.i:                                       ; preds = %.loopexit78.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %.peel.next.i
  %i.hn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit28.i ; 0 uses

.loopexit28.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit79.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %.loopexit78.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.05.061.i)
          to label %bb.bh unwind label %.loopexit81.i

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.ho = load i64, ptr %i.gv, align 8, !tbaa !92 ; 2 uses
  %i.hp = load i64, ptr %i.gu, align 8, !tbaa !92
  %i.hq = sub i64 4611686018427387903, %i.hp
  %i.hr = icmp ult i64 %i.hq, %i.ho
  br i1 %i.hr, label %.loopexit85.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

.loopexit85.i:                                    ; preds = %bb.bh, %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
          to label %.noexc44.i unwind label %.loopexit.split-lp30.i

.noexc44.i:                                       ; preds = %.loopexit85.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.bh
  %i.hs = load ptr, ptr %8, align 8, !tbaa !144
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.hs, i64 noundef %i.ho)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %.loopexit29.loopexit.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.hu = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.gw
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.hw = load i64, ptr %i.gw, align 8, !tbaa !74
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.05.061.i, i64 20 ; 2 uses
  %.not26.i = icmp eq ptr %i.hy, %.sroa.1018.2.i
  br i1 %.not26.i, label %._crit_edge65.i, label %.peel.next.i, !llvm.loop !270

.loopexit81.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

.loopexit.split-lp82.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i
  %lpad.loopexit.split-lp83.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

.loopexit29.loopexit.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit86.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit29.loopexit.split-lp.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel.i
  %lpad.loopexit.split-lp87.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit.split-lp30.i:                           ; preds = %.loopexit85.i
  %lpad.loopexit.split-lp32.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit.split-lp30.i, %.loopexit29.loopexit.split-lp.i, %.loopexit29.loopexit.i
  %lpad.phi33.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp32.i, %.loopexit.split-lp30.i ], [ %lpad.loopexit86.i, %.loopexit29.loopexit.i ], [ %lpad.loopexit.split-lp87.i, %.loopexit29.loopexit.split-lp.i ] ; 2 uses
  %i.hz = load ptr, ptr %8, align 8, !tbaa !144   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gw
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %.loopexit29.i
  %i.ib = load i64, ptr %i.gw, align 8, !tbaa !74
  %i.ic = add i64 %i.ib, 1
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreter24getSourceHashToBundleMapEOSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EESaIS9_EERKNS1_10SynthTraceERKNS2_14ExecuteOptionsEPbSJ_:bb.a
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(20) %i.ij)
          to label %bb.bn unwind label %.loopexit.split-lp98.i

bb.bn:                                            ; preds = %bb.bm
  %i.ik = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bo unwind label %.loopexit.split-lp103.i ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.il = load ptr, ptr %9, align 8, !tbaa !144   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ii
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel.i: ; preds = %bb.bo
  %i.in = load i64, ptr %i.ii, align 8, !tbaa !74
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ip = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ih) #40 ; 2 uses
  %.not27.peel.i = icmp eq ptr %i.ip, %i.ck
  br i1 %.not27.peel.i, label %.loopexit.i, label %.peel.next90.i

.peel.next90.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  %.sroa.01.067.i = phi ptr [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i ] ; 2 uses
  %i.iq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23)
          to label %bb.bq unwind label %bb.bp     ; 0 uses

bb.bp:                                            ; preds = %.peel.next90.i
  %lpad.loopexit94.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bq:                                            ; preds = %.peel.next90.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.067.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZN6hermes12hashAsStringB5cxx11ERKSt5arrayIhLm20EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(20) %i.ir)
          to label %bb.br unwind label %.loopexit97.i

bb.br:                                            ; preds = %bb.bq
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bs unwind label %.loopexit102.i ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.it = load ptr, ptr %9, align 8, !tbaa !144   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ii
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.bs
  %i.iv = load i64, ptr %i.ii, align 8, !tbaa !74
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ix = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.067.i) #40 ; 2 uses
  %.not27.i = icmp eq ptr %i.ix, %i.ck
  br i1 %.not27.i, label %.loopexit.i, label %.peel.next90.i, !llvm.loop !272

.loopexit97.i:                                    ; preds = %bb.bq
  %lpad.loopexit99.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

.loopexit.split-lp98.i:                           ; preds = %bb.bm
  %lpad.loopexit.split-lp100.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

.loopexit102.i:                                   ; preds = %bb.br
  %lpad.loopexit104.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp103.i:                          ; preds = %bb.bn
  %lpad.loopexit.split-lp105.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp103.i, %.loopexit102.i
  %lpad.phi106.i = phi { ptr, i32 } [ %lpad.loopexit104.i, %.loopexit102.i ], [ %lpad.loopexit.split-lp105.i, %.loopexit.split-lp103.i ] ; 2 uses
  %i.iy = load ptr, ptr %9, align 8, !tbaa !144   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ii
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.bt
  %i.ja = load i64, ptr %i.ii, align 8, !tbaa !74
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %.loopexit.split-lp98.i, %.loopexit97.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi106.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %lpad.loopexit.split-lp100.i, %.loopexit.split-lp98.i ], [ %lpad.loopexit99.i, %.loopexit97.i ], [ %lpad.phi106.i, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.bw

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel.i, %bb.bl, %bb.bj
  %i.jc = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.loopexit.i
  invoke void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #38
          to label %bb.cb unwind label %bb.bk

bb.bv:                                            ; preds = %.loopexit.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #35
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %bb.bp, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %.loopexit.split-lp.i, %.loopexit28.i
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit94.i, %bb.bp ], [ %i.ig, %bb.bk ], [ %i.jd, %bb.bv ], [ %.pn32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %lpad.loopexit79.i, %.loopexit28.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.je = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %bb.bw
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !74
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i, %bb.bg
  %.pn32.pn.pn.pn.i = phi { ptr, i32 } [ %i.hj, %bb.bg ], [ %.pn32.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i ], [ %.pn32.pn.pn.i, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.bz

bb.bx:                                            ; preds = %._crit_edge.i
  %.not.i.i.i58.i = icmp eq ptr %.sroa.1018.2.i, null
  br i1 %.not.i.i.i58.i, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jj = ptrtoint ptr %.sroa.1622.2.i to i64
  %i.jk = ptrtoint ptr %.sroa.1018.2.i to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.2.i, i64 noundef %i.jl) #36
  br label %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, %.loopexit.split-lp35.i, %.loopexit34.i, %bb.bd
  %.sroa.1622.051.i = phi ptr [ %.sroa.1622.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i ], [ %.sroa.1622.055.i, %bb.bd ], [ %.sroa.1018.056.i, %.loopexit34.i ], [ %.sroa.1018.056.i, %.loopexit.split-lp35.i ]
  %.sroa.013.043.i = phi ptr [ %.sroa.013.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i ], [ %.sroa.013.057.i, %bb.bd ], [ %.sroa.013.057.i, %.loopexit34.i ], [ %.sroa.013.057.i, %.loopexit.split-lp35.i ] ; 3 uses
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i ], [ %i.gs, %bb.bd ], [ %lpad.loopexit36.i, %.loopexit34.i ], [ %lpad.loopexit.split-lp37.i, %.loopexit.split-lp35.i ] ; 2 uses
  %.not.i.i.i59.i = icmp eq ptr %.sroa.013.043.i, null
  br i1 %.not.i.i.i59.i, label %.body, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = ptrtoint ptr %.sroa.1622.051.i to i64
  %i.jn = ptrtoint ptr %.sroa.013.043.i to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.043.i, i64 noundef %i.jo) #36
  br label %.body

bb.cb:                                            ; preds = %bb.bu
  unreachable

_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit: ; preds = %bb.by, %bb.bx, %bb.au, %._crit_edge161
  %i.jp = load ptr, ptr %10, align 8, !tbaa !273  ; 5 uses
  %i.jq = load ptr, ptr %i.cp, align 8, !tbaa !276 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jp, %i.jq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit, %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jv, %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.jp, %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit ] ; 2 uses
  %i.jr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !249 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !94
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jr) #35, !inline_history !277
  br label %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.jv, %i.jq
  br i1 %.not.i.i.i79, label %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !278

_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %_ZN8facebook6hermes7tracing12_GLOBAL__N_118verifyBundlesExistERKSt3mapISt5arrayIhLm20EESt10shared_ptrIKNS_3jsi6BufferEESt4lessIS5_ESaISt4pairIKS5_SA_EEERKNS1_10SynthTraceE.exit
  %.not.i.i1.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !279
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jp to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ka) #36
  br label %_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  ret void

.body:                                            ; preds = %bb.ca, %bb.bz, %14
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %14 ], [ %.pn37.pn.i, %bb.bz ], [ %.pn37.pn.i, %bb.ca ]
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #35
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit70: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69, %bb.l, %.thread, %bb.q, %bb.u, %.body
  %.pn57.pn = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %.pn.pn.pn, %.body ], [ %i.cj, %bb.u ], [ %lpad.phi, %.thread ], [ %i.bl, %bb.l ], [ %i.bl, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i69 ]
  call void @_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  resume { ptr, i32 } %.pn57.pn
}

declare noundef ptr @_ZN8facebook6hermes17makeHermesRootAPIEv() local_unnamed_addr #8

declare void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"struct.std::array") align 1, ptr, i64) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !189
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !280
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !280
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !249 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #35, !inline_history !281
  br label %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN8facebook3jsi6BufferEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !278

_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !273
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #36
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter5mergeERN6hermes2vm13RuntimeConfig7BuilderERKNS4_8GCConfig7BuilderERKNS2_14ExecuteOptionsEbb(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::RuntimeConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(299) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(316) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.hermes::vm::RuntimeConfig::Builder", align 8 ; 26 uses
  %7 = alloca %"class.hermes::vm::GCConfig::Builder", align 8 ; 30 uses
  %8 = alloca %"class.hermes::vm::RuntimeConfig::Builder", align 8 ; 2 uses
  %9 = alloca %"class.hermes::vm::RuntimeConfig", align 8 ; 9 uses
  %10 = alloca %"class.hermes::vm::GCConfig::Builder", align 8 ; 9 uses
  %11 = alloca %"class.hermes::vm::GCConfig::Builder", align 8 ; 9 uses
  %12 = alloca %"class.hermes::vm::GCConfig", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN6hermes2vm13RuntimeConfig7BuilderC2Ev(ptr noundef nonnull align 8 dereferenceable(299) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i32 0, ptr %7, align 8, !tbaa !282
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 5 uses
  store i32 33554432, ptr %i.a, align 4, !tbaa !283
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 -1073741824, ptr %i.b, align 8, !tbaa !284
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 5.000000e-01, ptr %i.c, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 -1, ptr %i.d, align 8, !tbaa !286
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.e, align 8
  store i64 -1, ptr %i.f, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.g, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 1, ptr %i.h, align 4, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %i.k, align 8, !tbaa !92
  store i8 0, ptr %i.j, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 4294967295, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.n, align 8, !tbaa !199
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 218 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !289, !range !67, !noundef !68
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6hermes2vm13RuntimeConfig7Builder6updateERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::RuntimeConfig::Builder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(299) %6, ptr noundef nonnull align 8 dereferenceable(299) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(299) %8) #35
  br label %bb.k

bb.d:                                             ; preds = %_ZN6hermes2vm8GCConfig7doBuildERKNS1_7BuilderE.exit.i, %_ZN6hermes2vm8GCConfig7BuilderD2Ev.exit, %bb.t, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  invoke void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(269) %9, ptr noundef nonnull align 8 dereferenceable(299) %1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.t, ptr noundef nonnull align 8 dereferenceable(45) %i.u, i64 45, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !184, !noalias !290 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8GCConfigaSEOS1_:bb.a
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !74
  store i8 %i.l, ptr %i.c, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.m, ptr %i.n, align 8, !tbaa !92
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !92
  store i64 %i.s, ptr %i.q, align 8, !tbaa !92
  %i.t = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.t, ptr %i.d, align 8, !tbaa !74
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !74
  store ptr %i.f, ptr %i.a, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !92
  %i.y = load i64, ptr %i.g, align 8, !tbaa !74
  store i64 %i.y, ptr %i.d, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !144
  store i64 %i.u, ptr %i.g, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %i.b, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !92
  store i8 0, ptr %i.z, align 1, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !418
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !418
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !213
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !151
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !420
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !213
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.al, ptr %i.aj, align 16, !tbaa !213
  store <2 x ptr> %i.ag, ptr %i.ak, align 8, !tbaa !213
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit:      ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load i32, ptr %i.ar, align 8
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !213
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !151
  %.not.i.i.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i: ; preds = %bb.k, %_ZN6hermes2vm16GCTripwireConfigaSEOS1_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 16, i1 false), !tbaa.struct !420
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.at, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !213
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.ay, align 16, !tbaa !213
  store <2 x ptr> %i.av, ptr %i.az, align 8, !tbaa !213
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #34
  unreachable

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !213
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !151
  %.not.i.i.not.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i: ; preds = %bb.n, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEaSEOS6_.exit
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !420
  store <2 x i64> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.bf, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !213
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !213 ; 2 uses
  store <2 x ptr> %i.bm, ptr %i.bk, align 16, !tbaa !213
  store <2 x ptr> %i.bh, ptr %i.bl, align 8, !tbaa !213
  %.not.i.i9 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9, label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #34
  unreachable

_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEaSEOS6_.exit: ; preds = %_ZNSt8functionIFvN6hermes2vm11GCEventKindEPKcEEC2EOS6_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 20, i1 false), !tbaa.struct !266
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184  ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !213
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !213
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.n = load i32, ptr %1, align 8, !tbaa !1042
  store i32 %i.n, ptr %i.b, align 8, !tbaa !1042
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !222
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_M_clone_nodeILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %.0.in38 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.039 = load ptr, ptr %.0.in38, align 8, !tbaa !220 ; 2 uses
  %.not3240 = icmp eq ptr %.039, null
  br i1 %.not3240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.r
  %.042 = phi ptr [ %.0, %bb.r ], [ %.039, %bb.h ] ; 6 uses
  %.03141 = phi ptr [ %i.v, %bb.r ], [ %i.b, %bb.h ] ; 2 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc unwind label %bb.o     ; 9 uses

.noexc:                                           ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 20, i1 false), !tbaa.struct !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.042, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %.042, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !213
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !213
  %.not.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i34, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i.i.i.i35 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.noexc
  %i.ai = load i32, ptr %.042, align 8, !tbaa !1042
  store i32 %i.ai, ptr %i.v, align 8, !tbaa !1042
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.03141, i64 16
  store ptr %i.v, ptr %i.ak, align 8, !tbaa !220
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.03141, ptr %i.al, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %.042, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222 ; 2 uses
  %.not33 = icmp eq ptr %i.an, null
  br i1 %.not33, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef ptr @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !222
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph, %bb.m
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.u, %bb.g ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.030) #35 ; 0 uses
  invoke void @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_rethrow() #38
          to label %bb.v unwind label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.l
  %.0.in = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !220 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !1043

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.as

._crit_edge:                                      ; preds = %bb.r, %bb.h
  ret ptr %i.b

bb.u:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #34
  unreachable

bb.v:                                             ; preds = %bb.q
  unreachable
}

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEElNS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 48
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph56
  %i.f = add nsw i64 %.02453, -1                  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph56, !llvm.loop !1044

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa50 = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.al, %.lr.ph ]
  %.sroa.018.023.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %..sroa.018.0, %.lr.ph ] ; 8 uses
  %.sroa.015.022.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.015.0., %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %.lcssa50
  %i.k = ashr exact i64 %i.j, 4                   ; 4 uses
  %i.l = icmp slt i64 %i.k, 2
  br i1 %i.l, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_RT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.m = add nsw i64 %i.k, -2
  %i.n = lshr i64 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.09.i.i = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %.sroa.018.023.lcssa, i64 %.09.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i = load double, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvT_T0_SK_T1_T2_(ptr %.sroa.018.023.lcssa, i64 noundef %.09.i.i, i64 noundef %i.k, double %.sroa.02.0.copyload.i.i, ptr %.sroa.4.0.copyload.i.i)
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.p = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_RT0_.exit.i, label %bb.c, !llvm.loop !1045

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_RT0_.exit.i: ; preds = %bb.c, %.lr.ph._crit_edge
  %i.q = icmp ult ptr %i.h, %.sroa.015.022.lcssa
  br i1 %i.q, label %.lr.ph.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_.exit

.lr.ph.i:                                         ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_RT0_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.023.lcssa, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i, %.lr.ph.i
  %.sroa.0.015.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i ] ; 6 uses
  %i.s = load double, ptr %.sroa.0.015.i, align 8, !tbaa !230 ; 3 uses
  %i.t = load double, ptr %.sroa.018.023.lcssa, align 8, !tbaa !230 ; 3 uses
  %i.u = fcmp olt double %i.s, %i.t
  br i1 %i.u, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread_crit_edge.i, label %bb.e

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i10.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  %.sroa.4.0.copyload.i11.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i10.phi.trans.insert.i, align 8
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !162
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.v = fcmp olt double %i.t, %i.s
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !232  ; 2 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !232  ; 2 uses
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread_crit_edge.i
  %i.aa = phi ptr [ %.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.y, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i ]
  %.sroa.4.0.copyload.i11.i = phi ptr [ %.sroa.4.0.copyload.i11.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i ]
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 8
  store double %i.t, ptr %.sroa.0.015.i, align 8, !tbaa !230
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !232
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEElSB_NS0_5__ops15_Iter_less_iterEEvT_T0_SK_T1_T2_(ptr nonnull %.sroa.018.023.lcssa, i64 noundef 0, i64 noundef %i.k, double %i.s, ptr %.sroa.4.0.copyload.i11.i)
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 16 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %.sroa.015.022.lcssa
  br i1 %i.ac, label %bb.d, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_.exit, !llvm.loop !1046

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_SJ_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.thread14.i, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvT_SJ_RT0_.exit.i
  %i.ad = load double, ptr %.sroa.018.023.lcssa, align 8, !tbaa !405
  %i.ae = load double, ptr %1, align 8, !tbaa !405
  store double %i.ae, ptr %.sroa.018.023.lcssa, align 8, !tbaa !405
  store double %i.ad, ptr %1, align 8, !tbaa !405
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.023.lcssa, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !162
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EEC2INS0_6hermes13HermesRuntimeESt14default_deleteIS8_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35, !inline_history !1031
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !125

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #35
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !184
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !187
  store i32 0, ptr %i.f, align 4, !tbaa !189
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !480
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSB_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !1083
  br label %_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook6hermes13HermesRuntimeEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN8facebook6hermes13HermesRuntimeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1036 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN8facebook6hermes13HermesRuntimeEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !74
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(54) @_ZTSSt14default_deleteIN8facebook6hermes13HermesRuntimeEE) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE16_M_insert_uniqueISA_EES2_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !78 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.d = tail call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(20) %i.c, i64 noundef 20) #35
  %i.e = icmp slt i32 %i.d, 0                     ; 2 uses
  %.in.v.i = select i1 %i.e, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1084

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.e, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = icmp eq ptr %.019.lcssa29.i, %i.g
  br i1 %i.h, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.i, %bb.b ], [ %.02024.i, %._crit_edge.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.k = tail call noundef i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(20) %i.j, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef 20) #35
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.m = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.m, label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.o = tail call noundef i32 @memcmp(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(20) %i.n, i64 noundef 20) #35
  %i.p = icmp slt i32 %i.o, 0
  br label %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit

_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit: ; preds = %select.unfold, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %select.unfold ]
  %i.r = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 20, i1 false), !tbaa.struct !266
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !213
  store ptr null, ptr %i.v, align 8, !tbaa !184
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !213
  store ptr null, ptr %i.u, align 8, !tbaa !492
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.r, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE10_M_insert_ISA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !189
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !480
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !480
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNSA_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0E9_M_invokeERKSt9_Any_dataS4_S6_OS7_Om"(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree nonnull readonly align 8 captures(none) %5) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 5 uses
  %7 = alloca %"class.facebook::jsi::Value", align 8 ; 7 uses
  %8 = alloca %"class.facebook::jsi::Value", align 8 ; 8 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !1085  ; 13 uses
  %.val5 = load ptr, ptr %4, align 8, !tbaa !1087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 640 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !1097 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !482, !noalias !1097, !nonnull !68, !align !453 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103, !noalias !1097
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !106, !noalias !1097 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i.i.i = icmp ult i64 %i.b, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1098
  br label %"_ZSt10__invoke_rIN8facebook3jsi5ValueERZNS0_6hermes7tracing16TraceInterpreter18createHostFunctionERKNS4_10SynthTrace24CreateHostFunctionRecordERKNS1_10PropNameIDEE3$_0JRNS1_7RuntimeERKS2_PSH_mEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110, !noalias !1097 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.o, align 8, !tbaa !498, !noalias !1097
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.211.0.copyload.i.i.i = load i64, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1097
  %i.p = load ptr, ptr %.val, align 8, !tbaa !452, !noalias !1097, !nonnull !68, !align !453
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !1097, !inline_history !1101

.noexc.i.i.i:                                     ; preds = %bb.c
  %.off.i.i.i.i.i.i = add i32 %.sroa.09.0.copyload.i.i.i, -4
  %switch.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i, 5
  br i1 %switch.i.i.i.i.i.i, label %bb.d, label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %.val, i64 noundef %.sroa.211.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.b)
          to label %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i unwind label %bb.e, !noalias !1097, !inline_history !1101

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35, !noalias !1097, !inline_history !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1097
  br label %.body.i.i.i

_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i: ; preds = %bb.d, %.noexc.i.i.i
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35, !noalias !1097, !inline_history !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1097
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1102, !noalias !1097
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1103, !noalias !1097 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.j, %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueERKNS_3jsi5ValueEmb.exit.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv(ptr noundef nonnull align 8 dereferenceable(648) %.val)
          to label %bb.n unwind label %bb.f, !noalias !1097, !inline_history !1101

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i

bb.g:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %i.x = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.ad, %bb.j ]
  %.0274.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.0274.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.y, align 8, !tbaa !498, !noalias !1097 ; 2 uses
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25.0.copyload.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !74, !noalias !1097 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !1097
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.val5, i64 %.0274.i.i.i
  invoke void @_ZN8facebook3jsi5ValueC1ERNS0_7RuntimeERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.h unwind label %bb.k, !noalias !1097, !inline_history !1101

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1097
  store i32 %.sroa.03.0.copyload.i.i.i, ptr %6, align 8, !noalias !1097
  store i64 %.sroa.25.0.copyload.i.i.i, ptr %i.v, align 8, !noalias !1097
  invoke void @_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(648) %.val, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc30.i.i.i unwind label %bb.l, !noalias !1097, !inline_history !1101

.noexc30.i.i.i:                                   ; preds = %bb.h
  %.off.i.i.i.i.i = add i32 %.sroa.03.0.copyload.i.i.i, -4
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 5
  br i1 %switch.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc30.i.i.i
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %.val, i64 noundef %.sroa.25.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.aa)
          to label %bb.j unwind label %bb.l, !noalias !1097, !inline_history !1101

bb.j:                                             ; preds = %bb.i, %.noexc30.i.i.i
end_hunk_3
begin_hunk_4_@bcmp
!66 = !{!"_ZTSSt10_HashtableImSt4pairIKmN8facebook3jsi10PropNameIDEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !52, i64 0, !19, i64 8, !54, i64 16, !19, i64 24, !56, i64 32, !55, i64 48}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSN8facebook3jsi5ValueE", !71, i64 0, !5, i64 8}
!71 = !{!"_ZTSN8facebook3jsi5Value9ValueKindE", !5, i64 0}
!72 = distinct !{null}
!73 = !{!11, !19, i64 640}
!74 = !{!5, !5, i64 0}
!75 = !{!12, !12, i64 0}
!76 = !{!45, !48, i64 8}
!77 = !{!45, !47, i64 0}
!78 = !{!48, !48, i64 0}
!79 = !{!46, !48, i64 8}
!80 = !{!45, !19, i64 32}
!81 = !{!45, !48, i64 16}
!82 = !{!45, !48, i64 24}
!83 = !{!49, !49, i64 0}
!84 = !{!51, !52, i64 0}
!85 = !{!51, !19, i64 8}
!86 = !{!56, !57, i64 0}
!87 = !{!64, !52, i64 0}
!88 = !{!64, !19, i64 8}
!89 = !{!66, !52, i64 0}
!90 = !{!66, !19, i64 8}
!91 = !{!23, !24, i64 0}
!92 = !{!22, !19, i64 8}
!93 = !{!11, !20, i64 624}
!94 = !{!95, !95, i64 0}
!95 = !{!"vtable pointer", !6, i64 0}
!96 = !{!97, !98, i64 0}
!97 = !{!"_ZTSN8facebook3jsi7PointerE", !98, i64 0}
!98 = !{!"p1 _ZTSN8facebook3jsi7Runtime12PointerValueE", !13, i64 0}
!99 = distinct !{null}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_117createLastUseMapsERKSt6vectorISt10unique_ptrINS1_10SynthTrace6RecordESt14default_deleteIS6_EESaIS9_EE: argument 0"}
!102 = distinct !{!102, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_117createLastUseMapsERKSt6vectorISt10unique_ptrINS1_10SynthTrace6RecordESt14default_deleteIS6_EESaIS9_EE"}
!103 = !{!104, !105, i64 8}
!104 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!105 = !{!"p1 _ZTSSt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS4_EE", !13, i64 0}
!106 = !{!104, !105, i64 0}
!107 = !{!19, !19, i64 0}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!111, !111, i64 0}
!111 = !{!"p1 _ZTSN8facebook6hermes7tracing10SynthTrace6RecordE", !13, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"p1 long", !13, i64 0}
!114 = !{!115, !113, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!116 = !{!115, !113, i64 16}
!117 = distinct !{!117, !109}
!118 = !{!51, !19, i64 24}
!119 = !{!54, !55, i64 0}
!120 = distinct !{!120, !109}
!121 = !{!55, !55, i64 0}
!122 = distinct !{!122, !109}
!123 = distinct !{!123, !109}
!124 = !{!56, !19, i64 8}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!51, !55, i64 48}
!127 = !{!51, !55, i64 16}
!128 = distinct !{!128, !109}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !109}
!134 = !{i64 0, i64 4, !135, i64 8, i64 8, !107}
!135 = !{!57, !57, i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEEE", !13, i64 0}
!138 = !{!61, !62, i64 16}
!139 = !{!61, !62, i64 0}
!140 = !{!61, !62, i64 8}
!141 = distinct !{!141, !109}
!142 = distinct !{!142, !109}
!143 = !{!62, !62, i64 0}
!144 = !{!22, !24, i64 0}
!145 = !{!14, !30, i64 264}
!146 = !{!66, !55, i64 16}
!147 = distinct !{null, null, null, null, null, null}
!148 = distinct !{!148, !109}
!149 = !{!64, !55, i64 16}
!150 = distinct !{!150, !109}
!151 = !{!27, !13, i64 16}
!152 = !{!153, !13, i64 24}
!153 = !{!"_ZTSSt8functionIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEE", !27, i64 0, !13, i64 24}
!154 = !{!155, !156, i64 16}
!155 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !156, i64 16, !156, i64 17}
!156 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!157 = !{!155, !156, i64 17}
!158 = !{!159, !159, i64 0}
!159 = !{!"p1 _ZTSNSt3_V214error_categoryE", !13, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"p1 _ZTSN4llvh12MemoryBufferE", !13, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!164 = distinct !{null, null, null, null, null}
!165 = !{!166, !167, i64 8}
!166 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!167 = !{!"p1 _ZTSSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EE", !13, i64 0}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!170 = distinct !{!170, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!171 = !{!172}
!172 = distinct !{!172, !170, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!173 = !{!172, !174}
!174 = distinct !{!174, !175}
!175 = distinct !{!175, !"LVerDomain"}
!176 = !{!169, !177}
!177 = distinct !{!177, !175}
!178 = distinct !{!178, !109, !179, !180}
!179 = !{!"llvm.loop.isvectorized", i32 1}
!180 = !{!"llvm.loop.unroll.runtime.disable"}
!181 = distinct !{!181, !109, !179}
!182 = !{!166, !167, i64 0}
!183 = !{!166, !167, i64 16}
!184 = !{!185, !186, i64 0}
!185 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !186, i64 0}
!186 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!187 = !{!188, !4, i64 8}
!188 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!189 = !{!188, !4, i64 12}
!190 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!191 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!192 = distinct !{!192, !109}
!193 = distinct !{null, null}
!194 = distinct !{null, null, null}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!197 = distinct !{!197, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!198 = distinct !{null}
!199 = !{!20, !20, i64 0}
!200 = !{!14, !4, i64 224}
!201 = !{!202, !163, i64 0}
!202 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!203 = !{!202, !163, i64 16}
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = distinct !{!206, !109}
!207 = !{!202, !163, i64 8}
!208 = !{!14, !4, i64 220}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZNKSt8functionIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEEclES9_: argument 0"}
!211 = distinct !{!211, !"_ZNKSt8functionIFSt10shared_ptrIN8facebook3jsi7RuntimeEERKN6hermes2vm13RuntimeConfigEEEclES9_"}
!212 = distinct !{null}
!213 = !{!13, !13, i64 0}
!214 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!215 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!216 = !{!217, !12, i64 0}
!217 = !{!"_ZTSSt12__shared_ptrIN8facebook3jsi7RuntimeELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !185, i64 8}
!218 = !{!219, !219, i64 0}
!219 = !{!"p1 _ZTSSt8_Rb_treeISt5arrayIhLm20EESt4pairIKS1_St10shared_ptrIKN8facebook3jsi6BufferEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE", !13, i64 0}
!220 = !{!46, !48, i64 16}
!221 = distinct !{!221, !109}
!222 = !{!46, !48, i64 24}
!223 = distinct !{!223, !109}
!224 = distinct !{!224, !109}
!225 = !{!16, !20, i64 48}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE: argument 0"}
!228 = distinct !{!228, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_112mergeGCStatsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE"}
!229 = distinct !{null}
!230 = !{!231, !17, i64 0}
!231 = !{!"_ZTSSt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !17, i64 0, !163, i64 8}
!232 = !{!231, !163, i64 8}
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZSt19__relocate_object_aISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!235 = distinct !{!235, !"_ZSt19__relocate_object_aISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_SaIS9_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aISt4pairIdPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!237 = distinct !{!237, !109}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZSt10make_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_: argument 0"}
!240 = distinct !{!240, !"_ZSt10make_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook3jsi7RuntimeEEEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSE_"}
!241 = distinct !{!241, !109}
!242 = distinct !{null, null, null, null, null}
!243 = !{!167, !167, i64 0}
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZSt11make_uniqueIKZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EEE17OwnedMemoryBufferJS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!246 = distinct !{!246, !"_ZSt11make_uniqueIKZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EEE17OwnedMemoryBufferJS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!247 = distinct !{!247, !248, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EE: argument 0"}
!248 = distinct !{!248, !"_ZN8facebook6hermes7tracing12_GLOBAL__N_110bufConvertESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EE"}
!249 = !{!250, !250, i64 0}
!250 = !{!"p1 _ZTSN8facebook3jsi6BufferE", !13, i64 0}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZSt19__relocate_object_aISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!253 = distinct !{!253, !"_ZSt19__relocate_object_aISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!254 = !{!255}
!255 = distinct !{!255, !253, !"_ZSt19__relocate_object_aISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!256 = !{!255, !257}
!257 = distinct !{!257, !258}
!258 = distinct !{!258, !"LVerDomain"}
!259 = !{!252, !260}
!260 = distinct !{!260, !258}
!261 = distinct !{!261, !109, !179, !180}
!262 = distinct !{!262, !109, !179}
!263 = distinct !{null, null}
!264 = distinct !{null}
!265 = !{!14, !20, i64 229}
!266 = !{i64 0, i64 20, !74}
!267 = distinct !{ptr @_ZNSt4pairIKSt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEEED2Ev, ptr @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!268 = !{!105, !105, i64 0}
!269 = distinct !{!269, !109}
!270 = distinct !{!270, !271}
!271 = !{!"llvm.loop.peeled.count", i32 1}
!272 = distinct !{!272, !271}
!273 = !{!274, !275, i64 0}
!274 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !275, i64 0, !275, i64 8, !275, i64 16}
!275 = !{!"p1 _ZTSSt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS3_EE", !13, i64 0}
!276 = !{!274, !275, i64 8}
!277 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIKN8facebook3jsi6BufferESt14default_deleteIS4_EESaIS7_EED2Ev, null, null, null, null, null}
!278 = distinct !{!278, !109}
!279 = !{!274, !275, i64 16}
!280 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!281 = distinct !{null, null, null, null, null}
!282 = !{!16, !4, i64 0}
!283 = !{!16, !4, i64 4}
!284 = !{!16, !4, i64 8}
!285 = !{!16, !17, i64 16}
!286 = !{!16, !4, i64 24}
!287 = !{!18, !19, i64 8}
!288 = !{!16, !21, i64 52}
!289 = !{!14, !20, i64 218}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN6hermes2vm13RuntimeConfig7Builder5buildEv: argument 0"}
!292 = distinct !{!292, !"_ZN6hermes2vm13RuntimeConfig7Builder5buildEv"}
!293 = !{!294, !20, i64 227}
!294 = !{!"_ZTSN6hermes2vm13RuntimeConfigE", !16, i64 0, !295, i64 200, !4, i64 208, !4, i64 212, !20, i64 216, !20, i64 217, !20, i64 218, !20, i64 219, !20, i64 220, !20, i64 221, !20, i64 222, !20, i64 223, !20, i64 224, !20, i64 225, !296, i64 226, !20, i64 227, !20, i64 228, !20, i64 229, !4, i64 232, !20, i64 236, !20, i64 237, !20, i64 238, !297, i64 240, !20, i64 244, !298, i64 248, !4, i64 264, !20, i64 268}
!295 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !13, i64 0}
!296 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!297 = !{!"_ZTSN6hermes2vm15CompilationModeE", !5, i64 0}
!298 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !299, i64 0}
!299 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !300, i64 0, !185, i64 8}
!300 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !13, i64 0}
!301 = !{!302, !20, i64 227}
!302 = !{!"_ZTSN6hermes2vm13RuntimeConfig7BuilderE", !294, i64 0, !20, i64 272, !20, i64 273, !20, i64 274, !20, i64 275, !20, i64 276, !20, i64 277, !20, i64 278, !20, i64 279, !20, i64 280, !20, i64 281, !20, i64 282, !20, i64 283, !20, i64 284, !20, i64 285, !20, i64 286, !20, i64 287, !20, i64 288, !20, i64 289, !20, i64 290, !20, i64 291, !20, i64 292, !20, i64 293, !20, i64 294, !20, i64 295, !20, i64 296, !20, i64 297, !20, i64 298}
!303 = !{!302, !20, i64 287}
!304 = !{!35, !20, i64 4}
!305 = !{!302, !4, i64 232}
!306 = !{!302, !20, i64 290}
!307 = !{!31, !20, i64 1}
!308 = !{!302, !20, i64 236}
!309 = !{!302, !20, i64 291}
!310 = !{!14, !20, i64 216}
!311 = !{!302, !296, i64 226}
!312 = !{!302, !20, i64 286}
!313 = !{!302, !20, i64 228}
!314 = !{!302, !20, i64 288}
!315 = !{!302, !20, i64 229}
!316 = !{!302, !20, i64 289}
!317 = !{!15, !20, i64 200}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN6hermes2vm8GCConfig7Builder5buildEv: argument 0"}
!320 = distinct !{!320, !"_ZN6hermes2vm8GCConfig7Builder5buildEv"}
!321 = !{!15, !20, i64 201}
!322 = !{!302, !20, i64 272}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN6hermes2vm13RuntimeConfig7Builder5buildEv: argument 0"}
!325 = distinct !{!325, !"_ZN6hermes2vm13RuntimeConfig7Builder5buildEv"}
!326 = !{!16, !20, i64 128}
!327 = !{!294, !4, i64 208}
!328 = !{!294, !4, i64 212}
!329 = !{!294, !20, i64 224}
!330 = !{!294, !4, i64 232}
!331 = !{!294, !20, i64 236}
!332 = !{!294, !20, i64 237}
!333 = !{!294, !20, i64 238}
!334 = !{!294, !297, i64 240}
!335 = !{!294, !20, i64 244}
!336 = !{!299, !300, i64 0}
!337 = !{!294, !4, i64 264}
!338 = !{!294, !20, i64 268}
!339 = !{!302, !20, i64 273}
!340 = !{!294, !295, i64 200}
!341 = !{!302, !295, i64 200}
!342 = !{!302, !20, i64 274}
!343 = !{!302, !4, i64 208}
!344 = !{!302, !20, i64 275}
!345 = !{!302, !4, i64 212}
!346 = !{!302, !20, i64 276}
!347 = !{!294, !20, i64 216}
!348 = !{!302, !20, i64 216}
!349 = !{!302, !20, i64 277}
!350 = !{!294, !20, i64 217}
!351 = !{!302, !20, i64 217}
!352 = !{!302, !20, i64 278}
!353 = !{!294, !20, i64 218}
!354 = !{!302, !20, i64 218}
!355 = !{!302, !20, i64 279}
!356 = !{!294, !20, i64 219}
!357 = !{!302, !20, i64 219}
!358 = !{!302, !20, i64 280}
!359 = !{!294, !20, i64 220}
!360 = !{!302, !20, i64 220}
!361 = !{!302, !20, i64 281}
!362 = !{!294, !20, i64 221}
!363 = !{!302, !20, i64 221}
!364 = !{!302, !20, i64 282}
!365 = !{!294, !20, i64 222}
!366 = !{!302, !20, i64 222}
!367 = !{!302, !20, i64 283}
!368 = !{!294, !20, i64 223}
!369 = !{!302, !20, i64 223}
!370 = !{!302, !20, i64 284}
!371 = !{!302, !20, i64 224}
!372 = !{!302, !20, i64 285}
!373 = !{!294, !20, i64 225}
!374 = !{!302, !20, i64 225}
!375 = !{!294, !296, i64 226}
!376 = !{!294, !20, i64 228}
!377 = !{!294, !20, i64 229}
!378 = !{!302, !20, i64 292}
!379 = !{!302, !20, i64 237}
!380 = !{!302, !20, i64 293}
!381 = !{!302, !20, i64 238}
!382 = !{!302, !20, i64 294}
!383 = !{!302, !297, i64 240}
!384 = !{!302, !20, i64 295}
!385 = !{!302, !20, i64 244}
!386 = !{!302, !20, i64 296}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZNK6hermes2vm13RuntimeConfig11getCrashMgrEv: argument 0"}
!389 = distinct !{!389, !"_ZNK6hermes2vm13RuntimeConfig11getCrashMgrEv"}
!390 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!391 = !{!302, !20, i64 297}
!392 = !{!302, !4, i64 264}
!393 = !{!302, !20, i64 298}
!394 = !{!302, !20, i64 268}
!395 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!396 = !{!15, !4, i64 0}
!397 = !{!15, !4, i64 4}
!398 = !{!15, !20, i64 202}
!399 = !{!15, !4, i64 8}
!400 = !{!15, !20, i64 203}
!401 = !{!15, !17, i64 16}
!402 = !{!15, !20, i64 204}
!403 = !{!15, !4, i64 24}
!404 = !{!15, !20, i64 205}
!405 = !{!17, !17, i64 0}
!406 = !{!15, !20, i64 206}
!407 = !{!15, !20, i64 48}
!408 = !{!15, !20, i64 207}
!409 = !{!15, !21, i64 52}
!410 = !{!15, !20, i64 208}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev: argument 0"}
!413 = distinct !{!413, !"_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev"}
!414 = !{!15, !20, i64 209}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZNK6hermes2vm8GCConfig17getTripwireConfigEv: argument 0"}
!417 = distinct !{!417, !"_ZNK6hermes2vm8GCConfig17getTripwireConfigEv"}
!418 = !{!25, !4, i64 0}
!419 = !{!26, !13, i64 24}
!420 = !{i64 0, i64 16, !74}
!421 = !{!15, !20, i64 210}
!422 = !{!15, !20, i64 128}
!423 = !{!15, !20, i64 211}
!424 = !{!16, !20, i64 129}
!425 = !{!15, !20, i64 129}
!426 = !{!15, !20, i64 212}
!427 = !{!16, !20, i64 130}
!428 = !{!15, !20, i64 130}
!429 = !{!15, !20, i64 213}
!430 = !{!16, !20, i64 131}
!431 = !{!15, !20, i64 131}
!432 = !{!15, !20, i64 214}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv: argument 0"}
!435 = distinct !{!435, !"_ZNK6hermes2vm8GCConfig20getAnalyticsCallbackEv"}
!436 = !{!28, !13, i64 24}
!437 = !{!15, !20, i64 215}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZNK6hermes2vm8GCConfig11getCallbackEv: argument 0"}
!440 = distinct !{!440, !"_ZNK6hermes2vm8GCConfig11getCallbackEv"}
!441 = !{!29, !13, i64 24}
!442 = distinct !{null, null, null, null, null, null, null, null}
!443 = distinct !{!443, !109}
!444 = !{!104, !105, i64 16}
!445 = !{!446, !446, i64 0}
!446 = !{!"p1 _ZTSN6hermes11JSONEmitterE", !13, i64 0}
!447 = !{!448, !13, i64 0}
!448 = !{!"_ZTSN4llvh15SmallVectorBaseE", !13, i64 0, !4, i64 8, !4, i64 12}
!449 = !{!39, !39, i64 0}
!450 = distinct !{null, null, null, null}
!451 = !{!11, !30, i64 272}
!452 = !{!11, !12, i64 0}
!453 = !{i64 8}
!454 = distinct !{null}
!455 = distinct !{ptr @_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev, null, null, null, null, null, null}
!456 = !{!457, !4, i64 28}
!457 = !{!"_ZTSN8facebook6hermes7tracing10SynthTrace24CreateHostFunctionRecordE", !458, i64 0, !4, i64 24, !4, i64 28}
!458 = !{!"_ZTSN8facebook6hermes7tracing10SynthTrace18CreateObjectRecordE", !459, i64 0, !19, i64 16}
!459 = !{!"_ZTSN8facebook6hermes7tracing10SynthTrace6RecordE", !460, i64 8}
!460 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE", !19, i64 0}
!461 = !{!462, !462, i64 0}
!462 = !{!"p1 _ZTSN8facebook6hermes7tracing16TraceInterpreterE", !13, i64 0}
!463 = !{!464, !13, i64 24}
!464 = !{!"_ZTSSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEE", !27, i64 0, !13, i64 24}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN8facebook3jsi8Function22createFromHostFunctionERNS0_7RuntimeERKNS0_10PropNameIDEjSt8functionIFNS0_5ValueES3_RKS8_PS9_mEE: argument 0"}
!467 = distinct !{!467, !"_ZN8facebook3jsi8Function22createFromHostFunctionERNS0_7RuntimeERKNS0_10PropNameIDEjSt8functionIFNS0_5ValueES3_RKS8_PS9_mEE"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZSt11make_sharedIZN8facebook6hermes7tracing16TraceInterpreter16createHostObjectEmE14FakeHostObjectJRS3_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
end_hunk_4
