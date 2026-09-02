Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/console_reporter?download=true
inline.NumInlined: 231
inline.NumDeleted: 113
begin_hunk_0_@_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE:bb.a
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ao, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39
  %i.as = load ptr, ptr %4, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !36
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ax = load ptr, ptr %2, align 8, !tbaa !35
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !36
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.bb = load ptr, ptr %4, align 8, !tbaa !35
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !36
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bb, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit28 unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit28
  %i.bf = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ap
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.bh = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bj = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ap
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.m
  %i.bs = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.l
  %.pn11 = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.am, %bb.k ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.n
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN9benchmark12FormatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not1314 = icmp eq ptr %i.a, %i.c
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.z, %bb.f ] ; 5 uses
  %i.g = load i8, ptr %i.d, align 8, !tbaa !26, !range !40, !noundef !41
  %i.h = xor i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i32                 ; 2 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !31
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 496
  %i.m = tail call noundef zeroext i1 @_ZN9benchmark8internal9SameNamesERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEESH_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i32
  %i.p = or i32 %i.o, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %i.i, %bb.b ], [ %i.p, %bb.c ]
  %.not9 = icmp eq i32 %i.q, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 496
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.r) ; 0 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.010.015)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.010.015)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 592 ; 2 uses
  %.not13 = icmp eq ptr %i.z, %i.c
  br i1 %.not13, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZN9benchmark8internal9SameNamesERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEESH_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31
  %9 = and i32 %i.d, 1
  %.not = icmp eq i32 %9, 0
  %i.e = select i1 %.not, ptr @_ZN9benchmarkL16IgnoreColorPrintERSoNS_8LogColorEPKcz, ptr @_ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcz ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !73, !range !40, !noundef !41
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 489 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !range !40
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  %i.m = select i1 %i.l, i32 4, i32 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(592) %1)
  %i.p = load ptr, ptr %2, align 8, !tbaa !35
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.m, ptr noundef nonnull @.str.8, i64 noundef %i.o, ptr noundef %i.p)
          to label %bb.b unwind label %bb.d, !callees !74

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.r, align 8, !tbaa !37
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75
  switch i32 %i.w, label %bb.f [
    i32 2, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  call void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %i.y), !callees !74
  call void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.7), !callees !74
  br label %bb.bf

bb.d:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.bh

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  call void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 7, ptr noundef nonnull @.str.10, ptr noundef %i.ag), !callees !74
  call void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.7), !callees !74
  br label %bb.bf

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = call noundef double @_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv(ptr noundef nonnull align 8 dereferenceable(592) %1) ; 7 uses
  %i.ai = call noundef double @_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv(ptr noundef nonnull align 8 dereferenceable(592) %1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aj = fcmp olt double %i.ah, 1.000000e+00
  br i1 %i.aj, label %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = fcmp olt double %i.ah, 1.000000e+01
  br i1 %i.ak, label %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = fcmp olt double %i.ah, 1.000000e+02
  br i1 %i.al, label %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = fcmp ogt double %i.ah, f0x4202A05F1FF80000
  %.str.26..str.27.i = select i1 %i.am, ptr @.str.26, ptr @.str.27
  br label %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit

_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit:         ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.str.27.sink.i = phi ptr [ @.str.25, %bb.h ], [ %.str.26..str.27.i, %bb.i ], [ @.str.24, %bb.g ], [ @.str.23, %bb.f ]
  call void (ptr, ptr, ...) @_ZN9benchmark12FormatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %.str.27.sink.i, double noundef %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.an = fcmp olt double %i.ai, 1.000000e+00
  br i1 %i.an, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit
  %i.ao = fcmp olt double %i.ai, 1.000000e+01
  br i1 %i.ao, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = fcmp olt double %i.ai, 1.000000e+02
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = fcmp ogt double %i.ai, f0x4202A05F1FF80000
  %.str.26..str.27.i97 = select i1 %i.aq, ptr @.str.26, ptr @.str.27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit
  %.str.27.sink.i98 = phi ptr [ @.str.25, %bb.k ], [ %.str.26..str.27.i97, %bb.l ], [ @.str.24, %bb.j ], [ @.str.23, %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit ]
  invoke void (ptr, ptr, ...) @_ZN9benchmark12FormatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %.str.27.sink.i98, double noundef %i.ai)
          to label %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit99 unwind label %bb.q

_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit99:       ; preds = %bb.m
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !73, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76
  invoke void @_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.au)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 3, ptr noundef nonnull @.str.11, double noundef %i.ah, ptr noundef %i.av, double noundef %i.ai, ptr noundef %i.av)
          to label %bb.p unwind label %bb.s, !callees !74

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.p
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.z

bb.q:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.r:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.s:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.s
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bg

bb.t:                                             ; preds = %_ZN9benchmarkL10FormatTimeB5cxx11Ed.exit99
  %i.bj = load i8, ptr %i.i, align 1, !tbaa !77, !range !40, !noundef !41
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.invoke, label %bb.v

bb.u:                                             ; preds = %.invoke, %bb.bd, %bb.bc, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.v:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !78
  %.not84 = icmp eq i32 %i.bn, 1
  br i1 %.not84, label %bb.w, label %switch.lookup

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !79
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %switch.lookup, label %bb.y

switch.lookup:                                    ; preds = %bb.w, %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 424
end_hunk_0
begin_hunk_1_@_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE:bb.a
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !36
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.da, i64 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.cn, ptr %6, align 8, !tbaa !38
  store i64 0, ptr %i.co, align 8, !tbaa !36
  store i8 0, ptr %i.cn, align 8, !tbaa !37
  %i.db = load i32, ptr %i.cp, align 8, !tbaa !78
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i32, ptr %i.cq, align 8, !tbaa !79
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0141.0151, i64 64
  %i.dg = load double, ptr %i.df, align 8, !tbaa !86
  %i.dh = fmul double %i.dg, 1.000000e+02
  invoke void (ptr, ptr, ...) @_ZN9benchmark9StrFormatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.17, double noundef %i.dh)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.di = load ptr, ptr %6, align 8, !tbaa !35    ; 6 uses
  %i.dj = icmp eq ptr %i.di, %i.cn
  %i.dk = load ptr, ptr %7, align 8, !tbaa !35    ; 5 uses
  %i.dl = icmp eq ptr %i.dk, %i.ct                ; 2 uses
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ag
  br i1 %i.dl, label %bb.ah, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ag
  br i1 %i.dl, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dm = load i64, ptr %i.cu, align 8, !tbaa !36 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  switch i64 %i.dm, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !37
  store i8 %i.do, ptr %i.di, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.dp = load i64, ptr %i.cu, align 8, !tbaa !36 ; 2 uses
  store i64 %i.dp, ptr %i.co, align 8, !tbaa !36
  %i.dq = load ptr, ptr %6, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !37
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dk, ptr %6, align 8, !tbaa !35
  %i.ds = load <2 x i64>, ptr %i.cu, align 8, !tbaa !37
  store <2 x i64> %i.ds, ptr %i.co, align 8, !tbaa !37
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dt = load i64, ptr %i.cn, align 8, !tbaa !37
  store ptr %i.dk, ptr %6, align 8, !tbaa !35
  %i.du = load <2 x i64>, ptr %i.cu, align 8, !tbaa !37
  store <2 x i64> %i.du, ptr %i.co, align 8, !tbaa !37
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.di, ptr %7, align 8, !tbaa !35
  store i64 %i.dt, ptr %i.ct, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ct, ptr %7, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.dv = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.di, %bb.ak ], [ %i.ct, %bb.al ]
  store i64 0, ptr %i.cu, align 8, !tbaa !36
  store i8 0, ptr %i.dv, align 1, !tbaa !37
  %i.dw = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ct
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dy = load i64, ptr %i.ct, align 8, !tbaa !37
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.aw

bb.am:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bb

bb.an:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0141.0151, i64 64
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !86
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0141.0151, i64 76
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !87
  invoke void @_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, double noundef %i.ec, i32 noundef %i.ee)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %6, align 8, !tbaa !35    ; 6 uses
  %i.eg = icmp eq ptr %i.ef, %i.cn
  %i.eh = load ptr, ptr %8, align 8, !tbaa !35    ; 5 uses
  %i.ei = icmp eq ptr %i.eh, %i.cr                ; 2 uses
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i114: ; preds = %bb.ao
  br i1 %i.ei, label %bb.ap, label %.thread.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i109: ; preds = %bb.ao
  br i1 %i.ei, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i110

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i114
  %i.ej = load i64, ptr %i.cs, align 8, !tbaa !36 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  switch i64 %i.ej, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !37
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.eh, i64 %i.ej, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  store i64 %i.em, ptr %i.co, align 8, !tbaa !36
  %i.en = load ptr, ptr %6, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !37
  %.pre.i113 = load ptr, ptr %8, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116

.thread.i115:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i114
  store ptr %i.eh, ptr %6, align 8, !tbaa !35
  %i.ep = load <2 x i64>, ptr %i.cs, align 8, !tbaa !37
  store <2 x i64> %i.ep, ptr %i.co, align 8, !tbaa !37
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i109
  %i.eq = load i64, ptr %i.cn, align 8, !tbaa !37
  store ptr %i.eh, ptr %6, align 8, !tbaa !35
  %i.er = load <2 x i64>, ptr %i.cs, align 8, !tbaa !37
  store <2 x i64> %i.er, ptr %i.co, align 8, !tbaa !37
  %.not.i111 = icmp eq ptr %i.ef, null
  br i1 %.not.i111, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i110
  store ptr %i.ef, ptr %8, align 8, !tbaa !35
  store i64 %i.eq, ptr %i.cr, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i110, %.thread.i115
  store ptr %i.cr, ptr %8, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112, %bb.as, %bb.at
  %i.es = phi ptr [ %.pre.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i112 ], [ %i.ef, %bb.as ], [ %i.cr, %bb.at ]
  store i64 0, ptr %i.cs, align 8, !tbaa !36
  store i8 0, ptr %i.es, align 1, !tbaa !37
  %i.et = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cr
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116
  %i.ev = load i64, ptr %i.cr, align 8, !tbaa !37
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0141.0151, i64 72
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !88 ; 2 uses
  %10 = and i32 %i.ey, 1
  %.not86 = icmp eq i32 %10, 0
  br i1 %.not86, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.not87.a = icmp sgt i32 %i.ey, -1
  %i.ez = select i1 %.not87.a, ptr @.str.19, ptr @.str.18
  br label %bb.aw

bb.av:                                            ; preds = %bb.an
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bb

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.0 = phi ptr [ @.str.13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.ez, %bb.au ], [ @.str.16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ] ; 3 uses
  %i.fb = load i32, ptr %i.c, align 8, !tbaa !31
  %i.fc = and i32 %i.fb, 2
  %.not88 = icmp eq i32 %i.fc, 0
  br i1 %.not88, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #22
  %i.fe = sub i64 %.sroa.speculated, %i.fd
  %i.ff = load ptr, ptr %6, align 8, !tbaa !35
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.20, i64 noundef %i.fe, ptr noundef %i.ff, ptr noundef nonnull %.0)
          to label %bb.ba unwind label %bb.ay, !callees !74

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %i.fh = load ptr, ptr %i.cy, align 8, !tbaa !35
  %i.fi = load ptr, ptr %6, align 8, !tbaa !35
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef nonnull %.0)
          to label %bb.ba unwind label %bb.ay, !callees !74

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.fj = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.cn
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.ba
  %i.fl = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0141.0151) #22 ; 2 uses
  %.not144 = icmp eq ptr %i.fn, %i.cm
  br i1 %.not144, label %._crit_edge, label %bb.ad

bb.bb:                                            ; preds = %bb.ay, %bb.av, %bb.am
  %.pn89 = phi { ptr, i32 } [ %i.fg, %bb.ay ], [ %i.ea, %bb.am ], [ %i.fa, %bb.av ]
  %i.fo = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.cn
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.bb
  %i.fq = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bg

bb.bc:                                            ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !35
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %i.ft)
          to label %bb.bd unwind label %bb.u, !callees !74

bb.bd:                                            ; preds = %bb.bc, %._crit_edge
  invoke void (ptr, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0, ptr noundef nonnull @.str.7)
          to label %bb.be unwind label %bb.u, !callees !74

bb.be:                                            ; preds = %bb.bd
  %i.fu = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.be
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !37
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.fz = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !37
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.e, %bb.c
  ret void

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.x, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.bl, %bb.u ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.bw, %bb.x ] ; 2 uses
  %i.ge = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bg
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !37
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.q
  %.pn89.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %.pn89.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn89.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gj = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !37
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  resume { ptr, i32 } %.pn89.pn.pn.pn
}

declare void @_ZN9benchmark11ColorPrintfERSoNS_8LogColorEPKcz(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZN9benchmarkL16IgnoreColorPrintERSoNS_8LogColorEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, ptr noundef %2, ...) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN9benchmark12FormatStringB5cxx11EPKcP13__va_list_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2, ptr noundef nonnull %3)
  %i.a = load ptr, ptr %4, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !37
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
end_hunk_1
