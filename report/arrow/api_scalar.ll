Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/api_scalar?download=true
inline.NumInlined: 14068
inline.NumDeleted: 5439
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m:bb.a

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultIlED2Ev.exit41, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  %i.dg = load ptr, ptr %3, align 8, !tbaa !192   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.at, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !193

bb.at:                                            ; preds = %bb.as
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dk, align 8, !tbaa !116
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !117
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !8
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !8
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.ax ], [ %i.dx, %bb.ay ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !90

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !192  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !284

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !199, !range !67, !noundef !68
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIlED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16ListSliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1199", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalIlEEES9_NS8_IS3_SA_IbEEEEEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(50) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !84
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !701  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !260
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !260
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !703  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i8.i.i.i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i9.i.i.i.i = load i8, ptr %i.j, align 8, !tbaa !704, !range !67, !noundef !68 ; 2 uses
  %.val4.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i8, ptr %i.k, align 8, !tbaa !704, !range !67, !noundef !68
  %3 = icmp ne i8 %.val3.i9.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %i.l = icmp eq i8 %.val3.i9.i.i.i.i, 0
  %brmerge.i.i.i.i.i.i.i = or i1 %i.l, %3
  %not..i.i.i.i.i.i.i = xor i1 %3, true
  %i.m = icmp eq i64 %.val.i8.i.i.i.i, %.val4.i.i.i.i.i
  %i.n = select i1 %brmerge.i.i.i.i.i.i.i, i1 %not..i.i.i.i.i.i.i, i1 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !701  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.p
  %.val.i10.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !260
  %.val3.i11.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !260
  %i.s = icmp eq i64 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.t = and i1 %i.n, %i.s
  %i.u = and i1 %i.e, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !706  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.w ; 2 uses
  %.val.i12.i.i.i.i = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %i.x, i64 1
  %.val3.i13.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !66, !range !67, !noundef !68 ; 2 uses
  %.val4.i14.i.i.i.i = load i8, ptr %i.y, align 1
  %i.aa = getelementptr i8, ptr %i.y, i64 1
  %.val5.i15.i.i.i.i = load i8, ptr %i.aa, align 1, !tbaa !66, !range !67, !noundef !68
  %4 = icmp ne i8 %.val3.i13.i.i.i.i, %.val5.i15.i.i.i.i ; 2 uses
  %i.ab = icmp eq i8 %.val3.i13.i.i.i.i, 0
  %brmerge.i.i.i17.i.i.i.i = or i1 %i.ab, %4
  %not..i.i.i18.i.i.i.i = xor i1 %4, true
  %i.ac = icmp eq i8 %.val.i12.i.i.i.i, %.val4.i14.i.i.i.i
  %i.ad = select i1 %brmerge.i.i.i17.i.i.i.i, i1 %not..i.i.i18.i.i.i.i, i1 %i.ac
  %i.ae = and i1 %i.u, %i.ad
  ret i1 %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2782 ; 7 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2782

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2782
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !701  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !260
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !703  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !701  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !260
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.m
  store i64 %i.o, ptr %i.p, align 8, !tbaa !260
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !706  ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %.sroa.0.0.copyload.i8.i.i.i.i = load i16, ptr %i.s, align 1
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i16 %.sroa.0.0.copyload.i8.i.i.i.i, ptr %i.t, align 1
  store ptr %i.a, ptr %0, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1214", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !708
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !710
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !711
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIlEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 2)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %.noexc6.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef 3)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc7.i, %.noexc6.i, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !193

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !199, !range !67, !noundef !68
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.h

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc7.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !192, !alias.scope !2785
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1215", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2789 ; 8 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2789

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2789
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !713
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !192
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIlEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %.noexc6.i unwind label %bb.c

.noexc6.i:                                        ; preds = %.noexc5.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef 3)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc6.i, %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !193

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !199, !range !67, !noundef !68
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread, label %bb.f, !prof !193

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.p = load ptr, ptr %3, align 8, !tbaa !192    ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !193

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !199, !range !67, !noundef !68
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
end_hunk_0
