Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_temporal?download=true
inline.NumInlined: 4507
inline.NumDeleted: 1580
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute8internal13AddSimpleCastINS_13TimestampTypeENS_10Time32TypeEEEvNS0_9InputTypeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i12 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i12, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13

bb.u:                                             ; preds = %bb.s
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i14 = phi i32 [ %i.aw, %bb.t ], [ %i.bg, %bb.u ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i14, 1
  br i1 %i.bh, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !61

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #20
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13, %bb.r, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i, label %_ZN5arrow7compute9InputTypeD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bk, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !40
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !4
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !4
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i2.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i4.i = phi i32 [ %i.bn, %bb.z ], [ %i.bx, %bb.aa ]
  %i.by = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.by, label %bb.ab, label %_ZN5arrow7compute9InputTypeD2Ev.exit, !prof !61

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

_ZN5arrow7compute9InputTypeD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.ac:                                            ; preds = %.noexc3.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.ad ], [ %i.bz, %bb.ac ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %.body

.body:                                            ; preds = %bb.b, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.g, %bb.b ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10Time32TypeENS_10Time64TypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !102
  switch i8 %i.b, label %bb.b [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !103

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.11, ptr %i.d, align 8, !tbaa !106
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.10, ptr %i.f, align 8, !tbaa !106
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = load ptr, ptr %3, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !215
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !215
  %i.o = tail call { i32, i64 } @_ZN5arrow4util22GetTimestampConversionENS_8TimeUnit4typeES2_(i32 noundef %i.l, i32 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = extractvalue { i32, i64 } %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !tbaa !113
  tail call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19ShiftTimeIliEENS_6StatusEPNS0_13KernelContextENS_4util16DivideOrMultiplyElRKNS_9ArraySpanEPS9_(ptr dead_on_unwind noalias writable align 8 %0, ptr %.val, i32 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10Time32TypeES3_vE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102
  switch i8 %i.d, label %bb.b [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !103

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.11, ptr %i.f, align 8, !tbaa !106
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @.str.10, ptr %i.h, align 8, !tbaa !106
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.j = load ptr, ptr %3, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !215
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !215
  %i.o = tail call { i32, i64 } @_ZN5arrow4util22GetTimestampConversionENS_8TimeUnit4typeES2_(i32 noundef %i.l, i32 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 1        ; 15 uses
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !113 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !120, !noalias !743 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123, !noalias !743 ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.s ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !120, !noalias !743 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !123, !noalias !743 ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.y ; 21 uses
  %i.ac = icmp eq i64 %i.p, 1
  br i1 %i.ac, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !124, !noalias !743 ; 7 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph47.i.preheader, label %.critedge170.i

.lr.ph47.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check113 = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check113, label %.lr.ph47.i.preheader124, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph47.i.preheader
  %14 = ptrtoaddr ptr %i.aa to i64
  %i.ag = shl i64 %i.y, 2
  %15 = ptrtoaddr ptr %i.v to i64
  %i.ah = shl i64 %i.s, 2
  %16 = add i64 %i.ag, %14
  %i.ai = add i64 %i.ah, %15
  %i.aj = sub i64 %i.ai, %16
  %diff.check111 = icmp ugt i64 %i.aj, -32
  br i1 %diff.check111, label %.lr.ph47.i.preheader124, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck110
  %n.vec115 = and i64 %i.ae, 9223372036854775800  ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next120, %vector.body116 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index117 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load118 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !17, !noalias !743
  %wide.load119 = load <4 x i32>, ptr %i.al, align 4, !tbaa !17, !noalias !743
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index117 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load118, ptr %i.am, align 4, !tbaa !17, !noalias !743
  store <4 x i32> %wide.load119, ptr %i.an, align 4, !tbaa !17, !noalias !743
  %index.next120 = add nuw i64 %index117, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.ao, label %middle.block121, label %vector.body116, !llvm.loop !720

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %i.ae, %n.vec115
  br i1 %cmp.n122, label %.critedge170.i, label %.lr.ph47.i.preheader124

.lr.ph47.i.preheader124:                          ; preds = %vector.memcheck110, %.lr.ph47.i.preheader, %middle.block121
  %.014446.i.ph = phi i64 [ 0, %vector.memcheck110 ], [ 0, %.lr.ph47.i.preheader ], [ %n.vec115, %middle.block121 ] ; 3 uses
  %xtraiter138.a = and i64 %i.ae, 3               ; 2 uses
  %lcmp.mod139.not.a = icmp eq i64 %xtraiter138.a, 0
  br i1 %lcmp.mod139.not.a, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol

.lr.ph47.i.prol:                                  ; preds = %.lr.ph47.i.preheader124, %.lr.ph47.i.prol
  %.014446.i.prol = phi i64 [ %i.as, %.lr.ph47.i.prol ], [ %.014446.i.ph, %.lr.ph47.i.preheader124 ] ; 3 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph47.i.prol ], [ 0, %.lr.ph47.i.preheader124 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014446.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17, !noalias !743
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014446.i.prol
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !17, !noalias !743
  %i.as = add nuw nsw i64 %.014446.i.prol, 1      ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138.a
  br i1 %prol.iter140.cmp.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol, !llvm.loop !721

.lr.ph47.i.prol.loopexit:                         ; preds = %.lr.ph47.i.prol, %.lr.ph47.i.preheader124
  %.014446.i.unr = phi i64 [ %.014446.i.ph, %.lr.ph47.i.preheader124 ], [ %i.as, %.lr.ph47.i.prol ]
  %i.at = sub nsw i64 %.014446.i.ph, %i.ae
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.critedge170.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.014446.i = phi i64 [ %i.bk, %.lr.ph47.i ], [ %.014446.i.unr, %.lr.ph47.i.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014446.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17, !noalias !743
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014446.i
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !17, !noalias !743
  %i.ay = add nuw nsw i64 %.014446.i, 1           ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17, !noalias !743
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !17, !noalias !743
  %i.bc = add nuw nsw i64 %.014446.i, 2           ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17, !noalias !743
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !17, !noalias !743
  %i.bg = add nuw nsw i64 %.014446.i, 3           ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17, !noalias !743
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !17, !noalias !743
  %i.bk = add nuw nsw i64 %.014446.i, 4           ; 2 uses
  %exitcond63.not.i.3 = icmp eq i64 %i.bk, %i.ae
  br i1 %exitcond63.not.i.3, label %.critedge170.i, label %.lr.ph47.i, !llvm.loop !722

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.bl = extractvalue { i32, i64 } %i.o, 0
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 50
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !132, !range !94, !noalias !743, !noundef !95
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.preheader12.i, label %bb.e

.preheader12.i:                                   ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !124, !noalias !743 ; 7 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph45.i, label %.critedge170.i

.lr.ph45.i:                                       ; preds = %.preheader12.i
  %i.bt = trunc i64 %i.p to i32                   ; 6 uses
  %min.iters.check = icmp ult i64 %i.br, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph45.i
  %17 = ptrtoaddr ptr %i.aa to i64
  %i.bu = shl i64 %i.y, 2
  %18 = ptrtoaddr ptr %i.v to i64
  %i.bv = shl i64 %i.s, 2
  %19 = add i64 %i.bu, %17
  %i.bw = add i64 %i.bv, %18
  %i.bx = sub i64 %i.bw, %19
  %diff.check = icmp ugt i64 %i.bx, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !17, !noalias !743
  %wide.load109 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !17, !noalias !743
  %i.ca = mul <4 x i32> %wide.load, %broadcast.splat
  %i.cb = mul <4 x i32> %wide.load109, %broadcast.splat
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i32> %i.ca, ptr %i.cc, align 4, !tbaa !17, !noalias !743
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !17, !noalias !743
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.critedge170.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph45.i, %middle.block
  %.014344.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph45.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter136 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.014344.i.prol = phi i64 [ %i.cj, %scalar.ph.prol ], [ %.014344.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014344.i.prol
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17, !noalias !743
  %i.ch = mul i32 %i.cg, %i.bt
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014344.i.prol
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !17, !noalias !743
  %i.cj = add nuw nsw i64 %.014344.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter136
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !724

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.014344.i.unr = phi i64 [ %.014344.i.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.ck = sub nsw i64 %.014344.i.ph, %i.br
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %.critedge170.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.014344.i = phi i64 [ %i.df, %scalar.ph ], [ %.014344.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014344.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !17, !noalias !743
  %i.co = mul i32 %i.cn, %i.bt
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014344.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !17, !noalias !743
  %i.cq = add nuw nsw i64 %.014344.i, 1           ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !17, !noalias !743
  %i.ct = mul i32 %i.cs, %i.bt
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cq
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !17, !noalias !743
  %i.cv = add nuw nsw i64 %.014344.i, 2           ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17, !noalias !743
  %i.cy = mul i32 %i.cx, %i.bt
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cv
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !17, !noalias !743
  %i.da = add nuw nsw i64 %.014344.i, 3           ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17, !noalias !743
  %i.dd = mul i32 %i.dc, %i.bt
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.da
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !17, !noalias !743
  %i.df = add nuw nsw i64 %.014344.i, 4           ; 2 uses
  %exitcond62.not.i.3 = icmp eq i64 %i.df, %i.br
  br i1 %exitcond62.not.i.3, label %.critedge170.i, label %scalar.ph, !llvm.loop !725

bb.e:                                             ; preds = %bb.d
  %i.dg = sdiv i64 9223372036854775807, %i.p      ; 2 uses
  %i.dh = sdiv i64 -9223372036854775808, %i.p     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !133, !noalias !743
  %.not156.i = icmp eq i64 %i.dj, 0
  br i1 %.not156.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = load ptr, ptr %i.t, align 8, !tbaa !123, !noalias !743 ; 3 uses
  %.not157.i = icmp eq ptr %i.dk, null
  br i1 %.not157.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !124, !noalias !743 ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph40.i, label %.critedge170.i

.lr.ph40.i:                                       ; preds = %bb.g
  %i.do = srem i64 %i.s, 8
  %i.dp = sdiv i64 %i.s, 8                        ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dk, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !51, !noalias !743
  %i.ds = trunc i64 %i.p to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i, %.lr.ph40.i
  %.014239.i = phi i64 [ 0, %.lr.ph40.i ], [ %i.fh, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ] ; 4 uses
  %.sroa.17.038.i = phi i64 [ %i.do, %.lr.ph40.i ], [ %.sroa.17.1.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ] ; 2 uses
  %.sroa.10.136.i = phi i8 [ %i.dr, %.lr.ph40.i ], [ %.sroa.10.2.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ] ; 3 uses
  %.sroa.144.035.i = phi i64 [ %i.dp, %.lr.ph40.i ], [ %.sroa.144.1.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i ] ; 2 uses
  %i.dt = zext i8 %.sroa.10.136.i to i32
  %i.du = trunc nsw i64 %.sroa.17.038.i to i32
  %i.dv = shl nuw nsw i32 1, %i.du
  %i.dw = and i32 %i.dv, %i.dt
  %.not11.i = icmp eq i32 %i.dw, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014239.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !17, !noalias !743 ; 2 uses
  br i1 %.not11.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = sext i32 %.pre.i to i64                 ; 2 uses
  %i.dy = icmp sgt i64 %i.dh, %i.dx
  %i.dz = icmp slt i64 %i.dg, %i.dx
  %or.cond.i = or i1 %i.dy, %i.dz
  br i1 %or.cond.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !743
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !134, !noalias !743 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42, !noalias !743
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !743
  call void %i.ed(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ea, i1 noundef zeroext false), !noalias !743, !inline_history !726
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !743
  %i.ee = load ptr, ptr %3, align 8, !tbaa !134, !noalias !743 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42, !noalias !743
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !743
  invoke void %i.eh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.ee, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.m, !noalias !743

bb.k:                                             ; preds = %bb.j
  %.phi.trans.insert.i.le = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.014239.i
  invoke void @_ZN5arrow6Status7InvalidIJRA14_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA18_S2_RA26_S2_RKiEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, ptr noundef nonnull align 1 dereferenceable(26) @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %.phi.trans.insert.i.le)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ei = load ptr, ptr %7, align 8, !tbaa !99, !noalias !743 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !51, !noalias !743
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !743
  %i.en = load ptr, ptr %6, align 8, !tbaa !99, !noalias !743 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !51, !noalias !743
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #22
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !743
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_19ShiftTimeIiiEENS_6StatusEPNS0_13KernelContextENS_4util16DivideOrMultiplyElRKNS_9ArraySpanEPS9_.exit

bb.m:                                             ; preds = %bb.j
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i

bb.n:                                             ; preds = %bb.k
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %7, align 8, !tbaa !99, !noalias !743 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i: ; preds = %bb.n
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !51, !noalias !743
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i, %bb.m
end_hunk_0
