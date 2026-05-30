inline.NumInlined: 7609
inline.NumDeleted: 3292
begin_hunk_0_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m:bb.a
.thread:                                          ; preds = %bb.ah
  %i.cu = load ptr, ptr %0, align 8, !tbaa !856
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !719
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !838
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cy
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !719
  br label %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42

bb.ar:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %i.da = load ptr, ptr %11, align 8, !tbaa !124
  store ptr %i.da, ptr %i.a, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %.pre48 = load ptr, ptr %10, align 8, !tbaa !124 ; 2 uses
  %.not.i.i41 = icmp eq ptr %.pre48, null
  br i1 %.not.i.i41, label %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42, label %bb.as, !prof !470

bb.as:                                            ; preds = %bb.ar
  %i.db = getelementptr inbounds nuw i8, ptr %.pre48, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !128, !range !120, !noundef !121
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #27
  br label %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42

_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42: ; preds = %.thread, %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.not.i.i43 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42
  %i.de = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.de, align 8, !tbaa !157
  %i.di = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !159
  %i.dj = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27, !inline_history !406
  %i.dm = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27, !inline_history !406
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i44 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i44, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i = phi i32 [ %i.dh, %bb.ax ], [ %i.dr, %bb.ay ]
  %i.ds = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ds, label %bb.az, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #27
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_7compute13NullPlacementEED2Ev.exit42, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  %i.dt = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.bb, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !127

bb.bb:                                            ; preds = %bb.ba
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.dx, align 8, !tbaa !157
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !159
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !407
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !407
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.bf ], [ %i.ek, %bb.bg ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.el, label %bb.bh, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !72

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bd, %bb.bb
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !124  ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !155

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.ba
  %i.em = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dt, %bb.ba ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !128, !range !120, !noundef !121
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %_ZN5arrow6ResultIiED2Ev.exit.i
  %.pn11 = phi { ptr, i32 } [ %i.bx, %_ZN5arrow6ResultIiED2Ev.exit.i ], [ %i.co, %bb.an ], [ %i.cp, %bb.ao ], [ %i.cp, %bb.ap ], [ %i.cp, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bk
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bk ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINS0_7SortKeyESaIS4_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS9_EEE4typeERKSt10shared_ptrINS_6ScalarEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr readonly captures(none) %.0.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Result.474", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.arrow::Result.626", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.arrow::Result.227", align 8 ; 12 uses
  %15 = alloca %"class.arrow::FieldRef", align 8  ; 12 uses
  %16 = alloca %"class.std::shared_ptr.34", align 16 ; 6 uses
  %17 = alloca %"class.arrow::Result.227", align 8 ; 12 uses
  %18 = alloca %"class.arrow::FieldRef", align 8  ; 12 uses
  %19 = alloca %"class.std::shared_ptr.34", align 16 ; 5 uses
  %20 = alloca %"class.arrow::Result.620", align 8 ; 15 uses
  %21 = alloca %"class.arrow::FieldRef", align 16 ; 22 uses
  %22 = alloca %"class.arrow::Result.463", align 8 ; 9 uses
  %23 = alloca %"class.arrow::compute::SortKey", align 8 ; 9 uses
  %24 = alloca %"class.arrow::FieldRef", align 8  ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %29 = alloca %"class.std::vector", align 16     ; 13 uses
  %30 = alloca %"class.arrow::Result.227", align 8 ; 14 uses
  %31 = alloca %"class.std::shared_ptr.34", align 16 ; 6 uses
  %32 = alloca %"class.arrow::Result.599", align 8 ; 24 uses
  %33 = alloca %"class.arrow::compute::SortKey", align 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !484
  %.not = icmp eq i32 %i.e, 25
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27, !noalias !1078
  invoke void @_ZN5arrow8internal12JoinToStringIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 1 dereferenceable(28) @.str.100, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %26, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %25, align 8, !tbaa !137, !noalias !1078 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !138, !noalias !1078
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %25, align 8, !tbaa !137, !noalias !1078 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !138, !noalias !1078
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !1078
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !1078
  call void @_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %26) #27
  %i.t = load ptr, ptr %26, align 8, !tbaa !124   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !127

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !128, !range !120, !noundef !121
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.x = load ptr, ptr %27, align 8, !tbaa !137   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !138
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.gh

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.ad = load ptr, ptr %27, align 8, !tbaa !137  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !138
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.gi

bb.h:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !416, !range !120, !noundef !121
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %28, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.81)
  call void @_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %28) #27
  %i.al = load ptr, ptr %28, align 8, !tbaa !124  ; 2 uses
  %.not.i39 = icmp eq ptr %i.al, null
  br i1 %.not.i39, label %_ZN5arrow6StatusD2Ev.exit40, label %bb.j, !prof !127

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !128, !range !120, !noundef !121
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #27
  br label %_ZN5arrow6StatusD2Ev.exit40

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.gh

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1060 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1083
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1086
  %.not315 = icmp sgt i64 %i.au, 0
  br i1 %.not315, label %.lr.ph, label %.critedge35

.lr.ph:                                           ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 22
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 21
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 18 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 14 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 16 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %33, i64 40
  br label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !1060 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1083
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !1086
  %.not31 = icmp sgt i64 %i.db, %indvars.iv.next
  br i1 %.not31, label %bb.n, label %.critedge35.loopexit, !llvm.loop !1104

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.dc = phi ptr [ %i.aq, %.lr.ph ], [ %i.cx, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.227") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 noundef %indvars.iv)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %30, align 8, !tbaa !124
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.q, label %.critedge, !prof !127

.critedge:                                        ; preds = %bb.o
  call void @_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.dg = load <2 x ptr>, ptr %i.av, align 8, !tbaa !52, !noalias !1111
  %i.dh = load ptr, ptr %i.av, align 8, !tbaa !99, !noalias !1111 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !49, !noalias !1111
  store <2 x ptr> %i.dg, ptr %31, align 16, !tbaa !52, !alias.scope !1111
  store ptr null, ptr %i.av, align 8, !tbaa !99, !noalias !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53, !noalias !1112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !484, !noalias !1112 ; 2 uses
  %.not.i41 = icmp eq i32 %i.dl, 26
  br i1 %.not.i41, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1112
  store i32 %i.dl, ptr %i.a, align 4, !tbaa !511, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !1115
  invoke void @_ZN5arrow8internal12JoinToStringIJRA30_KcNS_4Type4typeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(30) @.str.101, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc44 unwind label %bb.er

.noexc44:                                         ; preds = %bb.r
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc44
  %i.dm = load ptr, ptr %11, align 8, !tbaa !137, !noalias !1115 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ay
  br i1 %i.dn, label %_ZN5arrow6Status7InvalidIJRA30_KcNS_4Type4typeEEEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.ay, align 8, !tbaa !138, !noalias !1115
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #25
  br label %_ZN5arrow6Status7InvalidIJRA30_KcNS_4Type4typeEEEES0_DpOT_.exit.i

bb.t:                                             ; preds = %.noexc44
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %11, align 8, !tbaa !137, !noalias !1115 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ay
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.t
  %i.dt = load i64, ptr %i.ay, align 8, !tbaa !138, !noalias !1115
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !1115
  br label %.body45

_ZN5arrow6Status7InvalidIJRA30_KcNS_4Type4typeEEEES0_DpOT_.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !1115
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %12) #27
  %i.dv = load ptr, ptr %12, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.u, !prof !127

bb.u:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA30_KcNS_4Type4typeEEEES0_DpOT_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !128, !range !120, !noundef !121
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.v, %bb.u, %_ZN5arrow6Status7InvalidIJRA30_KcNS_4Type4typeEEEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !1112
  br label %bb.ep

bb.w:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !416, !range !120, !noalias !1112, !noundef !121
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN5arrow8FieldRefC2EPKc.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !1112
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.81)
          to label %.noexc47 unwind label %bb.er

.noexc47:                                         ; preds = %bb.x
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  %i.ec = load ptr, ptr %13, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i29.i = icmp eq ptr %i.ec, null
  br i1 %.not.i29.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %bb.y, !prof !127

bb.y:                                             ; preds = %.noexc47
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !128, !range !120, !noundef !121
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN5arrow6StatusD2Ev.exit30.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %bb.z, %bb.y, %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !1112
  br label %bb.ep

_ZN5arrow8FieldRefC2EPKc.exit.i:                  ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !1112
  store ptr %i.az, ptr %10, align 8, !tbaa !156, !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.az, ptr noundef nonnull align 1 dereferenceable(6) @.str.98, i64 6, i1 false), !noalias !1112
  store i64 6, ptr %i.ba, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.bb, align 2, !tbaa !138, !noalias !1112
  store ptr %i.bc, ptr %15, align 8, !tbaa !156, !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bc, ptr noundef nonnull align 8 dereferenceable(7) %i.az, i64 7, i1 false), !noalias !1112
  store i64 6, ptr %i.bd, align 8, !tbaa !139, !noalias !1112
  store i8 1, ptr %i.be, align 8, !tbaa !192, !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !1112
  invoke void @_ZNK5arrow12StructScalar5fieldENS_8FieldRefE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.227") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef nonnull %15)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %_ZN5arrow8FieldRefC2EPKc.exit.i
  %i.eg = load i8, ptr %i.be, align 8, !tbaa !192, !noalias !1112
  switch i8 %i.eg, label %bb.ag [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit.i
    i8 0, label %bb.ab
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ], !prof !203

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load ptr, ptr %15, align 8, !tbaa !204, !noalias !1112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.bc, align 8, !tbaa !207, !noalias !1112
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #25, !inline_history !208
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.em = load ptr, ptr %15, align 8, !tbaa !137, !noalias !1112 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.bc
  br i1 %i.en, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.eo = load i64, ptr %i.bc, align 8, !tbaa !138, !noalias !1112
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #25, !inline_history !208
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %15, align 8, !tbaa !209, !noalias !1112 ; 3 uses
  %i.er = load ptr, ptr %i.bd, align 8, !tbaa !212, !noalias !1112 ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i2.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.i
  %.0.i.i3.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i ], [ %i.eq, %bb.ae ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i.i), !inline_history !213
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i77.i = load ptr, ptr %15, align 8, !tbaa !209, !noalias !1112
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i, %bb.ae
  %i.et = phi ptr [ %.pre.i.i77.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i.i ], [ %i.eq, %bb.ae ] ; 3 uses
  %.not.i.i.i.i.i78.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i78.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i
  %i.eu = load ptr, ptr %i.bc, align 8, !tbaa !215, !noalias !1112
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #25, !inline_history !216
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i

bb.ag:                                            ; preds = %bb.aa
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i: ; preds = %bb.ad, %bb.af, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab
  store i8 -1, ptr %i.be, align 8, !tbaa !192, !noalias !1112
  br label %_ZN5arrow8FieldRefD2Ev.exit.i

_ZN5arrow8FieldRefD2Ev.exit.i:                    ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i.i, %bb.aa
  %i.ey = load ptr, ptr %14, align 8, !tbaa !124, !noalias !1112
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ak, label %bb.ah, !prof !127

bb.ah:                                            ; preds = %_ZN5arrow8FieldRefD2Ev.exit.i
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %14) #27
  br label %bb.eg

bb.ai:                                            ; preds = %_ZN5arrow8FieldRefC2EPKc.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %.body45 unwind label %bb.aj, !inline_history !75

bb.aj:                                            ; preds = %bb.ai
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #26, !inline_history !75
  unreachable

bb.ak:                                            ; preds = %_ZN5arrow8FieldRefD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1112
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.fd = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !52, !noalias !1126
  %i.fe = load ptr, ptr %i.bf, align 8, !tbaa !99, !noalias !1126 ; 3 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !49, !noalias !1126
  store <2 x ptr> %i.fd, ptr %16, align 16, !tbaa !52, !alias.scope !1127, !noalias !1112
  store ptr null, ptr %i.bf, align 8, !tbaa !99, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !1112
  store ptr %i.bi, ptr %9, align 8, !tbaa !156, !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bi, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false), !noalias !1112
  store i64 5, ptr %i.bj, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.bk, align 1, !tbaa !138, !noalias !1112
  store ptr %i.bl, ptr %18, align 8, !tbaa !156, !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bl, ptr noundef nonnull align 8 dereferenceable(6) %i.bi, i64 6, i1 false), !noalias !1112
  store i64 5, ptr %i.bm, align 8, !tbaa !139, !noalias !1112
  store i8 1, ptr %i.bn, align 8, !tbaa !192, !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !1112
  invoke void @_ZNK5arrow12StructScalar5fieldENS_8FieldRefE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.227") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef nonnull %18)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ff = load i8, ptr %i.bn, align 8, !tbaa !192, !noalias !1112
  switch i8 %i.ff, label %bb.ar [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit41.i
    i8 0, label %bb.am
    i8 1, label %bb.ao
    i8 2, label %bb.ap
  ], !prof !203

bb.am:                                            ; preds = %bb.al
  %i.fg = load ptr, ptr %18, align 8, !tbaa !204, !noalias !1112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i90.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i90.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.bl, align 8, !tbaa !207, !noalias !1112
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #25, !inline_history !208
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i

bb.ao:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %18, align 8, !tbaa !137, !noalias !1112 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bl
  br i1 %i.fm, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88.i: ; preds = %bb.ao
  %i.fn = load i64, ptr %i.bl, align 8, !tbaa !138, !noalias !1112
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #25, !inline_history !208
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i

bb.ap:                                            ; preds = %bb.al
  %i.fp = load ptr, ptr %18, align 8, !tbaa !209, !noalias !1112 ; 3 uses
  %i.fq = load ptr, ptr %i.bm, align 8, !tbaa !212, !noalias !1112 ; 2 uses
  %.not.i.i2.i.i79.i = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i2.i.i79.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i85.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %bb.ap, %.lr.ph.i.i80.i
  %.0.i.i3.i.i81.i = phi ptr [ %i.fr, %.lr.ph.i.i80.i ], [ %i.fp, %bb.ap ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i81.i), !inline_history !213
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i81.i, i64 40 ; 2 uses
  %.not.i.i.i.i82.i = icmp eq ptr %i.fr, %i.fq
  br i1 %.not.i.i.i.i82.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i83.i: ; preds = %.lr.ph.i.i80.i
  %.pre.i.i84.i = load ptr, ptr %18, align 8, !tbaa !209, !noalias !1112
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i85.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i85.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i83.i, %bb.ap
  %i.fs = phi ptr [ %.pre.i.i84.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i83.i ], [ %i.fp, %bb.ap ] ; 3 uses
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i86.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i85.i
  %i.ft = load ptr, ptr %i.bl, align 8, !tbaa !215, !noalias !1112
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #25, !inline_history !216
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i

bb.ar:                                            ; preds = %bb.al
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i: ; preds = %bb.ao, %bb.aq, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88.i, %bb.an, %bb.am
  store i8 -1, ptr %i.bn, align 8, !tbaa !192, !noalias !1112
  br label %_ZN5arrow8FieldRefD2Ev.exit41.i

_ZN5arrow8FieldRefD2Ev.exit41.i:                  ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i87.i, %bb.al
  %i.fx = load ptr, ptr %17, align 8, !tbaa !124, !noalias !1112
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.av, label %bb.as, !prof !127

bb.as:                                            ; preds = %_ZN5arrow8FieldRefD2Ev.exit41.i
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  br label %bb.dr

bb.at:                                            ; preds = %bb.ak
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %_ZN5arrow8FieldRefD2Ev.exit42.i unwind label %bb.au, !inline_history !75

bb.au:                                            ; preds = %bb.at
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #26, !inline_history !75
  unreachable

bb.av:                                            ; preds = %_ZN5arrow8FieldRefD2Ev.exit41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !1112
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %34 = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !52, !noalias !1134 ; 3 uses
  %35 = extractelement <2 x ptr> %34, i64 1       ; 8 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !49, !noalias !1134
  store <2 x ptr> %34, ptr %19, align 16, !tbaa !52, !alias.scope !1135, !noalias !1112
  store ptr null, ptr %i.bo, align 8, !tbaa !99, !noalias !1134
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1136
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !53, !noalias !1142 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !484, !noalias !1142
  switch i32 %i.gf, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i.i [
    i32 14, label %bb.bb
    i32 35, label %bb.bb
    i32 13, label %bb.bb
    i32 34, label %bb.bb
  ]

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1143
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !38, !noalias !1142
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1142
  invoke void %i.gi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.gd, i1 noundef zeroext false)
          to label %.noexc46.i unwind label %bb.br, !inline_history !1144

.noexc46.i:                                       ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1145
  invoke void @_ZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(35) @.str.102, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i.i43.i unwind label %bb.ba, !noalias !1142

.noexc.i.i43.i:                                   ; preds = %.noexc46.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aw unwind label %bb.ax, !noalias !1142

bb.aw:                                            ; preds = %.noexc.i.i43.i
  %i.gj = load ptr, ptr %2, align 8, !tbaa !137, !noalias !1145 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.bu
  br i1 %i.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.gl = load i64, ptr %i.bu, align 8, !tbaa !138, !noalias !1145
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #25, !noalias !1142
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.noexc.i.i43.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %2, align 8, !tbaa !137, !noalias !1145 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.bu
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %bb.ax
  %i.gq = load i64, ptr %i.bu, align 8, !tbaa !138, !noalias !1145
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #25, !noalias !1142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1145
  br label %.body.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1145
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #27, !noalias !1150
  %i.gs = load ptr, ptr %3, align 8, !tbaa !124, !noalias !1143 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.ay, !prof !127

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !128, !range !120, !noalias !1150, !noundef !121
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27, !noalias !1150
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.az, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.gw = load ptr, ptr %4, align 8, !tbaa !137, !noalias !1143 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.bv
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  %i.gy = load i64, ptr %i.bv, align 8, !tbaa !138, !noalias !1143
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #25, !noalias !1150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1143
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i

bb.ba:                                            ; preds = %.noexc46.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ha, %bb.ba ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i ]
  %i.hb = load ptr, ptr %4, align 8, !tbaa !137, !noalias !1143 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.bv
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %.body.i.i.i
  %i.hd = load i64, ptr %i.bv, align 8, !tbaa !138, !noalias !1143
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #25, !noalias !1142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %.body.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1143
  br label %.body.i

bb.bb:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !416, !range !120, !noalias !1142, !noundef !121
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1143
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.81)
          to label %.noexc47.i unwind label %bb.br

.noexc47.i:                                       ; preds = %bb.bc
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #27, !noalias !1150
  %i.hi = load ptr, ptr %5, align 8, !tbaa !124, !noalias !1143 ; 2 uses
  %.not.i9.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i9.i.i.i, label %_ZN5arrow6StatusD2Ev.exit10.i.i.i, label %bb.bd, !prof !127

bb.bd:                                            ; preds = %.noexc47.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !128, !range !120, !noalias !1150, !noundef !121
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %_ZN5arrow6StatusD2Ev.exit10.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27, !noalias !1150
  br label %_ZN5arrow6StatusD2Ev.exit10.i.i.i

_ZN5arrow6StatusD2Ev.exit10.i.i.i:                ; preds = %bb.be, %bb.bd, %.noexc47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1143
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1143
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1047, !noalias !1142
  invoke void @_ZNK5arrow6Buffer8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.hn)
          to label %.noexc48.i unwind label %bb.br

.noexc48.i:                                       ; preds = %bb.bf
  store ptr null, ptr %7, align 8, !tbaa !124, !alias.scope !1139, !noalias !1136
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !156, !alias.scope !1139, !noalias !1136
  %i.ho = load ptr, ptr %6, align 8, !tbaa !137, !noalias !1143 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.bs
  br i1 %i.hp, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i.i

bb.bg:                                            ; preds = %.noexc48.i
  %i.hq = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !139, !noalias !1143 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nuw nsw i64 %i.hq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.hs, i1 false), !noalias !1136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i.i: ; preds = %.noexc48.i
  store ptr %i.ho, ptr %i.bq, align 8, !tbaa !137, !alias.scope !1139, !noalias !1136
  %i.ht = load i64, ptr %i.bs, align 8, !tbaa !138, !noalias !1143
  store i64 %i.ht, ptr %i.br, align 8, !tbaa !138, !alias.scope !1139, !noalias !1136
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !139, !noalias !1143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i.i, %bb.bg
  %i.hu = phi i64 [ %i.hq, %bb.bg ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i.i ]
  store i64 %i.hu, ptr %i.bt, align 8, !tbaa !139, !alias.scope !1139, !noalias !1136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1143
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i

_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i, %_ZN5arrow6StatusD2Ev.exit10.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.hv = load ptr, ptr %7, align 8, !tbaa !124, !noalias !1136
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.bi, label %bb.bh, !prof !127

bb.bh:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i
  call void @_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  br label %bb.bn

bb.bi:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !1136
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  store ptr %i.bw, ptr %8, align 8, !tbaa !156, !alias.scope !1157, !noalias !1136
  %i.hx = load ptr, ptr %i.bq, align 8, !tbaa !137, !noalias !1158 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.br
  br i1 %i.hy, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.hz = load i64, ptr %i.bt, align 8, !tbaa !139, !noalias !1158 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.ib, i1 false), !noalias !1136
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i: ; preds = %bb.bi
  store ptr %i.hx, ptr %8, align 8, !tbaa !137, !alias.scope !1157, !noalias !1136
  %i.ic = load i64, ptr %i.br, align 8, !tbaa !138, !noalias !1158
  store i64 %i.ic, ptr %i.bw, align 8, !tbaa !138, !alias.scope !1157, !noalias !1136
  %.pre.i.i.i.i = load i64, ptr %i.bt, align 8, !tbaa !139, !noalias !1158
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i, %bb.bj
  %i.id = phi i64 [ %i.hz, %bb.bj ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i ]
  store i64 %i.id, ptr %i.bx, align 8, !tbaa !139, !alias.scope !1157, !noalias !1136
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !137, !noalias !1158
  store i64 0, ptr %i.bt, align 8, !tbaa !139, !noalias !1158
  store i8 0, ptr %i.br, align 8, !tbaa !138, !noalias !1158
  invoke void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.620") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ie = load ptr, ptr %8, align 8, !tbaa !137, !noalias !1136 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.bw
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.bl
  %i.ig = load i64, ptr %i.bw, align 8, !tbaa !138, !noalias !1136
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1136
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %8, align 8, !tbaa !137, !noalias !1136 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.bw
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.bm
  %i.il = load i64, ptr %i.bw, align 8, !tbaa !138, !noalias !1136
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1136
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1136
  br label %.body.i

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.bh
  %i.in = load ptr, ptr %7, align 8, !tbaa !124, !noalias !1136 ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bo, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !127

bb.bo:                                            ; preds = %bb.bn
  %i.ip = load ptr, ptr %i.bq, align 8, !tbaa !137, !noalias !1136 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.br
  br i1 %i.iq, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i: ; preds = %bb.bo
  %i.ir = load i64, ptr %i.br, align 8, !tbaa !138, !noalias !1136
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #25
  %.pr.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !124, !noalias !1136 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i12.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !155

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i, %bb.bn
  %i.it = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i ], [ %i.in, %bb.bn ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !128, !range !120, !noundef !121
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #27
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i: ; preds = %bb.bo, %bb.bp, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1136
  %i.ix = load ptr, ptr %20, align 8, !tbaa !124, !noalias !1112
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.bs, label %bb.bq, !prof !127

bb.bq:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %20) #27
  br label %bb.dc

bb.br:                                            ; preds = %bb.bf, %bb.bc, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bs:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27, !noalias !1112
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.ja = load i8, ptr %i.bz, align 8, !tbaa !192, !noalias !1165 ; 2 uses
  switch i8 %i.ja, label %bb.bx [
    i8 0, label %bb.bt
    i8 1, label %bb.bu
    i8 2, label %bb.bw
    i8 -1, label %bb.by
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.jb = load <2 x ptr>, ptr %i.by, align 8, !tbaa !295, !noalias !1165
  store <2 x ptr> %i.jb, ptr %21, align 16, !tbaa !295, !alias.scope !1166, !noalias !1112
  %i.jc = load ptr, ptr %i.cd, align 8, !tbaa !207, !noalias !1165
  store ptr %i.jc, ptr %i.cc, align 16, !tbaa !207, !alias.scope !1166, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, i8 0, i64 24, i1 false), !noalias !1165
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  store ptr %i.cc, ptr %21, align 16, !tbaa !156, !alias.scope !1166, !noalias !1112
  %i.jd = load ptr, ptr %i.by, align 8, !tbaa !137, !noalias !1165 ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.cd
  br i1 %i.je, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load i64, ptr %i.cb, align 8, !tbaa !139, !noalias !1165 ; 3 uses
  %i.jg = icmp ult i64 %i.jf, 16
  call void @llvm.assume(i1 %i.jg)
  %i.jh = add nuw nsw i64 %i.jf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.jh, i1 false), !noalias !1112
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bu
  store ptr %i.jd, ptr %21, align 16, !tbaa !137, !alias.scope !1166, !noalias !1112
  %i.ji = load i64, ptr %i.cd, align 8, !tbaa !138, !noalias !1165
  store i64 %i.ji, ptr %i.cc, align 16, !tbaa !138, !alias.scope !1166, !noalias !1112
  %.pre.i.i50.i = load i64, ptr %i.cb, align 8, !tbaa !139, !noalias !1165
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %i.jj = phi i64 [ %.pre.i.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jf, %bb.bv ]
  store i64 %i.jj, ptr %i.ca, align 8, !tbaa !139, !alias.scope !1166, !noalias !1112
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !137, !noalias !1165
  store i64 0, ptr %i.cb, align 8, !tbaa !139, !noalias !1165
  store i8 0, ptr %i.cd, align 8, !tbaa !138, !noalias !1165
  br label %bb.by

bb.bw:                                            ; preds = %bb.bs
  %i.jk = load <2 x ptr>, ptr %i.by, align 8, !tbaa !297, !noalias !1165
  store <2 x ptr> %i.jk, ptr %21, align 16, !tbaa !297, !alias.scope !1166, !noalias !1112
  %i.jl = load ptr, ptr %i.cd, align 8, !tbaa !215, !noalias !1165
  store ptr %i.jl, ptr %i.cc, align 16, !tbaa !215, !alias.scope !1166, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, i8 0, i64 24, i1 false), !noalias !1165
  br label %bb.by

bb.bx:                                            ; preds = %bb.bs
  unreachable

bb.by:                                            ; preds = %bb.bw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bs
  store i8 %i.ja, ptr %i.ce, align 16, !tbaa !192, !alias.scope !1166, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !1167
  %36 = extractelement <2 x ptr> %34, i64 0
  invoke fastcc void @_ZN5arrow7compute8internalL17GenericFromScalarIiEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE(ptr dead_on_unwind noalias writable align 8 %1, ptr readonly %36)
          to label %.noexc52.i unwind label %bb.ci

.noexc52.i:                                       ; preds = %bb.by
  %i.jm = load ptr, ptr %1, align 8, !tbaa !124, !noalias !1167
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.ca, label %bb.bz, !prof !127

bb.bz:                                            ; preds = %.noexc52.i
  call void @_ZN5arrow6ResultINS_7compute9SortOrderEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  br label %bb.ce

bb.ca:                                            ; preds = %.noexc52.i
  %i.jo = load i32, ptr %i.cf, align 8, !tbaa !3, !noalias !1167
  invoke void @_ZN5arrow7compute8internal17ValidateEnumValueINS0_9SortOrderEiEENS_6ResultIT_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.463") align 8 %22, i32 noundef %i.jo)
          to label %bb.ce unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %1, align 8, !tbaa !124, !noalias !1167 ; 2 uses
  %.not.i.i.i51.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i51.i, label %_ZN5arrow6ResultIiED2Ev.exit.i.i, label %bb.cc, !prof !127

bb.cc:                                            ; preds = %bb.cb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !128, !range !120, !noundef !121
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %_ZN5arrow6ResultIiED2Ev.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #27
  br label %_ZN5arrow6ResultIiED2Ev.exit.i.i

_ZN5arrow6ResultIiED2Ev.exit.i.i:                 ; preds = %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !1167
  br label %.body53.i

bb.ce:                                            ; preds = %bb.ca, %bb.bz
  %i.ju = load ptr, ptr %1, align 8, !tbaa !124, !noalias !1167 ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i6.i.i, label %bb.ch, label %bb.cf, !prof !127

bb.cf:                                            ; preds = %bb.ce
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !128, !range !120, !noundef !121
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #27
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !1167
  %i.jy = load ptr, ptr %22, align 8, !tbaa !124, !noalias !1112
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.ck, label %bb.ct, !prof !127

bb.ci:                                            ; preds = %bb.by
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body53.i

.body53.i:                                        ; preds = %bb.ci, %_ZN5arrow6ResultIiED2Ev.exit.i.i
  %eh.lpad-body54.i = phi { ptr, i32 } [ %i.ka, %bb.ci ], [ %i.jp, %_ZN5arrow6ResultIiED2Ev.exit.i.i ]
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %_ZN5arrow8FieldRefD2Ev.exit55.i unwind label %bb.cj, !inline_history !75

bb.cj:                                            ; preds = %.body53.i
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #26, !inline_history !75
  unreachable

bb.ck:                                            ; preds = %bb.ch
  %i.kd = load i32, ptr %i.cg, align 8, !tbaa !716, !noalias !1112 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27, !noalias !1112
  %i.ke = load i8, ptr %i.ce, align 16, !tbaa !192, !noalias !1112 ; 2 uses
  switch i8 %i.ke, label %bb.cm [
    i8 0, label %bb.cr
    i8 1, label %bb.cl
    i8 2, label %bb.cs
    i8 -1, label %_ZN5arrow7compute7SortKeyD2Ev.exit.thread.i
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.kf = load ptr, ptr %21, align 16, !tbaa !137, !noalias !1112 ; 4 uses
  %i.kg = icmp eq ptr %i.kf, %i.cc
  br i1 %i.kg, label %.thread, label %bb.cn

.thread:                                          ; preds = %bb.cl
  %i.kh = load i64, ptr %i.ca, align 8, !tbaa !139, !noalias !1112 ; 3 uses
  %i.ki = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.ki)
  %i.kj = add nuw nsw i64 %i.kh, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 16 dereferenceable(1) %i.cc, i64 %i.kj, i1 false), !noalias !1112
  store ptr %i.cc, ptr %21, align 16, !tbaa !137, !noalias !1112
  store i64 0, ptr %i.ca, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.cc, align 16, !tbaa !138, !noalias !1112
  store i8 1, ptr %i.ch, align 8, !tbaa !192, !noalias !1112
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.kk = load i64, ptr %i.cc, align 16, !tbaa !138, !noalias !1112 ; 2 uses
  store i64 %i.kk, ptr %i.cq, align 8, !tbaa !138, !noalias !1112
  %.pre.i = load i64, ptr %i.ca, align 8, !tbaa !139, !noalias !1112 ; 3 uses
  store ptr %i.cc, ptr %21, align 16, !tbaa !137, !noalias !1112
  store i64 0, ptr %i.ca, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.cc, align 16, !tbaa !138, !noalias !1112
  store i8 1, ptr %i.ch, align 8, !tbaa !192, !noalias !1112
  %i.kl = icmp eq ptr %i.kf, %i.cq
  br i1 %i.kl, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.cn
  %.pre13 = add nuw nsw i64 %.pre.i, 1
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre13, %._crit_edge ], [ %i.kj, %.thread ]
  %i.km = phi i64 [ %.pre.i, %._crit_edge ], [ %i.kh, %.thread ] ; 2 uses
  %i.kn = icmp ult i64 %i.km, 16
  call void @llvm.assume(i1 %i.kn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %.pre-phi, i1 false), !noalias !1112
  br label %bb.cp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  store ptr %i.kf, ptr %23, align 8, !tbaa !137, !noalias !1112
  store i64 %i.kk, ptr %i.cr, align 8, !tbaa !138, !noalias !1112
  br label %bb.cp

_ZN5arrow7compute7SortKeyD2Ev.exit.thread.i:      ; preds = %bb.ck
  store i8 -1, ptr %i.ch, align 8, !tbaa !192, !noalias !1112
  store ptr null, ptr %32, align 8, !tbaa !124, !alias.scope !1112
  store i8 -1, ptr %i.ci, align 8, !tbaa !192, !alias.scope !1112
  store i32 %i.kd, ptr %i.cj, align 8, !tbaa !194, !alias.scope !1112
  br label %.thread124

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.co
  %i.ko = phi i64 [ %i.km, %bb.co ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kp = phi ptr [ %i.cr, %bb.co ], [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.cq, ptr %24, align 8, !tbaa !137, !noalias !1112
  store i64 0, ptr %i.cp, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.cq, align 8, !tbaa !138, !noalias !1112
  store i8 1, ptr %i.ck, align 8, !tbaa !192, !noalias !1112
  store i32 %i.kd, ptr %i.cl, align 8, !tbaa !194, !noalias !1112
  store ptr null, ptr %32, align 8, !tbaa !124, !alias.scope !1112
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !156, !alias.scope !1112
  %i.kq = icmp eq ptr %i.kp, %i.cr
  br i1 %i.kq, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.kr = icmp ult i64 %i.ko, 16
  call void @llvm.assume(i1 %i.kr)
  %i.ks = add nuw nsw i64 %i.ko, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.ks, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp
  store ptr %i.kp, ptr %i.cm, align 8, !tbaa !137, !alias.scope !1112
  %i.kt = load i64, ptr %i.cr, align 8, !tbaa !138, !noalias !1112
  store i64 %i.kt, ptr %i.co, align 8, !tbaa !138, !alias.scope !1112
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i115.i

bb.cr:                                            ; preds = %bb.ck
  %i.ku = load ptr, ptr %i.cc, align 16, !tbaa !207, !noalias !1112
  %i.kv = load <2 x ptr>, ptr %21, align 16, !tbaa !295, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %21, i8 0, i64 24, i1 false), !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, i8 0, i64 24, i1 false), !noalias !1112
  store i32 %i.kd, ptr %i.cl, align 8, !tbaa !194, !noalias !1112
  store ptr null, ptr %32, align 8, !tbaa !124, !alias.scope !1112
  store <2 x ptr> %i.kv, ptr %i.cm, align 8, !tbaa !295, !alias.scope !1112
  store ptr %i.ku, ptr %i.co, align 8, !tbaa !207, !alias.scope !1112
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i115.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.ko, ptr %i.cn, align 8, !tbaa !139, !alias.scope !1112
  store ptr %i.cr, ptr %23, align 8, !tbaa !137, !noalias !1112
  store i64 0, ptr %i.cs, align 8, !tbaa !139, !noalias !1112
  store i8 0, ptr %i.cr, align 8, !tbaa !138, !noalias !1112
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i113.i

bb.cs:                                            ; preds = %bb.ck
  %i.kw = load ptr, ptr %i.cc, align 16, !tbaa !215, !noalias !1112
  %i.kx = load <2 x ptr>, ptr %21, align 16, !tbaa !297, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %21, i8 0, i64 24, i1 false), !noalias !1112
  store i8 2, ptr %i.ch, align 8, !tbaa !192, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, i8 0, i64 24, i1 false), !noalias !1112
  store i32 %i.kd, ptr %i.cl, align 8, !tbaa !194, !noalias !1112
  store ptr null, ptr %32, align 8, !tbaa !124, !alias.scope !1112
  store <2 x ptr> %i.kx, ptr %i.cm, align 8, !tbaa !297, !alias.scope !1112
  store ptr %i.kw, ptr %i.co, align 8, !tbaa !215, !alias.scope !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %23, i8 0, i64 24, i1 false), !noalias !1112
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i113.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i113.i: ; preds = %bb.cs, %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i115.i
  store i8 %i.ke, ptr %i.ci, align 8, !tbaa !192, !alias.scope !1112
  store i32 %i.kd, ptr %i.cj, align 8, !tbaa !194, !alias.scope !1112
  store i8 -1, ptr %i.ch, align 8, !tbaa !192, !noalias !1112
  br label %.thread124

.thread124:                                       ; preds = %_ZN5arrow7compute7SortKeyD2Ev.exit.thread.i, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !1112
  br label %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i

bb.ct:                                            ; preds = %bb.ch
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(8) %22) #27
  %.pre = load ptr, ptr %22, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i, label %bb.cu, !prof !1170

bb.cu:                                            ; preds = %bb.ct
  %i.ky = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !128, !range !120, !noundef !121
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %22) #27
  br label %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i

_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i: ; preds = %.thread124, %bb.cv, %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !1112
  %i.lb = load i8, ptr %i.ce, align 16, !tbaa !192, !noalias !1112
  switch i8 %i.lb, label %bb.db [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit57.i
    i8 0, label %bb.cw
    i8 1, label %bb.cy
    i8 2, label %bb.cz
  ], !prof !203

bb.cw:                                            ; preds = %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i
  %i.lc = load ptr, ptr %21, align 16, !tbaa !204, !noalias !1112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i129.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i129.i, label %_ZN5arrow8FieldRefD2Ev.exit57.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ld = load ptr, ptr %i.cc, align 16, !tbaa !207, !noalias !1112
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lg) #25, !inline_history !208
  br label %_ZN5arrow8FieldRefD2Ev.exit57.i

bb.cy:                                            ; preds = %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i
  %i.lh = load ptr, ptr %21, align 16, !tbaa !137, !noalias !1112 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.cc
  br i1 %i.li, label %_ZN5arrow8FieldRefD2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i127.i: ; preds = %bb.cy
  %i.lj = load i64, ptr %i.cc, align 16, !tbaa !138, !noalias !1112
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #25, !inline_history !208
  br label %_ZN5arrow8FieldRefD2Ev.exit57.i

bb.cz:                                            ; preds = %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i
  %i.ll = load ptr, ptr %21, align 16, !tbaa !209, !noalias !1112 ; 3 uses
  %i.lm = load ptr, ptr %i.ca, align 8, !tbaa !212, !noalias !1112 ; 2 uses
  %.not.i.i2.i.i118.i = icmp eq ptr %i.ll, %i.lm
  br i1 %.not.i.i2.i.i118.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i124.i, label %.lr.ph.i.i119.i

.lr.ph.i.i119.i:                                  ; preds = %bb.cz, %.lr.ph.i.i119.i
  %.0.i.i3.i.i120.i = phi ptr [ %i.ln, %.lr.ph.i.i119.i ], [ %i.ll, %bb.cz ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i120.i), !inline_history !213
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i120.i, i64 40 ; 2 uses
  %.not.i.i.i.i121.i = icmp eq ptr %i.ln, %i.lm
  br i1 %.not.i.i.i.i121.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i122.i, label %.lr.ph.i.i119.i, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i122.i: ; preds = %.lr.ph.i.i119.i
  %.pre.i.i123.i = load ptr, ptr %21, align 16, !tbaa !209, !noalias !1112
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i124.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i124.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i122.i, %bb.cz
  %i.lo = phi ptr [ %.pre.i.i123.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i122.i ], [ %i.ll, %bb.cz ] ; 3 uses
  %.not.i.i.i.i.i125.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i125.i, label %_ZN5arrow8FieldRefD2Ev.exit57.i, label %bb.da

bb.da:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i124.i
  %i.lp = load ptr, ptr %i.cc, align 16, !tbaa !215, !noalias !1112
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #25, !inline_history !216
  br label %_ZN5arrow8FieldRefD2Ev.exit57.i

bb.db:                                            ; preds = %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i
  unreachable

_ZN5arrow8FieldRefD2Ev.exit57.i:                  ; preds = %bb.cy, %bb.da, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i127.i, %bb.cx, %bb.cw, %_ZN5arrow6ResultINS_7compute9SortOrderEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27, !noalias !1112
  br label %bb.dc

_ZN5arrow8FieldRefD2Ev.exit55.i:                  ; preds = %.body53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27, !noalias !1112
  call void @_ZN5arrow6ResultINS_8FieldRefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27, !noalias !1112
  br label %.body.i

bb.dc:                                            ; preds = %_ZN5arrow8FieldRefD2Ev.exit57.i, %bb.bq
  %i.lt = load ptr, ptr %20, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.dd, label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.thread.i.i, !prof !127

bb.dd:                                            ; preds = %bb.dc
  %i.lv = load i8, ptr %i.bz, align 8, !tbaa !192, !noalias !1112
  switch i8 %i.lv, label %bb.dj [
    i8 -1, label %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i
    i8 0, label %bb.de
    i8 1, label %bb.dg
    i8 2, label %bb.dh
  ], !prof !203

bb.de:                                            ; preds = %bb.dd
  %i.lw = load ptr, ptr %i.by, align 8, !tbaa !204, !noalias !1112 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i142.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i142.i, label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lx = load ptr, ptr %i.cd, align 8, !tbaa !207, !noalias !1112
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lw to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.ma) #25, !inline_history !208
  br label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i

bb.dg:                                            ; preds = %bb.dd
  %i.mb = load ptr, ptr %i.by, align 8, !tbaa !137, !noalias !1112 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.cd
  br i1 %i.mc, label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i140.i: ; preds = %bb.dg
  %i.md = load i64, ptr %i.cd, align 8, !tbaa !138, !noalias !1112
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #25, !inline_history !208
  br label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i

bb.dh:                                            ; preds = %bb.dd
  %i.mf = load ptr, ptr %i.by, align 8, !tbaa !209, !noalias !1112 ; 3 uses
  %i.mg = load ptr, ptr %i.cb, align 8, !tbaa !212, !noalias !1112 ; 2 uses
  %.not.i.i2.i.i131.i = icmp eq ptr %i.mf, %i.mg
  br i1 %.not.i.i2.i.i131.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i137.i, label %.lr.ph.i.i132.i

.lr.ph.i.i132.i:                                  ; preds = %bb.dh, %.lr.ph.i.i132.i
  %.0.i.i3.i.i133.i = phi ptr [ %i.mh, %.lr.ph.i.i132.i ], [ %i.mf, %bb.dh ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i133.i), !inline_history !213
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i133.i, i64 40 ; 2 uses
  %.not.i.i.i.i134.i = icmp eq ptr %i.mh, %i.mg
  br i1 %.not.i.i.i.i134.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i135.i, label %.lr.ph.i.i132.i, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i135.i: ; preds = %.lr.ph.i.i132.i
  %.pre.i.i136.i = load ptr, ptr %i.by, align 8, !tbaa !209, !noalias !1112
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i137.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i137.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i135.i, %bb.dh
  %i.mi = phi ptr [ %.pre.i.i136.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i135.i ], [ %i.mf, %bb.dh ] ; 3 uses
  %.not.i.i.i.i.i138.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i138.i, label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i137.i
  %i.mj = load ptr, ptr %i.cd, align 8, !tbaa !215, !noalias !1112
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mi to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mm) #25, !inline_history !216
  br label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i

bb.dj:                                            ; preds = %bb.dd
  unreachable

_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i: ; preds = %bb.dg, %bb.di, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i137.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i140.i, %bb.df, %bb.de
  store i8 -1, ptr %i.bz, align 8, !tbaa !192, !noalias !1112
  %.pr.i.pre.i = load ptr, ptr %20, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i.i58.i = icmp eq ptr %.pr.i.pre.i, null
  br i1 %.not.i.i58.i, label %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i, label %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.thread.i.i, !prof !155

_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i, %bb.dc
  %i.mn = phi ptr [ %.pr.i.pre.i, %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i ], [ %i.lt, %bb.dc ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !128, !range !120, !noundef !121
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(48) %20) #27
  br label %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i

_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i:       ; preds = %bb.dk, %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINS_8FieldRefEE7DestroyEv.exit.i.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27, !noalias !1112
  %.not.i.i59.i = icmp eq ptr %35, null
  br i1 %.not.i.i59.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.ms = load atomic i64, ptr %i.mr acquire, align 8 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 4294967297
  %i.mu = trunc i64 %i.ms to i32                  ; 2 uses
  br i1 %i.mt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.mr, align 8, !tbaa !157
  %i.mv = getelementptr inbounds nuw i8, ptr %35, i64 12
  store i32 0, ptr %i.mv, align 4, !tbaa !159
  %i.mw = load ptr, ptr %35, align 8, !tbaa !38
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %35) #27, !inline_history !1171
  %i.mz = load ptr, ptr %35, align 8, !tbaa !38
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(16) %35) #27, !inline_history !1171
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.nc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138, !noalias !1112
  %.not.i.i.i60.i = icmp eq i8 %i.nc, 0
  br i1 %.not.i.i.i60.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nd = add nsw i32 %i.mu, -1
  store i32 %i.nd, ptr %i.mr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.ne = atomicrmw volatile add ptr %i.mr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i.i = phi i32 [ %i.mu, %bb.do ], [ %i.ne, %bb.dp ]
  %i.nf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.nf, label %bb.dq, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !72

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #27
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dm, %_ZN5arrow6ResultINS_8FieldRefEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !1112
  br label %bb.dr

.body.i:                                          ; preds = %_ZN5arrow8FieldRefD2Ev.exit55.i, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body54.i, %_ZN5arrow8FieldRefD2Ev.exit55.i ], [ %i.iz, %bb.br ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !1112
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1112
  br label %_ZN5arrow8FieldRefD2Ev.exit42.i

bb.dr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.as
  %i.ng = load ptr, ptr %17, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %bb.ds, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !127

bb.ds:                                            ; preds = %bb.dr
  %i.ni = load ptr, ptr %i.bp, align 8, !tbaa !49, !noalias !1112 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 4 uses
  %i.nk = load atomic i64, ptr %i.nj acquire, align 8 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, 4294967297
  %i.nm = trunc i64 %i.nk to i32                  ; 2 uses
  br i1 %i.nl, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.nj, align 8, !tbaa !157
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  store i32 0, ptr %i.nn, align 4, !tbaa !159
  %i.no = load ptr, ptr %i.ni, align 8, !tbaa !38
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #27, !inline_history !1172
  %i.nr = load ptr, ptr %i.ni, align 8, !tbaa !38
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #27, !inline_history !1172
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.nu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138, !noalias !1112
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.nu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nv = add nsw i32 %i.nm, -1
  store i32 %i.nv, ptr %i.nj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.nw = atomicrmw volatile add ptr %i.nj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.nm, %bb.dw ], [ %i.nw, %bb.dx ]
  %i.nx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.nx, label %bb.dy, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, !prof !72

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i: ; preds = %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.du
  %.pr.i61.i.pr = load ptr, ptr %17, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i.i62.i = icmp eq ptr %.pr.i61.i.pr, null
  br i1 %.not.i.i62.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !155

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %bb.dr
  %i.ny = phi ptr [ %.pr.i61.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i ], [ %i.ng, %bb.dr ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !128, !range !120, !noundef !121
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i: ; preds = %bb.ds, %bb.dz, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1112
  %i.oc = load ptr, ptr %i.bg, align 8, !tbaa !49, !noalias !1112 ; 8 uses
  %.not.i.i63.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i63.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 4 uses
  %i.oe = load atomic i64, ptr %i.od acquire, align 8 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 4294967297
  %i.og = trunc i64 %i.oe to i32                  ; 2 uses
  br i1 %i.of, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.od, align 8, !tbaa !157
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  store i32 0, ptr %i.oh, align 4, !tbaa !159
  %i.oi = load ptr, ptr %i.oc, align 8, !tbaa !38
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #27, !inline_history !1171
  %i.ol = load ptr, ptr %i.oc, align 8, !tbaa !38
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #27, !inline_history !1171
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i

bb.ec:                                            ; preds = %bb.ea
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138, !noalias !1112
  %.not.i.i.i64.i = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i64.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.op = add nsw i32 %i.og, -1
  store i32 %i.op, ptr %i.od, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

bb.ee:                                            ; preds = %bb.ec
  %i.oq = atomicrmw volatile add ptr %i.od, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i66.i = phi i32 [ %i.og, %bb.ed ], [ %i.oq, %bb.ee ]
  %i.or = icmp eq i32 %.0.i.i.i.i66.i, 1
  br i1 %i.or, label %bb.ef, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i, !prof !72

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #27
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65.i, %bb.eb, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1112
  br label %bb.eg

_ZN5arrow8FieldRefD2Ev.exit42.i:                  ; preds = %.body.i, %bb.at
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %i.fz, %bb.at ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1112
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !1112
  br label %.body45

bb.eg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67.i, %bb.ah
  %i.os = load ptr, ptr %14, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.eh, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i68.i, !prof !127

bb.eh:                                            ; preds = %bb.eg
  %i.ou = load ptr, ptr %i.bh, align 8, !tbaa !49, !noalias !1112 ; 8 uses
  %.not.i.i.i.i.i69.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i.i69.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 4 uses
  %i.ow = load atomic i64, ptr %i.ov acquire, align 8 ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 4294967297
  %i.oy = trunc i64 %i.ow to i32                  ; 2 uses
  br i1 %i.ox, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.ov, align 8, !tbaa !157
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  store i32 0, ptr %i.oz, align 4, !tbaa !159
  %i.pa = load ptr, ptr %i.ou, align 8, !tbaa !38
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8
  call void %i.pc(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #27, !inline_history !1172
  %i.pd = load ptr, ptr %i.ou, align 8, !tbaa !38
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #27, !inline_history !1172
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i

bb.ek:                                            ; preds = %bb.ei
  %i.pg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138, !noalias !1112
  %.not.i.i.i.i.i.i70.i = icmp eq i8 %i.pg, 0
  br i1 %.not.i.i.i.i.i.i70.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ph = add nsw i32 %i.oy, -1
  store i32 %i.ph, ptr %i.ov, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i71.i

bb.em:                                            ; preds = %bb.ek
  %i.pi = atomicrmw volatile add ptr %i.ov, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i71.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i71.i: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i.i.i.i72.i = phi i32 [ %i.oy, %bb.el ], [ %i.pi, %bb.em ]
  %i.pj = icmp eq i32 %.0.i.i.i.i.i.i.i72.i, 1
  br i1 %i.pj, label %bb.en, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i, !prof !72

bb.en:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i71.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i: ; preds = %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i71.i, %bb.ej
  %.pr.i74.i.pr = load ptr, ptr %14, align 8, !tbaa !124, !noalias !1112 ; 2 uses
  %.not.i.i75.i = icmp eq ptr %.pr.i74.i.pr, null
  br i1 %.not.i.i75.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i68.i, !prof !155

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i68.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i, %bb.eg
  %i.pk = phi ptr [ %.pr.i74.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i ], [ %i.os, %bb.eg ]
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !128, !range !120, !noundef !121
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i68.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i: ; preds = %bb.eh, %bb.eo, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i68.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !1112
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit76.i, %_ZN5arrow6StatusD2Ev.exit30.i, %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.po = load ptr, ptr %32, align 8, !tbaa !124
  %i.pp = icmp eq ptr %i.po, null                 ; 2 uses
  br i1 %i.pp, label %bb.es, label %bb.eq, !prof !127

bb.eq:                                            ; preds = %bb.ep
  call void @_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #27
  br label %bb.ff

bb.er:                                            ; preds = %bb.x, %bb.r
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.es:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.pr = load i8, ptr %i.ci, align 8, !tbaa !192, !noalias !1179 ; 2 uses
  switch i8 %i.pr, label %bb.ex [
    i8 0, label %bb.et
    i8 1, label %bb.eu
    i8 2, label %bb.ew
    i8 -1, label %bb.ey
  ]

bb.et:                                            ; preds = %bb.es
  %i.ps = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !295, !noalias !1179
  store <2 x ptr> %i.ps, ptr %33, align 16, !tbaa !295, !alias.scope !1179
  %i.pt = load ptr, ptr %i.co, align 8, !tbaa !207, !noalias !1179
  store ptr %i.pt, ptr %i.cu, align 16, !tbaa !207, !alias.scope !1179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.cm, i8 0, i64 24, i1 false), !noalias !1179
  br label %bb.ey

bb.eu:                                            ; preds = %bb.es
  store ptr %i.cu, ptr %33, align 16, !tbaa !156, !alias.scope !1179
  %i.pu = load ptr, ptr %i.cm, align 8, !tbaa !137, !noalias !1179 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.co
  br i1 %i.pv, label %bb.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48

bb.ev:                                            ; preds = %bb.eu
  %i.pw = load i64, ptr %i.cn, align 8, !tbaa !139, !noalias !1179 ; 3 uses
  %i.px = icmp ult i64 %i.pw, 16
  call void @llvm.assume(i1 %i.px)
  %i.py = add nuw nsw i64 %i.pw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.py, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48: ; preds = %bb.eu
  store ptr %i.pu, ptr %33, align 16, !tbaa !137, !alias.scope !1179
  %i.pz = load i64, ptr %i.co, align 8, !tbaa !138, !noalias !1179
  store i64 %i.pz, ptr %i.cu, align 16, !tbaa !138, !alias.scope !1179
  %.pre.i.i = load i64, ptr %i.cn, align 8, !tbaa !139, !noalias !1179
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i49

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48, %bb.ev
  %i.qa = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 ], [ %i.pw, %bb.ev ]
  store i64 %i.qa, ptr %i.ct, align 8, !tbaa !139, !alias.scope !1179
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !137, !noalias !1179
  store i64 0, ptr %i.cn, align 8, !tbaa !139, !noalias !1179
  store i8 0, ptr %i.co, align 8, !tbaa !138, !noalias !1179
  br label %bb.ey

bb.ew:                                            ; preds = %bb.es
  %i.qb = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !297, !noalias !1179
  store <2 x ptr> %i.qb, ptr %33, align 16, !tbaa !297, !alias.scope !1179
  %i.qc = load ptr, ptr %i.co, align 8, !tbaa !215, !noalias !1179
  store ptr %i.qc, ptr %i.cu, align 16, !tbaa !215, !alias.scope !1179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.cm, i8 0, i64 24, i1 false), !noalias !1179
  br label %bb.ey

bb.ex:                                            ; preds = %bb.es
  unreachable

bb.ey:                                            ; preds = %bb.ew, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i49, %bb.et, %bb.es
  store i8 %i.pr, ptr %i.cv, align 16, !tbaa !192, !alias.scope !1179
  %i.qd = load i32, ptr %i.cj, align 8, !tbaa !194, !noalias !1179
  store i32 %i.qd, ptr %i.cw, align 8, !tbaa !194, !alias.scope !1179
  %i.qe = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(44) %33)
          to label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit unwind label %bb.gc ; 0 uses

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ey
  %i.qf = load i8, ptr %i.cv, align 16, !tbaa !192
  switch i8 %i.qf, label %bb.fe [
    i8 -1, label %_ZN5arrow7compute7SortKeyD2Ev.exit
    i8 0, label %bb.ez
    i8 1, label %bb.fb
    i8 2, label %bb.fc
  ], !prof !203

bb.ez:                                            ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit
  %i.qg = load ptr, ptr %33, align 16, !tbaa !204 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute7SortKeyD2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qh = load ptr, ptr %i.cu, align 16, !tbaa !207
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = ptrtoint ptr %i.qg to i64
  %i.qk = sub i64 %i.qi, %i.qj
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.qk) #25, !inline_history !208
  br label %_ZN5arrow7compute7SortKeyD2Ev.exit

bb.fb:                                            ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit
  %i.ql = load ptr, ptr %33, align 16, !tbaa !137 ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.cu
  br i1 %i.qm, label %_ZN5arrow7compute7SortKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.fb
  %i.qn = load i64, ptr %i.cu, align 16, !tbaa !138
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #25, !inline_history !208
  br label %_ZN5arrow7compute7SortKeyD2Ev.exit

bb.fc:                                            ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit
  %i.qp = load ptr, ptr %33, align 16, !tbaa !209 ; 3 uses
  %i.qq = load ptr, ptr %i.ct, align 8, !tbaa !212 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.qp, %i.qq
  br i1 %.not.i.i2.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fc, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.qr, %.lr.ph.i.i ], [ %i.qp, %bb.fc ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !213
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.qr, %i.qq
  br i1 %.not.i.i.i.i66, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i67 = load ptr, ptr %33, align 16, !tbaa !209
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, %bb.fc
  %i.qs = phi ptr [ %.pre.i.i67, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i ], [ %i.qp, %bb.fc ] ; 3 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i.i.i68, label %_ZN5arrow7compute7SortKeyD2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i
  %i.qt = load ptr, ptr %i.cu, align 16, !tbaa !215
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qs to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qw) #25, !inline_history !216
  br label %_ZN5arrow7compute7SortKeyD2Ev.exit

bb.fe:                                            ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit
  unreachable

_ZN5arrow7compute7SortKeyD2Ev.exit:               ; preds = %bb.fb, %bb.ez, %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, %bb.fd, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE9push_backEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN5arrow7compute7SortKeyD2Ev.exit, %bb.eq
  %i.qx = load ptr, ptr %32, align 8, !tbaa !124  ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.fg, label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.thread.i, !prof !127

bb.fg:                                            ; preds = %bb.ff
  %i.qz = load i8, ptr %i.ci, align 8, !tbaa !192
  switch i8 %i.qz, label %bb.fm [
    i8 -1, label %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit
    i8 0, label %bb.fh
    i8 1, label %bb.fj
    i8 2, label %bb.fk
  ], !prof !203

bb.fh:                                            ; preds = %bb.fg
  %i.ra = load ptr, ptr %i.cm, align 8, !tbaa !204 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i80, label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.rb = load ptr, ptr %i.co, align 8, !tbaa !207
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.ra to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.re) #25, !inline_history !208
  br label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i

bb.fj:                                            ; preds = %bb.fg
  %i.rf = load ptr, ptr %i.cm, align 8, !tbaa !137 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.co
  br i1 %i.rg, label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i78: ; preds = %bb.fj
  %i.rh = load i64, ptr %i.co, align 8, !tbaa !138
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #25, !inline_history !208
  br label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i

bb.fk:                                            ; preds = %bb.fg
  %i.rj = load ptr, ptr %i.cm, align 8, !tbaa !209 ; 3 uses
  %i.rk = load ptr, ptr %i.cn, align 8, !tbaa !212 ; 2 uses
  %.not.i.i2.i.i69 = icmp eq ptr %i.rj, %i.rk
  br i1 %.not.i.i2.i.i69, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i75, label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %bb.fk, %.lr.ph.i.i70
  %.0.i.i3.i.i71 = phi ptr [ %i.rl, %.lr.ph.i.i70 ], [ %i.rj, %bb.fk ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i71), !inline_history !213
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i71, i64 40 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.rl, %i.rk
  br i1 %.not.i.i.i.i72, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i73, label %.lr.ph.i.i70, !llvm.loop !214

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i73: ; preds = %.lr.ph.i.i70
  %.pre.i.i74 = load ptr, ptr %i.cm, align 8, !tbaa !209
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i75

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i75: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i73, %bb.fk
  %i.rm = phi ptr [ %.pre.i.i74, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i73 ], [ %i.rj, %bb.fk ] ; 3 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i.i76, label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i75
  %i.rn = load ptr, ptr %i.co, align 8, !tbaa !215
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rm to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rm, i64 noundef %i.rq) #25, !inline_history !216
  br label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i

bb.fm:                                            ; preds = %bb.fg
  unreachable

_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i: ; preds = %bb.fj, %bb.fh, %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i78, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i75, %bb.fl
  store i8 -1, ptr %i.ci, align 8, !tbaa !192
  %.pr.i.pre = load ptr, ptr %32, align 8, !tbaa !124 ; 2 uses
  %.not.i.i53 = icmp eq ptr %.pr.i.pre, null
  br i1 %.not.i.i53, label %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit, label %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.thread.i, !prof !155

_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i, %bb.ff
  %i.rr = phi ptr [ %.pr.i.pre, %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i ], [ %i.qx, %bb.ff ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !128, !range !120, !noundef !121
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(56) %32) #27
  br label %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit

_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit:  ; preds = %bb.fg, %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_7compute7SortKeyEE7DestroyEv.exit.thread.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.rv = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 8 uses
  %.not.i.i54 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i54, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 4 uses
  %i.rx = load atomic i64, ptr %i.rw acquire, align 8 ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 4294967297
  %i.rz = trunc i64 %i.rx to i32                  ; 2 uses
  br i1 %i.ry, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.rw, align 8, !tbaa !157
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 0, ptr %i.sa, align 4, !tbaa !159
  %i.sb = load ptr, ptr %i.rv, align 8, !tbaa !38
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #27, !inline_history !406
  %i.se = load ptr, ptr %i.rv, align 8, !tbaa !38
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #27, !inline_history !406
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fq:                                            ; preds = %bb.fo
  %i.sh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i55 = icmp eq i8 %i.sh, 0
  br i1 %.not.i.i.i55, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.si = add nsw i32 %i.rz, -1
  store i32 %i.si, ptr %i.rw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.sj = atomicrmw volatile add ptr %i.rw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i = phi i32 [ %i.rz, %bb.fr ], [ %i.sj, %bb.fs ]
  %i.sk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.sk, label %bb.ft, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #27
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev.exit, %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.sl = load ptr, ptr %30, align 8, !tbaa !124  ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.fu, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !127

bb.fu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sn = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 8 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i.i57, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %i.so, align 8, !tbaa !157
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !159
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !38
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27, !inline_history !407
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !38
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27, !inline_history !407
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.fx:                                            ; preds = %bb.fv
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i.i.i58 = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i58, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fz, %bb.fy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sr, %bb.fy ], [ %i.tb, %bb.fz ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tc, label %bb.ga, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !72

bb.ga:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.ga, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fw
  %.pr.i59.pr = load ptr, ptr %30, align 8, !tbaa !124 ; 2 uses
  %.not.i.i60 = icmp eq ptr %.pr.i59.pr, null
  br i1 %.not.i.i60, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !155

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.td = phi ptr [ %.pr.i59.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.sl, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !128, !range !120, !noundef !121
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %bb.fu, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br i1 %i.pp, label %bb.m, label %.loopexit

bb.gc:                                            ; preds = %bb.ey
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %33)
          to label %_ZN5arrow7compute7SortKeyD2Ev.exit62 unwind label %bb.gd, !inline_history !75

bb.gd:                                            ; preds = %bb.gc
  %i.ti = landingpad { ptr, i32 }
          catch ptr null
  %i.tj = extractvalue { ptr, i32 } %i.ti, 0
  call void @__clang_call_terminate(ptr %i.tj) #26, !inline_history !75
  unreachable

_ZN5arrow7compute7SortKeyD2Ev.exit62:             ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @_ZN5arrow6ResultINS_7compute7SortKeyEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %.body45

.body45:                                          ; preds = %bb.er, %_ZN5arrow8FieldRefD2Ev.exit42.i, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, %_ZN5arrow7compute7SortKeyD2Ev.exit62
  %.pn.pn = phi { ptr, i32 } [ %i.th, %_ZN5arrow7compute7SortKeyD2Ev.exit62 ], [ %i.pq, %bb.er ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %.pn.pn.pn.i, %_ZN5arrow8FieldRefD2Ev.exit42.i ], [ %i.fa, %bb.ai ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.ge

bb.ge:                                            ; preds = %.body45, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body45 ], [ %i.df, %bb.p ]
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.gi

.critedge35.loopexit:                             ; preds = %bb.m
  %i.tk = load <2 x ptr>, ptr %29, align 16, !tbaa !61
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.pre12 = load ptr, ptr %.phi.trans.insert11, align 16, !tbaa !63
  br label %.critedge35

.critedge35:                                      ; preds = %.critedge35.loopexit, %bb.l
  %i.tl = phi ptr [ %.pre12, %.critedge35.loopexit ], [ null, %bb.l ]
  %i.tm = phi <2 x ptr> [ %i.tk, %.critedge35.loopexit ], [ splat (ptr null), %bb.l ]
  store ptr null, ptr %0, align 8, !tbaa !124
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.tm, ptr %i.tn, align 8, !tbaa !61
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.tl, ptr %i.to, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, %.critedge, %.critedge35
  %i.tp = load ptr, ptr %29, align 16, !tbaa !71  ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.tp, %i.tr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.loopexit, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.tu, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i ], [ %i.tp, %.loopexit ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i unwind label %bb.gf, !inline_history !75

bb.gf:                                            ; preds = %.lr.ph.i.i.i63
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  call void @__clang_call_terminate(ptr %i.tt) #26, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i63
  %i.tu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.tu, %i.tr
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i63, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i
  %.pr.i65 = load ptr, ptr %29, align 16, !tbaa !71
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.tv = phi ptr [ %.pr.i65, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.tp, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.tv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, label %bb.gg

bb.gg:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i
  %i.tw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.tx = load ptr, ptr %i.tw, align 16, !tbaa !63
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tv to i64
  %i.ua = sub i64 %i.ty, %i.tz
  call void @_ZdlPvm(ptr noundef nonnull %i.tv, i64 noundef %i.ua) #25
  br label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.gh

bb.gh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.gi:                                            ; preds = %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn.pn.pn, %bb.ge ]
  resume { ptr, i32 } %.pn32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt6vectorINS_7compute7SortKeyESaIS3_EEE7DestroyEv.exit.thread, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #26, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
end_hunk_0
