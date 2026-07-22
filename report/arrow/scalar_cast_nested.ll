inline.NumInlined: 3701
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastFixedToVarListINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

bb.du:                                            ; preds = %bb.j, %bb.dt, %bb.i
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %.pn63, %bb.dt ], [ %i.ai, %bb.j ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !265
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !56

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !266
  store i64 %i.b, ptr %i.a, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.i, ptr %i.h, align 1, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !267
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1, !tbaa !55
  %i.l = load i32, ptr %2, align 4, !tbaa !33
  invoke void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull %3, i32 noundef %i.l)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %3, align 8, !tbaa !266    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.a, align 8, !tbaa !55
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !266    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.t = load i64, ptr %i.a, align 8, !tbaa !55
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %class.anon, align 1                ; 3 uses
  %7 = alloca %class.anon, align 1                ; 3 uses
  %8 = alloca %class.anon, align 1                ; 3 uses
  %9 = alloca %class.anon, align 1                ; 3 uses
  %10 = alloca %"class.arrow::Result.181", align 8 ; 12 uses
  %11 = alloca %"class.std::shared_ptr.64", align 16 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.7", align 16 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %15 = alloca %"class.std::shared_ptr.64", align 16 ; 12 uses
  %16 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %18 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %19 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %20 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %21 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %22 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %23 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %24 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %25 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %26 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %27 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %28 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %29 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %30 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %31 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %32 = alloca %"class.std::shared_ptr.64", align 16 ; 9 uses
  %33 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %34 = alloca %"class.std::vector.87", align 8   ; 8 uses
  %35 = alloca [1 x %"class.std::shared_ptr.82"], align 8 ; 6 uses
  %36 = alloca %"class.std::vector.92", align 8   ; 8 uses
  %37 = alloca [2 x %"class.std::shared_ptr.64"], align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.e, label %bb.b [
    i8 0, label %_ZNK5arrow7compute10ExecResult4typeEv.exit
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i
  ], !prof !274

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.10, ptr %i.g, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i:  ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.9, ptr %i.i, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !278
  br label %_ZNK5arrow7compute10ExecResult4typeEv.exit

_ZNK5arrow7compute10ExecResult4typeEv.exit:       ; preds = %bb.a, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
  %.0.in.i = phi ptr [ %i.j, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i ], [ %3, %bb.a ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !281
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !282
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !285  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256  ; 3 uses
  store ptr %i.o, ptr %12, align 16, !tbaa !256
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %12, align 16, !tbaa !256
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit, %bb.d, %bb.e
  %i.x = phi ptr [ %i.o, %_ZNK5arrow7compute10ExecResult4typeEv.exit ], [ %i.o, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !861
  %i.aa = icmp eq i32 %i.z, 26
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !862
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !282 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 68719476720
  %i.aj = icmp eq i64 %i.ai, 32
  br i1 %i.aj, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA65_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(65) @.str.14)
          to label %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !285 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !86
  store <2 x ptr> %i.aq, ptr %13, align 16, !tbaa !86
  %.not.i.i.i91 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i92 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pre309 = load ptr, ptr %12, align 16, !tbaa !256
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre309, i64 48
  %.pre310.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !282
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93: ; preds = %bb.i, %bb.k, %bb.l
  %i.aw = phi ptr [ %i.ae, %bb.i ], [ %i.ae, %bb.k ], [ %.pre310.a, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !285 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !86
  store <2 x ptr> %i.bd, ptr %14, align 16, !tbaa !86
  %.not.i.i.i94 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i94, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i95 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

bb.o:                                             ; preds = %bb.m
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, %bb.n, %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !288 ; 12 uses
  %i.bl = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.bl, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !291

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.10.sink = phi ptr [ @.str.9, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.10, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96 ]
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bm, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.str.10.sink, ptr %i.bn, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.as

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  %i.bo = load ptr, ptr %3, align 8, !tbaa !278   ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !307, !noalias !863 ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !312, !noalias !863 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46, !noalias !863 ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i98, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !863
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !863
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !863
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !863 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.t:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !315, !noalias !863 ; 2 uses
  %.not6.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %.noexc99 unwind label %bb.at  ; 6 uses

.noexc99:                                         ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !41, !noalias !866
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.ce, align 4, !tbaa !43, !noalias !866
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !44, !noalias !866
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !319, !noalias !866
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull %i.ca, i64 noundef %i.cg)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !866

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc99
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 96) #22, !noalias !866
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.s, %bb.r, %bb.p, %.noexc99, %bb.t
  %.sroa.9297.0 = phi ptr [ %i.cb, %.noexc99 ], [ %i.bu, %bb.r ], [ null, %bb.p ], [ %i.bu, %bb.s ], [ null, %bb.t ]
  %.sroa.0296.0 = phi ptr [ %i.cf, %.noexc99 ], [ %i.bs, %bb.r ], [ %i.bs, %bb.p ], [ %i.bs, %bb.s ], [ null, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 5 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !303 ; 2 uses
  store ptr %.sroa.0296.0, ptr %i.cj, align 8, !tbaa !320
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 8 uses
  store ptr %.sroa.9297.0, ptr %i.ck, align 8, !tbaa !46
  %.not.i.i.i.i100 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i100, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cm, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !43
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i101 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.y ], [ %i.cz, %bb.z ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !307, !noalias !869 ; 3 uses
  %.not.i103 = icmp eq ptr %i.dc, null
  br i1 %.not.i103, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !312, !noalias !869 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !46, !noalias !869 ; 4 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i104, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !869
  %.not.i.i.i.i.i105 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i105, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !869
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3, !noalias !869
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.ae:                                            ; preds = %bb.ac
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4, !noalias !869 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !315, !noalias !869 ; 2 uses
  %.not6.i106 = icmp eq ptr %i.dm, null
  br i1 %.not6.i106, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev:bb.a
_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !920
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA65_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(65) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !931
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !931
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !574, !noalias !931, !nonnull !116, !align !584
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(65) %2) #20, !noalias !931
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(65) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !931 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !931
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !931
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !266    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !266    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !55
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %class.anon, align 1                ; 3 uses
  %7 = alloca %class.anon, align 1                ; 3 uses
  %8 = alloca %class.anon, align 1                ; 3 uses
  %9 = alloca %class.anon, align 1                ; 3 uses
  %10 = alloca %"class.arrow::Result.181", align 8 ; 12 uses
  %11 = alloca %"class.std::shared_ptr.64", align 16 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.7", align 16 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %15 = alloca %"class.std::shared_ptr.64", align 16 ; 12 uses
  %16 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %18 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %19 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %20 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %21 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %22 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %23 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %24 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %25 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %26 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %27 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %28 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %29 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %30 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %31 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %32 = alloca %"class.std::shared_ptr.64", align 16 ; 9 uses
  %33 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %34 = alloca %"class.std::vector.87", align 8   ; 8 uses
  %35 = alloca [1 x %"class.std::shared_ptr.82"], align 8 ; 6 uses
  %36 = alloca %"class.std::vector.92", align 8   ; 8 uses
  %37 = alloca [2 x %"class.std::shared_ptr.64"], align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.e, label %bb.b [
    i8 0, label %_ZNK5arrow7compute10ExecResult4typeEv.exit
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i
  ], !prof !274

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.10, ptr %i.g, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i:  ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.9, ptr %i.i, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !278
  br label %_ZNK5arrow7compute10ExecResult4typeEv.exit

_ZNK5arrow7compute10ExecResult4typeEv.exit:       ; preds = %bb.a, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
  %.0.in.i = phi ptr [ %i.j, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i ], [ %3, %bb.a ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !281
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !282
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !285  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256  ; 3 uses
  store ptr %i.o, ptr %12, align 16, !tbaa !256
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %12, align 16, !tbaa !256
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit, %bb.d, %bb.e
  %i.x = phi ptr [ %i.o, %_ZNK5arrow7compute10ExecResult4typeEv.exit ], [ %i.o, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !861
  %i.aa = icmp eq i32 %i.z, 26
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !862
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !282 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 68719476720
  %i.aj = icmp eq i64 %i.ai, 32
  br i1 %i.aj, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA65_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(65) @.str.14)
          to label %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !285 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !86
  store <2 x ptr> %i.aq, ptr %13, align 16, !tbaa !86
  %.not.i.i.i91 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i92 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pre309 = load ptr, ptr %12, align 16, !tbaa !256
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre309, i64 48
  %.pre310.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !282
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93: ; preds = %bb.i, %bb.k, %bb.l
  %i.aw = phi ptr [ %i.ae, %bb.i ], [ %i.ae, %bb.k ], [ %.pre310.a, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !285 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !86
  store <2 x ptr> %i.bd, ptr %14, align 16, !tbaa !86
  %.not.i.i.i94 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i94, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i95 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

bb.o:                                             ; preds = %bb.m
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, %bb.n, %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !288 ; 12 uses
  %i.bl = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.bl, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !291

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.10.sink = phi ptr [ @.str.9, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.10, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96 ]
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bm, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.str.10.sink, ptr %i.bn, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.as

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  %i.bo = load ptr, ptr %3, align 8, !tbaa !278   ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !307, !noalias !934 ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !312, !noalias !934 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46, !noalias !934 ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i98, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !934
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !934
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !934
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !934 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.t:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !315, !noalias !934 ; 2 uses
  %.not6.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %.noexc99 unwind label %bb.at  ; 6 uses

.noexc99:                                         ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !41, !noalias !937
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.ce, align 4, !tbaa !43, !noalias !937
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !44, !noalias !937
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !319, !noalias !937
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull %i.ca, i64 noundef %i.cg)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !937

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc99
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 96) #22, !noalias !937
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.s, %bb.r, %bb.p, %.noexc99, %bb.t
  %.sroa.9297.0 = phi ptr [ %i.cb, %.noexc99 ], [ %i.bu, %bb.r ], [ null, %bb.p ], [ %i.bu, %bb.s ], [ null, %bb.t ]
  %.sroa.0296.0 = phi ptr [ %i.cf, %.noexc99 ], [ %i.bs, %bb.r ], [ %i.bs, %bb.p ], [ %i.bs, %bb.s ], [ null, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 5 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !303 ; 2 uses
  store ptr %.sroa.0296.0, ptr %i.cj, align 8, !tbaa !320
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 8 uses
  store ptr %.sroa.9297.0, ptr %i.ck, align 8, !tbaa !46
  %.not.i.i.i.i100 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i100, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cm, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !43
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i101 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.y ], [ %i.cz, %bb.z ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !307, !noalias !940 ; 3 uses
  %.not.i103 = icmp eq ptr %i.dc, null
  br i1 %.not.i103, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !312, !noalias !940 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !46, !noalias !940 ; 4 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i104, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !940
  %.not.i.i.i.i.i105 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i105, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !940
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3, !noalias !940
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.ae:                                            ; preds = %bb.ac
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4, !noalias !940 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !315, !noalias !940 ; 2 uses
  %.not6.i106 = icmp eq ptr %i.dm, null
  br i1 %.not6.i106, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
bb.jv:                                            ; preds = %bb.jt
  %i.ags = atomicrmw volatile add ptr %i.agf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i283

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i283: ; preds = %bb.jv, %bb.ju
  %.0.i.i.i.i284 = phi i32 [ %i.agi, %bb.ju ], [ %i.ags, %bb.jv ]
  %i.agt = icmp eq i32 %.0.i.i.i.i284, 1
  br i1 %i.agt, label %bb.jw, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit285, !prof !56

bb.jw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i283
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.age) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit285

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit285: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit280, %bb.js, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i283, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit

bb.jx:                                            ; preds = %bb.dz, %bb.je, %bb.aw, %bb.ax, %.body142
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.aw ], [ %.pn69, %.body142 ], [ %i.fg, %bb.ax ], [ %.pn83.pn, %bb.je ], [ %i.qk, %bb.dz ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #20
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.av
  %.pn83.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn.pn, %bb.jx ], [ %i.fe, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

.body:                                            ; preds = %bb.au, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i107, %bb.at, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, %bb.jy, %bb.as
  %.pn83.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn.pn.pn, %bb.jy ], [ %i.ch, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.fb, %bb.as ], [ %i.fc, %bb.at ], [ %i.fd, %bb.au ], [ %i.dt, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i107 ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.kf

_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit: ; preds = %bb.g, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit285
  %i.agu = load ptr, ptr %i.p, align 8, !tbaa !46 ; 8 uses
  %.not.i.i286 = icmp eq ptr %i.agu, null
  br i1 %.not.i.i286, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit290, label %bb.jz

bb.jz:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8 ; 4 uses
  %i.agw = load atomic i64, ptr %i.agv acquire, align 8 ; 2 uses
  %i.agx = icmp eq i64 %i.agw, 4294967297
  %i.agy = trunc i64 %i.agw to i32                ; 2 uses
  br i1 %i.agx, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  store i32 0, ptr %i.agv, align 8, !tbaa !41
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 12
  store i32 0, ptr %i.agz, align 4, !tbaa !43
  %i.aha = load ptr, ptr %i.agu, align 8, !tbaa !44
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8
  call void %i.ahc(ptr noundef nonnull align 8 dereferenceable(16) %i.agu) #20, !inline_history !258
  %i.ahd = load ptr, ptr %i.agu, align 8, !tbaa !44
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  %i.ahf = load ptr, ptr %i.ahe, align 8
  call void %i.ahf(ptr noundef nonnull align 8 dereferenceable(16) %i.agu) #20, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit290

bb.kb:                                            ; preds = %bb.jz
  %i.ahg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i287 = icmp eq i8 %i.ahg, 0
  br i1 %.not.i.i.i287, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ahh = add nsw i32 %i.agy, -1
  store i32 %i.ahh, ptr %i.agv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i288

bb.kd:                                            ; preds = %bb.kb
  %i.ahi = atomicrmw volatile add ptr %i.agv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i288

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i288: ; preds = %bb.kd, %bb.kc
  %.0.i.i.i.i289 = phi i32 [ %i.agy, %bb.kc ], [ %i.ahi, %bb.kd ]
  %i.ahj = icmp eq i32 %.0.i.i.i.i289, 1
  br i1 %i.ahj, label %bb.ke, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit290, !prof !56

bb.ke:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i288
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agu) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit290

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit290: ; preds = %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit, %bb.ka, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i288, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret void

bb.kf:                                            ; preds = %.body, %bb.h
  %.pn83.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn83.pn.pn.pn.pn.pn, %.body ], [ %i.ak, %bb.h ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  resume { ptr, i32 } %.pn83.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.anon, align 1                ; 3 uses
  %6 = alloca %class.anon, align 1                ; 3 uses
  %7 = alloca %class.anon, align 1                ; 3 uses
  %8 = alloca %class.anon, align 1                ; 3 uses
  %9 = alloca %class.anon, align 1                ; 3 uses
  %10 = alloca %"class.arrow::Result.181", align 8 ; 12 uses
  %11 = alloca %"class.arrow::Result.181", align 8 ; 12 uses
  %12 = alloca %"class.std::shared_ptr.64", align 16 ; 7 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.std::shared_ptr.7", align 16 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.7", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.64", align 16 ; 12 uses
  %18 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %20 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %21 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %22 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %23 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %24 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %26 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %27 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %28 = alloca %"class.arrow::Result.100", align 8 ; 14 uses
  %29 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %30 = alloca %"class.std::shared_ptr.64", align 8 ; 5 uses
  %31 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %32 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %33 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %34 = alloca %"class.std::shared_ptr.64", align 16 ; 9 uses
  %35 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %36 = alloca %"class.std::vector.87", align 8   ; 8 uses
  %37 = alloca [1 x %"class.std::shared_ptr.82"], align 8 ; 6 uses
  %38 = alloca %"class.std::vector.92", align 8   ; 8 uses
  %39 = alloca [2 x %"class.std::shared_ptr.64"], align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.e, label %bb.b [
    i8 0, label %_ZNK5arrow7compute10ExecResult4typeEv.exit
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i
  ], !prof !274

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @.str.10, ptr %i.g, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i2.i:  ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.9, ptr %i.i, align 8, !tbaa !275
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !278
  br label %_ZNK5arrow7compute10ExecResult4typeEv.exit

_ZNK5arrow7compute10ExecResult4typeEv.exit:       ; preds = %bb.a, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i
  %.0.in.i = phi ptr [ %i.j, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit.i ], [ %3, %bb.a ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !281
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !282
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !285  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !256  ; 3 uses
  store ptr %i.o, ptr %14, align 16, !tbaa !256
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %14, align 16, !tbaa !256
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %_ZNK5arrow7compute10ExecResult4typeEv.exit, %bb.d, %bb.e
  %i.x = phi ptr [ %i.o, %_ZNK5arrow7compute10ExecResult4typeEv.exit ], [ %i.o, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !861
  %i.aa = icmp eq i32 %i.z, 26
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !862
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !282 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 68719476720
  %i.aj = icmp eq i64 %i.ai, 32
  br i1 %i.aj, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA65_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(65) @.str.14)
          to label %_ZN5arrow6Status9TypeErrorIJRA65_KcEEES0_DpOT_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !285 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !86
  store <2 x ptr> %i.aq, ptr %15, align 16, !tbaa !86
  %.not.i.i.i91 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i92 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  %.pre321 = load ptr, ptr %14, align 16, !tbaa !256
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre321, i64 48
  %.pre322.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !282
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93: ; preds = %bb.i, %bb.k, %bb.l
  %i.aw = phi ptr [ %i.ae, %bb.i ], [ %i.ae, %bb.k ], [ %.pre322.a, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !285 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !86
  store <2 x ptr> %i.bd, ptr %16, align 16, !tbaa !86
  %.not.i.i.i94 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i94, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i95 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

bb.o:                                             ; preds = %bb.m
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit93, %bb.n, %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !288 ; 14 uses
  %i.bl = load i8, ptr %i.d, align 8, !tbaa !272
  switch i8 %i.bl, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !291

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.10.sink = phi ptr [ @.str.9, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.10, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96 ]
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bm, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.str.10.sink, ptr %i.bn, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.as

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  %i.bo = load ptr, ptr %3, align 8, !tbaa !278   ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !307, !noalias !993 ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !312, !noalias !993 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46, !noalias !993 ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i98, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !993
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !993
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3, !noalias !993
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4, !noalias !993 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.t:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.ca = load ptr, ptr %i.bp, align 8, !tbaa !315, !noalias !993 ; 2 uses
  %.not6.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %.noexc99 unwind label %bb.at  ; 6 uses

.noexc99:                                         ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !41, !noalias !996
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.ce, align 4, !tbaa !43, !noalias !996
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !44, !noalias !996
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !319, !noalias !996
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull %i.ca, i64 noundef %i.cg)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !996

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc99
  %i.ch = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 96) #22, !noalias !996
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.s, %bb.r, %bb.p, %.noexc99, %bb.t
  %.sroa.9306.0 = phi ptr [ %i.cb, %.noexc99 ], [ %i.bu, %bb.r ], [ null, %bb.p ], [ %i.bu, %bb.s ], [ null, %bb.t ]
  %.sroa.0305.0 = phi ptr [ %i.cf, %.noexc99 ], [ %i.bs, %bb.r ], [ %i.bs, %bb.p ], [ %i.bs, %bb.s ], [ null, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !303 ; 2 uses
  store ptr %.sroa.0305.0, ptr %i.cj, align 8, !tbaa !320
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 8 uses
  store ptr %.sroa.9306.0, ptr %i.ck, align 8, !tbaa !46
  %.not.i.i.i.i100 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i100, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cm, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !43
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20, !inline_history !306
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i101 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.y ], [ %i.cz, %bb.z ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !307, !noalias !999 ; 3 uses
  %.not.i103 = icmp eq ptr %i.dc, null
  br i1 %.not.i103, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !312, !noalias !999 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !46, !noalias !999 ; 4 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i104, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !999
  %.not.i.i.i.i.i105 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i105, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !999
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !3, !noalias !999
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.ae:                                            ; preds = %bb.ac
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4, !noalias !999 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !315, !noalias !999 ; 2 uses
  %.not6.i106 = icmp eq ptr %i.dm, null
  br i1 %.not6.i106, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit112, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gr, align 8, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !43
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20, !inline_history !258
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i124 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i124, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

bb.bk:                                            ; preds = %bb.bi
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i126 = phi i32 [ %i.gu, %bb.bj ], [ %i.he, %bb.bk ]
  %i.hf = icmp eq i32 %.0.i.i.i.i126, 1
  br i1 %i.hf, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hi = load ptr, ptr %i.fb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i127 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i127, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hj, align 8, !tbaa !41
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !43
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !44
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !inline_history !386
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !44
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i128 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i128, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

bb.br:                                            ; preds = %bb.bp
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i130 = phi i32 [ %i.hm, %bb.bq ], [ %i.hw, %bb.br ]
  %i.hx = icmp eq i32 %.0.i.i.i.i130, 1
  br i1 %i.hx, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.hy = load ptr, ptr %22, align 8, !tbaa !102
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.bx, label %bb.bt, !prof !105

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !102
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %_ZN5arrow6StatusC2ERKS0_.exit132 unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit120
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #20
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.hd

bb.bw:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.id = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !381, !noalias !1108 ; 3 uses
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %.thread, label %bb.by

.thread:                                          ; preds = %bb.bx
  %i.ig = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 0, ptr %i.ig, align 8, !tbaa !381, !alias.scope !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !86, !noalias !1108 ; 2 uses
  store ptr %i.ii, ptr %27, align 8, !tbaa !86, !alias.scope !1108
  %i.ij = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !46, !noalias !1108 ; 4 uses
  store ptr null, ptr %i.ik, align 8, !tbaa !46, !noalias !1108
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !46, !alias.scope !1108
  store ptr null, ptr %i.ih, align 8, !tbaa !86, !noalias !1108
  %i.im = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 %i.ie, ptr %i.im, align 8, !tbaa !381, !alias.scope !1108
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %.not.i.i.i133 = icmp eq i8 %i.ie, 2
  br i1 %.not.i.i.i133, label %_ZNK5arrow5Datum5arrayEv.exit, label %bb.bz

bb.bz:                                            ; preds = %.thread, %bb.by
  %i.in = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.in, align 8, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr @.str.10, ptr %i.io, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc134 unwind label %bb.dq

.noexc134:                                        ; preds = %bb.bz
  unreachable

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.by
  store ptr %i.ii, ptr %28, align 16, !tbaa !278
  %i.ip = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store ptr %i.il, ptr %i.ip, align 8, !tbaa !46
  %.not.i.i.i135 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i135, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 3 uses
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i136 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i136, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !3
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.iu = atomicrmw volatile add ptr %i.iq, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZNK5arrow5Datum5arrayEv.exit
  %i.iv = load i64, ptr %i.af, align 8, !tbaa !327
  %i.iw = load ptr, ptr %i.ai, align 8, !tbaa !315
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.iv
  %i.iy = invoke noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %i.z)
          to label %bb.ce unwind label %bb.dr

bb.ce:                                            ; preds = %bb.cd
  %i.iz = icmp slt i64 %i.iy, 1
  %or.cond = or i1 %i.iz, %i.dr
  br i1 %or.cond, label %bb.fr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.val = load ptr, ptr %1, align 8, !tbaa !292
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !293 ; 3 uses
  %i.ja = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1109
  %i.jb = load ptr, ptr %i.ai, align 8, !tbaa !315, !noalias !1109
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1109
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.val.val, ptr %i.jd, align 8, !tbaa !1112, !noalias !1109
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 64, ptr %i.je, align 8, !tbaa !1124, !noalias !1109
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, i8 0, i64 16, i1 false), !noalias !1109
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.val.val, ptr %i.jg, align 8, !tbaa !1125, !noalias !1109
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.jh, align 8, !tbaa !1126, !noalias !1109
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false), !noalias !1109
  store i64 64, ptr %i.jj, align 8, !tbaa !1127, !noalias !1109
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, i8 0, i64 64, i1 false), !noalias !1109
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %10, align 8, !tbaa !44, !noalias !1109
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.jl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i unwind label %bb.cj, !noalias !1109 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.cf
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !46, !noalias !1131 ; 2 uses
  %i.jq = load <2 x ptr>, ptr %i.jl, align 8, !tbaa !86, !noalias !1131
  store <2 x ptr> %i.jq, ptr %i.jm, align 8, !tbaa !86, !alias.scope !1128, !noalias !1109
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !1131
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !3, !noalias !1131
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !3, !noalias !1131
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.jv = atomicrmw volatile add ptr %i.jr, i32 1 acq_rel, align 4, !noalias !1131 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.cj:                                            ; preds = %bb.cf
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %10) #20, !noalias !1109
  br label %.body152

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ci, %bb.ch, %.noexc.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jx, i8 0, i64 16, i1 false), !noalias !1109
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr %.val.val, ptr %i.jy, align 8, !tbaa !1125, !noalias !1109
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.jz, align 8, !tbaa !1126, !noalias !1109
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, i8 0, i64 16, i1 false), !noalias !1109
  store i64 64, ptr %i.kb, align 8, !tbaa !1127, !noalias !1109
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1109
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !1109
  %i.kc = load i64, ptr %i.ap, align 8, !tbaa !332, !noalias !1109
  %i.kd = sext i32 %i.ae to i64                   ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1132, !noalias !1133 ; 2 uses
  %i.kg = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1133
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !1133
  %i.kj = invoke noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %.noexc.i unwind label %bb.co, !noalias !1109, !inline_history !1136

.noexc.i:                                         ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kk = mul nsw i64 %i.kc, %i.kd
  %i.kl = add nsw i64 %i.kj, %i.kk                ; 2 uses
  %.not.i.i140 = icmp sgt i64 %i.kl, %i.kf
  br i1 %.not.i.i140, label %bb.ck, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1109
  br label %_ZN5arrow6StatusD2Ev.exit39.i

bb.ck:                                            ; preds = %.noexc.i
  %i.km = shl nsw i64 %i.kf, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.kl, i64 %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1133
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1133
  invoke void %i.kp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %10, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit.i150 unwind label %bb.co, !noalias !1109, !inline_history !1136

_ZN5arrow6StatusD2Ev.exit.i150:                   ; preds = %bb.ck
  %.pr.i151 = load ptr, ptr %12, align 8, !tbaa !102, !noalias !1109 ; 2 uses
  store ptr %.pr.i151, ptr %11, align 8, !tbaa !102, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1109
  %i.kq = icmp eq ptr %.pr.i151, null
  br i1 %i.kq, label %_ZN5arrow6StatusD2Ev.exit39.i, label %bb.cl, !prof !1137

bb.cl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i150
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %i.kr = load ptr, ptr %11, align 8, !tbaa !102, !noalias !1109 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.kr, null
  br i1 %.not.i34.i, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1109
  br label %bb.da

bb.co:                                            ; preds = %bb.ck, %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1109
  br label %bb.dn

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i150, %_ZN5arrow6StatusD2Ev.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1109
  %i.kw = load i64, ptr %i.ap, align 8, !tbaa !332, !noalias !1109 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, 0
  br i1 %i.kx, label %.lr.ph7.i, label %._crit_edge.i

.lr.ph7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit39.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.kz = icmp sgt i32 %i.ae, 0                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 6 uses
  br label %bb.cp

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit39.i
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.230") align 8 %29, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %bb.da unwind label %bb.cz

bb.cp:                                            ; preds = %.loopexit.i, %.lr.ph7.i
  %i.lc = phi i64 [ %i.kw, %.lr.ph7.i ], [ %i.nm, %.loopexit.i ]
  %.0226.i = phi i64 [ 0, %.lr.ph7.i ], [ %i.nl, %.loopexit.i ] ; 6 uses
  %i.ld = load ptr, ptr %i.ah, align 8, !tbaa !315, !noalias !1109 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i145, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.le = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1109
  %i.lf = add nsw i64 %i.le, %.0226.i             ; 2 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !55, !noalias !1109
  %i.lj = trunc i64 %i.lf to i8
  %i.lk = and i8 %i.lj, 7
  %i.ll = lshr i8 %i.li, %i.lk
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.cy, label %.preheader.i146

bb.cr:                                            ; preds = %bb.cp
  %i.ln = load ptr, ptr %i.z, align 8, !tbaa !535, !noalias !1109
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !861, !noalias !1109
  switch i32 %i.lp, label %bb.cv [
    i32 27, label %bb.cs
    i32 28, label %bb.ct
    i32 38, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.lq = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %bb.cw unwind label %bb.cx, !noalias !1109

bb.ct:                                            ; preds = %bb.cr
  %i.lr = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %.noexc41.i unwind label %bb.cx, !noalias !1109

.noexc41.i:                                       ; preds = %bb.ct
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176, %bb.er, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.qk, ptr %i.ip, align 8, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit173, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN5arrow5DatumD2Ev.exit178 unwind label %bb.ew

bb.ew:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit178:                      ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit168

_ZN5arrow6StatusC2ERKS0_.exit168:                 ; preds = %bb.eb, %_ZN5arrow5DatumD2Ev.exit178
  %i.rm = load ptr, ptr %31, align 8, !tbaa !102  ; 2 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %bb.ex, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !105

bb.ex:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.ro = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ro)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.rp = landingpad { ptr, i32 }
          catch ptr null
  %i.rq = extractvalue { ptr, i32 } %i.rp, 0
  call void @__clang_call_terminate(ptr %i.rq) #23
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr.i180 = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %.not.i.i181 = icmp eq ptr %.pr.i180, null
  br i1 %.not.i.i181, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rr = phi ptr [ %.pr.i180, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.rm, %_ZN5arrow6StatusC2ERKS0_.exit168 ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.rv = load ptr, ptr %i.pc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i182, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 4 uses
  %i.rx = load atomic i64, ptr %i.rw acquire, align 8 ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 4294967297
  %i.rz = trunc i64 %i.rx to i32                  ; 2 uses
  br i1 %i.ry, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rw, align 8, !tbaa !41
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 0, ptr %i.sa, align 4, !tbaa !43
  %i.sb = load ptr, ptr %i.rv, align 8, !tbaa !44
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20, !inline_history !1164
  %i.se = load ptr, ptr %i.rv, align 8, !tbaa !44
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20, !inline_history !1164
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fc:                                            ; preds = %bb.fa
  %i.sh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i183 = icmp eq i8 %i.sh, 0
  br i1 %.not.i.i.i183, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.si = add nsw i32 %i.rz, -1
  store i32 %i.si, ptr %i.rw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.fe:                                            ; preds = %bb.fc
  %i.sj = atomicrmw volatile add ptr %i.rw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i185 = phi i32 [ %i.rz, %bb.fd ], [ %i.sj, %bb.fe ]
  %i.sk = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.sk, label %bb.ff, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.sl = load ptr, ptr %29, align 8, !tbaa !102  ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.fg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !105

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sn = load ptr, ptr %i.pd, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i.i187, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.so, align 8, !tbaa !41
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !43
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !44
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !1165
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !44
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !1165
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i188 = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i188, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sr, %bb.fk ], [ %i.tb, %bb.fl ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tc, label %bb.fm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !56

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fi
  %.pr.i189.pr = load ptr, ptr %29, align 8, !tbaa !102 ; 2 uses
  %.not.i.i190 = icmp eq ptr %.pr.i189.pr, null
  br i1 %.not.i.i190, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.td = phi ptr [ %.pr.i189.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.sl, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !106, !range !115, !noundef !116
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.fg, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br i1 %i.pw, label %bb.gh, label %bb.gk

bb.fo:                                            ; preds = %bb.ej, %bb.eh
  %.pn71 = phi { ptr, i32 } [ %i.qa, %bb.eh ], [ %i.qf, %bb.ej ]
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.eg
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.fo ], [ %.pn.pn, %bb.eg ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ds
  %.pn75 = phi { ptr, i32 } [ %i.pa, %bb.ds ], [ %.pn71.pn, %bb.fp ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %.body152

bb.fr:                                            ; preds = %bb.ce
  %i.th = load i32, ptr %i.ix, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.th, 0
  br i1 %.not, label %bb.gh, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.ti = load ptr, ptr %28, align 16, !tbaa !278
  %i.tj = sext i32 %i.th to i64
  %i.tk = load i64, ptr %i.ap, align 8, !tbaa !332
  %i.tl = sext i32 %i.ae to i64
  %i.tm = mul nsw i64 %i.tk, %i.tl
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %37, ptr noundef nonnull align 8 dereferenceable(120) %i.ti, i64 noundef %i.tj, i64 noundef %i.tm)
          to label %bb.ft unwind label %bb.gg

bb.ft:                                            ; preds = %bb.fs
  %i.tn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.to = load <2 x ptr>, ptr %37, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.tp = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.to, ptr %28, align 16, !tbaa !86
  %.not.i.i.i.i191 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i191, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 4 uses
  %i.tr = load atomic i64, ptr %i.tq acquire, align 8 ; 2 uses
  %i.ts = icmp eq i64 %i.tr, 4294967297
  %i.tt = trunc i64 %i.tr to i32                  ; 2 uses
  br i1 %i.ts, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.tq, align 8, !tbaa !41
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i32 0, ptr %i.tu, align 4, !tbaa !43
  %i.tv = load ptr, ptr %i.tp, align 8, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20, !inline_history !670
  %i.ty = load ptr, ptr %i.tp, align 8, !tbaa !44
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8
  call void %i.ua(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20, !inline_history !670
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.fw:                                            ; preds = %bb.fu
  %i.ub = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i192 = icmp eq i8 %i.ub, 0
  br i1 %.not.i.i.i.i.i192, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.uc = add nsw i32 %i.tt, -1
  store i32 %i.uc, ptr %i.tq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

bb.fy:                                            ; preds = %bb.fw
  %i.ud = atomicrmw volatile add ptr %i.tq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i194 = phi i32 [ %i.tt, %bb.fx ], [ %i.ud, %bb.fy ]
  %i.ue = icmp eq i32 %.0.i.i.i.i.i.i194, 1
  br i1 %i.ue, label %bb.fz, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !56

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193, %bb.fz
  %.pr242 = load ptr, ptr %i.tn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i195 = icmp eq ptr %.pr242, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.uf = getelementptr inbounds nuw i8, ptr %.pr242, i64 8 ; 4 uses
  %i.ug = load atomic i64, ptr %i.uf acquire, align 8 ; 2 uses
  %i.uh = icmp eq i64 %i.ug, 4294967297
  %i.ui = trunc i64 %i.ug to i32                  ; 2 uses
  br i1 %i.uh, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.uf, align 8, !tbaa !41
  %i.uj = getelementptr inbounds nuw i8, ptr %.pr242, i64 12
  store i32 0, ptr %i.uj, align 4, !tbaa !43
  %i.uk = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  %i.un = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.up = load ptr, ptr %i.uo, align 8
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.gc:                                            ; preds = %bb.ga
  %i.uq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i196 = icmp eq i8 %i.uq, 0
  br i1 %.not.i.i.i196, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ur = add nsw i32 %i.ui, -1
  store i32 %i.ur, ptr %i.uf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.ge:                                            ; preds = %bb.gc
  %i.us = atomicrmw volatile add ptr %i.uf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i198 = phi i32 [ %i.ui, %bb.gd ], [ %i.us, %bb.ge ]
  %i.ut = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.ut, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !56

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %bb.ft, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fs
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %.body152

bb.gh:                                            ; preds = %bb.fr, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.uv = getelementptr inbounds nuw i8, ptr %i.dv, i64 72 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !394 ; 5 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !395
  %.not.i200 = icmp eq ptr %i.uw, %i.uy
  br i1 %.not.i200, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr null, ptr %i.uz, align 8, !tbaa !46
  %i.va = load <2 x ptr>, ptr %28, align 16, !tbaa !86
  store ptr null, ptr %i.ip, align 8, !tbaa !46
  store <2 x ptr> %i.va, ptr %i.uw, align 8, !tbaa !86
  store ptr null, ptr %28, align 16, !tbaa !278
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  store ptr %i.vb, ptr %i.uv, align 8, !tbaa !394
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.gj:                                            ; preds = %bb.gh
  %i.vc = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.vc, ptr %i.uw, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.dr

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.gj, %bb.gi
  store ptr null, ptr %0, align 8, !tbaa !102, !alias.scope !1166
  br label %bb.gk

.critedge:                                        ; preds = %bb.dp
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.gk

bb.gk:                                            ; preds = %.critedge, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.vd = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 8 uses
  %.not.i.i202 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i202, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 4 uses
  %i.vf = load atomic i64, ptr %i.ve acquire, align 8 ; 2 uses
  %i.vg = icmp eq i64 %i.vf, 4294967297
  %i.vh = trunc i64 %i.vf to i32                  ; 2 uses
  br i1 %i.vg, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.ve, align 8, !tbaa !41
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  store i32 0, ptr %i.vi, align 4, !tbaa !43
  %i.vj = load ptr, ptr %i.vd, align 8, !tbaa !44
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20, !inline_history !386
  %i.vm = load ptr, ptr %i.vd, align 8, !tbaa !44
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

bb.gn:                                            ; preds = %bb.gl
  %i.vp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i203 = icmp eq i8 %i.vp, 0
  br i1 %.not.i.i.i203, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vq = add nsw i32 %i.vh, -1
  store i32 %i.vq, ptr %i.ve, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

bb.gp:                                            ; preds = %bb.gn
  %i.vr = atomicrmw volatile add ptr %i.ve, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i205 = phi i32 [ %i.vh, %bb.go ], [ %i.vr, %bb.gp ]
  %i.vs = icmp eq i32 %.0.i.i.i.i205, 1
  br i1 %i.vs, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, !prof !56

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_12ListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gr, align 8, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !43
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20, !inline_history !258
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i124 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i124, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

bb.bk:                                            ; preds = %bb.bi
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i126 = phi i32 [ %i.gu, %bb.bj ], [ %i.he, %bb.bk ]
  %i.hf = icmp eq i32 %.0.i.i.i.i126, 1
  br i1 %i.hf, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hi = load ptr, ptr %i.fb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i127 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i127, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hj, align 8, !tbaa !41
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !43
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !44
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !inline_history !386
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !44
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i128 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i128, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

bb.br:                                            ; preds = %bb.bp
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i130 = phi i32 [ %i.hm, %bb.bq ], [ %i.hw, %bb.br ]
  %i.hx = icmp eq i32 %.0.i.i.i.i130, 1
  br i1 %i.hx, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.hy = load ptr, ptr %22, align 8, !tbaa !102
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.bx, label %bb.bt, !prof !105

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !102
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %_ZN5arrow6StatusC2ERKS0_.exit132 unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit120
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #20
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.hd

bb.bw:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.id = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !381, !noalias !1331 ; 3 uses
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %.thread, label %bb.by

.thread:                                          ; preds = %bb.bx
  %i.ig = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 0, ptr %i.ig, align 8, !tbaa !381, !alias.scope !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !86, !noalias !1331 ; 2 uses
  store ptr %i.ii, ptr %27, align 8, !tbaa !86, !alias.scope !1331
  %i.ij = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !46, !noalias !1331 ; 4 uses
  store ptr null, ptr %i.ik, align 8, !tbaa !46, !noalias !1331
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !46, !alias.scope !1331
  store ptr null, ptr %i.ih, align 8, !tbaa !86, !noalias !1331
  %i.im = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 %i.ie, ptr %i.im, align 8, !tbaa !381, !alias.scope !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %.not.i.i.i133 = icmp eq i8 %i.ie, 2
  br i1 %.not.i.i.i133, label %_ZNK5arrow5Datum5arrayEv.exit, label %bb.bz

bb.bz:                                            ; preds = %.thread, %bb.by
  %i.in = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.in, align 8, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr @.str.10, ptr %i.io, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.in, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc134 unwind label %bb.dq

.noexc134:                                        ; preds = %bb.bz
  unreachable

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.by
  store ptr %i.ii, ptr %28, align 16, !tbaa !278
  %i.ip = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store ptr %i.il, ptr %i.ip, align 8, !tbaa !46
  %.not.i.i.i135 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i135, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 3 uses
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i136 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i136, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !3
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.iu = atomicrmw volatile add ptr %i.iq, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZNK5arrow5Datum5arrayEv.exit
  %i.iv = load i64, ptr %i.af, align 8, !tbaa !327
  %i.iw = load ptr, ptr %i.ai, align 8, !tbaa !315
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.iv
  %i.iy = invoke noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %i.z)
          to label %bb.ce unwind label %bb.dr

bb.ce:                                            ; preds = %bb.cd
  %i.iz = icmp slt i64 %i.iy, 1
  %or.cond = or i1 %i.iz, %i.dr
  br i1 %or.cond, label %bb.fr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.val = load ptr, ptr %1, align 8, !tbaa !292
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !293 ; 3 uses
  %i.ja = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1332
  %i.jb = load ptr, ptr %i.ai, align 8, !tbaa !315, !noalias !1332
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1332
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.val.val, ptr %i.jd, align 8, !tbaa !1112, !noalias !1332
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 64, ptr %i.je, align 8, !tbaa !1124, !noalias !1332
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, i8 0, i64 16, i1 false), !noalias !1332
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.val.val, ptr %i.jg, align 8, !tbaa !1125, !noalias !1332
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.jh, align 8, !tbaa !1126, !noalias !1332
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false), !noalias !1332
  store i64 64, ptr %i.jj, align 8, !tbaa !1127, !noalias !1332
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, i8 0, i64 64, i1 false), !noalias !1332
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %10, align 8, !tbaa !44, !noalias !1332
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.jl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i unwind label %bb.cj, !noalias !1332 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.cf
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !46, !noalias !1338 ; 2 uses
  %i.jq = load <2 x ptr>, ptr %i.jl, align 8, !tbaa !86, !noalias !1338
  store <2 x ptr> %i.jq, ptr %i.jm, align 8, !tbaa !86, !alias.scope !1335, !noalias !1332
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !1338
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !3, !noalias !1338
  %i.ju = add nsw i32 %i.jt, 1
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !3, !noalias !1338
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.jv = atomicrmw volatile add ptr %i.jr, i32 1 acq_rel, align 4, !noalias !1338 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.cj:                                            ; preds = %bb.cf
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %10) #20, !noalias !1332
  br label %.body152

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ci, %bb.ch, %.noexc.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jx, i8 0, i64 16, i1 false), !noalias !1332
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr %.val.val, ptr %i.jy, align 8, !tbaa !1125, !noalias !1332
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.jz, align 8, !tbaa !1126, !noalias !1332
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, i8 0, i64 16, i1 false), !noalias !1332
  store i64 64, ptr %i.kb, align 8, !tbaa !1127, !noalias !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !1332
  %i.kc = load i64, ptr %i.ap, align 8, !tbaa !332, !noalias !1332
  %i.kd = sext i32 %i.ae to i64                   ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1132, !noalias !1339 ; 2 uses
  %i.kg = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1339
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !1339
  %i.kj = invoke noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %.noexc.i unwind label %bb.co, !noalias !1332, !inline_history !1136

.noexc.i:                                         ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kk = mul nsw i64 %i.kc, %i.kd
  %i.kl = add nsw i64 %i.kj, %i.kk                ; 2 uses
  %.not.i.i140 = icmp sgt i64 %i.kl, %i.kf
  br i1 %.not.i.i140, label %bb.ck, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1332
  br label %_ZN5arrow6StatusD2Ev.exit39.i

bb.ck:                                            ; preds = %.noexc.i
  %i.km = shl nsw i64 %i.kf, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.kl, i64 %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1339
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1339
  invoke void %i.kp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %10, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit.i150 unwind label %bb.co, !noalias !1332, !inline_history !1136

_ZN5arrow6StatusD2Ev.exit.i150:                   ; preds = %bb.ck
  %.pr.i151 = load ptr, ptr %12, align 8, !tbaa !102, !noalias !1332 ; 2 uses
  store ptr %.pr.i151, ptr %11, align 8, !tbaa !102, !noalias !1332
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1332
  %i.kq = icmp eq ptr %.pr.i151, null
  br i1 %i.kq, label %_ZN5arrow6StatusD2Ev.exit39.i, label %bb.cl, !prof !1137

bb.cl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i150
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %i.kr = load ptr, ptr %11, align 8, !tbaa !102, !noalias !1332 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.kr, null
  br i1 %.not.i34.i, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1332
  br label %bb.da

bb.co:                                            ; preds = %bb.ck, %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1332
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1332
  br label %bb.dn

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i150, %_ZN5arrow6StatusD2Ev.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1332
  %i.kw = load i64, ptr %i.ap, align 8, !tbaa !332, !noalias !1332 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, 0
  br i1 %i.kx, label %.lr.ph7.i, label %._crit_edge.i

.lr.ph7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit39.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.kz = icmp sgt i32 %i.ae, 0                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 6 uses
  br label %bb.cp

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit39.i
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.230") align 8 %29, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %bb.da unwind label %bb.cz

bb.cp:                                            ; preds = %.loopexit.i, %.lr.ph7.i
  %i.lc = phi i64 [ %i.kw, %.lr.ph7.i ], [ %i.nm, %.loopexit.i ]
  %.0226.i = phi i64 [ 0, %.lr.ph7.i ], [ %i.nl, %.loopexit.i ] ; 6 uses
  %i.ld = load ptr, ptr %i.ah, align 8, !tbaa !315, !noalias !1332 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i145, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.le = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1332
  %i.lf = add nsw i64 %i.le, %.0226.i             ; 2 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !55, !noalias !1332
  %i.lj = trunc i64 %i.lf to i8
  %i.lk = and i8 %i.lj, 7
  %i.ll = lshr i8 %i.li, %i.lk
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.cy, label %.preheader.i146

bb.cr:                                            ; preds = %bb.cp
  %i.ln = load ptr, ptr %i.z, align 8, !tbaa !535, !noalias !1332
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !861, !noalias !1332
  switch i32 %i.lp, label %bb.cv [
    i32 27, label %bb.cs
    i32 28, label %bb.ct
    i32 38, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.lq = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %bb.cw unwind label %bb.cx, !noalias !1332

bb.ct:                                            ; preds = %bb.cr
  %i.lr = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %.noexc41.i unwind label %bb.cx, !noalias !1332

.noexc41.i:                                       ; preds = %bb.ct
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_12ListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176, %bb.er, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.qk, ptr %i.ip, align 8, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit173, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN5arrow5DatumD2Ev.exit178 unwind label %bb.ew

bb.ew:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit178:                      ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit168

_ZN5arrow6StatusC2ERKS0_.exit168:                 ; preds = %bb.eb, %_ZN5arrow5DatumD2Ev.exit178
  %i.rm = load ptr, ptr %31, align 8, !tbaa !102  ; 2 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %bb.ex, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !105

bb.ex:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.ro = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ro)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.rp = landingpad { ptr, i32 }
          catch ptr null
  %i.rq = extractvalue { ptr, i32 } %i.rp, 0
  call void @__clang_call_terminate(ptr %i.rq) #23
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr.i180 = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %.not.i.i181 = icmp eq ptr %.pr.i180, null
  br i1 %.not.i.i181, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rr = phi ptr [ %.pr.i180, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.rm, %_ZN5arrow6StatusC2ERKS0_.exit168 ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.rv = load ptr, ptr %i.pc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i182, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 4 uses
  %i.rx = load atomic i64, ptr %i.rw acquire, align 8 ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 4294967297
  %i.rz = trunc i64 %i.rx to i32                  ; 2 uses
  br i1 %i.ry, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rw, align 8, !tbaa !41
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 0, ptr %i.sa, align 4, !tbaa !43
  %i.sb = load ptr, ptr %i.rv, align 8, !tbaa !44
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20, !inline_history !1164
  %i.se = load ptr, ptr %i.rv, align 8, !tbaa !44
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20, !inline_history !1164
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fc:                                            ; preds = %bb.fa
  %i.sh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i183 = icmp eq i8 %i.sh, 0
  br i1 %.not.i.i.i183, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.si = add nsw i32 %i.rz, -1
  store i32 %i.si, ptr %i.rw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.fe:                                            ; preds = %bb.fc
  %i.sj = atomicrmw volatile add ptr %i.rw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i185 = phi i32 [ %i.rz, %bb.fd ], [ %i.sj, %bb.fe ]
  %i.sk = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.sk, label %bb.ff, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rv) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.sl = load ptr, ptr %29, align 8, !tbaa !102  ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.fg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !105

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sn = load ptr, ptr %i.pd, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i.i187, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.so, align 8, !tbaa !41
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !43
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !44
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !1165
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !44
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !1165
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i188 = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i188, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sr, %bb.fk ], [ %i.tb, %bb.fl ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tc, label %bb.fm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !56

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fi
  %.pr.i189.pr = load ptr, ptr %29, align 8, !tbaa !102 ; 2 uses
  %.not.i.i190 = icmp eq ptr %.pr.i189.pr, null
  br i1 %.not.i.i190, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.td = phi ptr [ %.pr.i189.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.sl, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !106, !range !115, !noundef !116
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.fg, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br i1 %i.pw, label %bb.gh, label %bb.gk

bb.fo:                                            ; preds = %bb.ej, %bb.eh
  %.pn71 = phi { ptr, i32 } [ %i.qa, %bb.eh ], [ %i.qf, %bb.ej ]
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.eg
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.fo ], [ %.pn.pn, %bb.eg ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ds
  %.pn75 = phi { ptr, i32 } [ %i.pa, %bb.ds ], [ %.pn71.pn, %bb.fp ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %.body152

bb.fr:                                            ; preds = %bb.ce
  %i.th = load i32, ptr %i.ix, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.th, 0
  br i1 %.not, label %bb.gh, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.ti = load ptr, ptr %28, align 16, !tbaa !278
  %i.tj = sext i32 %i.th to i64
  %i.tk = load i64, ptr %i.ap, align 8, !tbaa !332
  %i.tl = sext i32 %i.ae to i64
  %i.tm = mul nsw i64 %i.tk, %i.tl
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %37, ptr noundef nonnull align 8 dereferenceable(120) %i.ti, i64 noundef %i.tj, i64 noundef %i.tm)
          to label %bb.ft unwind label %bb.gg

bb.ft:                                            ; preds = %bb.fs
  %i.tn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.to = load <2 x ptr>, ptr %37, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.tp = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.to, ptr %28, align 16, !tbaa !86
  %.not.i.i.i.i191 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i191, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 4 uses
  %i.tr = load atomic i64, ptr %i.tq acquire, align 8 ; 2 uses
  %i.ts = icmp eq i64 %i.tr, 4294967297
  %i.tt = trunc i64 %i.tr to i32                  ; 2 uses
  br i1 %i.ts, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.tq, align 8, !tbaa !41
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i32 0, ptr %i.tu, align 4, !tbaa !43
  %i.tv = load ptr, ptr %i.tp, align 8, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20, !inline_history !670
  %i.ty = load ptr, ptr %i.tp, align 8, !tbaa !44
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8
  call void %i.ua(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20, !inline_history !670
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.fw:                                            ; preds = %bb.fu
  %i.ub = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i192 = icmp eq i8 %i.ub, 0
  br i1 %.not.i.i.i.i.i192, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.uc = add nsw i32 %i.tt, -1
  store i32 %i.uc, ptr %i.tq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

bb.fy:                                            ; preds = %bb.fw
  %i.ud = atomicrmw volatile add ptr %i.tq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i194 = phi i32 [ %i.tt, %bb.fx ], [ %i.ud, %bb.fy ]
  %i.ue = icmp eq i32 %.0.i.i.i.i.i.i194, 1
  br i1 %i.ue, label %bb.fz, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !56

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tp) #20
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193, %bb.fz
  %.pr242 = load ptr, ptr %i.tn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i195 = icmp eq ptr %.pr242, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.uf = getelementptr inbounds nuw i8, ptr %.pr242, i64 8 ; 4 uses
  %i.ug = load atomic i64, ptr %i.uf acquire, align 8 ; 2 uses
  %i.uh = icmp eq i64 %i.ug, 4294967297
  %i.ui = trunc i64 %i.ug to i32                  ; 2 uses
  br i1 %i.uh, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.uf, align 8, !tbaa !41
  %i.uj = getelementptr inbounds nuw i8, ptr %.pr242, i64 12
  store i32 0, ptr %i.uj, align 4, !tbaa !43
  %i.uk = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  %i.un = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.up = load ptr, ptr %i.uo, align 8
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.gc:                                            ; preds = %bb.ga
  %i.uq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i196 = icmp eq i8 %i.uq, 0
  br i1 %.not.i.i.i196, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ur = add nsw i32 %i.ui, -1
  store i32 %i.ur, ptr %i.uf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.ge:                                            ; preds = %bb.gc
  %i.us = atomicrmw volatile add ptr %i.uf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i198 = phi i32 [ %i.ui, %bb.gd ], [ %i.us, %bb.ge ]
  %i.ut = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.ut, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !56

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %bb.ft, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fs
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %.body152

bb.gh:                                            ; preds = %bb.fr, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.uv = getelementptr inbounds nuw i8, ptr %i.dv, i64 72 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !394 ; 5 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !395
  %.not.i200 = icmp eq ptr %i.uw, %i.uy
  br i1 %.not.i200, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr null, ptr %i.uz, align 8, !tbaa !46
  %i.va = load <2 x ptr>, ptr %28, align 16, !tbaa !86
  store ptr null, ptr %i.ip, align 8, !tbaa !46
  store <2 x ptr> %i.va, ptr %i.uw, align 8, !tbaa !86
  store ptr null, ptr %28, align 16, !tbaa !278
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  store ptr %i.vb, ptr %i.uv, align 8, !tbaa !394
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.gj:                                            ; preds = %bb.gh
  %i.vc = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.vc, ptr %i.uw, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.dr

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.gj, %bb.gi
  store ptr null, ptr %0, align 8, !tbaa !102, !alias.scope !1361
  br label %bb.gk

.critedge:                                        ; preds = %bb.dp
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.gk

bb.gk:                                            ; preds = %.critedge, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.vd = load ptr, ptr %i.ip, align 8, !tbaa !46 ; 8 uses
  %.not.i.i202 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i202, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 4 uses
  %i.vf = load atomic i64, ptr %i.ve acquire, align 8 ; 2 uses
  %i.vg = icmp eq i64 %i.vf, 4294967297
  %i.vh = trunc i64 %i.vf to i32                  ; 2 uses
  br i1 %i.vg, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.ve, align 8, !tbaa !41
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  store i32 0, ptr %i.vi, align 4, !tbaa !43
  %i.vj = load ptr, ptr %i.vd, align 8, !tbaa !44
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20, !inline_history !386
  %i.vm = load ptr, ptr %i.vd, align 8, !tbaa !44
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

bb.gn:                                            ; preds = %bb.gl
  %i.vp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i203 = icmp eq i8 %i.vp, 0
  br i1 %.not.i.i.i203, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vq = add nsw i32 %i.vh, -1
  store i32 %i.vq, ptr %i.ve, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

bb.gp:                                            ; preds = %bb.gn
  %i.vr = atomicrmw volatile add ptr %i.ve, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i205 = phi i32 [ %i.vh, %bb.go ], [ %i.vr, %bb.gp ]
  %i.vs = icmp eq i32 %.0.i.i.i.i205, 1
  br i1 %i.vs, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, !prof !56

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gs, align 8, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !43
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20, !inline_history !258
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !44
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i124 = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i124, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

bb.bk:                                            ; preds = %bb.bi
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i126 = phi i32 [ %i.gv, %bb.bj ], [ %i.hf, %bb.bk ]
  %i.hg = icmp eq i32 %.0.i.i.i.i126, 1
  br i1 %i.hg, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hj = load ptr, ptr %i.fc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i127 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i127, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hk, align 8, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !43
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20, !inline_history !386
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !44
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i128 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i128, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

bb.br:                                            ; preds = %bb.bp
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i130 = phi i32 [ %i.hn, %bb.bq ], [ %i.hx, %bb.br ]
  %i.hy = icmp eq i32 %.0.i.i.i.i130, 1
  br i1 %i.hy, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.hz = load ptr, ptr %22, align 8, !tbaa !102
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bx, label %bb.bt, !prof !105

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !102
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %_ZN5arrow6StatusC2ERKS0_.exit132 unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit120
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #20
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.hd

bb.bw:                                            ; preds = %bb.bt
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !381, !noalias !1391 ; 3 uses
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %.thread, label %bb.by

.thread:                                          ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 0, ptr %i.ih, align 8, !tbaa !381, !alias.scope !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !86, !noalias !1391 ; 2 uses
  store ptr %i.ij, ptr %27, align 8, !tbaa !86, !alias.scope !1391
  %i.ik = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !46, !noalias !1391 ; 4 uses
  store ptr null, ptr %i.il, align 8, !tbaa !46, !noalias !1391
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !46, !alias.scope !1391
  store ptr null, ptr %i.ii, align 8, !tbaa !86, !noalias !1391
  %i.in = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 %i.if, ptr %i.in, align 8, !tbaa !381, !alias.scope !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %.not.i.i.i133 = icmp eq i8 %i.if, 2
  br i1 %.not.i.i.i133, label %_ZNK5arrow5Datum5arrayEv.exit, label %bb.bz

bb.bz:                                            ; preds = %.thread, %bb.by
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.io, align 8, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr @.str.10, ptr %i.ip, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc134 unwind label %bb.dq

.noexc134:                                        ; preds = %bb.bz
  unreachable

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.by
  store ptr %i.ij, ptr %28, align 16, !tbaa !278
  %i.iq = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store ptr %i.im, ptr %i.iq, align 8, !tbaa !46
  %.not.i.i.i135 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i135, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i136 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i136, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !3
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.iv = atomicrmw volatile add ptr %i.ir, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZNK5arrow5Datum5arrayEv.exit
  %i.iw = load i64, ptr %i.af, align 8, !tbaa !327
  %i.ix = load ptr, ptr %i.ai, align 8, !tbaa !315
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = invoke noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %i.z)
          to label %bb.ce unwind label %bb.dr

bb.ce:                                            ; preds = %bb.cd
  %i.ja = icmp slt i64 %i.iz, 1
  %or.cond = or i1 %i.ja, %i.ds
  br i1 %or.cond, label %bb.fr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.val = load ptr, ptr %1, align 8, !tbaa !292
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !293 ; 3 uses
  %i.jb = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1392
  %i.jc = load ptr, ptr %i.ai, align 8, !tbaa !315, !noalias !1392
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1392
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.val.val, ptr %i.je, align 8, !tbaa !1112, !noalias !1392
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 64, ptr %i.jf, align 8, !tbaa !1124, !noalias !1392
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jg, i8 0, i64 16, i1 false), !noalias !1392
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.val.val, ptr %i.jh, align 8, !tbaa !1125, !noalias !1392
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ji, align 8, !tbaa !1126, !noalias !1392
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false), !noalias !1392
  store i64 64, ptr %i.jk, align 8, !tbaa !1127, !noalias !1392
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jl, i8 0, i64 64, i1 false), !noalias !1392
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %10, align 8, !tbaa !44, !noalias !1392
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.jm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i unwind label %bb.cj, !noalias !1392 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.cf
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !46, !noalias !1398 ; 2 uses
  %i.jr = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !86, !noalias !1398
  store <2 x ptr> %i.jr, ptr %i.jn, align 8, !tbaa !86, !alias.scope !1395, !noalias !1392
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 3 uses
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !1398
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !3, !noalias !1398
  %i.jv = add nsw i32 %i.ju, 1
  store i32 %i.jv, ptr %i.js, align 4, !tbaa !3, !noalias !1398
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.jw = atomicrmw volatile add ptr %i.js, i32 1 acq_rel, align 4, !noalias !1398 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.cj:                                            ; preds = %bb.cf
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %10) #20, !noalias !1392
  br label %.body152

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ci, %bb.ch, %.noexc.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jy, i8 0, i64 16, i1 false), !noalias !1392
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr %.val.val, ptr %i.jz, align 8, !tbaa !1125, !noalias !1392
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ka, align 8, !tbaa !1126, !noalias !1392
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false), !noalias !1392
  store i64 64, ptr %i.kc, align 8, !tbaa !1127, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !1392
  %i.kd = load i64, ptr %i.aq, align 8, !tbaa !332, !noalias !1392
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1132, !noalias !1399 ; 2 uses
  %i.kg = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1399
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !1399
  %i.kj = invoke noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %.noexc.i unwind label %bb.co, !noalias !1392, !inline_history !1136

.noexc.i:                                         ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kk = mul nsw i64 %i.kd, %i.am
  %i.kl = add nsw i64 %i.kj, %i.kk                ; 2 uses
  %.not.i.i140 = icmp sgt i64 %i.kl, %i.kf
  br i1 %.not.i.i140, label %bb.ck, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1392
  br label %_ZN5arrow6StatusD2Ev.exit39.i

bb.ck:                                            ; preds = %.noexc.i
  %i.km = shl nsw i64 %i.kf, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.kl, i64 %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1399
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1399
  invoke void %i.kp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %10, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit.i150 unwind label %bb.co, !noalias !1392, !inline_history !1136

_ZN5arrow6StatusD2Ev.exit.i150:                   ; preds = %bb.ck
  %.pr.i151 = load ptr, ptr %12, align 8, !tbaa !102, !noalias !1392 ; 2 uses
  store ptr %.pr.i151, ptr %11, align 8, !tbaa !102, !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1392
  %i.kq = icmp eq ptr %.pr.i151, null
  br i1 %i.kq, label %_ZN5arrow6StatusD2Ev.exit39.i, label %bb.cl, !prof !1137

bb.cl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i150
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %i.kr = load ptr, ptr %11, align 8, !tbaa !102, !noalias !1392 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.kr, null
  br i1 %.not.i34.i, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1392
  br label %bb.da

bb.co:                                            ; preds = %bb.ck, %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1392
  br label %bb.dn

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i150, %_ZN5arrow6StatusD2Ev.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1392
  %i.kw = load i64, ptr %i.aq, align 8, !tbaa !332, !noalias !1392 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, 0
  br i1 %i.kx, label %.lr.ph7.i, label %._crit_edge.i

.lr.ph7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit39.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.kz = icmp sgt i32 %i.ae, 0                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 6 uses
  br label %bb.cp

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit39.i
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.230") align 8 %29, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %bb.da unwind label %bb.cz

bb.cp:                                            ; preds = %.loopexit.i, %.lr.ph7.i
  %i.lc = phi i64 [ %i.kw, %.lr.ph7.i ], [ %i.nl, %.loopexit.i ]
  %.0226.i = phi i64 [ 0, %.lr.ph7.i ], [ %i.nk, %.loopexit.i ] ; 6 uses
  %i.ld = load ptr, ptr %i.ah, align 8, !tbaa !315, !noalias !1392 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i145, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.le = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1392
  %i.lf = add nsw i64 %i.le, %.0226.i             ; 2 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !55, !noalias !1392
  %i.lj = trunc i64 %i.lf to i8
  %i.lk = and i8 %i.lj, 7
  %i.ll = lshr i8 %i.li, %i.lk
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.cy, label %.preheader.i146

bb.cr:                                            ; preds = %bb.cp
  %i.ln = load ptr, ptr %i.z, align 8, !tbaa !535, !noalias !1392
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !861, !noalias !1392
  switch i32 %i.lp, label %bb.cv [
    i32 27, label %bb.cs
    i32 28, label %bb.ct
    i32 38, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.lq = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %bb.cw unwind label %bb.cx, !noalias !1392

bb.ct:                                            ; preds = %bb.cr
  %i.lr = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %.noexc41.i unwind label %bb.cx, !noalias !1392

.noexc41.i:                                       ; preds = %bb.ct
  br i1 %i.lr, label %.preheader.i146, label %bb.cy
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_13LargeListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176, %bb.er, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.qj, ptr %i.iq, align 8, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit173, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN5arrow5DatumD2Ev.exit178 unwind label %bb.ew

bb.ew:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit178:                      ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit168

_ZN5arrow6StatusC2ERKS0_.exit168:                 ; preds = %bb.eb, %_ZN5arrow5DatumD2Ev.exit178
  %i.rl = load ptr, ptr %31, align 8, !tbaa !102  ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.ex, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !105

bb.ex:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rn = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #23
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr.i180 = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %.not.i.i181 = icmp eq ptr %.pr.i180, null
  br i1 %.not.i.i181, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rq = phi ptr [ %.pr.i180, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.rl, %_ZN5arrow6StatusC2ERKS0_.exit168 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !106, !range !115, !noundef !116
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.ru = load ptr, ptr %i.pb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i182, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 4 uses
  %i.rw = load atomic i64, ptr %i.rv acquire, align 8 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 4294967297
  %i.ry = trunc i64 %i.rw to i32                  ; 2 uses
  br i1 %i.rx, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rv, align 8, !tbaa !41
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  store i32 0, ptr %i.rz, align 4, !tbaa !43
  %i.sa = load ptr, ptr %i.ru, align 8, !tbaa !44
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20, !inline_history !1164
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !44
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20, !inline_history !1164
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fc:                                            ; preds = %bb.fa
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i183 = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i183, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sh = add nsw i32 %i.ry, -1
  store i32 %i.sh, ptr %i.rv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.fe:                                            ; preds = %bb.fc
  %i.si = atomicrmw volatile add ptr %i.rv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i185 = phi i32 [ %i.ry, %bb.fd ], [ %i.si, %bb.fe ]
  %i.sj = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.sj, label %bb.ff, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.sk = load ptr, ptr %29, align 8, !tbaa !102  ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.fg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !105

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sm = load ptr, ptr %i.pc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i.i.i187, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 4 uses
  %i.so = load atomic i64, ptr %i.sn acquire, align 8 ; 2 uses
  %i.sp = icmp eq i64 %i.so, 4294967297
  %i.sq = trunc i64 %i.so to i32                  ; 2 uses
  br i1 %i.sp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.sn, align 8, !tbaa !41
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  store i32 0, ptr %i.sr, align 4, !tbaa !43
  %i.ss = load ptr, ptr %i.sm, align 8, !tbaa !44
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20, !inline_history !1165
  %i.sv = load ptr, ptr %i.sm, align 8, !tbaa !44
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20, !inline_history !1165
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.sy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i188 = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i.i.i.i.i188, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sz = add nsw i32 %i.sq, -1
  store i32 %i.sz, ptr %i.sn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.ta = atomicrmw volatile add ptr %i.sn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sq, %bb.fk ], [ %i.ta, %bb.fl ]
  %i.tb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tb, label %bb.fm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !56

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fi
  %.pr.i189.pr = load ptr, ptr %29, align 8, !tbaa !102 ; 2 uses
  %.not.i.i190 = icmp eq ptr %.pr.i189.pr, null
  br i1 %.not.i.i190, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.tc = phi ptr [ %.pr.i189.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.sk, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !106, !range !115, !noundef !116
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.fg, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br i1 %i.pv, label %bb.gh, label %bb.gk

bb.fo:                                            ; preds = %bb.ej, %bb.eh
  %.pn71 = phi { ptr, i32 } [ %i.pz, %bb.eh ], [ %i.qe, %bb.ej ]
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.eg
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.fo ], [ %.pn.pn, %bb.eg ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ds
  %.pn75 = phi { ptr, i32 } [ %i.oz, %bb.ds ], [ %.pn71.pn, %bb.fp ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %.body152

bb.fr:                                            ; preds = %bb.ce
  %i.tg = load i64, ptr %i.iy, align 8, !tbaa !319 ; 2 uses
  %.not = icmp eq i64 %i.tg, 0
  br i1 %.not, label %bb.gh, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.th = load ptr, ptr %28, align 16, !tbaa !278
  %i.ti = load i64, ptr %i.aq, align 8, !tbaa !332
  %i.tj = mul nsw i64 %i.ti, %i.am
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %37, ptr noundef nonnull align 8 dereferenceable(120) %i.th, i64 noundef %i.tg, i64 noundef %i.tj)
          to label %bb.ft unwind label %bb.gg

bb.ft:                                            ; preds = %bb.fs
  %i.tk = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.tl = load <2 x ptr>, ptr %37, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.tm = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.tl, ptr %28, align 16, !tbaa !86
  %.not.i.i.i.i191 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i.i191, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 4 uses
  %i.to = load atomic i64, ptr %i.tn acquire, align 8 ; 2 uses
  %i.tp = icmp eq i64 %i.to, 4294967297
  %i.tq = trunc i64 %i.to to i32                  ; 2 uses
  br i1 %i.tp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.tn, align 8, !tbaa !41
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  store i32 0, ptr %i.tr, align 4, !tbaa !43
  %i.ts = load ptr, ptr %i.tm, align 8, !tbaa !44
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20, !inline_history !670
  %i.tv = load ptr, ptr %i.tm, align 8, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20, !inline_history !670
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.fw:                                            ; preds = %bb.fu
  %i.ty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i192 = icmp eq i8 %i.ty, 0
  br i1 %.not.i.i.i.i.i192, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tz = add nsw i32 %i.tq, -1
  store i32 %i.tz, ptr %i.tn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

bb.fy:                                            ; preds = %bb.fw
  %i.ua = atomicrmw volatile add ptr %i.tn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i194 = phi i32 [ %i.tq, %bb.fx ], [ %i.ua, %bb.fy ]
  %i.ub = icmp eq i32 %.0.i.i.i.i.i.i194, 1
  br i1 %i.ub, label %bb.fz, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !56

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193, %bb.fz
  %.pr242 = load ptr, ptr %i.tk, align 8, !tbaa !46 ; 8 uses
  %.not.i.i195 = icmp eq ptr %.pr242, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.uc = getelementptr inbounds nuw i8, ptr %.pr242, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.uc, align 8, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %.pr242, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !43
  %i.uh = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  %i.uk = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.gc:                                            ; preds = %bb.ga
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i196 = icmp eq i8 %i.un, 0
  br i1 %.not.i.i.i196, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.ge:                                            ; preds = %bb.gc
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i198 = phi i32 [ %i.uf, %bb.gd ], [ %i.up, %bb.ge ]
  %i.uq = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.uq, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !56

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %bb.ft, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fs
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %.body152

bb.gh:                                            ; preds = %bb.fr, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.us = getelementptr inbounds nuw i8, ptr %i.dw, i64 72 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !394 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !395
  %.not.i200 = icmp eq ptr %i.ut, %i.uv
  br i1 %.not.i200, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store ptr null, ptr %i.uw, align 8, !tbaa !46
  %i.ux = load <2 x ptr>, ptr %28, align 16, !tbaa !86
  store ptr null, ptr %i.iq, align 8, !tbaa !46
  store <2 x ptr> %i.ux, ptr %i.ut, align 8, !tbaa !86
  store ptr null, ptr %28, align 16, !tbaa !278
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store ptr %i.uy, ptr %i.us, align 8, !tbaa !394
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.gj:                                            ; preds = %bb.gh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, ptr %i.ut, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.dr

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.gj, %bb.gi
  store ptr null, ptr %0, align 8, !tbaa !102, !alias.scope !1421
  br label %bb.gk

.critedge:                                        ; preds = %bb.dp
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.gk

bb.gk:                                            ; preds = %.critedge, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.va = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i202 = icmp eq ptr %i.va, null
  br i1 %.not.i.i202, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 4 uses
  %i.vc = load atomic i64, ptr %i.vb acquire, align 8 ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 4294967297
  %i.ve = trunc i64 %i.vc to i32                  ; 2 uses
  br i1 %i.vd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.vb, align 8, !tbaa !41
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  store i32 0, ptr %i.vf, align 4, !tbaa !43
  %i.vg = load ptr, ptr %i.va, align 8, !tbaa !44
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20, !inline_history !386
  %i.vj = load ptr, ptr %i.va, align 8, !tbaa !44
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

bb.gn:                                            ; preds = %bb.gl
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i203 = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i203, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vn = add nsw i32 %i.ve, -1
  store i32 %i.vn, ptr %i.vb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

bb.gp:                                            ; preds = %bb.gn
  %i.vo = atomicrmw volatile add ptr %i.vb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i205 = phi i32 [ %i.ve, %bb.go ], [ %i.vo, %bb.gp ]
  %i.vp = icmp eq i32 %.0.i.i.i.i205, 1
  br i1 %i.vp, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, !prof !56

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206: ; preds = %bb.gk, %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %27)
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_17LargeListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gs, align 8, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !43
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20, !inline_history !258
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !44
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i124 = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i124, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

bb.bk:                                            ; preds = %bb.bi
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i126 = phi i32 [ %i.gv, %bb.bj ], [ %i.hf, %bb.bk ]
  %i.hg = icmp eq i32 %.0.i.i.i.i126, 1
  br i1 %i.hg, label %bb.bl, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i125, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hj = load ptr, ptr %i.fc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i127 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i127, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hk, align 8, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !43
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20, !inline_history !386
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !44
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i128 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i128, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

bb.br:                                            ; preds = %bb.bp
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i130 = phi i32 [ %i.hn, %bb.bq ], [ %i.hx, %bb.br ]
  %i.hy = icmp eq i32 %.0.i.i.i.i130, 1
  br i1 %i.hy, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i129, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.hz = load ptr, ptr %22, align 8, !tbaa !102
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bx, label %bb.bt, !prof !105

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !102
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %_ZN5arrow6StatusC2ERKS0_.exit132 unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit120
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #20
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.hd

bb.bw:                                            ; preds = %bb.bt
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !381, !noalias !1451 ; 3 uses
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %.thread, label %bb.by

.thread:                                          ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 0, ptr %i.ih, align 8, !tbaa !381, !alias.scope !1451
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !86, !noalias !1451 ; 2 uses
  store ptr %i.ij, ptr %27, align 8, !tbaa !86, !alias.scope !1451
  %i.ik = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !46, !noalias !1451 ; 4 uses
  store ptr null, ptr %i.il, align 8, !tbaa !46, !noalias !1451
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !46, !alias.scope !1451
  store ptr null, ptr %i.ii, align 8, !tbaa !86, !noalias !1451
  %i.in = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i8 %i.if, ptr %i.in, align 8, !tbaa !381, !alias.scope !1451
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %.not.i.i.i133 = icmp eq i8 %i.if, 2
  br i1 %.not.i.i.i133, label %_ZNK5arrow5Datum5arrayEv.exit, label %bb.bz

bb.bz:                                            ; preds = %.thread, %bb.by
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.io, align 8, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr @.str.10, ptr %i.ip, align 8, !tbaa !275
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc134 unwind label %bb.dq

.noexc134:                                        ; preds = %bb.bz
  unreachable

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.by
  store ptr %i.ij, ptr %28, align 16, !tbaa !278
  %i.iq = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store ptr %i.im, ptr %i.iq, align 8, !tbaa !46
  %.not.i.i.i135 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i135, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i136 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i136, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !3
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.iv = atomicrmw volatile add ptr %i.ir, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %_ZNK5arrow5Datum5arrayEv.exit
  %i.iw = load i64, ptr %i.af, align 8, !tbaa !327
  %i.ix = load ptr, ptr %i.ai, align 8, !tbaa !315
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = invoke noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128) %i.z)
          to label %bb.ce unwind label %bb.dr

bb.ce:                                            ; preds = %bb.cd
  %i.ja = icmp slt i64 %i.iz, 1
  %or.cond = or i1 %i.ja, %i.ds
  br i1 %or.cond, label %bb.fr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.val = load ptr, ptr %1, align 8, !tbaa !292
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !293 ; 3 uses
  %i.jb = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1452
  %i.jc = load ptr, ptr %i.ai, align 8, !tbaa !315, !noalias !1452
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1452
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.val.val, ptr %i.je, align 8, !tbaa !1112, !noalias !1452
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 64, ptr %i.jf, align 8, !tbaa !1124, !noalias !1452
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jg, i8 0, i64 16, i1 false), !noalias !1452
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.val.val, ptr %i.jh, align 8, !tbaa !1125, !noalias !1452
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ji, align 8, !tbaa !1126, !noalias !1452
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false), !noalias !1452
  store i64 64, ptr %i.jk, align 8, !tbaa !1127, !noalias !1452
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jl, i8 0, i64 64, i1 false), !noalias !1452
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %10, align 8, !tbaa !44, !noalias !1452
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.jm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i unwind label %bb.cj, !noalias !1452 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.cf
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !46, !noalias !1458 ; 2 uses
  %i.jr = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !86, !noalias !1458
  store <2 x ptr> %i.jr, ptr %i.jn, align 8, !tbaa !86, !alias.scope !1455, !noalias !1452
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 3 uses
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55, !noalias !1458
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !3, !noalias !1458
  %i.jv = add nsw i32 %i.ju, 1
  store i32 %i.jv, ptr %i.js, align 4, !tbaa !3, !noalias !1458
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.jw = atomicrmw volatile add ptr %i.js, i32 1 acq_rel, align 4, !noalias !1458 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.cj:                                            ; preds = %bb.cf
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %10) #20, !noalias !1452
  br label %.body152

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.ci, %bb.ch, %.noexc.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jy, i8 0, i64 16, i1 false), !noalias !1452
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr %.val.val, ptr %i.jz, align 8, !tbaa !1125, !noalias !1452
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ka, align 8, !tbaa !1126, !noalias !1452
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false), !noalias !1452
  store i64 64, ptr %i.kc, align 8, !tbaa !1127, !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !1452
  %i.kd = load i64, ptr %i.aq, align 8, !tbaa !332, !noalias !1452
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1132, !noalias !1459 ; 2 uses
  %i.kg = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1459
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !1459
  %i.kj = invoke noundef i64 %i.ki(ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %.noexc.i unwind label %bb.co, !noalias !1452, !inline_history !1136

.noexc.i:                                         ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kk = mul nsw i64 %i.kd, %i.am
  %i.kl = add nsw i64 %i.kj, %i.kk                ; 2 uses
  %.not.i.i140 = icmp sgt i64 %i.kl, %i.kf
  br i1 %.not.i.i140, label %bb.ck, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1452
  br label %_ZN5arrow6StatusD2Ev.exit39.i

bb.ck:                                            ; preds = %.noexc.i
  %i.km = shl nsw i64 %i.kf, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.kl, i64 %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !44, !noalias !1459
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1459
  invoke void %i.kp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %10, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5arrow6StatusD2Ev.exit.i150 unwind label %bb.co, !noalias !1452, !inline_history !1136

_ZN5arrow6StatusD2Ev.exit.i150:                   ; preds = %bb.ck
  %.pr.i151 = load ptr, ptr %12, align 8, !tbaa !102, !noalias !1452 ; 2 uses
  store ptr %.pr.i151, ptr %11, align 8, !tbaa !102, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1452
  %i.kq = icmp eq ptr %.pr.i151, null
  br i1 %i.kq, label %_ZN5arrow6StatusD2Ev.exit39.i, label %bb.cl, !prof !1137

bb.cl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i150
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %i.kr = load ptr, ptr %11, align 8, !tbaa !102, !noalias !1452 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.kr, null
  br i1 %.not.i34.i, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106, !range !115, !noundef !116
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN5arrow6StatusD2Ev.exit35.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %_ZN5arrow6StatusD2Ev.exit35.i

_ZN5arrow6StatusD2Ev.exit35.i:                    ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1452
  br label %bb.da

bb.co:                                            ; preds = %bb.ck, %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1452
  br label %bb.dn

_ZN5arrow6StatusD2Ev.exit39.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i150, %_ZN5arrow6StatusD2Ev.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !1452
  %i.kw = load i64, ptr %i.aq, align 8, !tbaa !332, !noalias !1452 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, 0
  br i1 %i.kx, label %.lr.ph7.i, label %._crit_edge.i

.lr.ph7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit39.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.kz = icmp sgt i32 %i.ae, 0                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 6 uses
  br label %bb.cp

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit39.i
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.230") align 8 %29, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %bb.da unwind label %bb.cz

bb.cp:                                            ; preds = %.loopexit.i, %.lr.ph7.i
  %i.lc = phi i64 [ %i.kw, %.lr.ph7.i ], [ %i.nl, %.loopexit.i ]
  %.0226.i = phi i64 [ 0, %.lr.ph7.i ], [ %i.nk, %.loopexit.i ] ; 6 uses
  %i.ld = load ptr, ptr %i.ah, align 8, !tbaa !315, !noalias !1452 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i145, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.le = load i64, ptr %i.af, align 8, !tbaa !327, !noalias !1452
  %i.lf = add nsw i64 %i.le, %.0226.i             ; 2 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !55, !noalias !1452
  %i.lj = trunc i64 %i.lf to i8
  %i.lk = and i8 %i.lj, 7
  %i.ll = lshr i8 %i.li, %i.lk
  %i.lm = trunc i8 %i.ll to i1
  br i1 %i.lm, label %bb.cy, label %.preheader.i146

bb.cr:                                            ; preds = %bb.cp
  %i.ln = load ptr, ptr %i.z, align 8, !tbaa !535, !noalias !1452
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !861, !noalias !1452
  switch i32 %i.lp, label %bb.cv [
    i32 27, label %bb.cs
    i32 28, label %bb.ct
    i32 38, label %bb.cu
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.lq = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %bb.cw unwind label %bb.cx, !noalias !1452

bb.ct:                                            ; preds = %bb.cr
  %i.lr = invoke noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 noundef %.0226.i)
          to label %.noexc41.i unwind label %bb.cx, !noalias !1452

.noexc41.i:                                       ; preds = %bb.ct
  br i1 %i.lr, label %.preheader.i146, label %bb.cy
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_17LargeListViewTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176, %bb.er, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.qj, ptr %i.iq, align 8, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit: ; preds = %_ZNK5arrow5Datum5arrayEv.exit173, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN5arrow5DatumD2Ev.exit178 unwind label %bb.ew

bb.ew:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  call void @__clang_call_terminate(ptr %i.rk) #23
  unreachable

_ZN5arrow5DatumD2Ev.exit178:                      ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit168

_ZN5arrow6StatusC2ERKS0_.exit168:                 ; preds = %bb.eb, %_ZN5arrow5DatumD2Ev.exit178
  %i.rl = load ptr, ptr %31, align 8, !tbaa !102  ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.ex, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !105

bb.ex:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rn = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #23
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr.i180 = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %.not.i.i181 = icmp eq ptr %.pr.i180, null
  br i1 %.not.i.i181, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit168
  %i.rq = phi ptr [ %.pr.i180, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.rl, %_ZN5arrow6StatusC2ERKS0_.exit168 ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !106, !range !115, !noundef !116
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.ru = load ptr, ptr %i.pb, align 8, !tbaa !46 ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i182, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 4 uses
  %i.rw = load atomic i64, ptr %i.rv acquire, align 8 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 4294967297
  %i.ry = trunc i64 %i.rw to i32                  ; 2 uses
  br i1 %i.rx, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rv, align 8, !tbaa !41
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  store i32 0, ptr %i.rz, align 4, !tbaa !43
  %i.sa = load ptr, ptr %i.ru, align 8, !tbaa !44
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20, !inline_history !1164
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !44
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20, !inline_history !1164
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fc:                                            ; preds = %bb.fa
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i183 = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i183, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sh = add nsw i32 %i.ry, -1
  store i32 %i.sh, ptr %i.rv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.fe:                                            ; preds = %bb.fc
  %i.si = atomicrmw volatile add ptr %i.rv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i185 = phi i32 [ %i.ry, %bb.fd ], [ %i.si, %bb.fe ]
  %i.sj = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.sj, label %bb.ff, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ru) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.sk = load ptr, ptr %29, align 8, !tbaa !102  ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.fg, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !105

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sm = load ptr, ptr %i.pc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i.i.i187, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 4 uses
  %i.so = load atomic i64, ptr %i.sn acquire, align 8 ; 2 uses
  %i.sp = icmp eq i64 %i.so, 4294967297
  %i.sq = trunc i64 %i.so to i32                  ; 2 uses
  br i1 %i.sp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.sn, align 8, !tbaa !41
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  store i32 0, ptr %i.sr, align 4, !tbaa !43
  %i.ss = load ptr, ptr %i.sm, align 8, !tbaa !44
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20, !inline_history !1165
  %i.sv = load ptr, ptr %i.sm, align 8, !tbaa !44
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8
  call void %i.sx(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20, !inline_history !1165
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.fj:                                            ; preds = %bb.fh
  %i.sy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i188 = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i.i.i.i.i188, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sz = add nsw i32 %i.sq, -1
  store i32 %i.sz, ptr %i.sn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.ta = atomicrmw volatile add ptr %i.sn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sq, %bb.fk ], [ %i.ta, %bb.fl ]
  %i.tb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.tb, label %bb.fm, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !56

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sm) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.fi
  %.pr.i189.pr = load ptr, ptr %29, align 8, !tbaa !102 ; 2 uses
  %.not.i.i190 = icmp eq ptr %.pr.i189.pr, null
  br i1 %.not.i.i190, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.tc = phi ptr [ %.pr.i189.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.sk, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !106, !range !115, !noundef !116
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.fg, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br i1 %i.pv, label %bb.gh, label %bb.gk

bb.fo:                                            ; preds = %bb.ej, %bb.eh
  %.pn71 = phi { ptr, i32 } [ %i.pz, %bb.eh ], [ %i.qe, %bb.ej ]
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.eg
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.fo ], [ %.pn.pn, %bb.eg ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ds
  %.pn75 = phi { ptr, i32 } [ %i.oz, %bb.ds ], [ %.pn71.pn, %bb.fp ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %.body152

bb.fr:                                            ; preds = %bb.ce
  %i.tg = load i64, ptr %i.iy, align 8, !tbaa !319 ; 2 uses
  %.not = icmp eq i64 %i.tg, 0
  br i1 %.not, label %bb.gh, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.th = load ptr, ptr %28, align 16, !tbaa !278
  %i.ti = load i64, ptr %i.aq, align 8, !tbaa !332
  %i.tj = mul nsw i64 %i.ti, %i.am
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %37, ptr noundef nonnull align 8 dereferenceable(120) %i.th, i64 noundef %i.tg, i64 noundef %i.tj)
          to label %bb.ft unwind label %bb.gg

bb.ft:                                            ; preds = %bb.fs
  %i.tk = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.tl = load <2 x ptr>, ptr %37, align 16, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.tm = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  store <2 x ptr> %i.tl, ptr %28, align 16, !tbaa !86
  %.not.i.i.i.i191 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i.i191, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 4 uses
  %i.to = load atomic i64, ptr %i.tn acquire, align 8 ; 2 uses
  %i.tp = icmp eq i64 %i.to, 4294967297
  %i.tq = trunc i64 %i.to to i32                  ; 2 uses
  br i1 %i.tp, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.tn, align 8, !tbaa !41
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  store i32 0, ptr %i.tr, align 4, !tbaa !43
  %i.ts = load ptr, ptr %i.tm, align 8, !tbaa !44
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20, !inline_history !670
  %i.tv = load ptr, ptr %i.tm, align 8, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20, !inline_history !670
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.fw:                                            ; preds = %bb.fu
  %i.ty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i192 = icmp eq i8 %i.ty, 0
  br i1 %.not.i.i.i.i.i192, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tz = add nsw i32 %i.tq, -1
  store i32 %i.tz, ptr %i.tn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

bb.fy:                                            ; preds = %bb.fw
  %i.ua = atomicrmw volatile add ptr %i.tn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i194 = phi i32 [ %i.tq, %bb.fx ], [ %i.ua, %bb.fy ]
  %i.ub = icmp eq i32 %.0.i.i.i.i.i.i194, 1
  br i1 %i.ub, label %bb.fz, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !56

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #20
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i193, %bb.fz
  %.pr242 = load ptr, ptr %i.tk, align 8, !tbaa !46 ; 8 uses
  %.not.i.i195 = icmp eq ptr %.pr242, null
  br i1 %.not.i.i195, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.uc = getelementptr inbounds nuw i8, ptr %.pr242, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.uc, align 8, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %.pr242, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !43
  %i.uh = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  %i.uk = load ptr, ptr %.pr242, align 8, !tbaa !44
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

bb.gc:                                            ; preds = %bb.ga
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i196 = icmp eq i8 %i.un, 0
  br i1 %.not.i.i.i196, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

bb.ge:                                            ; preds = %bb.gc
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i198 = phi i32 [ %i.uf, %bb.gd ], [ %i.up, %bb.ge ]
  %i.uq = icmp eq i32 %.0.i.i.i.i198, 1
  br i1 %i.uq, label %bb.gf, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, !prof !56

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr242) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199: ; preds = %bb.ft, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i197, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fs
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %.body152

bb.gh:                                            ; preds = %bb.fr, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit199, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.us = getelementptr inbounds nuw i8, ptr %i.dw, i64 72 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !394 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !395
  %.not.i200 = icmp eq ptr %i.ut, %i.uv
  br i1 %.not.i200, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store ptr null, ptr %i.uw, align 8, !tbaa !46
  %i.ux = load <2 x ptr>, ptr %28, align 16, !tbaa !86
  store ptr null, ptr %i.iq, align 8, !tbaa !46
  store <2 x ptr> %i.ux, ptr %i.ut, align 8, !tbaa !86
  store ptr null, ptr %28, align 16, !tbaa !278
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store ptr %i.uy, ptr %i.us, align 8, !tbaa !394
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.gj:                                            ; preds = %bb.gh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, ptr %i.ut, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.dr

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.gj, %bb.gi
  store ptr null, ptr %0, align 8, !tbaa !102, !alias.scope !1481
  br label %bb.gk

.critedge:                                        ; preds = %bb.dp
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.gk

bb.gk:                                            ; preds = %.critedge, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.va = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i202 = icmp eq ptr %i.va, null
  br i1 %.not.i.i202, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 4 uses
  %i.vc = load atomic i64, ptr %i.vb acquire, align 8 ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 4294967297
  %i.ve = trunc i64 %i.vc to i32                  ; 2 uses
  br i1 %i.vd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 0, ptr %i.vb, align 8, !tbaa !41
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  store i32 0, ptr %i.vf, align 4, !tbaa !43
  %i.vg = load ptr, ptr %i.va, align 8, !tbaa !44
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20, !inline_history !386
  %i.vj = load ptr, ptr %i.va, align 8, !tbaa !44
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

bb.gn:                                            ; preds = %bb.gl
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i203 = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i203, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vn = add nsw i32 %i.ve, -1
  store i32 %i.vn, ptr %i.vb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

bb.gp:                                            ; preds = %bb.gn
  %i.vo = atomicrmw volatile add ptr %i.vb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204: ; preds = %bb.gp, %bb.go
  %.0.i.i.i.i205 = phi i32 [ %i.ve, %bb.go ], [ %i.vo, %bb.gp ]
  %i.vp = icmp eq i32 %.0.i.i.i.i205, 1
  br i1 %i.vp, label %bb.gq, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206, !prof !56

bb.gq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206: ; preds = %bb.gk, %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i204, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %27)
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal12_GLOBAL__N_110CastStruct4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.je = load ptr, ptr %i.hk, align 8, !tbaa !1153, !noalias !1534 ; 3 uses
  store ptr %i.je, ptr %16, align 8, !tbaa !1153, !alias.scope !1534
  %i.jf = load ptr, ptr %i.hm, align 8, !tbaa !46, !noalias !1534 ; 4 uses
  store ptr null, ptr %i.hm, align 8, !tbaa !46, !noalias !1534
  store ptr %i.jf, ptr %i.hl, align 8, !tbaa !46, !alias.scope !1534
  store ptr null, ptr %i.hk, align 8, !tbaa !1153, !noalias !1534
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.hg, align 8, !tbaa !394 ; 5 uses
  %i.ji = load ptr, ptr %i.hh, align 8, !tbaa !395
  %.not.i = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46 ; 2 uses
  %i.jl = load <2 x ptr>, ptr %i.jg, align 8, !tbaa !86
  store <2 x ptr> %i.jl, ptr %i.jh, align 8, !tbaa !86
  %.not.i.i.i.i.i185 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i185, label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i186 = icmp eq i8 %i.jn, 0
  br i1 %.not.i.i.i.i.i.i186, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !3
  %i.jp = add nsw i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.jq = atomicrmw volatile add ptr %i.jm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.hg, align 8, !tbaa !394
  %.pre418.pre = load ptr, ptr %i.hl, align 8, !tbaa !46
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bk
  %.pre418 = phi ptr [ %i.jf, %bb.bk ], [ %i.jf, %bb.bm ], [ %.pre418.pre, %bb.bn ]
  %i.jr = phi ptr [ %i.jh, %bb.bk ], [ %i.jh, %bb.bm ], [ %.pre.i, %bb.bn ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store ptr %i.js, ptr %i.hg, align 8, !tbaa !394
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit

bb.bo:                                            ; preds = %bb.bj
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.jg)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit unwind label %bb.cd

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.bo
  %i.jt = phi ptr [ %.pre418, %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i ], [ %i.jf, %bb.bo ] ; 8 uses
  %.not.i.i188 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i188, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ju, align 8, !tbaa !41
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !43
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !44
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #20, !inline_history !1164
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !44
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #20, !inline_history !1164
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i189 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i189, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i190

bb.bt:                                            ; preds = %bb.br
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i190

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i190: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i191 = phi i32 [ %i.jx, %bb.bs ], [ %i.kh, %bb.bt ]
  %i.ki = icmp eq i32 %.0.i.i.i.i191, 1
  br i1 %i.ki, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i190
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i190, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit184

_ZN5arrow6StatusC2ERKS0_.exit184:                 ; preds = %bb.be, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kj = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.bv, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !105

bb.bv:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit184
  %i.kl = load ptr, ptr %i.hm, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i192 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i192, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kn = load atomic i64, ptr %i.km acquire, align 8 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 4294967297
  %i.kp = trunc i64 %i.kn to i32                  ; 2 uses
  br i1 %i.ko, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.km, align 8, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 0, ptr %i.kq, align 4, !tbaa !43
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #20, !inline_history !1165
  %i.ku = load ptr, ptr %i.kl, align 8, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #20, !inline_history !1165
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i193 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i.i.i193, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ky = add nsw i32 %i.kp, -1
  store i32 %i.ky, ptr %i.km, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194

bb.ca:                                            ; preds = %bb.by
  %i.kz = atomicrmw volatile add ptr %i.km, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i195 = phi i32 [ %i.kp, %bb.bz ], [ %i.kz, %bb.ca ]
  %i.la = icmp eq i32 %.0.i.i.i.i.i.i.i195, 1
  br i1 %i.la, label %bb.cb, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !56

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194, %bb.bx
  %.pr.i196.pr = load ptr, ptr %14, align 8, !tbaa !102 ; 2 uses
  %.not.i.i197 = icmp eq ptr %.pr.i196.pr, null
  br i1 %.not.i.i197, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !380

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit184
  %i.lb = phi ptr [ %.pr.i196.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.kj, %_ZN5arrow6StatusC2ERKS0_.exit184 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !106, !range !115, !noundef !116
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %bb.bv, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %i.ja, label %.critedge148, label %.loopexit280

bb.cd:                                            ; preds = %bb.bo
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bi
  %.pn134 = phi { ptr, i32 } [ %i.jd, %bb.bi ], [ %i.lf, %bb.cd ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.fj

bb.cf:                                            ; preds = %bb.ar
  %i.lg = sext i32 %i.hn to i64                   ; 2 uses
  %i.lh = load ptr, ptr %i.q, align 8, !tbaa !282
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %i.lg ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.lj = load ptr, ptr %i.gq, align 8, !tbaa !321
  %i.lk = getelementptr inbounds nuw [128 x i8], ptr %i.lj, i64 %i.lg
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.lk)
          to label %bb.cg unwind label %bb.dc

bb.cg:                                            ; preds = %bb.cf
  %i.ll = load ptr, ptr %18, align 8, !tbaa !278
  %i.lm = load i64, ptr %i.gr, align 8, !tbaa !327
  %i.ln = load i64, ptr %i.gs, align 8, !tbaa !332
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %17, ptr noundef nonnull align 8 dereferenceable(120) %i.ll, i64 noundef %i.lm, i64 noundef %i.ln)
          to label %bb.ch unwind label %bb.dd

bb.ch:                                            ; preds = %bb.cg
  %i.lo = load ptr, ptr %i.gt, align 8, !tbaa !46 ; 8 uses
  %.not.i.i198 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i198, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.lp, align 8, !tbaa !41
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !43
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !44
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !inline_history !386
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !44
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ck:                                            ; preds = %bb.ci
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i199 = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i199, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i200

bb.cm:                                            ; preds = %bb.ck
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i200

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i200: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i201 = phi i32 [ %i.ls, %bb.cl ], [ %i.mc, %bb.cm ]
  %i.md = icmp eq i32 %.0.i.i.i.i201, 1
  br i1 %i.md, label %bb.cn, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i200
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ch, %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i200, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.me = load ptr, ptr %i.li, align 8, !tbaa !285
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 72
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !1499, !range !115, !noundef !116
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.co, label %bb.dj

bb.co:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mi = load ptr, ptr %i.hp, align 8, !tbaa !285
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 72
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !1499, !range !115, !noundef !116
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.dj, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mm = load ptr, ptr %17, align 8, !tbaa !278
  %i.mn = invoke noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.mm)
          to label %bb.cq unwind label %bb.df

bb.cq:                                            ; preds = %bb.cp
  %i.mo = icmp sgt i64 %i.mn, 0
  br i1 %i.mo, label %bb.cr, label %bb.dj

bb.cr:                                            ; preds = %bb.cq
  %i.mp = load ptr, ptr %i.li, align 8, !tbaa !285 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !256 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !44
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %i.ms, i1 noundef zeroext false)
          to label %bb.cs unwind label %bb.dg

bb.cs:                                            ; preds = %bb.cr
  %i.mw = load ptr, ptr %i.hp, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.mx = load ptr, ptr %i.hr, align 8, !tbaa !256 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !44
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = load ptr, ptr %i.mz, align 8
  invoke void %i.na(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %i.mx, i1 noundef zeroext false)
          to label %bb.ct unwind label %bb.dh

bb.ct:                                            ; preds = %bb.cs
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !1535
  invoke void @_ZN5arrow8internal12JoinToStringIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S2_SA_RA47_S2_SC_SE_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(8) @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr noundef nonnull align 1 dereferenceable(11) @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 1 dereferenceable(47) @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %i.nb, ptr noundef nonnull align 1 dereferenceable(11) @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %.noexc204 unwind label %bb.di

.noexc204:                                        ; preds = %bb.ct
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.noexc204
  %i.nc = load ptr, ptr %7, align 8, !tbaa !266, !noalias !1535 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %.critedge146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202: ; preds = %bb.cu
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !55, !noalias !1535
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.ng) #22
  br label %.critedge146

bb.cv:                                            ; preds = %.noexc204
  %i.nh = landingpad { ptr, i32 }
          cleanup
  %i.ni = load ptr, ptr %7, align 8, !tbaa !266, !noalias !1535 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.cv
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !55, !noalias !1535
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1535
  br label %.body205

.critedge146:                                     ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1535
  %i.nn = load ptr, ptr %20, align 8, !tbaa !266  ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %.critedge146
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !55
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %.critedge146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ns = load ptr, ptr %19, align 8, !tbaa !266  ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !55
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.nx = load ptr, ptr %i.gv, align 8, !tbaa !46 ; 8 uses
  %.not.i.i213 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i213, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit217, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 4 uses
  %i.nz = load atomic i64, ptr %i.ny acquire, align 8 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 4294967297
  %i.ob = trunc i64 %i.nz to i32                  ; 2 uses
  br i1 %i.oa, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.ny, align 8, !tbaa !41
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 0, ptr %i.oc, align 4, !tbaa !43
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !44
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20, !inline_history !386
  %i.og = load ptr, ptr %i.nx, align 8, !tbaa !44
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20, !inline_history !386
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit217

bb.cy:                                            ; preds = %bb.cw
  %i.oj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i214 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i214, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ok = add nsw i32 %i.ob, -1
  store i32 %i.ok, ptr %i.ny, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i215

bb.da:                                            ; preds = %bb.cy
  %i.ol = atomicrmw volatile add ptr %i.ny, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i215

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i215: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i216 = phi i32 [ %i.ob, %bb.cz ], [ %i.ol, %bb.da ]
  %i.om = icmp eq i32 %.0.i.i.i.i216, 1
  br i1 %i.om, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit217, !prof !56

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i215
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit217

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i215, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.loopexit280

bb.dc:                                            ; preds = %bb.cf
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %bb.cg
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #20
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.pn118 = phi { ptr, i32 } [ %i.oo, %bb.dd ], [ %i.on, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.fj

bb.df:                                            ; preds = %bb.cp
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.dg:                                            ; preds = %bb.cr
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

bb.dh:                                            ; preds = %bb.cs
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

bb.di:                                            ; preds = %bb.ct
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body205

.body205:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, %bb.di
  %eh.lpad-body206 = phi { ptr, i32 } [ %i.os, %bb.di ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i ] ; 2 uses
  %i.ot = load ptr, ptr %20, align 8, !tbaa !266  ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.body205
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !55
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %.body205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %bb.dh
  %.pn120 = phi { ptr, i32 } [ %i.or, %bb.dh ], [ %eh.lpad-body206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ], [ %eh.lpad-body206, %.body205 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.oy = load ptr, ptr %19, align 8, !tbaa !266  ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !55
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

end_hunk_11
