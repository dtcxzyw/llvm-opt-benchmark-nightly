Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/global_resource_test?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
begin_hunk_0_@_ZdlPvSt11align_val_t
define dso_local void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @allocation_count, align 8, !tbaa !13
  %i.b = add i64 %i.a, -1
  store i64 %i.b, ptr @allocation_count, align 8, !tbaa !13
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24test_new_delete_resourcev() local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @allocation_count, align 8, !tbaa !13
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21 ; 5 uses
  %i.c = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @__PRETTY_FUNCTION__._Z24test_new_delete_resourcev, i1 noundef zeroext %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, i64 noundef 1), !inline_history !0
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.i, i64 noundef 16, i64 noundef 1), !inline_history !1
  %i.m = load i64, ptr @allocation_count, align 8, !tbaa !13
  %i.n = icmp eq i64 %i.a, %i.m
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z24test_new_delete_resourcev, i1 noundef zeroext %i.n) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.l) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) ; 12 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.9, i64 noundef 9) ; 0 uses
  %.not.i6 = icmp eq ptr %0, null
  br i1 %.not.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50
  %i.w = or i32 %i.v, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %0, i64 noundef %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.h, %bb.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 22) ; 0 uses
  %.not.i8 = icmp eq ptr %3, null
  br i1 %.not.i8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %3, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.j, %bb.k
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.at, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext %.0.i.i.i)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  %i.ba = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN5boost6detail12test_resultsEv.exit11, !prof !16

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  %.not.i10 = icmp eq i32 %i.bc, 0
  br i1 %.not.i10, label %_ZN5boost6detail12test_resultsEv.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  br label %_ZN5boost6detail12test_resultsEv.exit11

_ZN5boost6detail12test_resultsEv.exit11:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.o, %bb.p
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit11
  ret i1 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z25test_null_memory_resourcev() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20null_memory_resourceEv() #21 ; 5 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_null_memory_resourcev, i1 noundef zeroext %i.b) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1, i64 noundef 1)
          to label %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit unwind label %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit.thread, !inline_history !0 ; 2 uses

_ZN5boost9container3pmr15memory_resource8allocateEmm.exit.thread: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = extractvalue { ptr, i32 } %i.h, 1
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #21
  %i.l = icmp eq i32 %i.j, %i.k
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.i) #21 ; 0 uses
  tail call void @__cxa_end_catch()
  %0 = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_null_memory_resourcev, i1 noundef zeroext %i.l) ; 0 uses
  br label %bb.c

_ZN5boost9container3pmr15memory_resource8allocateEmm.exit: ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_null_memory_resourcev, i1 noundef zeroext false) ; 0 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 1), !inline_history !1
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit.thread, %bb.b, %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20null_memory_resourceEv() local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_Z21test_default_resourcev() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.derived_from_memory_resource, align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #21
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 152, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_default_resourcev, i1 noundef zeroext %i.c) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV28derived_from_memory_resource, i64 16), ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !48
  %i.f = call noundef ptr @_ZN5boost9container3pmr20set_default_resourceEPNS1_15memory_resourceE(ptr noundef nonnull %0) #21 ; 0 uses
  %i.g = call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #21
  %i.h = icmp eq ptr %i.g, %0
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_default_resourcev, i1 noundef zeroext %i.h)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZN5boost9container3pmr20set_default_resourceEPNS1_15memory_resourceE(ptr noundef null) #21
  %i.k = icmp eq ptr %i.j, %0
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_default_resourcev, i1 noundef zeroext %i.k)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #21
  %i.n = call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 160, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_default_resourcev, i1 noundef zeroext %i.o)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %i.q
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20set_default_resourceEPNS1_15memory_resourceE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN28derived_from_memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @allocation_count, align 8, !tbaa !13
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21 ; 5 uses
  %i.c = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #21
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @__PRETTY_FUNCTION__._Z24test_new_delete_resourcev, i1 noundef zeroext %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, i64 noundef 1), !inline_history !51
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.i, i64 noundef 16, i64 noundef 1), !inline_history !52
  %i.m = load i64, ptr @allocation_count, align 8, !tbaa !13
  %i.n = icmp eq i64 %i.a, %i.m
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z24test_new_delete_resourcev, i1 noundef zeroext %i.n) ; 0 uses
  tail call void @_Z25test_null_memory_resourcev()
  tail call void @_Z21test_default_resourcev()
  %i.p = tail call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !44 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.13, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.14, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.16, ptr @.str.15
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.17, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !42
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11
end_hunk_0
