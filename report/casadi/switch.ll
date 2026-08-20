inline.NumInlined: 1343
inline.NumDeleted: 507
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6casadi6Switch9disp_moreERSo:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.k, i64 noundef %i.m) ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.16, i64 noundef 2) ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not12 = icmp eq ptr %i.r, %i.s
  br i1 %.not12, label %._crit_edge, label %.split.peel

.split.peel:                                      ; preds = %bb.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6casadi8Function4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.u, i64 noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 8
  br i1 %i.ad, label %.split, label %._crit_edge

._crit_edge:                                      ; preds = %.split, %.split.peel, %bb.c
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 3) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1336
  br label %bb.d

.split:                                           ; preds = %.split.peel, %.split
  %.011 = phi i64 [ %i.ao, %.split ], [ 1, %.split.peel ] ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 2) ; 0 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011
  %i.aj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6casadi8Function4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !33
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ak, i64 noundef %i.am) ; 0 uses
  %i.ao = add nuw nsw i64 %.011, 1                ; 2 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %.split, label %._crit_edge, !llvm.loop !215

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.sink20 = phi ptr [ %i.af, %._crit_edge ], [ %i.p, %bb.b ]
  %.sink = phi ptr [ %1, %._crit_edge ], [ %i.n, %bb.b ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6casadi8Function4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sink20) ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !33
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.sink, ptr noundef %i.ax, i64 noundef %i.az) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6casadi8Function4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi6Switch20codegen_declarationsERNS_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(1346) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = phi i64 [ %i.i, %bb.a ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.06 = phi i64 [ 0, %bb.a ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.m = icmp ult i64 %.06, %i.k
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06
  %i.o = select i1 %i.m, ptr %i.n, ptr %i.c
  call void @_ZN6casadi13CodeGenerator14add_dependencyB5cxx11ERKNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.j, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = add nuw nsw i64 %.06, 1
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %.not.not = icmp ult i64 %.06, %i.z
  br i1 %.not.not, label %bb.c, label %bb.b, !llvm.loop !217
}

declare void @_ZN6casadi13CodeGenerator14add_dependencyB5cxx11ERKNS_8FunctionE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi6Switch7eval_sxEPPKNS_6SXElemEPPS1_PxS5_Pvbb(ptr noundef nonnull align 8 dereferenceable(1346) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, i1 zeroext %6, i1 zeroext %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %10 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %11 = alloca %"class.std::vector.136", align 8  ; 11 uses
  %12 = alloca %"class.std::allocator.138", align 1 ; 3 uses
  %13 = alloca %"class.casadi::SXElem", align 8   ; 8 uses
  %14 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %15 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = tail call noundef i64 @_ZNK6casadi16FunctionInternal7nnz_outEv(ptr noundef nonnull align 8 dereferenceable(1312) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.h = load i64, ptr %i.d, align 8, !tbaa !151  ; 5 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %.noexc156 unwind label %bb.d  ; 5 uses

.noexc156:                                        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !218
  %i.m = add nsw i64 %i.h, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit, label %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc156
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !218
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc156, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.11.0 = phi ptr [ %i.l, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc156 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.0207.0 = phi ptr [ %i.k, %_ZSt6fill_nIPPN6casadi6SXElemEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc156 ], [ null, %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %.not144318.not = icmp eq i64 %i.v, -8
  br i1 %.not144318.not, label %.critedge, label %.lr.ph321

.lr.ph321:                                        ; preds = %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EEC2EmRKS3_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6casadi6SXElemESaIS2_EED2Ev.exit

bb.e:                                             ; preds = %.lr.ph321, %bb.bh
  %.0111319 = phi i64 [ 0, %.lr.ph321 ], [ %i.ip, %bb.bh ] ; 4 uses
  %i.ad = icmp eq i64 %.0111319, 0                ; 3 uses
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !151 ; 5 uses
  br i1 %i.ad, label %bb.f, label %.preheader235

.preheader235:                                    ; preds = %bb.e
  %.not325 = icmp eq i64 %i.ae, 0
  br i1 %.not325, label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader235
  %i.af = load ptr, ptr %11, align 8, !tbaa !218  ; 2 uses
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !218
  %i.ah = icmp eq ptr %i.af, %i.ag
  %spec.select.i157 = select i1 %i.ah, ptr null, ptr %i.af
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  switch i64 %i.ae, label %bb.g [
    i64 0, label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit
    i64 1, label %bb.h
  ], !prof !220

bb.g:                                             ; preds = %bb.f
  %.idx.i.i = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.0207.0, ptr align 8 %2, i64 %.idx.i.i, i1 false)
  br label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %2, align 8, !tbaa !218
  store ptr %i.ai, ptr %.sroa.0207.0, align 8, !tbaa !218
  br label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit
  %.0106297 = phi i64 [ %i.at, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.0107296 = phi ptr [ %i.as, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ], [ %spec.select.i157, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0207.0, i64 %.0106297
  store ptr %.0107296, ptr %i.aj, align 8, !tbaa !218
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !152 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %.not.i.i.i.i158 = icmp ult i64 %.0106297, %i.ap
  br i1 %.not.i.i.i.i158, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.68, i64 noundef %.0106297, i64 noundef %i.ap) #21
          to label %.noexc159 unwind label %.loopexit.split-lp237

.noexc159:                                        ; preds = %bb.i
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i: ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0106297
  %i.ar = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit unwind label %.loopexit236

_ZNK6casadi16FunctionInternal7nnz_outEx.exit:     ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %i.as = getelementptr inbounds [8 x i8], ptr %.0107296, i64 %i.ar
  %i.at = add nuw nsw i64 %.0106297, 1            ; 2 uses
  %i.au = load i64, ptr %i.d, align 8, !tbaa !151 ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit, !llvm.loop !222

.loopexit236:                                     ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %lpad.loopexit238 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217.thread

.loopexit.split-lp237:                            ; preds = %bb.i
  %lpad.loopexit.split-lp239 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217.thread

_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit: ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit, %.preheader235, %bb.f, %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ae, %bb.g ], [ 0, %.preheader235 ], [ %i.ae, %bb.f ], [ 1, %bb.h ], [ %i.au, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ] ; 2 uses
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !150
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  switch i64 %i.ay, label %bb.j [
    i64 0, label %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit
    i64 1, label %bb.k
  ], !prof !220

bb.j:                                             ; preds = %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit
  %.idx.i.i161 = shl nuw nsw i64 %i.ay, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr nonnull align 8 %i.z, i64 %.idx.i.i161, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !151
  br label %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit

bb.k:                                             ; preds = %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !218
  store ptr %i.az, ptr %i.c, align 8, !tbaa !218
  br label %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit

_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit: ; preds = %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit, %bb.k, %bb.j
  %i.ba = phi i64 [ %i.aw, %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit ], [ %i.aw, %bb.k ], [ %.pre, %bb.j ] ; 2 uses
  switch i64 %i.ba, label %bb.l [
    i64 0, label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168
    i64 1, label %bb.m
  ], !prof !220

bb.l:                                             ; preds = %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit
  %.idx.i.i164 = shl nuw nsw i64 %i.ba, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr align 8 %.sroa.0207.0, i64 %.idx.i.i164, i1 false)
  br label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168

bb.m:                                             ; preds = %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit
  %i.bb = load ptr, ptr %.sroa.0207.0, align 8, !tbaa !218
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !218
  br label %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168

_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168: ; preds = %_ZSt6copy_nIPPKN6casadi6SXElemEmS4_ET1_T_T0_S5_.exit, %bb.m, %bb.l
  br i1 %i.ad, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %.0111319
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168, %bb.n
  %i.bf = phi ptr [ %i.be, %bb.n ], [ %i.aa, %_ZSt6copy_nIPPN6casadi6SXElemEmS3_ET1_T_T0_S4_.exit168 ] ; 4 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !150
  %.not326 = icmp eq i64 %i.bg, 1
  br i1 %.not326, label %.preheader234, label %.lr.ph300

.preheader234:                                    ; preds = %bb.y, %bb.o
  %.0108.lcssa = phi ptr [ %4, %bb.o ], [ %.2, %bb.y ] ; 2 uses
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !151
  %.not327 = icmp eq i64 %i.bh, 0
  br i1 %.not327, label %._crit_edge, label %.lr.ph303

.lr.ph300:                                        ; preds = %bb.o, %bb.y
  %.0105299 = phi i64 [ %i.du, %bb.y ], [ 0, %bb.o ] ; 4 uses
  %.0108298 = phi ptr [ %.2, %bb.y ], [ %4, %bb.o ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0105299 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !218
  %.not148 = icmp eq ptr %i.bj, null
  br i1 %.not148, label %bb.y, label %bb.p

bb.p:                                             ; preds = %.lr.ph300
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi8Function11sparsity_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %.0105299)
          to label %bb.q unwind label %bb.w       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !152
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0105299
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %i.bo, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %bb.t unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0108298, i64 %i.bp ; 4 uses
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !218
  %i.bs = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %bb.u unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bt = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %bb.v unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !159 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !159
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = icmp sgt i64 %i.bv, 0
  br i1 %i.ce, label %.lr.ph55.preheader.i, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit

.lr.ph55.preheader.i:                             ; preds = %bb.v
  %.pre.i = load i64, ptr %i.cb, align 8, !tbaa !159
  br label %.lr.ph55.i

.loopexit.i:                                      ; preds = %.noexc172, %._crit_edge49.i
  %i.cf = phi i64 [ %i.dh, %._crit_edge49.i ], [ %i.dq, %.noexc172 ]
  %exitcond.not.i = icmp eq i64 %i.ci, %i.bv
  br i1 %exitcond.not.i, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit, label %.lr.ph55.i, !llvm.loop !223

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %i.cg = phi i64 [ %i.cf, %.loopexit.i ], [ %.pre.i, %.lr.ph55.preheader.i ] ; 2 uses
  %.04153.i = phi i64 [ %i.ci, %.loopexit.i ], [ 0, %.lr.ph55.preheader.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.04153.i
  %i.ci = add nuw nsw i64 %.04153.i, 1            ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ci ; 4 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !159 ; 2 uses
  %i.cl = icmp slt i64 %i.cg, %i.ck
  br i1 %i.cl, label %.lr.ph.i, label %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZNK6casadi6Switch7eval_sxEPPKNS_6SXElemEPPS1_PxS5_Pvbb:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds [8 x i8], ptr %.3301, i64 %i.ef
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

bb.af:                                            ; preds = %bb.aa, %bb.ac
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

bb.ag:                                            ; preds = %bb.ab, %bb.ad, %.lr.ph303
  %.5 = phi ptr [ %.3301, %.lr.ph303 ], [ %i.eg, %bb.ad ], [ %.3301, %bb.ab ] ; 2 uses
  %i.ej = add nuw nsw i64 %.0104302, 1            ; 2 uses
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !151
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph303, label %._crit_edge, !llvm.loop !228

bb.ah:                                            ; preds = %._crit_edge
  %.not = icmp eq i32 %i.dy, 0
  br i1 %.not, label %.preheader233, label %.critedge

.preheader233:                                    ; preds = %bb.ah
  %i.em = load i64, ptr %i.d, align 8, !tbaa !151
  %.not328 = icmp eq i64 %i.em, 0
  br i1 %.not328, label %._crit_edge307, label %.lr.ph306

bb.ai:                                            ; preds = %._crit_edge
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

._crit_edge307:                                   ; preds = %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196, %.preheader233
  br i1 %i.ad, label %bb.bh, label %bb.aq

.lr.ph306:                                        ; preds = %.preheader233, %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196
  %.0103305 = phi i64 [ %i.gy, %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196 ], [ 0, %.preheader233 ] ; 5 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0103305 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !218
  %.not141 = icmp eq ptr %i.ep, null
  br i1 %.not141, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph306
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi8Function12sparsity_outEx(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %.0103305)
          to label %bb.ak unwind label %bb.ap     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0103305 ; 2 uses
  %i.et = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  br i1 %i.et, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !218
  %i.ev = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0207.0, i64 %.0103305
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !218
  %i.ey = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !159 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !159
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 4 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = icmp sgt i64 %i.fa, 0
  br i1 %i.fj, label %.lr.ph55.preheader.i177, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196

.lr.ph55.preheader.i177:                          ; preds = %bb.ao
  %.pre.i178 = load i64, ptr %i.fg, align 8, !tbaa !159
  br label %.lr.ph55.i179

.loopexit.i183:                                   ; preds = %.noexc195, %._crit_edge49.i182
  %i.fk = phi i64 [ %i.gm, %._crit_edge49.i182 ], [ %i.gv, %.noexc195 ]
  %exitcond.not.i184 = icmp eq i64 %i.fn, %i.fa
  br i1 %exitcond.not.i184, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196, label %.lr.ph55.i179, !llvm.loop !223

.lr.ph55.i179:                                    ; preds = %.loopexit.i183, %.lr.ph55.preheader.i177
  %i.fl = phi i64 [ %i.fk, %.loopexit.i183 ], [ %.pre.i178, %.lr.ph55.preheader.i177 ] ; 2 uses
  %.04153.i180 = phi i64 [ %i.fn, %.loopexit.i183 ], [ 0, %.lr.ph55.preheader.i177 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.04153.i180
  %i.fn = add nuw nsw i64 %.04153.i180, 1         ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fn ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !159 ; 2 uses
  %i.fq = icmp slt i64 %i.fl, %i.fp
  br i1 %i.fq, label %.lr.ph.i191, label %._crit_edge.i181

.lr.ph.i191:                                      ; preds = %.lr.ph55.i179, %.noexc193
  %.044.i192 = phi i64 [ %i.fv, %.noexc193 ], [ %i.fl, %.lr.ph55.i179 ] ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.044.i192
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !159
  %i.ft = getelementptr inbounds [8 x i8], ptr %.3.lcssa, i64 %i.fs
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSEd(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, double noundef 0.000000e+00)
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc193:                                        ; preds = %.lr.ph.i191
  %i.fv = add nsw i64 %.044.i192, 1               ; 2 uses
  %i.fw = load i64, ptr %i.fo, align 8, !tbaa !159 ; 2 uses
  %i.fx = icmp slt i64 %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph.i191, label %._crit_edge.i181, !llvm.loop !224

._crit_edge.i181:                                 ; preds = %.noexc193, %.lr.ph55.i179
  %i.fy = phi i64 [ %i.fp, %.lr.ph55.i179 ], [ %i.fw, %.noexc193 ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.04153.i180
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !159 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fn ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !159
  %i.gd = icmp slt i64 %i.ga, %i.gc
  br i1 %i.gd, label %.lr.ph48.i187, label %._crit_edge49.i182

.lr.ph48.i187:                                    ; preds = %._crit_edge.i181, %.noexc194
  %.146.i188 = phi i64 [ %i.gj, %.noexc194 ], [ %i.ga, %._crit_edge.i181 ] ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.146.i188
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.146.i188
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !159
  %i.gh = getelementptr inbounds [8 x i8], ptr %.3.lcssa, i64 %i.gg
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc194 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc194:                                        ; preds = %.lr.ph48.i187
  %i.gj = add nsw i64 %.146.i188, 1               ; 2 uses
  %i.gk = load i64, ptr %i.gb, align 8, !tbaa !159
  %i.gl = icmp slt i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph48.i187, label %._crit_edge49.loopexit.i189, !llvm.loop !225

._crit_edge49.loopexit.i189:                      ; preds = %.noexc194
  %.pre57.i190 = load i64, ptr %i.fo, align 8, !tbaa !159
  br label %._crit_edge49.i182

._crit_edge49.i182:                               ; preds = %._crit_edge49.loopexit.i189, %._crit_edge.i181
  %i.gm = phi i64 [ %.pre57.i190, %._crit_edge49.loopexit.i189 ], [ %i.fy, %._crit_edge.i181 ] ; 2 uses
  %i.gn = load i64, ptr %i.fm, align 8, !tbaa !159 ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.gm
  br i1 %i.go, label %.lr.ph52.i185, label %.loopexit.i183

.lr.ph52.i185:                                    ; preds = %._crit_edge49.i182, %.noexc195
  %.250.i186 = phi i64 [ %i.gu, %.noexc195 ], [ %i.gn, %._crit_edge49.i182 ] ; 3 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.250.i186
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !159
  %i.gr = getelementptr inbounds [8 x i8], ptr %.3.lcssa, i64 %i.gq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.250.i186
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %.noexc195 unwind label %.loopexit ; 0 uses

.noexc195:                                        ; preds = %.lr.ph52.i185
  %i.gu = add nsw i64 %.250.i186, 1               ; 2 uses
  %i.gv = load i64, ptr %i.fo, align 8, !tbaa !159 ; 2 uses
  %i.gw = icmp slt i64 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph52.i185, label %.loopexit.i183, !llvm.loop !226

bb.ap:                                            ; preds = %bb.aj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

.loopexit:                                        ; preds = %.lr.ph52.i185
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph48.i187
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i191
  %lpad.loopexit214 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.an, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp217

_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit196: ; preds = %.loopexit.i183, %bb.ao, %bb.al, %.lr.ph306
  %i.gy = add nuw nsw i64 %.0103305, 1            ; 2 uses
  %i.gz = load i64, ptr %i.d, align 8, !tbaa !151
  %i.ha = icmp ult i64 %i.gy, %i.gz
  br i1 %i.ha, label %.lr.ph306, label %._crit_edge307, !llvm.loop !229

bb.aq:                                            ; preds = %._crit_edge307
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %16 = add nsw i64 %.0111319, -1
  %17 = uitofp nneg i64 %16 to double
  invoke void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %14, double noundef %17)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hb = load ptr, ptr %1, align 8, !tbaa !218
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %13, i64 noundef 21, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.hb)
          to label %_ZN6casadieqERKNS_6SXElemES2_.exit unwind label %bb.at

_ZN6casadieqERKNS_6SXElemES2_.exit:               ; preds = %bb.ar
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !151 ; 2 uses
  %.not329 = icmp eq i64 %i.hc, 0
  br i1 %.not329, label %._crit_edge317, label %.lr.ph316

._crit_edge317:                                   ; preds = %.loopexit232, %_ZN6casadieqERKNS_6SXElemES2_.exit
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.he, %bb.at ], [ %i.hd, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bg

.lr.ph316:                                        ; preds = %_ZN6casadieqERKNS_6SXElemES2_.exit, %.loopexit232
  %i.hf = phi i64 [ %i.im, %.loopexit232 ], [ %i.hc, %_ZN6casadieqERKNS_6SXElemES2_.exit ]
  %.0102315 = phi i64 [ %i.in, %.loopexit232 ], [ 0, %_ZN6casadieqERKNS_6SXElemES2_.exit ] ; 7 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0102315 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !218
  %.not136 = icmp eq ptr %i.hh, null
  br i1 %.not136, label %.loopexit232, label %.preheader

.preheader:                                       ; preds = %.lr.ph316
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.hj = load ptr, ptr %i.x, align 8, !tbaa !152 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3                 ; 2 uses
  %.not.i.i.i.i198308 = icmp ult i64 %.0102315, %i.hn
  br i1 %.not.i.i.i.i198308, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199.lr.ph, label %.preheader._crit_edge

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199.lr.ph: ; preds = %.preheader
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0207.0, i64 %.0102315
  br label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199

.preheader._crit_edge:                            ; preds = %.preheader, %bb.bc
  %.lcssa256 = phi i64 [ %i.ij, %bb.bc ], [ %i.hn, %.preheader ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.68, i64 noundef %.0102315, i64 noundef %.lcssa256) #21
          to label %.noexc200 unwind label %.loopexit.split-lp228

.noexc200:                                        ; preds = %.preheader._crit_edge
  unreachable

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199: ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199.lr.ph, %bb.bc
  %i.hp = phi ptr [ %i.hj, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199.lr.ph ], [ %i.if, %bb.bc ]
  %.0309 = phi i64 [ 0, %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199.lr.ph ], [ %i.id, %bb.bc ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.0102315
  %i.hr = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hq)
          to label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit202 unwind label %.loopexit227

_ZNK6casadi16FunctionInternal7nnz_outEx.exit202:  ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199
  %i.hs = icmp slt i64 %.0309, %i.hr
  br i1 %i.hs, label %bb.av, label %.loopexit232.loopexit

.loopexit227:                                     ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp228:                            ; preds = %.preheader._crit_edge
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.av:                                            ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.ht = load ptr, ptr %i.ho, align 8, !tbaa !218
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.0309
  %i.hv = load ptr, ptr %i.hg, align 8, !tbaa !218
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.0309
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !230
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %.noexc203 unwind label %bb.bd

.noexc203:                                        ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !230
  invoke void @_ZN6casadi6SXElem5unaryExRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %10, i64 noundef 23, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNK6casadi17GenericExpressionINS_6SXElemEEntEv.exit.i unwind label %bb.aw, !noalias !230

_ZNK6casadi17GenericExpressionINS_6SXElemEEntEv.exit.i: ; preds = %.noexc203
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %_ZN6casadi17GenericExpressionINS_6SXElemEE12if_else_zeroERKS1_S4_.exit.i unwind label %bb.ax, !noalias !230

_ZN6casadi17GenericExpressionINS_6SXElemEE12if_else_zeroERKS1_S4_.exit.i: ; preds = %_ZNK6casadi17GenericExpressionINS_6SXElemEEntEv.exit.i
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %15, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bb unwind label %bb.ay

bb.aw:                                            ; preds = %.noexc203
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNK6casadi17GenericExpressionINS_6SXElemEEntEv.exit.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEE12if_else_zeroERKS1_S4_.exit.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.ay ], [ %i.hy, %bb.ax ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.az ], [ %i.hx, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !230
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !230
  br label %.body

bb.bb:                                            ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEE12if_else_zeroERKS1_S4_.exit.i
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #20
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !230
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !230
  %i.ia = load ptr, ptr %i.hg, align 8, !tbaa !218
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.0309
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bc unwind label %bb.be     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.id = add nuw nsw i64 %.0309, 1
  %i.ie = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.if = load ptr, ptr %i.x, align 8, !tbaa !152 ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 3                 ; 2 uses
  %.not.i.i.i.i198 = icmp ult i64 %.0102315, %i.ij
  br i1 %.not.i.i.i.i198, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i199, label %.preheader._crit_edge, !llvm.loop !233

bb.bd:                                            ; preds = %bb.av
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.ba, %bb.be
  %.pn137 = phi { ptr, i32 } [ %i.il, %bb.be ], [ %i.ik, %bb.bd ], [ %.pn.pn.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit227, %.loopexit.split-lp228, %.body
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %.body ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp228 ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  br label %bb.bg

.loopexit232.loopexit:                            ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit202
  %.pre357 = load i64, ptr %i.d, align 8, !tbaa !151
  br label %.loopexit232

.loopexit232:                                     ; preds = %.loopexit232.loopexit, %.lr.ph316
  %i.im = phi i64 [ %.pre357, %.loopexit232.loopexit ], [ %i.hf, %.lr.ph316 ] ; 2 uses
  %i.in = add nuw nsw i64 %.0102315, 1            ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.im
  br i1 %i.io, label %.lr.ph316, label %._crit_edge317, !llvm.loop !234

bb.bg:                                            ; preds = %bb.bf, %bb.au
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %bb.bf ], [ %.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.loopexit.split-lp217

end_hunk_1
begin_hunk_2_@_ZNK6casadi6Switch12codegen_bodyERNS_13CodeGeneratorE:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp eq i64 %i.db, 8                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.dd, ptr %9, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dd, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, i64 11, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.de, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 27
  store i8 0, ptr %i.df, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.k ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i197
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dg, ptr %8, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !48
  %i.dk = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dg)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i197
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i5.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !48
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #22
  br label %.body

bb.m:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.ds, align 8, !tbaa !46
  invoke void @_ZN6casadi13CodeGenerator13add_auxiliaryENS0_9AuxiliaryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(3289) %1, i32 noundef 50, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ea, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dt, %bb.n ] ; 3 uses
  %i.dv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ea, %i.du
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.n
  %i.eb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dt, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !48
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  %i.eg = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.el = select i1 %i.dc, ptr @.str.29, ptr @.str.30
  %i.em = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull %i.el)
  %i.en = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.em, ptr noundef nonnull @.str.31) ; 0 uses
  %i.eo = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 27
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 17
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 17
  %i.go = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 17
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 17
  %i.gr = getelementptr inbounds nuw i8, ptr %30, i64 17
  br label %bb.r

bb.p:                                             ; preds = %bb.bp
  %i.gs = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.57) ; 0 uses
  ret void

bb.q:                                             ; preds = %bb.m
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  br label %.body

.body:                                            ; preds = %bb.l, %bb.k, %bb.q
  %.pn113 = phi { ptr, i32 } [ %i.gt, %bb.q ], [ %i.dl, %bb.k ], [ %i.dl, %bb.l ]
  %i.gu = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %.body
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !24
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.bq

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %bb.bp
  %i.gz = phi i64 [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.tj, %bb.bp ]
  %.068583 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.td, %bb.bp ] ; 7 uses
  %i.ha = sub nsw i64 1, %.068583
  %i.hb = select i1 %i.dc, i64 %i.ha, i64 %.068583 ; 2 uses
  br i1 %i.dc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hc = icmp ult i64 %.068583, %i.gz
  br i1 %i.hc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hd = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.32)
  %i.he = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.hd, i64 noundef %.068583)
  %i.hf = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.he, ptr noundef nonnull @.str.33) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.hg = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.hh = icmp eq i64 %.068583, 1
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hi = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.35) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %bb.u
  %i.hj = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.hk = load ptr, ptr %i.cv, align 8, !tbaa !27 ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 3
  %i.hp = icmp ult i64 %i.hb, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hb
  %i.hr = select i1 %i.hp, ptr %i.hq, ptr %i.eu   ; 5 uses
  %i.hs = call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
  br i1 %i.hs, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !159
  %i.ht = load i64, ptr %i.ev, align 8, !tbaa !150
  %.not584 = icmp eq i64 %i.ht, 1
  br i1 %.not584, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aq, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.hu = load i64, ptr %i.fn, align 8, !tbaa !151
  %.not585 = icmp eq i64 %i.hu, 0
  br i1 %.not585, label %._crit_edge.i.i289, label %.lr.ph579

.lr.ph:                                           ; preds = %bb.y, %bb.aq
  %storemerge576 = phi i64 [ %i.mo, %bb.aq ], [ 0, %bb.y ]
  %i.hv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi8Function11sparsity_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, i64 noundef %storemerge576) ; 4 uses
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !159
  %i.hx = load ptr, ptr %i.ew, align 8, !tbaa !152
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 8      ; 2 uses
  %i.ia = call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
  br i1 %i.ia, label %bb.aq, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.ib = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.aa, label %._crit_edge.i.i208

bb.aa:                                            ; preds = %bb.z
  %i.id = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.37)
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !159
  %i.if = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.id, i64 noundef %i.ie)
  %i.ig = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.if, ptr noundef nonnull @.str.38) ; 0 uses
  br label %bb.aq

._crit_edge.i.i208:                               ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.ex, ptr %10, align 8, !tbaa !34
  store i8 116, ptr %i.ex, align 8, !tbaa !24
  store i64 1, ptr %i.ey, align 8, !tbaa !33
  store i8 0, ptr %i.gj, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.ez, ptr %11, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ez, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, i64 11, i1 false)
  store i64 11, ptr %i.fa, align 8, !tbaa !33
  store i8 0, ptr %i.gk, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.fb, ptr %12, align 8, !tbaa !34
  store i8 42, ptr %i.fb, align 8, !tbaa !24
  store i64 1, ptr %i.fc, align 8, !tbaa !33
  store i8 0, ptr %i.gl, align 1, !tbaa !24
  invoke void @_ZN6casadi13CodeGenerator5localERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %._crit_edge.i.i208
  %i.ih = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.fb
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.ab
  %i.ij = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.il = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ez
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.in = load i64, ptr %i.ez, align 8, !tbaa !24
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ip = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ex
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.ir = load i64, ptr %i.ex, align 8, !tbaa !24
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.it = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.41)
  %i.iu = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
  %i.iv = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.it, i64 noundef %i.iu)
  %i.iw = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.iv, ptr noundef nonnull @.str.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ix = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.37, i64 noundef 5)
          to label %.noexc230 unwind label %bb.an ; 6 uses

.noexc230:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  store ptr %i.fd, ptr %15, align 8, !tbaa !34, !alias.scope !242
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !19 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 5 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

bb.ac:                                            ; preds = %.noexc230
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !33 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fd, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.je, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %.noexc230
  store ptr %i.iy, ptr %15, align 8, !tbaa !19, !alias.scope !242
  %i.jf = load i64, ptr %i.iz, align 8, !tbaa !24
  store i64 %i.jf, ptr %i.fd, align 8, !tbaa !24, !alias.scope !242
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %i.jg = phi i64 [ %i.jc, %bb.ac ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %i.jg, ptr %i.fe, align 8, !tbaa !33, !alias.scope !242
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !19
  store i64 0, ptr %i.jh, align 8, !tbaa !33
  store i8 0, ptr %i.iz, align 8, !tbaa !24
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.ji = load i64, ptr %i.fe, align 8, !tbaa !33, !noalias !245
  %i.jj = icmp eq i64 %i.ji, 4611686018427387903
  br i1 %i.jj, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #21
          to label %.noexc234 unwind label %.loopexit.split-lp416

.noexc234:                                        ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ad
  %i.jk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %.noexc235 unwind label %.loopexit415 ; 6 uses

.noexc235:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ff, ptr %14, align 8, !tbaa !34, !alias.scope !245
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !19 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 5 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

bb.af:                                            ; preds = %.noexc235
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !33 ; 3 uses
  %i.jq = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.jq)
end_hunk_2
