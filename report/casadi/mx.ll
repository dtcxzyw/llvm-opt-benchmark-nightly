Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx?download=true
inline.NumInlined: 9376
inline.NumDeleted: 1776
loop-unroll.NumCompletelyUnrolled: 133
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN6casadi13GenericMatrixINS_2MXEE9linearizeERKS1_S4_S4_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessISB_ESaISt4pairIKSB_SC_EEE:._crit_edge.i.i
bb.av:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ep = load ptr, ptr %i.dv, align 8, !tbaa !79
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.av
  %i.et = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.et) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  %i.eu = load ptr, ptr %21, align 8, !tbaa !77   ; 3 uses
  %i.ev = load ptr, ptr %i.db, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i125 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not4.i.i.i125, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i131, label %.lr.ph.i.i.i126

.lr.ph.i.i.i126:                                  ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.lr.ph.i.i.i126
  %.05.i.i.i127 = phi ptr [ %i.ew, %.lr.ph.i.i.i126 ], [ %i.eu, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i127) #28
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 8 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i.i.i128, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i129, label %.lr.ph.i.i.i126, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i129: ; preds = %.lr.ph.i.i.i126
  %.pr.i130 = load ptr, ptr %21, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i131

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i131: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i129, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.ex = phi ptr [ %.pr.i130, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i129 ], [ %i.eu, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i132 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i1.i132, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit134, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i131
  %i.ey = load ptr, ptr %i.ct, align 8, !tbaa !79
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit134

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit134:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i131, %bb.aw
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fc) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.bg

bb.ax:                                            ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ay:                                            ; preds = %bb.ak
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.loopexit181:                            ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #28
  br label %.loopexit

bb.az:                                            ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit174.loopexit180:                         ; preds = %_ZN6casadi2MXC2ERKS0_.exit114
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #28
  br label %.loopexit174

bb.ba:                                            ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i146.1
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.au
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn52 = phi { ptr, i32 } [ %i.fj, %bb.bb ], [ %i.fi, %bb.ba ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #28
  br label %.body119

.body119:                                         ; preds = %.body149.thread, %.body149, %bb.bc
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.bc ], [ %i.ek, %.body149.thread ], [ %i.eh, %.body149 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fk) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #28
  br label %.loopexit174

.loopexit174:                                     ; preds = %.loopexit174.loopexit180, %.body119, %.thread170
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %.body119 ], [ %i.dq, %.thread170 ], [ %i.fh, %.loopexit174.loopexit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit174, %bb.az
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn, %.loopexit174 ], [ %i.fg, %bb.az ]
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  br label %.body111

.body111:                                         ; preds = %bb.ap, %.body136, %bb.bd
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn, %bb.bd ], [ %eh.lpad-body137, %.body136 ], [ %eh.lpad-body137, %bb.ap ]
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fl) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit181, %.body111, %.thread
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn, %.body111 ], [ %i.co, %.thread ], [ %i.ff, %.loopexit.loopexit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #28
  br label %bb.be

bb.be:                                            ; preds = %.loopexit, %bb.ay
  %.pn52.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn, %.loopexit ], [ %i.fe, %bb.ay ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ax
  %.pn52.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn, %bb.be ], [ %i.fd, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit134, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.p, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ai, %bb.bf, %bb.u, %bb.r
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.u ], [ %.pn61.pn.pn.pn.pn.pn159, %bb.ai ], [ %.pn61.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.at, %bb.r ], [ %.pn52.pn.pn.pn.pn.pn.pn.pn, %bb.bf ], [ %i.as, %bb.q ], [ %i.ar, %bb.p ], [ %.pn61.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.bh ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn68.pn.pn

bb.bj:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !496
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi2MXC1ERKNS_8SparsityEdb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00, i1 noundef zeroext false)
  br label %_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31, !noalias !496 ; 3 uses
  invoke void @_ZN6casadi10SymbolicMXC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e, !noalias !496

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6casadi2MXC1EPNS_6MXNodeEbbbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 96) #30, !noalias !496
  resume { ptr, i32 } %i.d

_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit: ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 15 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %21 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %22 = alloca %"class.std::vector.15", align 8   ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::allocator", align 1   ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %32 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %33 = alloca %"class.std::vector.15", align 8   ; 11 uses
  %34 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %35 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !516
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i, %bb.b
  %.sroa.011.015.i = phi ptr [ %i.d, %bb.b ], [ %i.r, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i ] ; 4 uses
  %i.i = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext true)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i unwind label %bb.g

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i: ; preds = %.noexc.i
  br i1 %i.k, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i
  %i.l = load ptr, ptr %36, align 8, !tbaa !78, !alias.scope !516 ; 4 uses
  %i.m = load ptr, ptr %37, align 8, !tbaa !79, !alias.scope !516
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.sroa.011.015.i, align 8, !tbaa !83
  store ptr %i.n, ptr %i.l, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %bb.e
  %i.o = load ptr, ptr %36, align 8, !tbaa !78, !alias.scope !516
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %36, align 8, !tbaa !78, !alias.scope !516
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.g

common.resume:                                    ; preds = %bb.ao, %.body198, %bb.cq, %bb.az, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.fq, %bb.az ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %.pn94.pn.pn, %.body198 ], [ %.pn83.pn, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.e, %.noexc.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %common.resume

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.f, %.noexc9.i, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, label %bb.c

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !51
  %38 = load ptr, ptr %36, align 8, !tbaa !78     ; 2 uses
  %39 = load ptr, ptr %3, align 8, !tbaa !77      ; 3 uses
  %.not312 = icmp eq ptr %38, %39
  br i1 %.not312, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.an, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit
  %.lcssa295 = phi ptr [ %38, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ], [ %i.el, %bb.an ] ; 2 uses
  %.lcssa292 = phi ptr [ %39, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ], [ %i.em, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not4.i.i.i = icmp eq ptr %.lcssa292, %.lcssa295
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %.lcssa292, %._crit_edge ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %.lcssa295
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %40 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa292, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %40, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = load ptr, ptr %37, align 8, !tbaa !79
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %40 to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %40, i64 noundef %i.w) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre318.a = load ptr, ptr %1, align 8, !tbaa !89
  %.pre319.a = load ptr, ptr %i.b, align 8, !tbaa !89
  br label %bb.ap

.lr.ph:                                           ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, %bb.an
  %i.x = phi ptr [ %i.em, %bb.an ], [ %39, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ]
  %storemerge298 = phi i64 [ %i.ek, %bb.an ], [ 0, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %storemerge298
  %i.z = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit unwind label %bb.x

_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit: ; preds = %.noexc
  %i.ac = load ptr, ptr %3, align 8, !tbaa !77
  %i.ad = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc117 unwind label %bb.x

.noexc117:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit119 unwind label %bb.x

_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit119: ; preds = %.noexc117
  %i.ag = icmp eq i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.an, label %bb.i

bb.i:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit119
  %i.ah = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.242, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.244, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.238)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !51
  %i.aj = load ptr, ptr %3, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.noexc120 unwind label %bb.ac

.noexc120:                                        ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  invoke void @_ZNK6casadi8Sparsity3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.am, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit unwind label %bb.ac

_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit: ; preds = %.noexc120
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.239)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.an = load ptr, ptr %3, align 8, !tbaa !77
  %i.ao = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %.noexc122 unwind label %bb.af

.noexc122:                                        ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  invoke void @_ZNK6casadi8Sparsity3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit124 unwind label %bb.af

_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit124: ; preds = %.noexc122
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit124
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.26)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !alias.scope !517
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.ct unwind label %bb.al

bb.x:                                             ; preds = %.noexc117, %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit, %.noexc, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.thread: ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.y:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.z:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.aa:                                            ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.ab:                                            ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ac:                                            ; preds = %.noexc120, %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ad:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.ae:                                            ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.af:                                            ; preds = %.noexc122, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.ag:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit124
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.ah:                                            ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.ai:                                            ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.aj:                                            ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.ak:                                            ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.ag
  %.pn98.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.ag ], [ %.pn98.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %.pn98.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ] ; 2 uses
  %.533 = phi i1 [ true, %bb.ag ], [ %.432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %.432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ] ; 2 uses
  %i.cf = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !43
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.af
  %.pn98.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.af ], [ %.pn98.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn98.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 2 uses
  %.634 = phi i1 [ true, %bb.af ], [ %.533, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ck = load ptr, ptr %13, align 8, !tbaa !42   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ae
  %.pn98.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.ae ], [ %.pn98.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %.pn98.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ] ; 2 uses
  %.735 = phi i1 [ true, %bb.ae ], [ %.634, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %.634, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ] ; 2 uses
  %i.cp = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !43
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ad
  %.pn98.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ad ], [ %.pn98.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn98.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.ad ], [ %.735, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.735, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  %i.cu = load ptr, ptr %18, align 8, !tbaa !42   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !43
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ac
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.ac ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.ac ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.cz = load ptr, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !43
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.ab
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.ab ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 2 uses
  %.10 = phi i1 [ true, %bb.ab ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 2 uses
  %i.de = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !43
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.aa
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.aa ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 2 uses
  %.11 = phi i1 [ true, %bb.aa ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 2 uses
  %i.dj = load ptr, ptr %17, align 8, !tbaa !42   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !43
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.z
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.z ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 2 uses
  %.12 = phi i1 [ true, %bb.z ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.do = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.y
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.y ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 4 uses
  %.13 = phi i1 [ true, %bb.y ], [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 2 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.dy = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread: ; preds = %bb.j
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !43
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ei) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.13, label %bb.am, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.13, label %bb.am, label %bb.ao

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.thread
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn259.ph = phi { ptr, i32 } [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.thread ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn259 = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn259.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ah) #28
  br label %bb.ao

bb.an:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size2Ev.exit119
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !51
  %i.ek = add nsw i64 %i.ej, 1                    ; 3 uses
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !51
  %i.el = load ptr, ptr %36, align 8, !tbaa !78   ; 2 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3
  %i.er = icmp ult i64 %i.ek, %i.eq
  br i1 %i.er, label %.lr.ph, label %._crit_edge, !llvm.loop !501

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.am, %bb.x
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn259, %bb.am ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.aq, %bb.x ], [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.ap:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %bb.a
  %i.es = phi ptr [ %.pre319.a, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ], [ %i.c, %bb.a ] ; 3 uses
  %i.et = phi ptr [ %.pre318.a, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ], [ %i.d, %bb.a ] ; 4 uses
  %i.eu = icmp eq ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6casadi2MXC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0, i64 noundef 1)
  br label %bb.cs

bb.ar:                                            ; preds = %bb.ap
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp eq i64 %i.ex, 8
  br i1 %i.ey, label %bb.as, label %.lr.ph.i167

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !83
  store ptr %i.ez, ptr %0, align 8, !tbaa !83
  call void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.cs

bb.at:                                            ; preds = %.lr.ph.i167
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.fa, %i.es
  br i1 %.not.not.i, label %_ZN6casadi9has_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.ar, %bb.at
  %.sroa.09.014.i = phi ptr [ %i.fa, %bb.at ], [ %i.et, %bb.ar ] ; 2 uses
  %i.fb = call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.014.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i1 noundef zeroext false)
  br i1 %i.fd, label %bb.au, label %bb.at

bb.au:                                            ; preds = %.lr.ph.i167
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !518
  %i.fe = load ptr, ptr %1, align 8, !tbaa !89, !noalias !518 ; 2 uses
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !518 ; 2 uses
  %.not14.i168 = icmp eq ptr %i.fe, %i.ff
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  br i1 %.not14.i168, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175, %.lr.ph.i169
  %.sroa.011.015.i170 = phi ptr [ %i.fe, %.lr.ph.i169 ], [ %i.fr, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175 ] ; 4 uses
  %i.fi = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i170)
          to label %.noexc.i171 unwind label %bb.az

.noexc.i171:                                      ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172 unwind label %bb.az

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172: ; preds = %.noexc.i171
  br i1 %i.fk, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !78, !alias.scope !518 ; 4 uses
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !79, !alias.scope !518
  %.not.i.i173 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i173, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = load ptr, ptr %.sroa.011.015.i170, align 8, !tbaa !83
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.noexc9.i174 unwind label %bb.az

.noexc9.i174:                                     ; preds = %bb.ax
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !78, !alias.scope !518
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fp, ptr %i.fg, align 8, !tbaa !78, !alias.scope !518
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i170)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.noexc.i171, %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  br label %common.resume

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175: ; preds = %bb.ay, %.noexc9.i174, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i170, i64 8 ; 2 uses
  %.not.i176 = icmp eq ptr %i.fr, %i.ff
  br i1 %.not.i176, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177, label %bb.av

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175
  %.pre320.a = load ptr, ptr %21, align 8, !tbaa !89 ; 2 uses
  %.pre322.a = load ptr, ptr %i.fg, align 8, !tbaa !89 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ft = icmp eq ptr %.pre320.a, %.pre322.a
  br i1 %i.ft, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread, label %bb.cd

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread: ; preds = %bb.au, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177
  %i.fu = phi ptr [ %i.fs, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177 ], [ %i.fg, %bb.au ] ; 5 uses
  %i.fv = phi ptr [ %.pre320.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177 ], [ null, %bb.au ]
  %i.fw = phi ptr [ %.pre322.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177 ], [ null, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !alias.scope !519
  %i.fx = load ptr, ptr %1, align 8, !tbaa !89, !noalias !519 ; 2 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !519 ; 2 uses
  %.not14.i178 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not14.i178, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185, %.lr.ph.i179
  %.sroa.011.015.i180 = phi ptr [ %i.fx, %.lr.ph.i179 ], [ %i.gk, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185 ] ; 4 uses
  %i.gb = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i180)
          to label %.noexc.i181 unwind label %.body

.noexc.i181:                                      ; preds = %bb.ba
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i1 noundef zeroext true)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i182 unwind label %.body

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i182: ; preds = %.noexc.i181
  br i1 %i.gd, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i182
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !78, !alias.scope !519 ; 4 uses
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !79, !alias.scope !519
  %.not.i.i183 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i.i183, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gg = load ptr, ptr %.sroa.011.015.i180, align 8, !tbaa !83
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc9.i184 unwind label %.body

.noexc9.i184:                                     ; preds = %bb.bc
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !78, !alias.scope !519
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gi, ptr %i.fz, align 8, !tbaa !78, !alias.scope !519
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185

bb.bd:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i180)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185 unwind label %.body

.body:                                            ; preds = %bb.bd, %bb.bc, %.noexc.i181, %bb.ba
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.body198

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185: ; preds = %bb.bd, %.noexc9.i184, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i182
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i180, i64 8 ; 2 uses
  %.not.i186 = icmp eq ptr %i.gk, %i.fy
  br i1 %.not.i186, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit, label %bb.ba

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i185
  %.pre323 = load ptr, ptr %21, align 8, !tbaa !77
  %.pre324.a = load ptr, ptr %i.fu, align 8, !tbaa !78
  %.pre325 = load ptr, ptr %22, align 8, !tbaa !77
  %.pre327 = load ptr, ptr %i.fz, align 8, !tbaa !78
  %.pre329 = load ptr, ptr %i.ga, align 8, !tbaa !79
  br label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187: ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread
  %i.gl = phi ptr [ %.pre329, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread ]
  %i.gm = phi ptr [ %.pre327, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread ]
  %i.gn = phi ptr [ %.pre325, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread ]
  %i.go = phi ptr [ %.pre324.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit ], [ %i.fw, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread ] ; 2 uses
  %i.gp = phi ptr [ %.pre323, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit187.loopexit ], [ %i.fv, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.thread ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !79
  store ptr %i.gn, ptr %21, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.gm, ptr %i.fu, align 8, !tbaa !78
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 16
end_hunk_1
begin_hunk_2_@_ZNK6casadi2MX10is_regularEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.as = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.av = load i64, ptr %i.at, align 8, !tbaa !43
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ] ; 4 uses
  %.4 = phi i1 [ true, %bb.o ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ] ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.bc = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !43
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.4, label %bb.t, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.4, label %bb.t, label %bb.u

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.thread
  %.pn.pn.pn.pn.pn.pn42.ph = phi { ptr, i32 } [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn.pn.pn.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn.pn.pn.pn.pn.pn42.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.w) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.t, %bb.f
  %.pn23 = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.pn.pn.pn.pn.pn42, %bb.t ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  resume { ptr, i32 } %.pn23

bb.v:                                             ; preds = %bb.n
  unreachable
}

declare noundef zeroext i1 @_ZNK6casadi6MatrixIdE10is_regularEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN6casadi2MX9test_castEPKNS_20SharedObjectInternalE(ptr nofree noundef readonly %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6casadi20SharedObjectInternalE, ptr nonnull @_ZTIN6casadi6MXNodeE, i64 0) #28
  %i.c = icmp ne ptr %i.b, null
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6casadi9has_emptyERKSt6vectorINS_2MXESaIS1_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not13.not = icmp eq ptr %i.a, %i.c
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.014 = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = tail call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.014)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext %1) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.g, %i.c
  %or.cond = select i1 %i.f, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.f, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.15") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not14 = icmp eq ptr %i.a, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit
  %.sroa.011.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.f = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext %2)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit unwind label %bb.f

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit: ; preds = %.noexc
  br i1 %i.h, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !78   ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.sroa.011.015, align 8, !tbaa !83
  store ptr %i.k, ptr %i.i, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.d, align 8, !tbaa !78
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.noexc, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %i.n

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc9, %bb.e, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi2MX7horzcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 15 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %21 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %22 = alloca %"class.std::vector.15", align 8   ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::allocator", align 1   ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %32 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !833
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i, %bb.b
  %.sroa.011.015.i = phi ptr [ %i.d, %bb.b ], [ %i.r, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i ] ; 4 uses
  %i.i = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext true)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i unwind label %bb.g

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i: ; preds = %.noexc.i
  br i1 %i.k, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i
  %i.l = load ptr, ptr %33, align 8, !tbaa !78, !alias.scope !833 ; 4 uses
  %i.m = load ptr, ptr %34, align 8, !tbaa !79, !alias.scope !833
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.sroa.011.015.i, align 8, !tbaa !83
  store ptr %i.n, ptr %i.l, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %bb.e
  %i.o = load ptr, ptr %33, align 8, !tbaa !78, !alias.scope !833
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %33, align 8, !tbaa !78, !alias.scope !833
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.g

common.resume:                                    ; preds = %bb.ao, %.body188, %bb.az, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.fq, %bb.az ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %.pn84.pn.pn, %.body188 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.e, %.noexc.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %common.resume

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.f, %.noexc9.i, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, label %bb.c

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !51
  %35 = load ptr, ptr %33, align 8, !tbaa !78     ; 2 uses
  %36 = load ptr, ptr %3, align 8, !tbaa !77      ; 3 uses
  %.not = icmp eq ptr %35, %36
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.an, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit
  %.lcssa263 = phi ptr [ %35, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ], [ %i.el, %bb.an ] ; 2 uses
  %.lcssa = phi ptr [ %36, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ], [ %i.em, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa263
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %.lcssa, %._crit_edge ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %.lcssa263
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %37 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %37, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = load ptr, ptr %34, align 8, !tbaa !79
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %37 to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %37, i64 noundef %i.w) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre282.a = load ptr, ptr %1, align 8, !tbaa !89
  %.pre283.a = load ptr, ptr %i.b, align 8, !tbaa !89
  br label %bb.ap

.lr.ph:                                           ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, %bb.an
  %i.x = phi ptr [ %i.em, %bb.an ], [ %36, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ]
  %storemerge266 = phi i64 [ %i.ek, %bb.an ], [ 0, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %storemerge266
  %i.z = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit unwind label %bb.x

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit: ; preds = %.noexc
  %i.ac = load ptr, ptr %3, align 8, !tbaa !77
  %i.ad = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc107 unwind label %bb.x

.noexc107:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit109 unwind label %bb.x

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit109: ; preds = %.noexc107
  %i.ag = icmp eq i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.an, label %bb.i

bb.i:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit109
  %i.ah = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.235, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.237, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.238)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !51
  %i.aj = load ptr, ptr %3, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.noexc110 unwind label %bb.ac

.noexc110:                                        ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  invoke void @_ZNK6casadi8Sparsity3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.am, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit unwind label %bb.ac

_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit: ; preds = %.noexc110
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.239)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.an = load ptr, ptr %3, align 8, !tbaa !77
  %i.ao = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %.noexc112 unwind label %bb.af

.noexc112:                                        ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  invoke void @_ZNK6casadi8Sparsity3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit114 unwind label %bb.af

_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit114: ; preds = %.noexc112
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit114
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.26)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.236, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !alias.scope !834
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #29
          to label %bb.ci unwind label %bb.al

bb.x:                                             ; preds = %.noexc107, %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit, %.noexc, %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.y:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.z:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.aa:                                            ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ab:                                            ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ac:                                            ; preds = %.noexc110, %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.ad:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.ae:                                            ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.af:                                            ; preds = %.noexc112, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ag:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3dimB5cxx11Eb.exit114
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.ah:                                            ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.ai:                                            ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.aj:                                            ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.ak:                                            ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_2
begin_hunk_3_@_ZN6casadi2MX7horzcatERKSt6vectorIS0_SaIS0_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.ag
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.ag ], [ %.pn88.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn88.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ] ; 2 uses
  %.531 = phi i1 [ true, %bb.ag ], [ %.430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ] ; 2 uses
  %i.cf = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !43
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.af
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.af ], [ %.pn88.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn88.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  %.632 = phi i1 [ true, %bb.af ], [ %.531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ck = load ptr, ptr %13, align 8, !tbaa !42   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ae
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.ae ], [ %.pn88.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn88.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %.733 = phi i1 [ true, %bb.ae ], [ %.632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.632, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.cp = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !43
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.ad
  %.pn88.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.ad ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.ad ], [ %.733, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.733, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  %i.cu = load ptr, ptr %18, align 8, !tbaa !42   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !43
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ac
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.ac ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.ac ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.cz = load ptr, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !43
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ab
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.ab ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %.10 = phi i1 [ true, %bb.ab ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %i.de = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !43
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.aa
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.aa ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %.11 = phi i1 [ true, %bb.aa ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %i.dj = load ptr, ptr %17, align 8, !tbaa !42   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !43
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.z
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.z ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %.12 = phi i1 [ true, %bb.z ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.do = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !43
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.y
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.y ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 4 uses
  %.13 = phi i1 [ true, %bb.y ], [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  %i.dy = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread: ; preds = %bb.j
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !43
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ei) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.13, label %bb.am, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.13, label %bb.am, label %bb.ao

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn230.ph = phi { ptr, i32 } [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn230 = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn230.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ah) #28
  br label %bb.ao

bb.an:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit109
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !51
  %i.ek = add nsw i64 %i.ej, 1                    ; 3 uses
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !51
  %i.el = load ptr, ptr %33, align 8, !tbaa !78   ; 2 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3
  %i.er = icmp ult i64 %i.ek, %i.eq
  br i1 %i.er, label %.lr.ph, label %._crit_edge, !llvm.loop !823

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.am, %bb.x
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn230, %bb.am ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.aq, %bb.x ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.ap:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %bb.a
  %i.es = phi ptr [ %.pre283.a, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ], [ %i.c, %bb.a ] ; 3 uses
  %i.et = phi ptr [ %.pre282.a, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ], [ %i.d, %bb.a ] ; 4 uses
  %i.eu = icmp eq ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6casadi2MXC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1, i64 noundef 0)
  br label %bb.ch

bb.ar:                                            ; preds = %bb.ap
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp eq i64 %i.ex, 8
  br i1 %i.ey, label %bb.as, label %.lr.ph.i157

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !83
  store ptr %i.ez, ptr %0, align 8, !tbaa !83
  call void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ch

bb.at:                                            ; preds = %.lr.ph.i157
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.fa, %i.es
  br i1 %.not.not.i, label %_ZN6casadi9has_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.ar, %bb.at
  %.sroa.09.014.i = phi ptr [ %i.fa, %bb.at ], [ %i.et, %bb.ar ] ; 2 uses
  %i.fb = call noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.014.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i1 noundef zeroext false)
  br i1 %i.fd, label %bb.au, label %bb.at

bb.au:                                            ; preds = %.lr.ph.i157
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !835
  %i.fe = load ptr, ptr %1, align 8, !tbaa !89, !noalias !835 ; 2 uses
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !835 ; 2 uses
  %.not14.i158 = icmp eq ptr %i.fe, %i.ff
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  br i1 %.not14.i158, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165, %.lr.ph.i159
  %.sroa.011.015.i160 = phi ptr [ %i.fe, %.lr.ph.i159 ], [ %i.fr, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165 ] ; 4 uses
  %i.fi = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i160)
          to label %.noexc.i161 unwind label %bb.az

.noexc.i161:                                      ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i162 unwind label %bb.az

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i162: ; preds = %.noexc.i161
  br i1 %i.fk, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i162
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !78, !alias.scope !835 ; 4 uses
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !79, !alias.scope !835
  %.not.i.i163 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i163, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = load ptr, ptr %.sroa.011.015.i160, align 8, !tbaa !83
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.noexc9.i164 unwind label %bb.az

.noexc9.i164:                                     ; preds = %bb.ax
  %i.fo = load ptr, ptr %i.fg, align 8, !tbaa !78, !alias.scope !835
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fp, ptr %i.fg, align 8, !tbaa !78, !alias.scope !835
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i160)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.noexc.i161, %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  br label %common.resume

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165: ; preds = %bb.ay, %.noexc9.i164, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i162
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i160, i64 8 ; 2 uses
  %.not.i166 = icmp eq ptr %i.fr, %i.ff
  br i1 %.not.i166, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167, label %bb.av

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i165
  %.pre284.a = load ptr, ptr %21, align 8, !tbaa !89 ; 2 uses
  %.pre286.a = load ptr, ptr %i.fg, align 8, !tbaa !89 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ft = icmp eq ptr %.pre284.a, %.pre286.a
  br i1 %i.ft, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread, label %bb.cd

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread: ; preds = %bb.au, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167
  %i.fu = phi ptr [ %i.fs, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167 ], [ %i.fg, %bb.au ] ; 5 uses
  %i.fv = phi ptr [ %.pre284.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167 ], [ null, %bb.au ]
  %i.fw = phi ptr [ %.pre286.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167 ], [ null, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !alias.scope !836
  %i.fx = load ptr, ptr %1, align 8, !tbaa !89, !noalias !836 ; 2 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !89, !noalias !836 ; 2 uses
  %.not14.i168 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not14.i168, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175, %.lr.ph.i169
  %.sroa.011.015.i170 = phi ptr [ %i.fx, %.lr.ph.i169 ], [ %i.gk, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175 ] ; 4 uses
  %i.gb = invoke noundef ptr @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i170)
          to label %.noexc.i171 unwind label %.body

.noexc.i171:                                      ; preds = %bb.ba
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i1 noundef zeroext true)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172 unwind label %.body

_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172: ; preds = %.noexc.i171
  br i1 %i.gd, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !78, !alias.scope !836 ; 4 uses
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !79, !alias.scope !836
  %.not.i.i173 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i.i173, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gg = load ptr, ptr %.sroa.011.015.i170, align 8, !tbaa !83
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !83
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc9.i174 unwind label %.body

.noexc9.i174:                                     ; preds = %bb.bc
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !78, !alias.scope !836
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gi, ptr %i.fz, align 8, !tbaa !78, !alias.scope !836
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175

bb.bd:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015.i170)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175 unwind label %.body

.body:                                            ; preds = %bb.bd, %bb.bc, %.noexc.i171, %bb.ba
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.body188

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175: ; preds = %bb.bd, %.noexc9.i174, %_ZNK6casadi13GenericMatrixINS_2MXEE8is_emptyEb.exit.i172
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i170, i64 8 ; 2 uses
  %.not.i176 = icmp eq ptr %i.gk, %i.fy
  br i1 %.not.i176, label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit, label %bb.ba

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit.i175
  %.pre287 = load ptr, ptr %21, align 8, !tbaa !77
  %.pre288.a = load ptr, ptr %i.fu, align 8, !tbaa !78
  %.pre289 = load ptr, ptr %22, align 8, !tbaa !77
  %.pre291 = load ptr, ptr %i.fz, align 8, !tbaa !78
  %.pre293 = load ptr, ptr %i.ga, align 8, !tbaa !79
  br label %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177

_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177: ; preds = %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread
  %i.gl = phi ptr [ %.pre293, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread ]
  %i.gm = phi ptr [ %.pre291, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread ]
  %i.gn = phi ptr [ %.pre289, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit ], [ null, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread ]
  %i.go = phi ptr [ %.pre288.a, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit ], [ %i.fw, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread ] ; 2 uses
  %i.gp = phi ptr [ %.pre287, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit177.loopexit ], [ %i.fv, %_ZN6casadi10trim_emptyERKSt6vectorINS_2MXESaIS1_EEb.exit167.thread ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !79
  store ptr %i.gn, ptr %21, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.gm, ptr %i.fu, align 8, !tbaa !78
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 16
end_hunk_3
