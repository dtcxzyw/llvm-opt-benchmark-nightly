inline.NumInlined: 17231
inline.NumDeleted: 5947
begin_hunk_0_@_ZN8facebook5velox4core15AggregationNode9AggregateD2Ev:bb.a
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !100
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !102
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #40, !inline_history !317
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #40, !inline_history !317
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !141 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i3 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not4.i.i.i3, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i5 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.bb, %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i5, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i6, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bg, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !102
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #40, !inline_history !318
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #40, !inline_history !318
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i7 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i8

bb.t:                                             ; preds = %bb.r
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i8: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i9 = phi i32 [ %i.bj, %bb.s ], [ %i.bt, %bb.t ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i9, 1
  br i1 %i.bu, label %bb.u, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i8, %bb.q, %.lr.ph.i.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i5, i64 16 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bv, %i.bd
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i4, !llvm.loop !143

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i11 = load ptr, ptr %i.ba, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bw = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bb, %_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i12 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i12, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !131
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !81 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN8facebook5velox4core13CallTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ce, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !102
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #40, !inline_history !319
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #40, !inline_history !319
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core13CallTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i14 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.aa:                                            ; preds = %bb.y
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i16 = phi i32 [ %i.ch, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cs = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.cs, label %bb.ab, label %_ZNSt12__shared_ptrIKN8facebook5velox4core13CallTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core13CallTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core13CallTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4core10ExpandNodeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_ISt10shared_ptrIKNS1_10ITypedExprEESaISD_EESaISF_EES9_IS8_SaIS8_EESA_IKNS1_8PlanNodeEE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1178", align 16 ; 7 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1246", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %10 = alloca %"struct.std::pair.863", align 8   ; 4 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.1247", align 16 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::vector.58", align 16  ; 13 uses
  %14 = alloca %"class.folly::F14FastSet.704", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::vector.18", align 8   ; 9 uses
  %17 = alloca %"class.std::vector.58", align 16  ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %19 = alloca [1 x %"class.std::shared_ptr.10"], align 16 ; 8 uses
  %20 = alloca %"class.std::vector.18", align 8   ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %18, align 8, !tbaa !11
  %i.i = load i64, ptr %i.c, align 8, !tbaa !14
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !11
  store i64 0, ptr %i.l, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !11
  %i.s = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.s, ptr %i.o, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.t, align 8, !tbaa !15
  store ptr %i.a, ptr %18, align 8, !tbaa !11
  store i64 0, ptr %i.m, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core10ExpandNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = load <2 x ptr>, ptr %4, align 8, !tbaa !82
  store <2 x ptr> %i.y, ptr %19, align 16, !tbaa !82
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit

_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.ae = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc unwind label %bb.be    ; 3 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !98
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !81  ; 3 uses
  %i.ai = load <2 x ptr>, ptr %19, align 16, !tbaa !82
  store <2 x ptr> %i.ai, ptr %i.ae, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, label %bb.g

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !99
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread267

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread267: ; preds = %bb.g
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !3
  store ptr %i.af, ptr %i.am, align 8, !tbaa !99
  br label %bb.h

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre175 = load ptr, ptr %.phi.trans.insert174, align 8, !tbaa !81 ; 2 uses
  store ptr %i.af, ptr %i.am, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %.pre175, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread267, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.ah, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread267 ], [ %.pre175, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ar, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !102
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #40, !inline_history !103
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #40, !inline_history !103
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i54 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.bg = phi ptr [ %i.aj, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread ], [ %i.am, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.am, %bb.i ], [ %i.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !86    ; 4 uses
  store ptr %i.bi, ptr %20, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !88
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !85 ; 3 uses
  store <2 x ptr> %i.bm, ptr %i.bj, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.bo = icmp eq ptr %i.bi, %i.bn
  br i1 %i.bo, label %.invoke, label %bb.n, !prof !16
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4core10ExpandNodeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_ISt10shared_ptrIKNS1_10ITypedExprEESaISD_EESaISF_EES9_IS8_SaIS8_EESA_IKNS1_8PlanNodeEE:bb.a
  %i.ey = load i8, ptr %i.dw, align 8, !tbaa !30, !range !28, !noalias !411, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !406
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ag, label %bb.aa, !prof !95

bb.aa:                                            ; preds = %.noexc44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40, !noalias !414
  %i.fa = load ptr, ptr %.sroa.076.0105.i, align 8, !tbaa !11, !noalias !417
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.076.0105.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !15, !noalias !417
  %i.fd = ptrtoint ptr %i.fa to i64
  store i64 %i.fd, ptr %9, align 16, !noalias !414
  %.sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fc, ptr %.sroa_idx3.i.i, align 8, !noalias !414
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.425, i64 52, i64 13, ptr nonnull %9)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40, !noalias !414
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core12_GLOBAL__N_119getExpandOutputTypeERKSt6vectorIS3_ISt10shared_ptrIKNS1_10ITypedExprEESaIS7_EESaIS9_EES3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISJ_EEE18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr nonnull @.str.425) #42
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.noexc43.i, %bb.z
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ae:                                            ; preds = %bb.aa
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

bb.af:                                            ; preds = %bb.ab
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %15, align 8, !tbaa !11, !noalias !389 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.af
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !14, !noalias !389
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.ff, %bb.ae ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %i.fg, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40, !noalias !389
  br label %bb.ba

bb.ag:                                            ; preds = %.noexc44.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.076.0105.i, i64 32 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %.pre115.i
  br i1 %i.fn, label %._crit_edge108.i, label %bb.z

bb.ah:                                            ; preds = %._crit_edge108.i
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fp = load ptr, ptr %17, align 16, !tbaa !141, !noalias !389 ; 3 uses
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !128, !noalias !389 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fp, %i.fq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i ], [ %i.fp, %bb.ah ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.ft, align 8, !tbaa !100
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !102
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !35
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #40, !inline_history !418
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #40, !inline_history !418
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !389
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gf = add nsw i32 %i.fw, -1
  store i32 %i.gf, ptr %i.ft, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gg = atomicrmw volatile add ptr %i.ft, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fw, %bb.al ], [ %i.gg, %bb.am ]
  %i.gh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gh, label %bb.an, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i, !prof !16

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.gi, %i.fq
  br i1 %.not.i.i.i.i57, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !143

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %17, align 16, !tbaa !141, !noalias !389
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ah
  %i.gj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fp, %bb.ah ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gk = load ptr, ptr %i.et, align 16, !tbaa !131, !noalias !389
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i: ; preds = %bb.ao, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.go = load ptr, ptr %16, align 8, !tbaa !86, !noalias !389 ; 3 uses
  %i.gp = load ptr, ptr %i.ep, align 8, !tbaa !85, !noalias !389 ; 2 uses
  %.not4.i.i.i49.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not4.i.i.i49.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i50.i

.lr.ph.i.i.i50.i:                                 ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i51.i = phi ptr [ %i.gv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.go, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.gq = load ptr, ptr %.05.i.i.i51.i, align 8, !tbaa !11 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i51.i, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i50.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !14
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #43
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i51.i, i64 32 ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %i.gv, %i.gp
  br i1 %.not.i.i.i52.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i50.i, !llvm.loop !144

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i53.i = load ptr, ptr %16, align 8, !tbaa !86, !noalias !389
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i
  %i.gw = phi ptr [ %.pr.i53.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.go, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i54.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i1.i54.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gx = load ptr, ptr %i.eq, align 8, !tbaa !87, !noalias !389
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ha) #43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ap, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hb = load ptr, ptr %i.dt, align 8, !tbaa !404, !noalias !389 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 15
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !270
  %i.he = icmp eq i8 %i.hd, -1
  br i1 %i.he, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.hf = load i64, ptr %i.du, align 8, !tbaa !226, !noalias !389 ; 3 uses
  %i.hg = lshr i64 %i.hf, 8                       ; 2 uses
  %i.hh = and i64 %i.hf, 255
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %.0.copyload.i.i.i.i = load i16, ptr %i.hi, align 1
  %i.hj = zext i16 %.0.copyload.i.i.i.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.hh
  %i.hk = xor i64 %notmask.i.i.i, -1
  %i.hl = lshr i64 %i.hk, 12
  %i.hm = add nuw nsw i64 %i.hl, 1
  %.not.i.i.i69.i = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i69.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i, label %.lr.ph.i.i.i70.i

.lr.ph.i.i.i70.i:                                 ; preds = %bb.aq, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i71.i = phi i64 [ %i.ht, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ 0, %bb.aq ] ; 2 uses
  %26 = load ptr, ptr %14, align 8, !tbaa !402, !noalias !389
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %26, i64 %.05.i.i.i71.i ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i70.i
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !14
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i70.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ht = add nuw nsw i64 %.05.i.i.i71.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ht, %i.hg
  br i1 %exitcond.not.i.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i.i, label %.lr.ph.i.i.i70.i, !llvm.loop !419

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pre.i72.i = load i64, ptr %i.du, align 8, !tbaa !226, !noalias !389
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i.i, %bb.aq
  %i.hu = phi i64 [ %.pre.i72.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i.i ], [ %i.hf, %bb.aq ] ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 256
  br i1 %i.hv, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i
  %i.hw = and i64 %i.hu, 255                      ; 2 uses
  store i64 %i.hw, ptr %i.du, align 8, !tbaa !226, !noalias !389
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i: ; preds = %bb.ar, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i
  %i.hx = phi i64 [ %i.hw, %bb.ar ], [ %i.hu, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.i ] ; 2 uses
  %i.hy = load ptr, ptr %i.dt, align 8, !tbaa !404, !noalias !389 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.hz, align 1
  %i.ia = zext i16 %.0.copyload.i.i.i to i64
  %i.ib = icmp eq i64 %i.hx, 0
  %i.ic = shl nuw nsw i64 %i.ia, 2
  %.neg17.i.i = sub nuw nsw i64 -16, %i.ic
  %.neg18.i.i = shl i64 -64, %i.hx
  %.0.i.neg.i.i = select i1 %i.ib, i64 %.neg17.i.i, i64 %.neg18.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.dt, align 8, !tbaa !404, !noalias !389
  store i64 0, ptr %i.du, align 8, !tbaa !226, !noalias !389
  %i.id = and i64 %.0.i.neg.i.i, -8
  %i.ie = shl nuw nsw i64 %i.hj, 5
  %i.if = mul i64 %i.ie, %i.hm
  %i.ig = sub i64 %i.if, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ig) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40, !noalias !389
  %i.ih = load ptr, ptr %13, align 16, !tbaa !141, !noalias !389 ; 3 uses
  %i.ii = load ptr, ptr %i.dn, align 8, !tbaa !128, !noalias !389 ; 2 uses
  %.not4.i.i.i55.i = icmp eq ptr %i.ih, %i.ii
  br i1 %.not4.i.i.i55.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i66.i, label %.lr.ph.i.i.i56.i

.lr.ph.i.i.i56.i:                                 ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i
  %.05.i.i.i57.i = phi ptr [ %i.ja, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i ], [ %i.ih, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i57.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i58.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i58.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i56.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.il, align 8, !tbaa !100
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !102
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #40, !inline_history !418
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !35
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #40, !inline_history !418
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i

bb.au:                                            ; preds = %bb.as
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !389
  %.not.i.i.i.i.i.i.i.i59.i = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i.i59.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i60.i

bb.aw:                                            ; preds = %bb.au
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i60.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i60.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i.i.i61.i = phi i32 [ %i.io, %bb.av ], [ %i.iy, %bb.aw ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i61.i, 1
  br i1 %i.iz, label %bb.ax, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i, !prof !16

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i60.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i60.i, %bb.at, %.lr.ph.i.i.i56.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i57.i, i64 16 ; 2 uses
  %.not.i.i.i63.i = icmp eq ptr %i.ja, %i.ii
  br i1 %.not.i.i.i63.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i64.i, label %.lr.ph.i.i.i56.i, !llvm.loop !143

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i64.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i62.i
  %.pr.i65.i = load ptr, ptr %13, align 16, !tbaa !141, !noalias !389
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i66.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i66.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i64.i, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i
  %i.jb = phi ptr [ %.pr.i65.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i64.i ], [ %i.ih, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit.i ] ; 3 uses
  %.not.i.i1.i67.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i1.i67.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i66.i
  %i.jc = load ptr, ptr %i.cv, align 16, !tbaa !131, !noalias !389
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #43
  br label %bb.bc

bb.az:                                            ; preds = %._crit_edge108.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #40
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #40
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %bb.ad
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.jg, %bb.az ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.fe, %bb.ad ]
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40, !noalias !389
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.y, %bb.s
  %.pn30.i = phi { ptr, i32 } [ %i.eo, %bb.y ], [ %.pn.pn.pn.i, %bb.ba ], [ %i.dx, %bb.s ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40, !noalias !389
  br label %.body

bb.bc:                                            ; preds = %bb.ay, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.jh = load ptr, ptr %20, align 8, !tbaa !86   ; 5 uses
  %i.ji = load ptr, ptr %i.bj, align 8, !tbaa !85 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jh, %i.ji
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jh, %bb.bc ] ; 3 uses
  %i.jj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !11 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !14
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #43
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i61
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.jo, %i.ji
  br i1 %.not.i.i.i62, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !144

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.bc
  %.not.i.i1.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.jp = load ptr, ptr %i.bl, align 8, !tbaa !87
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jh to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.js) #43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bd
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jv = load <2 x ptr>, ptr %2, align 8, !tbaa !387
  store <2 x ptr> %i.jv, ptr %i.jt, align 8, !tbaa !387
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !420
  store ptr %i.jy, ptr %i.jw, align 8, !tbaa !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.jz = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !85 ; 2 uses
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !86 ; 2 uses
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 5
  %i.ki = load ptr, ptr %i.ju, align 8, !tbaa !422 ; 3 uses
  %i.kj = load ptr, ptr %i.jt, align 8, !tbaa !423 ; 3 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4core14TableWriteNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_7RowTypeEERKSt6vectorIS8_SaIS8_EESt8optionalINS1_15ColumnStatsSpecEESB_IKNS1_17InsertTableHandleEEbSE_NS0_9connector14CommitStrategyERKSB_IKNS1_8PlanNodeEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !14
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core14TableWriteNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_7RowTypeEERKSt6vectorIS8_SaIS8_EESt8optionalINS1_15ColumnStatsSpecEESB_IKNS1_17InsertTableHandleEEbSE_NS0_9connector14CommitStrategyERKSB_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_5, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr nonnull @.str.245) #42
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  unreachable

bb.bx:                                            ; preds = %bb.bp
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.by:                                            ; preds = %bb.bq
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bz:                                            ; preds = %bb.bs
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ca:                                            ; preds = %bb.bt
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.cb:                                            ; preds = %bb.bu
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = load ptr, ptr %24, align 8, !tbaa !11   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.cb
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !14
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ca
  %.pn32 = phi { ptr, i32 } [ %i.jq, %bb.ca ], [ %i.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.jr, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  %i.jx = load ptr, ptr %23, align 8, !tbaa !11   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !14
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.bz
  %.pn32.pn = phi { ptr, i32 } [ %i.jp, %bb.bz ], [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %22, align 8, !tbaa !11   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.cc
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !14
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn35 = phi { ptr, i32 } [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.kc, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.cl

bb.cd:                                            ; preds = %bb.br
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !81 ; 8 uses
  %.not.i.i91 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i91, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kl = load atomic i64, ptr %i.kk acquire, align 8 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 4294967297
  %i.kn = trunc i64 %i.kl to i32                  ; 2 uses
  br i1 %i.km, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.kk, align 8, !tbaa !100
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store i32 0, ptr %i.ko, align 4, !tbaa !102
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !35
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #40, !inline_history !446
  %i.ks = load ptr, ptr %i.kj, align 8, !tbaa !35
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #40, !inline_history !446
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cg:                                            ; preds = %bb.ce
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i92 = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i92, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kw = add nsw i32 %i.kn, -1
  store i32 %i.kw, ptr %i.kk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i93

bb.ci:                                            ; preds = %bb.cg
  %i.kx = atomicrmw volatile add ptr %i.kk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i93: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i94 = phi i32 [ %i.kn, %bb.ch ], [ %i.kx, %bb.ci ]
  %i.ky = icmp eq i32 %.0.i.i.i.i94, 1
  br i1 %i.ky, label %bb.cj, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i93
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cd, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i93, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNK8facebook5velox7RowType7childAtEj.exit, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.by
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.jo, %bb.by ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #40
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.bx
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.cl ], [ %i.jn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %.body69

.body69:                                          ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.ag, %bb.ac
  %.pn44 = phi { ptr, i32 } [ %i.eg, %bb.ac ], [ %i.ei, %bb.ag ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gr, %bb.bb ], [ %.pn35.pn.pn, %bb.cm ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.fb, %bb.al ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.gf, %bb.au ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #40
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core17InsertTableHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #40
  %i.kz = load i8, ptr %i.ct, align 8, !tbaa !1339, !range !28, !noundef !29
  %i.la = trunc nuw i8 %i.kz to i1
  store i8 0, ptr %i.ct, align 8, !tbaa !1339
  br i1 %i.la, label %bb.cn, label %_ZNSt14_Optional_baseIN8facebook5velox4core15ColumnStatsSpecELb0ELb0EED2Ev.exit

bb.cn:                                            ; preds = %.body69
  call void @_ZN8facebook5velox4core15ColumnStatsSpecD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.cr) #40
  br label %_ZNSt14_Optional_baseIN8facebook5velox4core15ColumnStatsSpecELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8facebook5velox4core15ColumnStatsSpecELb0ELb0EED2Ev.exit: ; preds = %.body69, %bb.cn
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #40
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.v, %bb.u, %_ZNSt14_Optional_baseIN8facebook5velox4core15ColumnStatsSpecELb0ELb0EED2Ev.exit
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt14_Optional_baseIN8facebook5velox4core15ColumnStatsSpecELb0ELb0EED2Ev.exit ], [ %i.ef, %bb.ab ], [ %i.cl, %bb.v ], [ %i.cl, %bb.u ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #40
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #40
  br label %bb.co

bb.co:                                            ; preds = %.body, %bb.aa
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %.body ], [ %i.ee, %bb.aa ]
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.lb = load ptr, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.r
  br i1 %i.lc, label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.co
  %i.ld = load i64, ptr %i.r, align 8, !tbaa !14
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #43, !inline_history !176
  br label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit

_ZN8facebook5velox4core8PlanNodeD2Ev.exit:        ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  resume { ptr, i32 } %.pn44.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_120validateGroupingKeysERKNS1_15ColumnStatsSpecERKNS0_7RowTypeESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree readonly captures(address) %.8.val, ptr nofree readnone captures(address) %.16.val, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %1, ptr %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %4 = alloca %"struct.std::pair.863", align 8    ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1178", align 16 ; 7 uses
  %6 = alloca %"class.folly::F14FastSet.704", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 8, !tbaa !402
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !404
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store i64 0, ptr %i.b, align 8, !tbaa !226
  %i.c = icmp eq ptr %.8.val, %.16.val
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre.a = load ptr, ptr %i.a, align 8, !tbaa !404
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre.a, %._crit_edge.loopexit ], [ @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !270
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = load i64, ptr %i.b, align 8, !tbaa !226  ; 3 uses
  %i.j = lshr i64 %i.i, 8                         ; 2 uses
  %i.k = and i64 %i.i, 255
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.l, align 1
  %i.m = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.n = xor i64 %notmask.i.i, -1
  %i.o = lshr i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.w, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %9 = load ptr, ptr %6, align 8, !tbaa !402
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %.05.i.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.05.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !419

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.b
  %i.x = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.z = and i64 %i.x, 255                        ; 2 uses
  store i64 %i.z, ptr %i.b, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.c, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.aa = phi i64 [ %i.z, %bb.c ], [ %i.x, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !404 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ac, align 1
  %i.ad = zext i16 %.0.copyload.i.i to i64
  %i.ae = icmp eq i64 %i.aa, 0
  %i.af = shl nuw nsw i64 %i.ad, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.af
  %.neg18.i = shl i64 -64, %i.aa
  %.0.i.neg.i = select i1 %i.ae, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !404
  store i64 0, ptr %i.b, align 8, !tbaa !226
  %i.ag = and i64 %.0.i.neg.i, -8
  %i.ah = shl nuw nsw i64 %i.m, 5
  %i.ai = mul i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %._crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.07.016 = phi ptr [ %.8.val, %.lr.ph ], [ %i.cb, %bb.s ] ; 5 uses
  %i.ak = load ptr, ptr %.sroa.07.016, align 8, !tbaa !115 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15
  %i.ap = invoke noundef zeroext i1 @_ZNK8facebook5velox7RowType13containsChildESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %i.ao, ptr %i.am)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.ap, label %bb.l, label %bb.f, !prof !95

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.aq = load ptr, ptr %.sroa.07.016, align 8, !tbaa !115 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !1376
  store ptr %2, ptr %5, align 16, !tbaa !14, !noalias !1376
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.as, align 8, !tbaa !14, !noalias !1376
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !11, !noalias !1376
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15, !noalias !1376
  store ptr %i.au, ptr %i.at, align 16, !tbaa !14, !noalias !1376
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !14, !noalias !1376
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.485, i64 32, i64 221, ptr nonnull %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !1376
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core12_GLOBAL__N_120validateGroupingKeysERKNS1_15ColumnStatsSpecERKNS0_7RowTypeESt17basic_string_viewIcSt11char_traitsIcEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.485) #42
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn13 = phi { ptr, i32 } [ %i.az, %bb.j ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.t

bb.l:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %.sroa.07.016, align 8, !tbaa !115
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !1379
  %i.bi = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.l
  %i.bj = lshr i64 %i.bi, 56
  %i.bk = or i64 %i.bj, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %i.bi, i64 %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc16 unwind label %bb.p

.noexc16:                                         ; preds = %.noexc
  %i.bl = load i8, ptr %i.d, align 8, !tbaa !30, !range !28, !noalias !1384, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !1379
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.s, label %bb.m, !prof !95

bb.m:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.bn = load ptr, ptr %.sroa.07.016, align 8, !tbaa !115 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !1387
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !11, !noalias !1387
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15, !noalias !1387
  %i.bs = ptrtoint ptr %i.bp to i64
  store i64 %i.bs, ptr %3, align 16, !noalias !1387
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.br, ptr %.sroa_idx3.i, align 8, !noalias !1387
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.487, i64 26, i64 13, ptr nonnull %3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !1387
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core12_GLOBAL__N_120validateGroupingKeysERKNS1_15ColumnStatsSpecERKNS0_7RowTypeESt17basic_string_viewIcSt11char_traitsIcEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.487) #42
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.noexc, %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.r:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.r
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.bv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.t

bb.s:                                             ; preds = %.noexc16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %.16.val
  br i1 %i.cc, label %._crit_edge.loopexit, label %bb.d

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.bt, %bb.p ], [ %i.ay, %bb.i ]
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !404 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !270
  %i.cg = icmp eq i8 %i.cf, -1
  br i1 %i.cg, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !226 ; 3 uses
  %i.ci = lshr i64 %i.ch, 8                       ; 2 uses
  %i.cj = and i64 %i.ch, 255
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %.0.copyload.i.i.i21 = load i16, ptr %i.ck, align 1
  %i.cl = zext i16 %.0.copyload.i.i.i21 to i64
  %notmask.i.i22 = shl nsw i64 -1, %i.cj
  %i.cm = xor i64 %notmask.i.i22, -1
  %i.cn = lshr i64 %i.cm, 12
  %i.co = add nuw nsw i64 %i.cn, 1
  %.not.i.i.i23 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i23, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.u, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27
  %.05.i.i.i25 = phi i64 [ %i.cv, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27 ], [ 0, %bb.u ] ; 2 uses
  %10 = load ptr, ptr %6, align 8, !tbaa !402
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.05.i.i.i25 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !11 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %.lr.ph.i.i.i24
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27: ; preds = %.lr.ph.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26
  %i.cv = add nuw nsw i64 %.05.i.i.i25, 1         ; 2 uses
  %exitcond.not.i.i.i28 = icmp eq i64 %i.cv, %i.ci
  br i1 %exitcond.not.i.i.i28, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29, label %.lr.ph.i.i.i24, !llvm.loop !419

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27
  %.pre.i30 = load i64, ptr %i.b, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29, %bb.u
  %i.cw = phi i64 [ %.pre.i30, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29 ], [ %i.ch, %bb.u ] ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 256
  br i1 %i.cx, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32, label %bb.v

bb.v:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31
  %i.cy = and i64 %i.cw, 255                      ; 2 uses
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32: ; preds = %bb.v, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31
  %i.cz = phi i64 [ %i.cy, %bb.v ], [ %i.cw, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31 ] ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !404 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %.0.copyload.i.i33 = load i16, ptr %i.db, align 1
  %i.dc = zext i16 %.0.copyload.i.i33 to i64
  %i.dd = icmp eq i64 %i.cz, 0
  %i.de = shl nuw nsw i64 %i.dc, 2
  %.neg17.i34 = sub nuw nsw i64 -16, %i.de
  %.neg18.i35 = shl i64 -64, %i.cz
  %.0.i.neg.i36 = select i1 %i.dd, i64 %.neg17.i34, i64 %.neg18.i35
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !404
  store i64 0, ptr %i.b, align 8, !tbaa !226
  %i.df = and i64 %.0.i.neg.i36, -8
  %i.dg = shl nuw nsw i64 %i.cl, 5
  %i.dh = mul i64 %i.dg, %i.co
  %i.di = sub i64 %i.dh, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.di) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit38

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit38: ; preds = %bb.t, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn13.pn
}

declare void @_ZN8facebook5velox4core16TableWriteTraits10outputTypeERKSt8optionalINS1_15ColumnStatsSpecEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.33") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4core17InsertTableHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !102
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !181
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !181
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core14TableWriteNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1343 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !7, !alias.scope !1390
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !88, !noalias !1390 ; 13 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88, !noalias !1390 ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  store i64 0, ptr %i.k, align 8, !tbaa !15, !alias.scope !1390
  store i8 0, ptr %i.j, align 8, !tbaa !14, !alias.scope !1390
  %i.q = icmp eq ptr %i.l, %i.o
  br i1 %i.q, label %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 4 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.v = add i64 %i.p, -64
  %i.w = sub i64 %i.v, %i.m                       ; 3 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = add nuw nsw i64 %i.x, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.w, 512
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 15                    ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 16, i64 %n.mod.vf   ; 2 uses
  %n.vec = sub nsw i64 %i.y, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 5                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.s, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.ae, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi21 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi22 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi23 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.af = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.ak = getelementptr i8, ptr %i.ag, i64 168
  %i.al = getelementptr i8, ptr %i.ah, i64 296
  %i.am = getelementptr i8, ptr %i.ai, i64 424
  %i.an = load <13 x i64>, ptr %i.aj, align 8, !tbaa !15
  %strided.vec = shufflevector <13 x i64> %i.an, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ao = load <13 x i64>, ptr %i.ak, align 8, !tbaa !15
  %strided.vec28 = shufflevector <13 x i64> %i.ao, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ap = load <13 x i64>, ptr %i.al, align 8, !tbaa !15
  %strided.vec30 = shufflevector <13 x i64> %i.ap, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.aq = load <13 x i64>, ptr %i.am, align 8, !tbaa !15
  %strided.vec32 = shufflevector <13 x i64> %i.aq, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ar = add <4 x i64> %vec.phi, splat (i64 2)
  %i.as = add <4 x i64> %vec.phi21, splat (i64 2)
  %i.at = add <4 x i64> %vec.phi22, splat (i64 2)
  %i.au = add <4 x i64> %vec.phi23, splat (i64 2)
  %i.av = add <4 x i64> %i.ar, %strided.vec       ; 2 uses
  %i.aw = add <4 x i64> %i.as, %strided.vec28     ; 2 uses
  %i.ax = add <4 x i64> %i.at, %strided.vec30     ; 2 uses
  %i.ay = add <4 x i64> %i.au, %strided.vec32     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1393

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.aw, %i.av
  %bin.rdx33 = add <4 x i64> %i.ax, %bin.rdx
  %bin.rdx34 = add <4 x i64> %i.ay, %bin.rdx33
  %i.ba = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx34) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aa, 5
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4core15SpatialJoinNode6createERKN5folly7dynamicEPv:bb.a

bb.cf:                                            ; preds = %bb.ce
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

bb.cg:                                            ; preds = %bb.ce
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i109 = phi i32 [ %i.ii, %bb.cf ], [ %i.is, %bb.cg ]
  %i.it = icmp eq i32 %.0.i.i.i.i109, 1
  br i1 %i.it, label %bb.ch, label %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, !prof !16

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  %i.iu = load ptr, ptr %10, align 8, !tbaa !97   ; 3 uses
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iu, %i.iv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i111

.lr.ph.i.i.i111:                                  ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i
  %.05.i.i.i112 = phi ptr [ %i.jn, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i ], [ %i.iu, %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i112, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !81 ; 8 uses
  %.not.i.i.i.i.i.i.i113 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i.i.i113, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i111
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.iy, align 8, !tbaa !100
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !102
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !35
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #40, !inline_history !386
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !35
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #40, !inline_history !386
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jb, %bb.cl ], [ %i.jl, %bb.cm ]
  %i.jm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jm, label %bb.cn, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i, !prof !16

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #40
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.cj, %.lr.ph.i.i.i111
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i112, i64 16 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.jn, %i.iv
  br i1 %.not.i.i.i114, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i111, !llvm.loop !195

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110
  %i.jo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.iu, %_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !98
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #43
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4core8PlanNodeEES6_EvT_S8_RSaIT0_E.exit.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  ret void

bb.cp:                                            ; preds = %.noexc71, %bb.ay
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.cq:                                            ; preds = %_ZNKR5folly7dynamicixENS_5RangeIPKcEE.exit74, %_ZN8facebook5velox4core12_GLOBAL__N_121deserializePlanNodeIdB5cxx11ERKN5folly7dynamicE.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.cr:                                            ; preds = %bb.bc, %bb.az, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cr, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15SpatialJoinNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit17.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.jw, %bb.cr ], [ %i.ez, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4core15SpatialJoinNodeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit17.i.i.i.i ] ; 2 uses
  %i.jx = load ptr, ptr %20, align 8, !tbaa !11   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %.body
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !14
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.cq
  %.pn = phi { ptr, i32 } [ %i.jv, %bb.cq ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.kc = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !14
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.cp
  %.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.cp ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.ef, %bb.ax ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #40
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.aw
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cs ], [ %i.ee, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #40
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.av
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ct ], [ %i.ed, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #40
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.au
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.cu ], [ %i.ec, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit142, %.loopexit.split-lp143, %bb.cv, %bb.z
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.bq, %bb.z ], [ %lpad.loopexit144, %.loopexit142 ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp143 ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.cw ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  resume { ptr, i32 } %.pn31.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4core8TopNNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.1244", align 16 ; 5 uses
  %8 = alloca %"struct.std::pair.863", align 8    ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.1245", align 16 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.1247", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca [1 x %"class.std::shared_ptr.10"], align 16 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.folly::F14FastSet.704", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = zext i1 %5 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.b, ptr %11, align 8, !tbaa !7
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !16

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #41 ; 2 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !11
  store i64 %i.e, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !14
  store i8 %i.l, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  %i.q = load ptr, ptr %11, align 8, !tbaa !11    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load i64, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  store ptr %i.q, ptr %i.o, align 8, !tbaa !11
  %i.v = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.v, ptr %i.p, align 8, !tbaa !14
  %.pre = load i64, ptr %i.m, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15
  store ptr %i.b, ptr %11, align 8, !tbaa !11
  store i64 0, ptr %i.m, align 8, !tbaa !15
  store i8 0, ptr %i.b, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8TopNNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i, label %.noexc36, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, !prof !16

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #41
          to label %.noexc36 unwind label %bb.x

.noexc36:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ag, %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !79
  %i.al = load ptr, ptr %2, align 8, !tbaa !80    ; 2 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %.loopexit83, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc36, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ah, %.noexc36 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.aw, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.al, %.noexc36 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !82
  store <2 x ptr> %i.aq, ptr %.08.i.i.i.i.i, align 8, !tbaa !82
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.am
  br i1 %i.ay, label %.loopexit83, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

.loopexit83:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc36
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %.noexc36 ], [ %i.ax, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !354 ; 2 uses
  %i.bc = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %.not.i.i.i.i37 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i37, label %.noexc44, label %bb.k

bb.k:                                             ; preds = %.loopexit83
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775806
  br i1 %i.bg, label %.noexc.i.i42, label %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i, !prof !16

.noexc.i.i42:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc43 unwind label %bb.y

.noexc43:                                         ; preds = %.noexc.i.i42
  unreachable

_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #41
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i, %.loopexit83
  %i.bi = phi ptr [ null, %.loopexit83 ], [ %i.bh, %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !241
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !354
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !316
  %i.bm = load ptr, ptr %3, align 8, !tbaa !304   ; 8 uses
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !304 ; 3 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc44
  %i.bp = ptrtoaddr ptr %i.bm to i64
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4core8TopNNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEE:bb.a
  br i1 %.not.i.i.i48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.du, %bb.s ], [ %i.ee, %bb.t ]
  %i.ef = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ef, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #40
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4core8PlanNodeEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  %i.eg = load ptr, ptr %2, align 8, !tbaa !80    ; 2 uses
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.v, label %bb.ab, !prof !16

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core8TopNNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.304) #42
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook5velox4core9SortOrderEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i42
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit

bb.z:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core8PlanNodeEEC2ERKS5_.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.bc

bb.aa:                                            ; preds = %bb.v
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4core8PlanNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = ptrtoint ptr %i.eh to i64
  %i.eo = ptrtoint ptr %i.eg to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 4                 ; 2 uses
  %i.er = load ptr, ptr %i.ba, align 8, !tbaa !354
  %i.es = load ptr, ptr %3, align 8, !tbaa !241
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 1                 ; 2 uses
  %.not = icmp eq i64 %i.eq, %i.ew
  br i1 %.not, label %bb.ah, label %bb.ac, !prof !95

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40, !noalias !1627
  store i64 %i.eq, ptr %10, align 16, !tbaa !14, !alias.scope !1630, !noalias !1627
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ew, ptr %i.ex, align 16, !tbaa !14, !alias.scope !1630, !noalias !1627
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.306, i64 78, i64 68, ptr nonnull %10)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !1627
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core8TopNNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nonnull @.str.306) #42
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.ag:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.ag
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !14
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.af
  %.pn28 = phi { ptr, i32 } [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ey, %bb.af ], [ %i.ez, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bb

bb.ah:                                            ; preds = %bb.ab
  %i.ff = icmp slt i32 %4, 1
  br i1 %i.ff, label %bb.ai, label %bb.an, !prof !16

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40, !noalias !1633
  store i32 %4, ptr %9, align 16, !tbaa !14, !alias.scope !1636, !noalias !1633
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.fg, align 16, !tbaa !14, !alias.scope !1636, !noalias !1633
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.308, i64 70, i64 17, ptr nonnull %9)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40, !noalias !1633
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core8TopNNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull @.str.308) #42
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.am:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %14, align 8, !tbaa !11   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.am
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !14
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.al
  %.pn26 = phi { ptr, i32 } [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.fh, %bb.al ], [ %i.fi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bb

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  store ptr null, ptr %15, align 8, !tbaa !402
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.fo, align 8, !tbaa !404
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store i64 0, ptr %i.fp, align 8, !tbaa !226
  %i.fq = load ptr, ptr %i.y, align 8, !tbaa !80  ; 2 uses
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !80 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.ar

bb.ao:                                            ; preds = %bb.at
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.068.086, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fr
  br i1 %i.fv, label %._crit_edge.loopexit, label %bb.ar

._crit_edge.loopexit:                             ; preds = %bb.ao
  %.pre91 = load ptr, ptr %i.fo, align 8, !tbaa !404
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.an
  %i.fw = phi ptr [ %.pre91, %._crit_edge.loopexit ], [ @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, %bb.an ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 15
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !270
  %i.fz = icmp eq i8 %i.fy, -1
  br i1 %i.fz, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.ga = load i64, ptr %i.fp, align 8, !tbaa !226 ; 3 uses
  %i.gb = lshr i64 %i.ga, 8                       ; 2 uses
  %i.gc = and i64 %i.ga, 255
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.gd, align 1
  %i.ge = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.gc
  %i.gf = xor i64 %notmask.i.i, -1
  %i.gg = lshr i64 %i.gf, 12
  %i.gh = add nuw nsw i64 %i.gg, 1
  %.not.i.i.i64 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i64, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.go, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  %17 = load ptr, ptr %15, align 8, !tbaa !402
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %17, i64 %.05.i.i.i ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !11 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !14
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.go = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.go, %i.gb
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !419

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.fp, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.ap
  %i.gp = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.ga, %bb.ap ] ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 256
  br i1 %i.gq, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.gr = and i64 %i.gp, 255                      ; 2 uses
  store i64 %i.gr, ptr %i.fp, align 8, !tbaa !226
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.aq, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.gs = phi i64 [ %i.gr, %bb.aq ], [ %i.gp, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ] ; 2 uses
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !404 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %.0.copyload.i.i = load i16, ptr %i.gu, align 1
  %i.gv = zext i16 %.0.copyload.i.i to i64
  %i.gw = icmp eq i64 %i.gs, 0
  %i.gx = shl nuw nsw i64 %i.gv, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.gx
  %.neg18.i = shl i64 -64, %i.gs
  %.0.i.neg.i = select i1 %i.gw, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.fo, align 8, !tbaa !404
  store i64 0, ptr %i.fp, align 8, !tbaa !226
  %i.gy = and i64 %.0.i.neg.i, -8
  %i.gz = shl nuw nsw i64 %i.ge, 5
  %i.ha = mul i64 %i.gz, %i.gh
  %i.hb = sub i64 %i.ha, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.hb) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %._crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  ret void

bb.ar:                                            ; preds = %.lr.ph, %bb.ao
  %.sroa.068.086 = phi ptr [ %i.fq, %.lr.ph ], [ %i.fu, %bb.ao ] ; 2 uses
  %i.hc = load ptr, ptr %.sroa.068.086, align 8, !tbaa !115
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !1639
  %i.he = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %.noexc57 unwind label %bb.ax  ; 2 uses

.noexc57:                                         ; preds = %bb.ar
  %i.hf = lshr i64 %i.he, 56
  %i.hg = or i64 %i.hf, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.863") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 %i.he, i64 %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %.noexc58 unwind label %bb.ax

.noexc58:                                         ; preds = %.noexc57
  %i.hh = load ptr, ptr %8, align 8, !tbaa !1644, !noalias !1639 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc58
  %i.hj = load ptr, ptr %15, align 8, !tbaa !402, !noalias !1639, !nonnull !29, !noundef !29
  %i.hk = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !1639
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.hl
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc58
  %.sroa.0.0.i.i.i = phi ptr [ %i.hm, %bb.as ], [ null, %.noexc58 ] ; 2 uses
  %i.hn = load i8, ptr %i.ft, align 8, !tbaa !30, !range !28, !noalias !1646, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !1639
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ao, label %bb.au, !prof !95

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !1649
  %i.hp = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !11, !noalias !1649
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !15, !noalias !1649
  %i.hs = ptrtoint ptr %i.hp to i64
  store i64 %i.hs, ptr %7, align 16, !noalias !1649
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.hr, ptr %.sroa_idx3.i, align 8, !noalias !1649
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.310, i64 62, i64 13, ptr nonnull %7)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !1649
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core8TopNNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISF_EERKSB_INS1_9SortOrderESaISK_EEibRKSC_IKNS1_8PlanNodeEEE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr nonnull @.str.310) #42
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %.noexc57, %bb.ar
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.az:                                            ; preds = %bb.av
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %16, align 8, !tbaa !11   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.az
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !14
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.hu, %bb.ay ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.hv, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.ht, %bb.ax ]
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %15) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.aa
  %.pn30 = phi { ptr, i32 } [ %i.em, %bb.aa ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn, %bb.ba ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core8PlanNodeEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #40
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.bb ], [ %i.el, %bb.z ] ; 2 uses
  %i.ib = load ptr, ptr %i.az, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = load ptr, ptr %i.bl, align 8, !tbaa !316
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.if) #43
  br label %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit: ; preds = %bb.bd, %bb.bc, %bb.y
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.y ], [ %.pn30.pn, %bb.bc ], [ %.pn30.pn, %bb.bd ]
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4core20FieldAccessTypedExprEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #40
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit, %bb.x
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNSt6vectorIN8facebook5velox4core9SortOrderESaIS3_EED2Ev.exit ], [ %i.ej, %bb.x ]
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core8PlanNodeE, i64 16), ptr %0, align 8, !tbaa !35
  %i.ig = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.p
  br i1 %i.ih, label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.be
  %i.ii = load i64, ptr %i.p, align 8, !tbaa !14
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #43, !inline_history !176
  br label %_ZN8facebook5velox4core8PlanNodeD2Ev.exit

_ZN8facebook5velox4core8PlanNodeD2Ev.exit:        ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn30.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core8TopNNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1626, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.311, i64 noundef 8) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1624
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_114addSortingKeysERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaIS7_EERKS3_INS1_9SortOrderESaISC_EERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core8TopNNode9serializeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 initializes((0, 4), (8, 32)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_4
