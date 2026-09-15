Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/pretty_print?download=true
inline.NumInlined: 4037
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ArrayPrinter19WriteValidityBitmapERKNS_5ArrayE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #18, !inline_history !4
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bu, %bb.r ], [ %i.ce, %bb.s ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.t, label %_ZN5arrow5ArrayD2Ev.exit, !prof !70

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #18, !inline_history !178
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ab

bb.u:                                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit13
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.y

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow18PrettyPrintOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %6) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.w ], [ %i.ch, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.cg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn.pn

bb.z:                                             ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !51 ; 2 uses
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.cm = sext i32 %i.ck to i64                   ; 2 uses
  %.sroa.speculated.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 13)
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.31, i64 noundef %.sroa.speculated.i.i.i15) ; 0 uses
  %i.co = icmp ult i32 %i.ck, 13
  br i1 %i.co, label %bb.aa, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16

bb.aa:                                            ; preds = %bb.z
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !58  ; 2 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.17, i64 noundef 6) ; 0 uses
  %i.cr = sub nuw nsw i64 13, %i.cm
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i64 noundef %i.cr)
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.18, i64 noundef 15) ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16: ; preds = %bb.z, %bb.aa
  store ptr null, ptr %0, align 8, !tbaa !73, !alias.scope !1076
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit16, %_ZN5arrow5ArrayD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.d = load ptr, ptr %0, align 8, !tbaa !176
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !176    ; 4 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE11_M_allocateEm.exit, %bb.d
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.x) #19
  br label %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIPKN5arrow5ArrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !176
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.y, ptr %i.j, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1
  store ptr %i.z, ptr %i.b, align 8, !tbaa !174
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPKN5arrow5ArrayESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

declare void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.27") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_112ArrayPrinter13PrintChildrenERKSt6vectorIPKNS_5ArrayESaIS5_EEll(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::(anonymous namespace)::ArrayPrinter", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"struct.arrow::PrettyPrintOptions", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = load ptr, ptr %2, align 8, !tbaa !176
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.02497 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !121, !nonnull !86, !align !120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ah = icmp ne i32 %i.af, 0                    ; 2 uses
  %.sroa.speculated.i.i.i = zext i1 %i.ah to i64
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.1, i64 noundef %.sroa.speculated.i.i.i) ; 0 uses
  br i1 %i.ah, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !58  ; 2 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.17, i64 noundef 6) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef 1)
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.18, i64 noundef 15) ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c
  %i.an = load i32, ptr %i.e, align 8, !tbaa !57
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit

.lr.ph.i:                                         ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 0, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ar = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.as = load i32, ptr %i.e, align 8, !tbaa !57
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit, !llvm.loop !2

_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit: ; preds = %.lr.ph.i, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.34, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.02497)
          to label %_ZNSolsEm.exit unwind label %bb.i ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.35, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ax = load ptr, ptr %2, align 8, !tbaa !176
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.02497
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !175
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.bg = load ptr, ptr %5, align 8, !tbaa !87
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !49
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bk = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !50
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  store ptr %i.i, ptr %6, align 8, !tbaa !48, !alias.scope !1090
  store i64 0, ptr %i.j, align 8, !tbaa !49, !alias.scope !1090
  store i8 0, ptr %i.i, align 8, !tbaa !50, !alias.scope !1090
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !92, !noalias !1090 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.l, align 8, !noalias !1090 ; 2 uses
  %i.bq = icmp ugt ptr %i.bo, %i.bp
  %.08.i.i.i = select i1 %i.bq, ptr %i.bo, ptr %i.bp ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !93, !noalias !1090 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !87, !alias.scope !1090 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.i
  br i1 %i.by, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.bz = load ptr, ptr %6, align 8, !tbaa !87
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !49  ; 3 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !121, !nonnull !86, !align !120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !51
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.cf = sext i32 %i.cd to i64                   ; 3 uses
  %.sroa.speculated.i.i.i50 = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cf)
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.bz, i64 noundef %.sroa.speculated.i.i.i50)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.ch, label %bb.h, label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54

bb.h:                                             ; preds = %.noexc
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !58  ; 2 uses
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %.noexc51 unwind label %bb.l   ; 0 uses

.noexc51:                                         ; preds = %bb.h
  %i.ck = sub nuw i64 %i.ca, %i.cf
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i64 noundef %i.ck)
          to label %.noexc52 unwind label %bb.l

.noexc52:                                         ; preds = %.noexc51
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54 unwind label %bb.l ; 0 uses

_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54: ; preds = %.noexc, %.noexc52
  %i.cn = load ptr, ptr %6, align 8, !tbaa !87    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.i
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !50
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZN5arrow12_GLOBAL__N_113PrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cr = load ptr, ptr %2, align 8, !tbaa !176
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.02497
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !121, !noalias !1091, !nonnull !86, !align !120
  invoke void @_ZN5arrow18PrettyPrintOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(248) %i.cu)
          to label %bb.m unwind label %bb.n

bb.i:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN5arrow12_GLOBAL__N_113PrettyPrinter6IndentEv.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.h
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.k
  %i.da = load i64, ptr %i.h, align 8, !tbaa !50
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.j ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.cx, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.q

bb.l:                                             ; preds = %.noexc52, %.noexc51, %bb.h, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !87    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.f
  %.sink = phi ptr [ %i.bx, %bb.f ], [ %i.dd, %bb.l ]
  %.pn41.ph = phi { ptr, i32 } [ %i.bw, %bb.f ], [ %i.dc, %bb.l ]
  %i.df = load i64, ptr %i.i, align 8, !tbaa !50
  %i.dg = add i64 %i.df, 1
end_hunk_0
