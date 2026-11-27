Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2960
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z13ConvertStreamP8_IO_FILES0_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
bb.aa:                                            ; preds = %bb.y
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i52 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i52, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.do, %bb.ab ], [ %i.dy, %bb.ac ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ad, label %_ZN6opencc15ConverterStreamD2Ev.exit, !prof !91

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #34
  br label %_ZN6opencc15ConverterStreamD2Ev.exit

_ZN6opencc15ConverterStreamD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ea = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.a
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN6opencc15ConverterStreamD2Ev.exit
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZN6opencc15ConverterStreamD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.t ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6opencc15ConverterStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ee = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.a
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %.loopexit.split-lp
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !46
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn32.pn.pn
}

declare void @_ZN6opencc15ConverterStream6FinishB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64, ptr) local_unnamed_addr #11

declare void @_ZN6opencc15ConverterStream12ConvertChunkB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64, ptr) local_unnamed_addr #11

declare void @_ZN6opencc15ConverterStream6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6opencc15ConverterStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !169
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !170
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !inline_history !14
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !inline_history !14
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17ConvertLineByLinev() local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr @stdin, align 8, !tbaa !147
  %i.b = tail call i32 @fileno(ptr noundef %i.a) #34
  %i.c = tail call i32 @isatty(i32 noundef %i.b) #34
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_Z25PrintInteractiveStdinHintv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !147
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.31, i64 53, i64 1, ptr %i.d) #39 ; 0 uses
  br label %_Z25PrintInteractiveStdinHintv.exit

_Z25PrintInteractiveStdinHintv.exit:              ; preds = %bb.a, %bb.b
  %i.e = load i8, ptr @_Z14outputFileNameB5cxx11, align 8, !tbaa !114, !range !36, !noundef !37
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z25PrintInteractiveStdinHintv.exit
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !147
  br label %_Z15GetOutputStreamv.exit

bb.d:                                             ; preds = %_Z25PrintInteractiveStdinHintv.exit
  %i.h = tail call noundef ptr @_ZN6opencc5tools12OpenFileUtf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8), ptr noundef nonnull @.str.30) ; 2 uses
  %.not.i14 = icmp eq ptr %i.h, null
  br i1 %.not.i14, label %bb.e, label %_Z15GetOutputStreamv.exit

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  invoke void @_ZN6opencc15FileNotWritableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8))
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6opencc15FileNotWritableE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #35
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %lpad.loopexit.split-lp49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #34
  br label %common.resume

_Z15GetOutputStreamv.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !44
  store i8 0, ptr %i.k, align 8, !tbaa !46
  %i.m = load ptr, ptr @_ZSt3cin, align 8, !tbaa !43
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i30, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %_Z15GetOutputStreamv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !75
  %.not.i1.i.i.peel = icmp eq i8 %i.v, 0
  br i1 %.not.i1.i.i.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.x = load i8, ptr %i.w, align 1, !tbaa !46
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.peel

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
          to label %.noexc15.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15.peel:                                    ; preds = %bb.i
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !351

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.peel: ; preds = %.noexc15.peel, %bb.h
  %.0.i.i.i.peel = phi i8 [ %i.x, %bb.h ], [ %i.ab, %.noexc15.peel ]
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %.0.i.i.i.peel)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.peel
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !192
  %i.aj = and i32 %i.ai, 5
  %.not.i18.peel = icmp eq i32 %i.aj, 0
  br i1 %.not.i18.peel, label %._crit_edge36, label %.loopexit

._crit_edge36:                                    ; preds = %bb.j
  %.pre37 = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !142
  %.pre = load i64, ptr %i.l, align 8, !tbaa !44
  %i.ak = add i64 %.pre37, %.pre
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void @_Z17ConvertLineByModeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %._crit_edge36
  %i.al = load i64, ptr %i.s, align 8, !tbaa !44
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !143
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !143
  %i.ao = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.ap = load ptr, ptr %1, align 8, !tbaa !45
  %i.aq = call i32 @fputs(ptr noundef %i.ap, ptr noundef %.0.i) ; 0 uses
  %i.ar = load i8, ptr @noFlush, align 1, !tbaa !148, !range !36, !noundef !37
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = call i32 @fflush(ptr noundef %.0.i)     ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.av = sub nsw i64 %i.au, %i.ao
  %i.aw = sitofp i64 %i.av to double
  %i.ax = fdiv double %i.aw, 1.000000e+06
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !140
  %i.az = fadd double %i.ay, %i.ax
  store double %i.az, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !140
  %i.ba = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.m
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !46
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.m
  %2 = load i64, ptr %i.s, align 8, !tbaa !44
  %3 = icmp ult i64 %2, 16
  call void @llvm.assume(i1 %3)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.be = load ptr, ptr @_ZSt3cin, align 8, !tbaa !43
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.peel = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.peel, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_Z15GetOutputStreamv.exit
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = phi ptr [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !75
  %.not.i1.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 67
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !351

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc15, %bb.n
  %.0.i.i.i = phi i8 [ %i.bo, %bb.n ], [ %i.bs, %.noexc15 ]
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %.0.i.i.i)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bu, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !192
  %i.ca = and i32 %i.bz, 5
  %.not.i18 = icmp eq i32 %i.ca, 0
  br i1 %.not.i18, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %fputc = call i32 @fputc(i32 10, ptr %.0.i)     ; 0 uses
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !44
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !142
  %i.cd = add i64 %i.cc, %i.cb
  store i64 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void @_Z17ConvertLineByModeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !44
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !143
  %i.cg = add i64 %i.cf, %i.ce
  store i64 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !143
  %i.ch = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.ci = load ptr, ptr %1, align 8, !tbaa !45
  %i.cj = call i32 @fputs(ptr noundef %i.ci, ptr noundef %.0.i) ; 0 uses
  %i.ck = load i8, ptr @noFlush, align 1, !tbaa !148, !range !36, !noundef !37
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = call i32 @fflush(ptr noundef %.0.i)     ; 0 uses
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc15, %bb.o, %bb.q, %._crit_edge36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.peel, %.noexc15.peel, %bb.i, %._crit_edge
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.k
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cp = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.cq = sub nsw i64 %i.cp, %i.ch
  %i.cr = sitofp i64 %i.cq to double
  %i.cs = fdiv double %i.cr, 1.000000e+06
  %i.ct = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !140
  %i.cu = fadd double %i.ct, %i.cs
  store double %i.cu, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !140
  %i.cv = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.t
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.cx = load i64, ptr %i.t, align 8, !tbaa !46
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.cz = load ptr, ptr @_ZSt3cin, align 8, !tbaa !43
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !352

.loopexit:                                        ; preds = %bb.p, %bb.j
  %i.df = call i32 @fclose(ptr noundef %.0.i)     ; 0 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.k
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.loopexit
  %i.di = load i64, ptr %i.k, align 8, !tbaa !46
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !46
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.dl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18ConvertFileStreamsP8_IO_FILES0_(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i32, ptr @outputMode, align 4, !tbaa !158 ; 2 uses
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24ConvertAmbiguitiesStreamP8_IO_FILES0_(ptr noundef %0, ptr noundef %1)
          to label %bb.v unwind label %bb.c

bb.c:                                             ; preds = %bb.t, %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.d = add i32 %i.a, -1
  %or.cond = icmp ult i32 %i.d, 2
  br i1 %or.cond, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i8 0, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %i.i = phi ptr [ %i.e, %bb.e ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0 = phi i1 [ true, %bb.e ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.i, align 1, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.f
  %i.j = call i32 @fgetc(ptr noundef %0)          ; 2 uses
  switch i32 %i.j, label %bb.h [
    i32 -1, label %_Z8ReadLineP8_IO_FILEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i32 10, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = trunc i32 %i.j to i8
  %i.l = load i64, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.e
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
