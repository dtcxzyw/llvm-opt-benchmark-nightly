Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/span_tests?download=true
inline.NumInlined: 8112
inline.NumDeleted: 2088
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN37span_test_interop_with_std_regex_Test8TestBodyEv:_ZNK3gsl7details13span_iteratorIcEplEl.exit
  store i32 0, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32, !inline_history !52
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32, !inline_history !52
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit, !prof !36

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.w = load ptr, ptr %5, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp ne ptr %i.w, %i.y                   ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %7, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8
  br i1 %i.z, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.i:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEplEl.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.er

bb.l:                                             ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %10, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1191, ptr noundef %i.ae)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  %i.af = load ptr, ptr %10, align 8              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ak = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.v, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #32, !inline_history !2
  br label %bb.v

bb.q:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103

bb.r:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.s:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn49 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.aq, %bb.s ] ; 2 uses
  %i.as = load ptr, ptr %10, align 8              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.u
  %i.av = load i64, ptr %i.at, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.r
  %.pn49.pn = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn49, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ax = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #32, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.q
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.q ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn49.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.er

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.pr = load ptr, ptr %i.ab, align 8             ; 4 uses
  %.not.i.i104 = icmp eq ptr %.pr, null
  br i1 %.not.i.i104, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %.pr, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit, %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.bg = load ptr, ptr %i.x, align 8
  %i.bh = load ptr, ptr %5, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 168                 ; 2 uses
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %11, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.bn, align 8
  br i1 %i.bl, label %_ZN7testing15AssertionResultD2Ev.exit121, label %bb.x

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bo = load ptr, ptr %14, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1192, ptr noundef %i.bo)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  %i.bp = load ptr, ptr %14, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ab
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bu = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i108, label %bb.ah, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #32, !inline_history !2
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit116

bb.ad:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ae:                                            ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn53 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.ca, %bb.ae ] ; 2 uses
  %i.cc = load ptr, ptr %14, align 8              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ag
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ad
  %.pn53.pn = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn53, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ch = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #32, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.ac
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.by, %bb.ac ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.er

bb.ah:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %.pr353 = load ptr, ptr %i.bn, align 8          ; 4 uses
  %.not.i.i117 = icmp eq ptr %.pr353, null
  br i1 %.not.i.i117, label %_ZN7testing15AssertionResultD2Ev.exit121, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr %.pr353, align 8          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr353, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118: ; preds = %bb.ai
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118
  call void @_ZdlPvm(ptr noundef nonnull %.pr353, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit121

_ZN7testing15AssertionResultD2Ev.exit121:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.cq = load ptr, ptr %5, align 8               ; 4 uses
  %i.cr = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %.pre.i = ptrtoint ptr %i.cr to i64
  %.pre2.i = ptrtoint ptr %i.cq to i64
  %.pre4.i = sub i64 %.pre.i, %.pre2.i            ; 2 uses
  %.not = icmp eq i64 %.pre4.i, 168
  %or.cond = or i1 %i.cs, %.not
  %i.ct = getelementptr i8, ptr %i.cq, i64 %.pre4.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 -168
  %i.cv = select i1 %or.cond, ptr %i.cu, ptr %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load i8, ptr %i.cw, align 1, !range !34, !noundef !35 ; 2 uses
  store i8 %i.cx, ptr %15, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr null, ptr %i.cy, align 8
  %i.cz = trunc nuw i8 %i.cx to i1
  br i1 %i.cz, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %18, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1193, ptr noundef %i.da)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  %i.db = load ptr, ptr %18, align 8              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.an
  %i.de = load i64, ptr %i.dc, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.dg = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i125, label %bb.at, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #32, !inline_history !2
  br label %bb.at

end_hunk_0
begin_hunk_1_@_ZN37span_test_interop_with_std_regex_Test8TestBodyEv:_ZNK3gsl7details13span_iteratorIcEplEl.exit
bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.hs, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4
  %i.hx = load ptr, ptr %i.hr, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #32, !inline_history !52
  %i.ia = load ptr, ptr %i.hr, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #32, !inline_history !52
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190

bb.bz:                                            ; preds = %bb.bx
  %i.id = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i187 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i187, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i188

bb.cb:                                            ; preds = %bb.bz
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i188: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i189 = phi i32 [ %i.hv, %bb.ca ], [ %i.if, %bb.cb ]
  %i.ig = icmp eq i32 %.0.i.i.i.i.i189, 1
  br i1 %i.ig, label %bb.cc, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190, !prof !36

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #32
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190: ; preds = %bb.bw, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i188, %bb.cc
  %i.ih = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ih) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.ii = load ptr, ptr %5, align 8
  %i.ij = load ptr, ptr %i.x, align 8
  %i.ik = icmp ne ptr %i.ii, %i.ij                ; 2 uses
  %i.il = zext i1 %i.ik to i8
  store i8 %i.il, ptr %28, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr null, ptr %i.im, align 8
  br i1 %i.ik, label %_ZN7testing15AssertionResultD2Ev.exit207, label %bb.cg

bb.cd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit185
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bv
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn72 = phi { ptr, i32 } [ %i.io, %bb.ce ], [ %i.in, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.er

bb.cg:                                            ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.ip = load ptr, ptr %31, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef %i.ip)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #32
  %i.iq = load ptr, ptr %31, align 8              ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.ck
  %i.it = load i64, ptr %i.ir, align 8
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %i.iv = load ptr, ptr %29, align 8              ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i194, label %bb.cq, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #32, !inline_history !2
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cg
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit202

bb.cm:                                            ; preds = %bb.ch
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.cn:                                            ; preds = %bb.ci
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn74 = phi { ptr, i32 } [ %i.jc, %bb.co ], [ %i.jb, %bb.cn ] ; 2 uses
  %i.jd = load ptr, ptr %31, align 8              ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.cp
  %i.jg = load i64, ptr %i.je, align 8
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.cm
  %.pn74.pn = phi { ptr, i32 } [ %i.ja, %bb.cm ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %.pn74, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %i.ji = load ptr, ptr %29, align 8              ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i200, label %_ZN7testing7MessageD2Ev.exit202, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(128) %i.ji) #32, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit202

_ZN7testing7MessageD2Ev.exit202:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %bb.cl
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.iz, %bb.cl ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn74.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.er

bb.cq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %.pr365 = load ptr, ptr %i.im, align 8          ; 4 uses
  %.not.i.i203 = icmp eq ptr %.pr365, null
  br i1 %.not.i.i203, label %_ZN7testing15AssertionResultD2Ev.exit207, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jm = load ptr, ptr %.pr365, align 8          ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.pr365, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204: ; preds = %bb.cr
  %i.jp = load i64, ptr %i.jn, align 8
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr365, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit207

_ZN7testing15AssertionResultD2Ev.exit207:         ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit190, %bb.cq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  %i.jr = load ptr, ptr %i.x, align 8
  %i.js = load ptr, ptr %5, align 8
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = icmp ugt i64 %i.jv, 168                 ; 2 uses
  %i.jx = zext i1 %i.jw to i8
  store i8 %i.jx, ptr %32, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store ptr null, ptr %i.jy, align 8
  br i1 %i.jw, label %_ZN7testing15AssertionResultD2Ev.exit224, label %bb.cs

bb.cs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit207
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.jz = load ptr, ptr %35, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1199, ptr noundef %i.jz)
          to label %bb.cv unwind label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #32
  %i.ka = load ptr, ptr %35, align 8              ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.cw
  %i.kd = load i64, ptr %i.kb, align 8
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.kf = load ptr, ptr %33, align 8              ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i211, label %bb.dc, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(128) %i.kf) #32, !inline_history !2
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cs
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit219

bb.cy:                                            ; preds = %bb.ct
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

bb.cz:                                            ; preds = %bb.cu
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cv
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #32
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn78 = phi { ptr, i32 } [ %i.km, %bb.da ], [ %i.kl, %bb.cz ] ; 2 uses
  %i.kn = load ptr, ptr %35, align 8              ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.db
  %i.kq = load i64, ptr %i.ko, align 8
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214, %bb.cy
  %.pn78.pn = phi { ptr, i32 } [ %i.kk, %bb.cy ], [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %.pn78, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.ks = load ptr, ptr %33, align 8              ; 3 uses
  %.not.i.i217 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i217, label %_ZN7testing7MessageD2Ev.exit219, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(128) %i.ks) #32, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit219

_ZN7testing7MessageD2Ev.exit219:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %bb.cx
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.kj, %bb.cx ], [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %.pn78.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.er

bb.dc:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %.pr368 = load ptr, ptr %i.jy, align 8          ; 4 uses
  %.not.i.i220 = icmp eq ptr %.pr368, null
  br i1 %.not.i.i220, label %_ZN7testing15AssertionResultD2Ev.exit224, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kw = load ptr, ptr %.pr368, align 8          ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.pr368, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221: ; preds = %bb.dd
  %i.kz = load i64, ptr %i.kx, align 8
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i221
  call void @_ZdlPvm(ptr noundef nonnull %.pr368, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit224

_ZN7testing15AssertionResultD2Ev.exit224:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit207, %bb.dc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  %i.lb = load ptr, ptr %5, align 8               ; 4 uses
  %i.lc = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  %.pre.i225 = ptrtoint ptr %i.lc to i64
  %.pre2.i226 = ptrtoint ptr %i.lb to i64
  %.pre4.i227 = sub i64 %.pre.i225, %.pre2.i226   ; 2 uses
  %.not382 = icmp eq i64 %.pre4.i227, 168
  %or.cond387 = or i1 %i.ld, %.not382
  %i.le = getelementptr i8, ptr %i.lb, i64 %.pre4.i227
  %i.lf = getelementptr i8, ptr %i.le, i64 -168
  %i.lg = select i1 %or.cond387, ptr %i.lf, ptr %i.lb
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.li = load i8, ptr %i.lh, align 1, !range !34, !noundef !35 ; 2 uses
  store i8 %i.li, ptr %36, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr null, ptr %i.lj, align 8
  %i.lk = trunc nuw i8 %i.li to i1
  br i1 %i.lk, label %_ZN7testing15AssertionResultD2Ev.exit247, label %bb.de

bb.de:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.ll = load ptr, ptr %39, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1200, ptr noundef %i.ll)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %bb.dh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #32
  %i.lm = load ptr, ptr %39, align 8              ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.di
  %i.lp = load i64, ptr %i.ln, align 8
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #32
  %i.lr = load ptr, ptr %37, align 8              ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i234, label %bb.do, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(128) %i.lr) #32, !inline_history !2
  br label %bb.do

end_hunk_1
begin_hunk_2_@_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale:bb.a
_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit: ; preds = %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i
  store ptr %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  %.elt = select i1 %.not, i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv to i64), i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv to i64)
  store i64 %.elt, ptr %i.p, align 8
  %.repack5 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.repack5, align 8
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 27, ptr %i.w, align 8
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8
  switch i32 %i.y, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.n, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.d, align 8
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8                ; 4 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store i64 %i.b, ptr %i.v, align 8
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #33
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.u, ptr %0, align 8
  store ptr %i.x, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 8, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i.i.i2 = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i.i2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ag = load i32, ptr %2, align 8
  %i.ah = icmp eq i32 %i.ag, 11
  br i1 %i.ah, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  store ptr %i.an, ptr %i.ao, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  store ptr %i.ar, ptr %i.ac, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.ac, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.as = phi ptr [ %i.ar, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp ugt i64 %i.aw, 4800000
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ay = load i32, ptr %2, align 8
  %i.az = icmp eq i32 %i.ay, 11
  br i1 %i.az, label %bb.m, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bg = load i32, ptr %1, align 8
  %i.bh = icmp eq i32 %i.bg, 11
  br i1 %i.bh, label %bb.p, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.p:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.p, %bb.q
  %.lhs.trunc.i = trunc nuw nsw i64 %i.aw to i32
  %3 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %3 to i64
  %i.bn = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i64 %i.bn

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %.lr.ph, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.i, align 8
  switch i32 %i.u, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.j, align 8, !noalias !99 ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8, !noalias !99 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -16
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.l, align 8, !noalias !99
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !100 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %.sroa.010.0.copyload11 = load ptr, ptr %i.ac, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.615.0.copyload17 = load i64, ptr %.sroa.615.0..sroa_idx16, align 8
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 504) #33, !noalias !100
  %i.ad = load ptr, ptr %i.l, align 8, !noalias !100
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !noalias !100
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !100 ; 3 uses
  store ptr %i.af, ptr %i.k, align 8, !noalias !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.ag, ptr %i.m, align 8, !noalias !100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.615.0 = phi i64 [ %.sroa.615.0.copyload17, %bb.j ], [ %.sroa.615.0.copyload, %bb.i ]
  %.sroa.512.0 = phi i64 [ %.sroa.512.0.copyload14, %bb.j ], [ %.sroa.512.0.copyload, %bb.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.010.0.copyload11, %bb.j ], [ %.sroa.010.0.copyload, %bb.i ]
  %storemerge.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.y, %bb.i ]
  store ptr %storemerge.i.i.i, ptr %i.j, align 8, !noalias !100
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ai = load ptr, ptr %i.j, align 8, !noalias !101 ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !noalias !101 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

bb.l:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.am = load ptr, ptr %i.l, align 8, !noalias !101
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !102 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  %.sroa.0.0.copyload5 = load ptr, ptr %i.ap, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %.sroa.6.0.copyload9 = load i64, ptr %.sroa.6.0..sroa_idx8, align 8
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef 504) #33, !noalias !102
  %i.aq = load ptr, ptr %i.l, align 8, !noalias !102
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.l, align 8, !noalias !102
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !102 ; 3 uses
  store ptr %i.as, ptr %i.k, align 8, !noalias !102
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  store ptr %i.at, ptr %i.m, align 8, !noalias !102
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4: ; preds = %bb.k, %bb.l
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload9, %bb.l ], [ %.sroa.6.0.copyload, %bb.k ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.l ], [ %.sroa.5.0.copyload, %bb.k ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.l ], [ %.sroa.0.0.copyload, %bb.k ]
  %storemerge.i.i.i3 = phi ptr [ %i.au, %bb.l ], [ %i.al, %bb.k ]
  store ptr %storemerge.i.i.i3, ptr %i.j, align 8, !noalias !102
  %i.av = load ptr, ptr %i.n, align 8
  %i.aw = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.sroa.615.0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aw, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %.sroa.6.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.aw, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.bf = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bg = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 noundef %.sroa.5.0, i64 noundef %.sroa.512.0, i1 noundef zeroext false)
  store ptr %i.bf, ptr %1, align 8
  store i64 %i.bg, ptr %i.o, align 8
  store i64 %i.aw, ptr %i.p, align 8
  %i.bh = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.m, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bl, ptr %i.j, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.bm = load i32, ptr %i.b, align 8
  %i.bn = icmp eq i32 %i.bm, 19
  br i1 %i.bn, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, !llvm.loop !98

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %1, %i.c                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret i1 %i.d
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 9, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.l = load i32, ptr %2, align 8
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.h, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 4800000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ad = load i32, ptr %2, align 8
  %i.ae = icmp eq i32 %i.ad, 11
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.al = load i32, ptr %1, align 8
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit4

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit4:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ab to i32
  %3 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %3 to i64
  %i.as = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i64 %i.as

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 12, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 504) #33
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, !llvm.loop !5

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #33
  br label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit

_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  invoke void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11regex_error, ptr nonnull @_ZNSt11regex_errorD1Ev) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt11regex_error, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11regex_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  store i8 94, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 36, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 23, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 46, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 42, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 43, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 21, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 63, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 18, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 124, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 19, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 10, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 19, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 19, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store <16 x i8> <i8 48, i8 0, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13, i8 116, i8 9, i8 118, i8 11, i8 0, i8 0>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store <16 x i8> <i8 34, i8 34, i8 47, i8 47, i8 92, i8 92, i8 97, i8 7, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 116, i8 9, i8 118, i8 11>, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.293, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.294, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @.str.295, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_2
begin_hunk_3_@_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !127
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !127
  br i1 %i.b, label %.preheader, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.c = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !127
  br i1 %i.c, label %.preheader, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !137 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !137 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.d:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !137
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !138
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 504) #33, !noalias !138
  %i.o = load ptr, ptr %i.j, align 8, !noalias !138
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !noalias !138
  %i.q = load ptr, ptr %i.p, align 8, !noalias !138 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !noalias !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.r, ptr %i.s, align 8, !noalias !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.d, align 8, !noalias !138
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.u = load ptr, ptr %i.d, align 8, !noalias !139 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !noalias !139 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

bb.f:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !139
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !140 ; 2 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef 504) #33, !noalias !140
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !140
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !noalias !140
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !140 ; 3 uses
  store ptr %i.ae, ptr %i.f, align 8, !noalias !140
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 504
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.af, ptr %i.ag, align 8, !noalias !140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2: ; preds = %bb.e, %bb.f
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.f ], [ %.sroa.5.0.copyload, %bb.e ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload5, %bb.f ], [ %.sroa.4.0.copyload, %bb.e ]
  %storemerge.i.i.i1 = phi ptr [ %i.ah, %bb.f ], [ %i.x, %bb.e ]
  store ptr %storemerge.i.i.i1, ptr %i.d, align 8, !noalias !140
  %i.ai = load ptr, ptr %1, align 8, !nonnull !35, !align !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %.sroa.4.0, ptr %i.ao, align 8
  store i64 %.sroa.5.0, ptr %i.ak, align 8
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.d, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.k

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ax) ; 2 uses
  store ptr %i.ax, ptr %2, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bg = load ptr, ptr %i.bb, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bh, ptr %i.bb, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 10, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i32 1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.h = load i32, ptr %5, align 8
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.t = phi ptr [ %i.s, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4800000
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.z = load i32, ptr %5, align 8
  %i.aa = icmp eq i32 %i.z, 11
  br i1 %i.aa, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = load i32, ptr %4, align 8
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.x to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.ao = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i64 %i.ao

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8 [
    i32 22, label %bb.b
    i32 23, label %bb.k
    i32 24, label %bb.t
    i32 7, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.n) ; 2 uses
  store ptr %i.n, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.r, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 27, ptr %i.b, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load i32, ptr %i.ag, align 8
  switch i32 %i.ah, label %bb.q [
    i32 0, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aj) ; 2 uses
  store ptr %i.aj, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %.not.i.i.i3 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = load ptr, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.an, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.t:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 27, ptr %i.b, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = load i32, ptr %i.bc, align 8
  switch i32 %i.bd, label %bb.z [
    i32 0, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  store i64 %i.lg, ptr %i.a, align 8
  %i.lh = load ptr, ptr %i.km, align 8            ; 2 uses
  %i.li = load ptr, ptr %i.kn, align 8
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -8
  %.not.i.i49 = icmp eq ptr %i.lh, %i.lj
  br i1 %.not.i.i49, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 %i.lg, ptr %i.lh, align 8
  %i.lk = load ptr, ptr %i.km, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %i.ll, ptr %i.km, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.dp:                                            ; preds = %bb.dn
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit unwind label %bb.dr

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.do, %bb.dp
  %i.lm = load i64, ptr %i.a, align 8
  %i.ln = load i64, ptr %i.ko, align 8            ; 2 uses
  %i.lo = load ptr, ptr %i.kp, align 8
  %i.lp = getelementptr inbounds nuw [48 x i8], ptr %i.lo, i64 %i.ld
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %i.lm, ptr %i.lq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.lr = add nuw nsw i64 %.02087, 1              ; 2 uses
  %exitcond95.not = icmp eq i64 %i.lr, %.022
  br i1 %exitcond95.not, label %._crit_edge90, label %bb.dl, !llvm.loop !176

bb.dq:                                            ; preds = %bb.dl
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.dm
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.lt, %bb.dr ], [ %i.ls, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn

bb.dt:                                            ; preds = %.lr.ph92, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.lu = phi ptr [ %i.kx, %.lr.ph92 ], [ %i.mt, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 2 uses
  %i.lv = load ptr, ptr %i.hh, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56 ; 2 uses
  %i.lx = load ptr, ptr %i.la, align 8, !noalias !188 ; 2 uses
  %i.ly = icmp eq ptr %i.lu, %i.lx
  br i1 %i.ly, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lz = getelementptr inbounds i8, ptr %i.lu, i64 -8 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = load ptr, ptr %i.lw, align 8
  %i.mc = getelementptr inbounds nuw [48 x i8], ptr %i.mb, i64 %i.ma
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.dv:                                            ; preds = %bb.dt
  %i.md = load ptr, ptr %i.lb, align 8, !noalias !188
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 504
  %i.mh = load i64, ptr %i.mg, align 8
  %i.mi = load ptr, ptr %i.lw, align 8
  %i.mj = getelementptr inbounds nuw [48 x i8], ptr %i.mi, i64 %i.mh
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef 512) #33
  %i.mk = load ptr, ptr %i.lb, align 8
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -8 ; 2 uses
  store ptr %i.ml, ptr %i.lb, align 8
  %i.mm = load ptr, ptr %i.ml, align 8            ; 3 uses
  store ptr %i.mm, ptr %i.la, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 512
  store ptr %i.mn, ptr %i.lc, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 504
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.du, %bb.dv
  %i.mp = phi ptr [ %i.mc, %bb.du ], [ %i.mj, %bb.dv ]
  %storemerge.i.i = phi ptr [ %i.lz, %bb.du ], [ %i.mo, %bb.dv ]
  store ptr %storemerge.i.i, ptr %i.kv, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  %i.mr = load <2 x i64>, ptr %i.mq, align 8
  %i.ms = shufflevector <2 x i64> %i.mr, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ms, ptr %i.mq, align 8
  %i.mt = load ptr, ptr %i.kv, align 8            ; 2 uses
  %i.mu = load ptr, ptr %i.kw, align 8
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %._crit_edge93, label %bb.dt, !llvm.loop !179

._crit_edge93:                                    ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge90
  %i.mw = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge93
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = icmp ult ptr %i.mz, %i.nb
  br i1 %i.nc, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.i ], [ %i.mz, %bb.dw ] ; 3 uses
  %i.nd = load ptr, ptr %.06.i.i.i.i, align 8
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef 512) #33
  %i.ne = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.nf = icmp ult ptr %.06.i.i.i.i, %i.na
  br i1 %i.nf, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %8, align 8
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.dw
  %i.ng = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.mw, %bb.dw ]
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = shl i64 %i.ni, 3
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nj) #33
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge93, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %bb.dh
  %i.nk = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -24
  %.not.i.i51 = icmp eq ptr %i.nk, %i.nn
  br i1 %.not.i.i51, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.no = load ptr, ptr %i.gf, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  store ptr %i.np, ptr %i.gf, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

bb.dz:                                            ; preds = %bb.dx
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 4, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 5, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.pre = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4800000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.lhs.trunc.i = trunc nuw nsw i64 %i.l to i32
  %2 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %2 to i64
  %i.v = add nsw i64 %.zext.i, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 6, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.i = load i32, ptr %3, align 8
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store ptr %i.p, ptr %i.q, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.u = phi ptr [ %i.t, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.y, 4800000
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc3 unwind label %bb.m

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aa = load i32, ptr %3, align 8
  %i.ab = icmp eq i32 %i.aa, 11
  br i1 %i.ab, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = load i32, ptr %2, align 8
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.y to i32
  %4 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %4 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 7, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.a, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.j = load i32, ptr %4, align 8
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 4800000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %4, align 8
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %3, align 8
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.z to i32
  %5 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %5 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.d, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8
  %i.e = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  %.not.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.h, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !35, !align !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.d to i64
  store i64 %i.h, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.f, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8
  %i.i = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.t = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !35, !align !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_4
begin_hunk_5_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.h = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i, label %bb.b, label %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext %i.e), !inline_history !190
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %i.g, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.s, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.r, align 8
  %i.u = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  store ptr %i.b, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %.not.i.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.x, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.h

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.d, %bb.e
  %i.af = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.h:                                             ; preds = %bb.e, %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i2 = icmp eq ptr %i.ak, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 11, ptr noundef nonnull @.str.306) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %.not8 = icmp ult i64 %1, %i.e
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.307) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not1516 = icmp eq ptr %i.f, %i.h
  br i1 %.not1516, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.h
  br i1 %.not15, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.r = load i32, ptr %3, align 8
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.n, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 4800000
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.012.017, align 8
  %i.ak = icmp eq i64 %1, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.308) #37
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.al = load i32, ptr %3, align 8
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.at = load i32, ptr %2, align 8
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ah to i32
  %4 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %4 to i64
  %i.ba = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i64 %i.ba

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not12 = icmp samesign eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.e ]
  %.sroa.08.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014, i32 %1) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
  %i.j = load i8, ptr %.sroa.08.013, align 1
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !35, !align !40
  %i.l = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.j, i32 noundef %1)
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.i, i32 %i.l) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.309) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.o, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.w = and i32 %i.v, 131071
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.310) #37
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.v, 16
  %i.z = load i16, ptr %i.y, align 16
  %i.aa = trunc i32 %i.v to i16
  %i.ab = or i16 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.af = or i8 %i.ad, %i.ae
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.af to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ab to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ag = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ag, ptr %i.y, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %bb.e unwind label %bb.p       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load <2 x ptr>, ptr %1, align 16
  store <2 x ptr> %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16
  store ptr %i.aq, ptr %i.ao, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load <2 x ptr>, ptr %i.as, align 8
  store <2 x ptr> %i.au, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.av, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 16
  store <2 x ptr> %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 16
  store ptr %i.bd, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8
  store <2 x ptr> %i.bg, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bh, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.am, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8
  %i.bl = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bl, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bp, %i.bs
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bu, ptr %i.bo, align 8
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

end_hunk_5
begin_hunk_6_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8                ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.z, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 11, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  store ptr %i.f, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.q = load i32, ptr %4, align 8
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false)
  store ptr %i.x, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 4800000
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ai = load i32, ptr %4, align 8
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = load i32, ptr %3, align 8
  %i.ar = icmp eq i32 %i.aq, 11
  br i1 %i.ar, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.as = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ag to i32
  %5 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %5 to i64
  %i.aw = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i64 %i.aw

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #32
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #32
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEE, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 8
  store i8 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #32
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #32
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIXntsr7is_voidIT_EE5valueES8_E4typeEOT0_DpOT1_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEE, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = tail call noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEE, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !35, !align !40
  %i.f = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i.i, label %bb.f, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1), !inline_history !10
  %i.p = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1
  %i.q = icmp ne i8 %i.o, %i.p
  ret i1 %i.q

end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_rangeEcc:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.br, ptr %i.bs, align 8
  store ptr %i.ah, ptr %5, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ah, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.au
  br i1 %i.bw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bx = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bv, ptr %i.bt, align 8
  %i.ca = load i64, ptr %i.au, align 8
  store i64 %i.ca, ptr %i.bu, align 8
  %.pre29 = load i64, ptr %i.bf, align 8
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.cb = phi i64 [ %.pre29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bx, %bb.m ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.cb, ptr %i.cc, align 8
  store ptr %i.au, ptr %i.at, align 8
  store i64 0, ptr %i.bf, align 8
  store i8 0, ptr %i.au, align 8
  %i.cd = load ptr, ptr %i.bg, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store ptr %i.ce, ptr %i.bg, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.p

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.n
  %.pre30 = load ptr, ptr %i.at, align 8          ; 2 uses
  %i.cf = icmp eq ptr %.pre30, %i.au
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.cg = load i64, ptr %i.au, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %.pre30, i64 noundef %i.ch) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ah
  br i1 %i.cj, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load i64, ptr %i.ah, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cm = load ptr, ptr %7, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aw
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.co = load i64, ptr %i.aw, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cq = load ptr, ptr %6, align 8               ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.aj
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load i64, ptr %i.aj, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.o:                                             ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #32
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.aw
  br i1 %i.cx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.cy = load i64, ptr %i.aw, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #33
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11 ], [ %i.cu, %bb.o ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.cv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.da = load ptr, ptr %6, align 8               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.dd = load i64, ptr %i.db, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i32 2, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.a, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.j = load i32, ptr %5, align 8
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 4800000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %5, align 8
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %4, align 8
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %.lhs.trunc.i = trunc nuw nsw i64 %i.z to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.aq = add nsw i64 %.zext.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::__detail::_StateSeq") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map", align 8          ; 13 uses
  %3 = alloca %"class.std::stack.297", align 8    ; 19 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIlSaIlEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit unwind label %bb.ab

_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit:    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.not.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  %i.m = load i64, ptr %i.g, align 8
  store i64 %i.m, ptr %i.i, align 8
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.c:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge unwind label %bb.ac

._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge, %bb.b
  %i.p = phi ptr [ %.pre, %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge ], [ %i.o, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8__detail6_StateIcED2Ev.exit55
  %i.ad = phi ptr [ %i.p, %.lr.ph ], [ %i.ee, %_ZNSt8__detail6_StateIcED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ae = load ptr, ptr %i.t, align 8, !noalias !342 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.u, align 8, !noalias !342
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 504
  %i.am = load i64, ptr %i.al, align 8
  store i64 %i.am, ptr %i.a, align 8
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #33
  %i.an = load ptr, ptr %i.u, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  store ptr %i.ao, ptr %i.u, align 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  store ptr %i.ap, ptr %i.t, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  store ptr %i.aq, ptr %i.j, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 504
  %.pre110 = load i64, ptr %i.a, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.as = phi i64 [ %i.ah, %bb.e ], [ %.pre110, %bb.f ]
  %storemerge.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ar, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.at = load ptr, ptr %1, align 8, !nonnull !35, !align !40 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %i.as ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false)
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, 11
  br i1 %i.ay, label %bb.g, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %i.x, align 8
  %i.bf = load ptr, ptr %i.az, align 8
  store ptr %i.bf, ptr %i.w, align 8
  %.pre111 = load ptr, ptr %1, align 8
  br label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #34
  unreachable

_ZNSt8__detail6_StateIcEC2ERKS1_.exit:            ; preds = %bb.i, %bb.g, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.bl = phi ptr [ %.pre111, %bb.i ], [ %i.at, %bb.g ], [ %i.at, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.bm = load i32, ptr %4, align 8
  %i.bn = icmp eq i32 %i.bm, 11
  br i1 %i.bn, label %bb.m, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.m:                                             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 24, i1 false)
  %i.bo = load ptr, ptr %i.x, align 8
  store ptr %i.bo, ptr %i.z, align 8
  %i.bp = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i.not.i.i30 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i30, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false)
  store ptr %i.bp, ptr %i.aa, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, %bb.m, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not.i.i.i31 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false)
  %i.bv = load i32, ptr %5, align 8
  %i.bw = icmp eq i32 %i.bv, 11
  br i1 %i.bw, label %bb.p, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.z, align 8
  store ptr %i.bz, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.aa, align 8
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8
  store ptr %i.cc, ptr %i.cb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.q, %bb.p, %bb.o
  %i.cd = load ptr, ptr %i.br, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  store ptr %i.ce, ptr %i.br, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.r:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.br, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc32, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.cf = phi ptr [ %i.ce, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc32 ]
  %i.cg = load ptr, ptr %i.bq, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 4800000
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.305) #37
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %.lhs.trunc.i = trunc nuw nsw i64 %i.cj to i32
  %6 = udiv exact i32 %.lhs.trunc.i, 48
  %.zext.i = zext nneg i32 %6 to i64
  %i.cl = add nsw i64 %.zext.i, -1
  %i.cm = load i32, ptr %5, align 8
  %i.cn = icmp eq i32 %i.cm, 11
  br i1 %i.cn, label %bb.u, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.co, null
  br i1 %.not.i.i34, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.t, %bb.u, %bb.v
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  store i64 %i.cl, ptr %i.cs, align 8
  %i.ct = load i32, ptr %4, align 8
  switch i32 %i.ct, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 [
    i32 1, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 2, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 7, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  ]

_ZNKSt8__detail11_State_base10_M_has_altEv.exit:  ; preds = %bb.x, %bb.x, %bb.x
  %i.cu = load i64, ptr %i.v, align 8             ; 4 uses
  %.not89 = icmp eq i64 %i.cu, -1
  br i1 %.not89, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.cv = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cv, %bb.y ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.y ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp slt i64 %i.cx, %i.cu               ; 3 uses
  %.19.i.i.i = select i1 %i.cy, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cy, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !340

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cz = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.cz, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cy, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.da = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  %.not90 = icmp slt i64 %i.cu, %i.da
  br i1 %.not90, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.y, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  %i.db = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dc = load ptr, ptr %i.j, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %.not.i.i36 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  store i64 %i.cu, ptr %i.db, align 8
  %i.de = load ptr, ptr %i.h, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.df, ptr %i.h, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

bb.aa:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.a
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ac:                                            ; preds = %bb.c, %bb.at, %._crit_edge106
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  br label %bb.am

bb.ae:                                            ; preds = %bb.ai, %bb.aa, %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38:   ; preds = %bb.x, %bb.z, %bb.aa, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit, %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.dj = load i64, ptr %i.a, align 8
  %i.dk = load i64, ptr %i.ab, align 8
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.af, !llvm.loop !341

bb.af:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.dm = load i64, ptr %i.ac, align 8            ; 4 uses
  %.not23 = icmp eq i64 %i.dm, -1
  br i1 %.not23, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not10.i.i.i39 = icmp eq ptr %i.dn, null
  br i1 %.not10.i.i.i39, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.ag, %.lr.ph.i.i.i40
  %.012.i.i.i41 = phi ptr [ %.1.i.i.i46, %.lr.ph.i.i.i40 ], [ %i.dn, %bb.ag ] ; 4 uses
  %.0811.i.i.i42 = phi ptr [ %.19.i.i.i43, %.lr.ph.i.i.i40 ], [ %i.b, %bb.ag ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 32
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = icmp slt i64 %i.dp, %i.dm               ; 3 uses
  %.19.i.i.i43 = select i1 %i.dq, ptr %.0811.i.i.i42, ptr %.012.i.i.i41 ; 2 uses
  %.1.in.v.i.i.i44 = select i1 %i.dq, i64 24, i64 16
  %.1.in.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 %.1.in.v.i.i.i44
  %.1.i.i.i46 = load ptr, ptr %.1.in.i.i.i45, align 8 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.1.i.i.i46, null
  br i1 %.not.i.i.i47, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, label %.lr.ph.i.i.i40, !llvm.loop !340

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48: ; preds = %.lr.ph.i.i.i40
  %i.dr = icmp eq ptr %.19.i.i.i43, %i.b
  br i1 %i.dr, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dq, ptr %.0811.i.i.i42, ptr %.012.i.i.i41
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ds = load i64, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  %.not91 = icmp slt i64 %i.dm, %i.ds
  br i1 %.not91, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, %bb.ag, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50
  %i.dt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.du = load ptr, ptr %i.j, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  %.not.i.i51 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  store i64 %i.dm, ptr %i.dt, align 8
  %i.dw = load ptr, ptr %i.h, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dx, ptr %i.h, align 8
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

bb.ai:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53 unwind label %bb.ae

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53:   ; preds = %bb.ah, %bb.ai, %bb.af, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.dy = load i32, ptr %4, align 8
  %i.dz = icmp eq i32 %i.dy, 11
  br i1 %i.dz, label %bb.aj, label %_ZNSt8__detail6_StateIcED2Ev.exit55

bb.aj:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53
  %i.ea = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i54, label %_ZNSt8__detail6_StateIcED2Ev.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = invoke noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit55 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #34
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit55:              ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ee = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ef = load ptr, ptr %i.q, align 8
  %i.eg = icmp eq ptr %i.ee, %i.ef
end_hunk_7
begin_hunk_8_@_ZNSt8__detail17__regex_algo_implIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEEcNS5_12regex_traitsIcEEEEbT_SB_RNS5_13match_resultsISB_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EEC2ES4_S4_RSt6vectorIS7_S8_ERKNS5_11basic_regexIcSA_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(189) %9, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %0, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4)
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %9, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(189) dereferenceable(189) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %9, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i52 = icmp eq i32 %i.u, 0
  br i1 %.not.i52, label %bb.j, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 88
  br label %bb.k

bb.k:                                             ; preds = %.noexc53, %bb.j
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false, !prof !38
  br i1 %i.ah, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i, label %bb.l, !prof !38

bb.l:                                             ; preds = %bb.k
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i: ; preds = %bb.k
  %i.ai = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.aj = load ptr, ptr %i.aa, align 8
  %.not2.not.i.not.not = icmp ne ptr %i.ai, %i.aj ; 3 uses
  br i1 %.not2.not.i.not.not, label %bb.m, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.m:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i
  %.not.i.i = icmp eq ptr %i.ai, %i.ae
  br i1 %.not.i.i, label %bb.n, label %_ZN3gsl7details13span_iteratorIcEppEv.exit.i, !prof !36

bb.n:                                             ; preds = %bb.m
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZN3gsl7details13span_iteratorIcEppEv.exit.i:     ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.al = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %9, i8 noundef zeroext 1)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.i
  br i1 %i.al, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !346

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc53, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i, %bb.i, %.noexc, %bb.f
  %.049.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not2.not.i.not.not, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i ], [ %.not2.not.i.not.not, %.noexc53 ]
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.aq = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i ], [ %i.aq, %bb.p ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.am, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.p
  %i.bb = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.aq, %bb.p ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.s, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.bo = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br i1 %.049.in, label %bb.ac, label %bb.aj

bb.u:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(181) %10, i8 0, i64 48, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %3, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %.pre, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = sdiv exact i64 %i.cg, 48                ; 5 uses
  %11 = icmp slt i64 %i.cg, 0
  br i1 %11, label %.noexc.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

.noexc.i:                                         ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i54 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i54, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ci = shl nuw nsw i64 %i.ch, 5
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #36 ; 4 uses
  store ptr %i.cj, ptr %i.bz, align 8
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %i.ck, ptr %i.cl, align 8
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.cj, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ] ; 2 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.cm = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !347

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.cj, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ch, %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %i.cg, 384
  br i1 %i.co, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cp, i8 0, i64 28, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cr, i8 0, i64 28, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cs, i8 0, i64 28, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ct, i8 0, i64 28, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cu, i8 0, i64 28, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cv, i8 0, i64 28, i1 false)
  %i.cw = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.db = load i64, ptr %i.da, align 8
  store i64 %i.db, ptr %i.cz, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.de = and i32 %4, 128
  %.not.i56 = icmp eq i32 %i.de, 0
  %i.df = and i32 %4, -6
  %spec.select = select i1 %.not.i56, i32 %4, i32 %i.df
  store i32 %spec.select, ptr %i.dd, align 8
  br i1 %6, label %bb.v, label %bb.x

common.resume:                                    ; preds = %bb.g, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dm, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %.loopexit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 180 ; 2 uses
  store i8 0, ptr %i.dh, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  %i.di = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc57 unwind label %bb.w   ; 0 uses

.noexc57:                                         ; preds = %bb.v
  %i.dj = load i64, ptr %i.cz, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %10, i8 noundef zeroext 0, i64 noundef %i.dj)
          to label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.w

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc57
  %i.dk = load i8, ptr %i.dh, align 4, !range !34, !noundef !35
  %i.dl = trunc nuw i8 %i.dk to i1
  br label %bb.y

bb.w:                                             ; preds = %.noexc57, %bb.v, %bb.x
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume

bb.x:                                             ; preds = %.loopexit.i
  %i.dn = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(181) %10)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.x
  %.1.in = phi i1 [ %i.dl, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dn, %bb.x ]
  %i.do = load ptr, ptr %i.bz, align 8            ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60: ; preds = %bb.z, %bb.y
  %i.du = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i.i1.i61 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i1.i61, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %.1.in, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.ab
  %i.ea = load ptr, ptr %2, align 8               ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not6970 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not6970, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ae
  %.pre72 = load ptr, ptr %i.eb, align 8
  %.pre73 = load ptr, ptr %2, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %i.ed = phi ptr [ %.pre73, %._crit_edge.loopexit ], [ %i.ea, %bb.ac ] ; 2 uses
  %i.ee = phi ptr [ %.pre72, %._crit_edge.loopexit ], [ %i.ea, %bb.ac ]
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh  ; 14 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -112   ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 -56    ; 3 uses
  br i1 %6, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %bb.ac, %bb.ae
  %.sroa.064.071 = phi ptr [ %i.ep, %bb.ae ], [ %i.ea, %bb.ac ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 48
  %i.em = load i8, ptr %i.el, align 8, !range !34, !noundef !35
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.064.071, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.064.071, i64 56 ; 2 uses
  %.not69 = icmp eq ptr %i.ep, %i.ec
  br i1 %.not69, label %._crit_edge.loopexit, label %.lr.ph

bb.af:                                            ; preds = %._crit_edge
  %i.eq = getelementptr i8, ptr %i.ei, i64 -64
  store i8 0, ptr %i.eq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.er = getelementptr i8, ptr %i.ei, i64 -88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.es = getelementptr i8, ptr %i.ei, i64 -8
  store i8 0, ptr %i.es, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.et = getelementptr i8, ptr %i.ei, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.ak

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.eu = load ptr, ptr %2, align 8
  %i.ev = getelementptr i8, ptr %i.ei, i64 -88    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false)
  %i.ew = load <2 x ptr>, ptr %i.ej, align 8
  %i.ex = load <2 x ptr>, ptr %i.ev, align 8
  %i.ey = icmp eq <2 x ptr> %i.ew, %i.ex          ; 2 uses
  %i.ez = extractelement <2 x i1> %i.ey, i64 0
  %i.fa = extractelement <2 x i1> %i.ey, i64 1
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false, !prof !38
  br i1 %i.fb, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.ah, !prof !38

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.ag
  %i.fc = getelementptr i8, ptr %i.ei, i64 -96
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr i8, ptr %i.ei, i64 -72
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = icmp ne ptr %i.fd, %i.ff
  %i.fh = getelementptr i8, ptr %i.ei, i64 -64
  %i.fi = zext i1 %i.fg to i8
  store i8 %i.fi, ptr %i.fh, align 8
  %i.fj = load ptr, ptr %2, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 24, i1 false)
  %i.fl = getelementptr i8, ptr %i.ei, i64 -32    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fm = load <2 x ptr>, ptr %i.ek, align 8
  %i.fn = load <2 x ptr>, ptr %i.fl, align 8
  %i.fo = icmp eq <2 x ptr> %i.fm, %i.fn          ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fo, i64 0
  %i.fq = extractelement <2 x i1> %i.fo, i64 1
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false, !prof !38
  br i1 %i.fr, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, label %bb.ai, !prof !38

bb.ai:                                            ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63: ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %i.fs = getelementptr i8, ptr %i.ei, i64 -40
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr i8, ptr %i.ei, i64 -16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = icmp ne ptr %i.ft, %i.fv
  %i.fx = getelementptr i8, ptr %i.ei, i64 -8
  %i.fy = zext i1 %i.fw to i8
  store i8 %i.fy, ptr %i.fx, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE14_M_fill_assignEmRKS6_(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(49) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63, %bb.af, %bb.a
  %.050 = phi i1 [ false, %bb.a ], [ true, %bb.af ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit63 ], [ false, %bb.aj ]
  ret i1 %.050
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EEC2ES4_S4_RSt6vectorIS7_S8_ERKNS5_11basic_regexIcSA_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(189) %0, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %1, ptr noundef byval(%"class.gsl::details::span_iterator.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = sdiv exact i64 %i.o, 48                  ; 5 uses
  %6 = icmp slt i64 %i.o, 0
  br i1 %6, label %bb.b, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.q = shl nuw nsw i64 %i.p, 5
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
          to label %.noexc10 unwind label %bb.d   ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.r, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.s, ptr %i.t, align 8
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc10, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc10 ] ; 2 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc10 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc10 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.u = add i64 %.01012.i.i.i.i.i.prol, -1       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !348

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc10
  %.lcssa.unr = phi ptr [ poison, %.noexc10 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc10 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc10 ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.o, 384
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, i8 0, i64 28, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, i8 0, i64 28, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, i8 0, i64 28, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = load ptr, ptr %i.i, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #36
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ah) #32
  %i.as = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ap, i1 false)
  store ptr %i.aq, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.aj, ptr %i.au, align 8
  %i.av = and i32 %5, 128
  %.not = icmp eq i32 %i.av, 0
  %i.aw = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %spec.select, ptr %i.ax, align 8
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.as to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bd) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.d ], [ %i.ar, %.body ], [ %i.ar, %bb.e ]
  %i.be = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(189) dereferenceable(189) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(181) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
end_hunk_8
begin_hunk_9_@_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE14_M_fill_assignEmRKS6_:bb.a
  %.not7.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit
  %i.ak = add i64 %.pre-phi27, %1
  %i.al = add i64 %i.ak, -1
  %xtraiter37 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i12.prol ], [ %i.ai, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i12.prol ], [ %i.aj, %.lr.ph.i.i.i.i12.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %.lr.ph.i.i.i.i12.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.am = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter37
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !354

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %.lr.ph.i.i.i.i12.preheader
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.i12.preheader ], [ %i.an, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i12.preheader ], [ %i.am, %.lr.ph.i.i.i.i12.prol ]
  %i.ao = icmp ult i64 %i.al, 3
  br i1 %i.ao, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.as = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !352

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESt6vectorIS8_SaIS8_EEEES8_EvT_SE_RKT0_.exit ], [ %.lcssa36.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.at, %.lr.ph.i.i.i.i12 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.au = icmp eq i64 %1, 0
  br i1 %i.au, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 56              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ay = add nsw i64 %.idx.i.i, -56              ; 2 uses
  %i.az = udiv i64 %i.ay, 56
  %i.ba = and i64 %i.az, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.c, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.bc = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i15.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.be, %.prol.loopexit.unr-lcssa ]
  %i.bf = icmp ult i64 %i.ay, 56
  br i1 %i.bf, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i15 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i15.unr, %.prol.loopexit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.06.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.bh = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 48
  store i8 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bj, ptr noundef nonnull align 8 dereferenceable(49) %2, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.bl = load i8, ptr %i.ax, align 8, !range !34, !noundef !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 104
  store i8 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i15, i64 112 ; 2 uses
  %.not.i.i.i.i16.1 = icmp eq ptr %i.bn, %i.av
  br i1 %.not.i.i.i.i16.1, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !353

_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i14.new, %.prol.loopexit
  %.pre = load ptr, ptr %i.v, align 8
  br label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit

_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit, %bb.h
  %i.bo = phi ptr [ %i.w, %bb.h ], [ %.pre, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.av, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES6_EvT_S8_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_ET_S8_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2EmRKS6_RKS7_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #33
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.326", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !35, !align !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %i.q, 9223372036854775800
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !36

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ null, %bb.b ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.v, ptr %i.w, align 8
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !27

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.u, align 8
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE17_M_realloc_insertIJRlRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq i8 %1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.ad, align 4
  %i.aq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ae, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48
  %i.bd = load ptr, ptr %i.af, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %i.bc, i1 false)
  %.pre = load ptr, ptr %i.b, align 8
  %.pre30 = load ptr, ptr %i.g, align 8
  br label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit:              ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %i.be = phi ptr [ %i.ar, %bb.g ], [ %.pre30, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.pr.i = phi ptr [ %i.aq, %bb.g ], [ %.pre, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %.pr.i, ptr %2, align 8
  store ptr %i.be, ptr %i.ag, align 8
  %i.bf = load ptr, ptr %i.i, align 8             ; 2 uses
  store ptr %i.bf, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not28 = icmp eq ptr %.pr.i, %i.be             ; 2 uses
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit
  br i1 %i.aj, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit, %bb.i
  %.sroa.019.029 = phi ptr [ %i.bq, %bb.i ], [ %.pr.i, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %0, align 8               ; 3 uses
  %i.bl = load ptr, ptr %i.ai, align 8
  store <2 x ptr> %i.bj, ptr %0, align 8
  store ptr %i.bi, ptr %i.ai, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %bb.h, %.lr.ph
  %i.bp = load i64, ptr %.sroa.019.029, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.bp)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.br

bb.k:                                             ; preds = %._crit_edge
  %i.bs = load i8, ptr %i.ad, align 4, !range !34, !noundef !35
  %i.bt = or i8 %i.bs, %.012
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1 = phi i8 [ %i.bt, %bb.k ], [ %.012, %._crit_edge ] ; 2 uses
  %i.bu = load ptr, ptr %i.ak, align 8
  %i.bv = load ptr, ptr %i.al, align 8
  %i.bw = icmp eq ptr %i.bu, %i.bv
  %i.bx = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.by = load ptr, ptr %i.an, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = select i1 %i.bw, i1 %i.bz, i1 false, !prof !38
  br i1 %i.ca, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.m, !prof !38

bb.m:                                             ; preds = %bb.l
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.l
  %i.cb = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.cc = load ptr, ptr %i.ap, align 8
  %.not23 = icmp eq ptr %i.cb, %i.cc              ; 2 uses
  br i1 %.not23, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %.not.i = icmp eq ptr %i.cb, %i.bx
  br i1 %.not.i, label %bb.o, label %_ZN3gsl7details13span_iteratorIcEppEv.exit, !prof !36

bb.o:                                             ; preds = %bb.n
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZN3gsl7details13span_iteratorIcEppEv.exit:       ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cd, ptr %i.ao, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, %_ZN3gsl7details13span_iteratorIcEppEv.exit
  br i1 %.not28, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.p ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i

end_hunk_9
begin_hunk_10_@_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl:bb.a
  br i1 %.not.i27, label %tailrecurse.backedge, label %common.ret

bb.l:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i26
  %i.bi = load ptr, ptr %i.m, align 8, !nonnull !35, !align !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 2064
  %i.bo = icmp eq i32 %i.bn, 2064
  br i1 %i.bo, label %bb.m, label %common.ret

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, !prof !36

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.m
  %i.bp = load i8, ptr %i.bd, align 1
  %i.bq = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef signext %i.bp)
  br i1 %i.bq, label %tailrecurse.backedge, label %common.ret

bb.o:                                             ; preds = %.lr.ph
  %i.br = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(189) %0), !inline_history !359
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bt = load i8, ptr %i.bs, align 8, !range !34, !noundef !35
  %i.bu = zext i1 %i.br to i8
  %.not.i = icmp eq i8 %i.bt, %i.bu
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.p:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i64 noundef %i.bw), !inline_history !360
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !range !34, !noundef !35
  %i.ca = zext i1 %i.bx to i8
  %.not.i24 = icmp eq i8 %i.bz, %i.ca
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.q:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %.tr3048)
  br label %common.ret

bb.r:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %.tr3048)
  br label %common.ret

bb.s:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = icmp eq ptr %i.cc, %i.cd
  %i.cf = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.cf, %i.ch
  %i.cj = select i1 %i.ce, i1 %i.ci, i1 false, !prof !38
  br i1 %i.cj, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i, label %bb.t, !prof !38

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i: ; preds = %bb.s
  %i.ck = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i
  %i.co = load i32, ptr %i.n, align 8
  %i.cp = and i32 %i.co, 32
  %.not.i25 = icmp eq i32 %i.cp, 0
  br i1 %.not.i25, label %bb.v, label %common.ret

bb.v:                                             ; preds = %bb.u, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.i
  %i.cq = icmp eq i8 %1, 1
  br i1 %i.cq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.h, align 8
  %i.cs = icmp eq ptr %i.cc, %i.cr
  %i.ct = load ptr, ptr %i.j, align 8
  %i.cu = icmp eq ptr %i.cf, %i.ct
  %i.cv = select i1 %i.cs, i1 %i.cu, i1 false, !prof !38
  br i1 %i.cv, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit1.i, label %bb.x, !prof !38

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit1.i: ; preds = %bb.w
  %i.cw = load ptr, ptr %i.l, align 8
  %i.cx = icmp eq ptr %i.ck, %i.cw
  br i1 %i.cx, label %bb.y, label %common.ret

bb.y:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit1.i, %bb.v
  %i.cy = load i8, ptr %i.o, align 4, !range !34, !noundef !35
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %common.ret, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.o, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !35, !align !40
  %i.dc = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(189) %0) ; 0 uses
  br label %common.ret

bb.aa:                                            ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = and i32 %i.de, 16
  %.not.i92 = icmp eq i32 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dh = load i64, ptr %i.dg, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.dh), !inline_history !361
  %i.di = load i8, ptr %i.o, align 4, !range !34, !noundef !35 ; 2 uses
  br i1 %.not.i92, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.a, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !range !34, !noundef !35
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %common.ret, label %.lr.ph.backedge

bb.ac:                                            ; preds = %bb.aa
  store i8 0, ptr %i.o, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.dr), !inline_history !361
  %i.ds = load i8, ptr %i.o, align 4, !range !34, !noundef !35
  %i.dt = or i8 %i.ds, %i.di
  store i8 %i.dt, ptr %i.o, align 4
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE17_M_realloc_insertIJRlRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #37
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = load ptr, ptr %3, align 8                ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 8
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp ugt i64 %i.y, 9223372036854775800
  br i1 %i.ac, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !36

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ad, ptr %i.s, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i.i, i64 56, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27.thread
  %i.aj = phi ptr [ %i.z, %.noexc27.thread ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.aj, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !370, !noalias !369
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !alias.scope !369, !noalias !370
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !370, !noalias !369
  store <2 x ptr> %i.an, ptr %i.al, align 8, !alias.scope !369, !noalias !370
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !370, !noalias !369
  store ptr %i.aq, ptr %i.ao, align 8, !alias.scope !369, !noalias !370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !370, !noalias !369
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !365

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i29 ], [ %i.at, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 4 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.au = load i64, ptr %.0911.i.i.i.i31, align 8, !alias.scope !372, !noalias !371
  store i64 %i.au, ptr %.012.i.i.i.i30, align 8, !alias.scope !371, !noalias !372
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !372, !noalias !371
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !alias.scope !371, !noalias !372
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !372, !noalias !371
  store ptr %i.ba, ptr %i.ay, align 8, !alias.scope !371, !noalias !372
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !372, !noalias !371
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !365

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bc, %.lr.ph.i.i.i.i29 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #33
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #37
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bi

bb.h:                                             ; preds = %bb.e
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #34
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !35, !align !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  %i.r = select i1 %i.l, i1 %i.q, i1 false, !prof !38
  br i1 %i.r, label %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  %.not.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i, label %bb.d, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit:      ; preds = %bb.c
  %i.x = load i8, ptr %i.t, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.x, ptr %i.b, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.e:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ad, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.af, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !36

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #36
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.g
  %i.at = phi ptr [ null, %bb.g ], [ %i.as, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.at, ptr %i.ak, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %0, align 8               ; 2 uses
  %i.ay = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ax, %bb.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !27

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.au, align 8
  %i.bb = load ptr, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.ag, align 8
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

bb.j:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEESaISA_EE17_M_realloc_insertIJRlRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS7_EEEC2IRlRKS9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EE8_M_queueElRKSG_.exit, %_ZNK3gsl7details13span_iteratorIcEeqIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher", align 8 ; 5 uses
  %4 = alloca %"class.gsl::details::span_iterator.141", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %i.g ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !range !34, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.sroa.017.0.copyload = load ptr, ptr %i.m, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.sroa.017.0.copyload, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %.sroa.7.0.copyload, %i.r
  %i.t = select i1 %i.p, i1 %i.s, i1 false, !prof !38
  br i1 %i.t, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph, label %bb.d, !prof !39

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.not.us45 = icmp eq ptr %.sroa.10.0.copyload, %i.v
  br i1 %.not.us45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %.sroa.0.0.copyload, %i.z
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = icmp eq ptr %.sroa.4.0.copyload, %i.ab
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !prof !38
  br i1 %i.ad, label %.lr.ph.split, label %.split.us, !prof !38

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.w, align 8
  br label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us: ; preds = %.lr.ph.split, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us
  %.sroa.10.039.us47 = phi ptr [ %.sroa.10.0.copyload, %.lr.ph.split ], [ %i.af, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ] ; 3 uses
  %.sroa.6.040.us46 = phi ptr [ %.sroa.6.0.copyload, %.lr.ph.split ], [ %i.ag, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ] ; 3 uses
  %.not33.us = icmp eq ptr %.sroa.6.040.us46, %i.ae
  br i1 %.not33.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us
  %.not.i.us = icmp eq ptr %.sroa.10.039.us47, %.sroa.7.0.copyload
  br i1 %.not.i.us, label %.split42.us, label %_ZN3gsl7details13span_iteratorIcEppEv.exit.us, !prof !36

_ZN3gsl7details13span_iteratorIcEppEv.exit.us:    ; preds = %bb.c
  %.not.i12.us = icmp eq ptr %.sroa.6.040.us46, %.sroa.4.0.copyload
  br i1 %.not.i12.us, label %.split44.us, label %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us, !prof !36

_ZN3gsl7details13span_iteratorIcEppEv.exit13.us:  ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.us
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.039.us47, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.040.us46, i64 1
  %.not.us = icmp eq ptr %i.af, %i.v
  br i1 %.not.us, label %.critedge, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split.us:                                        ; preds = %.lr.ph
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.critedge:                                        ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph
  %.us-phi = phi ptr [ %.sroa.10.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph ], [ %i.af, %_ZN3gsl7details13span_iteratorIcEppEv.exit13.us ], [ %.sroa.10.039.us47, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit11.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = and i8 %i.ak, 1
  store i8 %i.ao, ptr %3, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.sroa.017.0.copyload, ptr %4, align 8
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx21, align 8
  %.sroa.10.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.us-phi, ptr %.sroa.10.0..sroa_idx27, align 8
  %i.ar = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN3gsl7details13span_iteratorIcEENSt7__cxx1112regex_traitsIcEEE8_M_applyES4_S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.i, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.aq, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.m, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.ar, label %bb.e, label %bb.i

.split42.us:                                      ; preds = %bb.c
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split44.us:                                      ; preds = %_ZN3gsl7details13span_iteratorIcEppEv.exit.us
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.e:                                             ; preds = %.critedge
  %i.as = load ptr, ptr %i.m, align 8
  %i.at = icmp eq ptr %.sroa.017.0.copyload, %i.as
  %i.au = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.av = icmp eq ptr %.sroa.7.0.copyload, %i.au
  %i.aw = select i1 %i.at, i1 %i.av, i1 false, !prof !38
  br i1 %i.aw, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14: ; preds = %bb.e
  %i.ax = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.not34 = icmp eq ptr %.us-phi, %i.ax
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit14
  %.sroa.0.0.copyload50 = load <3 x ptr>, ptr %i.m, align 8
  store ptr %.sroa.017.0.copyload, ptr %i.m, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  store ptr %.us-phi, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i8 noundef zeroext %1, i64 noundef %i.az)
  store <3 x ptr> %.sroa.0.0.copyload50, ptr %i.m, align 8
end_hunk_10
begin_hunk_11_@_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !382
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i, label %bb.j, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit, !prof !36

bb.j:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit:      ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !35, !align !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80 ; 2 uses
  %i.aq = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.ar = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.as = load ptr, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load ptr, ptr %i.av, align 8            ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.not.i.i.i, label %bb.k, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.k:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aq to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i8 %i.ak to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not4.i.i, label %bb.l, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.l:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.bd = and i32 %i.aq, 65536
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bf = load i8, ptr %i.be, align 8
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.bh = load i8, ptr %i.bg, align 8
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
  %i.bi = load ptr, ptr %i.aw, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 95), !inline_history !381
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi i8 [ %i.bh, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i8 %i.ak, %.0.i.i.i
  %i.bn = zext i1 %i.bm to i32
  br label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.l, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.l ], [ %i.bn, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = load ptr, ptr %i.t, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  %i.br = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.w, align 8
  %i.bt = icmp eq ptr %i.br, %i.bs
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false, !prof !38
  br i1 %i.bu, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7, label %bb.p, !prof !38

bb.p:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7: ; preds = %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.bv = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.bw = load ptr, ptr %i.aa, align 8
  %.not26 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not26, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %.not.i8 = icmp eq ptr %i.bv, %i.br
  br i1 %.not.i8, label %bb.r, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9, !prof !36

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit9:     ; preds = %bb.q
  %i.bx = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !35, !align !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.ce = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load ptr, ptr %i.ci, align 8            ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.cj, null
  br i1 %.not.not.i.i.i10, label %bb.s, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.s:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.cd to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = zext i8 %i.bx to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = and i16 %i.co, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.cp, 0
  br i1 %.not4.i.i13, label %bb.t, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.t:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.cq = and i32 %i.cd, 65536
  %.not.i.i14 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cs = load i8, ptr %i.cr, align 8
  %.not.i.i.i15 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cu = load i8, ptr %i.ct, align 8
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.w:                                             ; preds = %bb.u
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cj)
  %i.cv = load ptr, ptr %i.cj, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, i8 noundef signext 95), !inline_history !381
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.w, %bb.v
  %.0.i.i.i17 = phi i8 [ %i.cu, %bb.v ], [ %i.cy, %bb.w ]
  %i.cz = icmp eq i8 %i.bx, %.0.i.i.i17
  %i.da = zext i1 %i.cz to i32
  br label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.t, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %i.db = phi i32 [ 0, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7 ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.t ], [ %i.da, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.dc = icmp ne i32 %.1, %i.db
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %bb.c, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.03 = phi i1 [ %i.dc, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.03
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(189) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.142", align 8   ; 15 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !36

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  store ptr %i.k, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.g, %.thread ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !35, !align !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load i32, ptr %i.w, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EEC2ES4_S4_RSt6vectorIS7_S8_ERKNS5_11basic_regexIcSA_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(189) %3, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.s, ptr noundef nonnull byval(%"class.gsl::details::span_iterator.141") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef %i.x)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ab = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSB_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(189) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !383 ; 2 uses

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ab, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ac = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ad = load ptr, ptr %2, align 8               ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(189) dereferenceable(189) %3) #32
  br label %bb.p

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.ag = phi ptr [ %i.as, %bb.h ], [ %i.ad, %.preheader ] ; 2 uses
  %i.ah = phi ptr [ %i.at, %bb.h ], [ %i.ac, %.preheader ]
  %.020 = phi i64 [ %i.au, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %.020 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !34, !noundef !35
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %.020 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.an, ptr noundef nonnull align 8 dereferenceable(49) %i.ai, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.aq = load i8, ptr %i.aj, align 8, !range !34, !noundef !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i8 %i.aq, ptr %i.ar, align 8
  %.pre = load ptr, ptr %i.r, align 8
  %.pre21 = load ptr, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.as = phi ptr [ %.pre21, %bb.g ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.at = phi ptr [ %.pre, %bb.g ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.au = add nuw i64 %.020, 1                    ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 56
  %i.az = icmp ult i64 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph, label %.loopexit, !llvm.loop !384

.loopexit:                                        ; preds = %bb.h, %.preheader, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.be = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i ], [ %i.be, %bb.j ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #33
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i15
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bo, %i.bg
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !25

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ba, align 8
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.j
  %i.bp = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.be, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS8_EEESB_EvT_SD_RSaIT0_E.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS7_S8_EED2Ev.exit.i
  %i.cc = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ci = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.cj = load ptr, ptr %i.q, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
end_hunk_11
begin_hunk_12_@_ZNSt8__detail16_Backref_matcherIN3gsl7details13span_iteratorIcEENSt7__cxx1112regex_traitsIcEEE8_M_applyES4_S4_S4_S4_:bb.a
  %.sroa.021.0.copyload = load ptr, ptr %3, align 8
  %i.f = icmp eq ptr %.sroa.027.0.copyload, %.sroa.021.0.copyload
  %i.g = icmp eq ptr %.sroa.228.0.copyload, %.sroa.222.0.copyload
  %i.h = select i1 %i.f, i1 %i.g, i1 false, !prof !38
  br i1 %i.h, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i, label %bb.d, !prof !38

bb.d:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i
  %i.i = ptrtoint ptr %.sroa.317.0.copyload to i64
  %i.j = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ptrtoint ptr %.sroa.329.0.copyload to i64
  %i.m = ptrtoint ptr %.sroa.323.0.copyload to i64
  %i.n = sub i64 %i.l, %i.m
  %.not.i = icmp eq i64 %i.k, %i.n
  br i1 %.not.i, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i
  %.not.us26.i.i.i.i.i = icmp eq ptr %.sroa.3.0.copyload, %.sroa.317.0.copyload
  br i1 %.not.us26.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i
  %i.o = phi ptr [ %i.t, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.3.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.p = phi ptr [ %i.u, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ], [ %.sroa.323.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not.i.us.i.i.i.i.i = icmp eq ptr %i.o, %.sroa.2.0.copyload
  br i1 %.not.i.us.i.i.i.i.i, label %.split19.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not.i1.us.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.222.0.copyload
  br i1 %.not.i1.us.i.i.i.i.i, label %.split23.us.i.i.i.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  %i.q = load i8, ptr %i.o, align 1
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.q, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.not.us.i.i.i.i.i = icmp ne ptr %i.t, %.sroa.317.0.copyload
  %or.cond.not = select i1 %i.s, i1 %.not.us.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split19.us.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split23.us.i.i.i.i.i:                            ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i.i.i.i
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !35, !align !40
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.w) #32
  %i.x = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  %.not.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.sroa.033.0.copyload = load ptr, ptr %1, align 8
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.234.0.copyload = load ptr, ptr %.sroa.234.0..sroa_idx, align 8 ; 2 uses
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.335.0.copyload = load ptr, ptr %.sroa.335.0..sroa_idx, align 8 ; 3 uses
  %.sroa.039.0.copyload = load ptr, ptr %2, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.240.0.copyload = load ptr, ptr %.sroa.240.0..sroa_idx, align 8
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.341.0.copyload = load ptr, ptr %.sroa.341.0..sroa_idx, align 8 ; 3 uses
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.246.0.copyload = load ptr, ptr %.sroa.246.0..sroa_idx, align 8 ; 2 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.347.0.copyload = load ptr, ptr %.sroa.347.0..sroa_idx, align 8 ; 2 uses
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.353.0.copyload = load ptr, ptr %.sroa.353.0..sroa_idx, align 8
  %i.ad = icmp eq ptr %.sroa.039.0.copyload, %.sroa.033.0.copyload
  %i.ae = icmp eq ptr %.sroa.240.0.copyload, %.sroa.234.0.copyload
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false, !prof !38
  br i1 %i.af, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8, label %bb.g, !prof !38

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8: ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.252.0.copyload = load ptr, ptr %.sroa.252.0..sroa_idx, align 8
  %.sroa.051.0.copyload = load ptr, ptr %4, align 8
  %.sroa.045.0.copyload = load ptr, ptr %3, align 8
  %i.ag = icmp eq ptr %.sroa.051.0.copyload, %.sroa.045.0.copyload
  %i.ah = icmp eq ptr %.sroa.252.0.copyload, %.sroa.246.0.copyload
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false, !prof !38
  br i1 %i.ai, label %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, label %bb.h, !prof !38

bb.h:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit.i8
  %i.aj = ptrtoint ptr %.sroa.341.0.copyload to i64
  %i.ak = ptrtoint ptr %.sroa.335.0.copyload to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ptrtoint ptr %.sroa.353.0.copyload to i64
  %i.an = ptrtoint ptr %.sroa.347.0.copyload to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not.i9 = icmp eq i64 %i.al, %i.ao
  br i1 %.not.i9, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i
  %.not.us27.i.i = icmp eq ptr %.sroa.335.0.copyload, %.sroa.341.0.copyload
  br i1 %.not.us27.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i
  %i.ap = phi ptr [ %i.bc, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.335.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %i.aq = phi ptr [ %i.bd, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ %.sroa.347.0.copyload, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ] ; 3 uses
  %.not.i.us.i.i = icmp eq ptr %i.ap, %.sroa.234.0.copyload
  br i1 %.not.i.us.i.i, label %.split20.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i: ; preds = %.lr.ph.i.i
  %.not.i1.us.i.i = icmp eq ptr %i.aq, %.sroa.246.0.copyload
  br i1 %.not.i1.us.i.i, label %.split24.us.i.i, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, !prof !36

_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  %i.ar = load i8, ptr %i.ap, align 1
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ac, i8 noundef signext %i.ar), !inline_history !385
  %i.ax = load ptr, ptr %i.ac, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.ac, i8 noundef signext %i.as), !inline_history !385
  %i.bb = icmp eq i8 %i.aw, %i.ba                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.not.us.i.i = icmp ne ptr %i.bc, %.sroa.341.0.copyload
  %or.cond72.not = select i1 %i.bb, i1 %.not.us.i.i, i1 false
  br i1 %or.cond72.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit

.split20.us.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

.split24.us.i.i:                                  ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit.us.i.i
  call void @_ZN3gsl7details9terminateEv() #34
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.be

_ZSt8__equal4IN3gsl7details13span_iteratorIcEES3_EbT_S4_T0_S5_.exit: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i
  %.0 = phi i1 [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit2.i ], [ true, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit.lr.ph.i.i.i.i.i ], [ %i.bb, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i ], [ false, %_ZNK3gsl7details13span_iteratorIcEmiIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEElRKNS1_IS6_EE.exit4.i ], [ %i.s, %_ZNK3gsl7details13span_iteratorIcEdeEv.exit2.us.i.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -56
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 56
  %i.s = add i64 %.fr.i, 56
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aa = udiv exact i64 %i.f, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ae = load i8, ptr %i.ad, align 8, !range !34, !noundef !35
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  store i8 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, !llvm.loop !386

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp sgt i64 %i.y, 0
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.al = udiv exact i64 %i.y, 56
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0811.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(49) %.0910.i.i.i.i.i30, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !range !34, !noundef !35
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 48
  store i8 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 56
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, !llvm.loop !387

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i27
  %.pre = load ptr, ptr %1, align 8
  %.pre34 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.pre35 = load ptr, ptr %0, align 8
  %.pre36 = load ptr, ptr %i.a, align 8
  %.pre37 = ptrtoint ptr %.pre34 to i64
  %.pre38 = ptrtoint ptr %.pre35 to i64
  %.pre40 = sub i64 %.pre37, %.pre38
  br label %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit: ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit, %bb.h
  %.pre-phi41 = phi i64 [ %.pre40, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.y, %bb.h ]
  %i.av = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %.pre34, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.w, %bb.h ]
  %i.ax = phi ptr [ %.pre, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.pre-phi41 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0810.i.i.i.i, i64 56, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !388

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEES7_S6_ET0_T_S9_S8_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0 = alloca %"struct.std::pair", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge236, %bb.a
  %.tr28 = phi i64 [ %2, %bb.a ], [ %.tr28.be237, %tailrecurse.backedge236 ] ; 6 uses
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.tr28 ; 13 uses
  %i.o = load i32, ptr %i.n, align 8
  switch i32 %i.o, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.f
    i32 9, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 11, label %bb.p
    i32 3, label %bb.q
    i32 12, label %bb.r
    i32 1, label %bb.s
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %.tr28), !inline_history !389
  %i.s = load i8, ptr %i.j, align 4, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %common.ret, label %tailrecurse.backedge236

tailrecurse.backedge236:                          ; preds = %bb.t, %bb.c, %bb.h, %.split, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.n, %bb.o
  %.tr28.be237.in = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.tr28.be237 = load i64, ptr %.tr28.be237.in, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %i.v), !inline_history !389
  %i.w = load i8, ptr %i.j, align 4, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i8 noundef zeroext %1, i64 noundef %.tr28), !inline_history !389
  br label %common.ret

end_hunk_12
begin_hunk_13_@_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a
  tail call void @_ZN3gsl7details9terminateEv() #34, !noalias !405
  unreachable

_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i, label %bb.j, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit, !prof !36

bb.j:                                             ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit:      ; preds = %_ZSt9__advanceIN3gsl7details13span_iteratorIcEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !35, !align !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80 ; 2 uses
  %i.aq = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.ar = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.as = load ptr, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ar
  %i.aw = load ptr, ptr %i.av, align 8            ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.not.i.i.i, label %bb.k, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.k:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aq to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i8 %i.ak to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not4.i.i, label %bb.l, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.l:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.bd = and i32 %i.aq, 65536
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bf = load i8, ptr %i.be, align 8
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.bh = load i8, ptr %i.bg, align 8
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
  %i.bi = load ptr, ptr %i.aw, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 95), !inline_history !404
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi i8 [ %i.bh, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i8 %i.ak, %.0.i.i.i
  %i.bn = zext i1 %i.bm to i32
  br label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.l, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.l ], [ %i.bn, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = load ptr, ptr %i.t, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  %i.br = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.w, align 8
  %i.bt = icmp eq ptr %i.br, %i.bs
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false, !prof !38
  br i1 %i.bu, label %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7, label %bb.p, !prof !38

bb.p:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7: ; preds = %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.bv = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.bw = load ptr, ptr %i.aa, align 8
  %.not26 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not26, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %.not.i8 = icmp eq ptr %i.bv, %i.br
  br i1 %.not.i8, label %bb.r, label %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9, !prof !36

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN3gsl7details9terminateEv() #34
  unreachable

_ZNK3gsl7details13span_iteratorIcEdeEv.exit9:     ; preds = %bb.q
  %i.bx = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !35, !align !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.ce = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load ptr, ptr %i.ci, align 8            ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.cj, null
  br i1 %.not.not.i.i.i10, label %bb.s, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.s:                                             ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  tail call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %_ZNK3gsl7details13span_iteratorIcEdeEv.exit9
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.cd to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = zext i8 %i.bx to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = and i16 %i.co, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.cp, 0
  br i1 %.not4.i.i13, label %bb.t, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

bb.t:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.cq = and i32 %i.cd, 65536
  %.not.i.i14 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cs = load i8, ptr %i.cr, align 8
  %.not.i.i.i15 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cu = load i8, ptr %i.ct, align 8
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.w:                                             ; preds = %bb.u
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cj)
  %i.cv = load ptr, ptr %i.cj, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, i8 noundef signext 95), !inline_history !404
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.w, %bb.v
  %.0.i.i.i17 = phi i8 [ %i.cu, %bb.v ], [ %i.cy, %bb.w ]
  %i.cz = icmp eq i8 %i.bx, %.0.i.i.i17
  %i.da = zext i1 %i.cz to i32
  br label %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.t, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7
  %i.db = phi i32 [ 0, %_ZNK3gsl7details13span_iteratorIcEneIcTnNSt9enable_ifIXsr3std7is_sameINSt9remove_cvIT_E4typeEcEE5valueEiE4typeELi0EEEbRKNS1_IS6_EE.exit7 ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.t ], [ %i.da, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.dc = icmp ne i32 %.1, %i.db
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %bb.c, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18
  %.03 = phi i1 [ %i.dc, %_ZNKSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit18 ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.03
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(181) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.142", align 8   ; 16 uses
  %3 = alloca %"class.std::__detail::_Executor.331", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !36

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  store ptr %i.k, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.08.i.i.i.i.i, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.g, %.thread ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !35, !align !40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(181) %3, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = sdiv exact i64 %i.am, 48                ; 5 uses
  %4 = icmp slt i64 %i.am, 0
  br i1 %4, label %bb.d, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.291) #37
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEC2ERKS8_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36
          to label %.noexc8.i unwind label %bb.e  ; 4 uses

.noexc8.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i
  store ptr %i.ap, ptr %i.af, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr %i.aq, ptr %i.ar, align 8
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc8.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %.noexc8.i ] ; 2 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.an, %.noexc8.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc8.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  %i.as = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !406

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc8.i
  %.lcssa.unr = phi ptr [ poison, %.noexc8.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ap, %.noexc8.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.an, %.noexc8.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.am, 384
  br i1 %i.au, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.i, i8 0, i64 28, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.av, i8 0, i64 28, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aw, i8 0, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i8 0, i64 28, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  %i.bc = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !26

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bi = and i32 %i.z, 128
  %.not.i = icmp eq i32 %i.bi, 0
  %i.bj = and i32 %i.z, -6
  %spec.select = select i1 %.not.i, i32 %i.z, i32 %i.bj
  store i32 %spec.select, ptr %i.bh, align 8
  store i64 %1, ptr %i.bf, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 2 uses
  store i8 0, ptr %i.bl, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(181) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !407 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EEC2EmRKS6_.exit.i.i, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bo = load i64, ptr %i.bf, align 8
  invoke void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSB_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(181) %3, i8 noundef zeroext 1, i64 noundef %i.bo)
          to label %bb.f unwind label %bb.g, !inline_history !407

bb.f:                                             ; preds = %.noexc
  %i.bp = load i8, ptr %i.bl, align 4, !range !34, !noundef !35
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  br i1 %i.bq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.br = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bs = load ptr, ptr %2, align 8               ; 2 uses
  %.not = icmp eq ptr %i.br, %i.bs
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %3) #32
  br label %.body

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %i.bu = phi ptr [ %i.cg, %bb.i ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bv = phi ptr [ %i.ch, %bb.i ], [ %i.br, %.preheader ]
  %.023 = phi i64 [ %i.ci, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %.023 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !range !34, !noundef !35
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw [56 x i8], ptr %i.ca, i64 %.023 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.cb, ptr noundef nonnull align 8 dereferenceable(49) %i.bw, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.ce = load i8, ptr %i.bx, align 8, !range !34, !noundef !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i8 %i.ce, ptr %i.cf, align 8
  %.pre = load ptr, ptr %i.r, align 8
  %.pre25 = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.cg = phi ptr [ %.pre25, %bb.h ], [ %i.bu, %.lr.ph ] ; 2 uses
  %i.ch = phi ptr [ %.pre, %bb.h ], [ %i.bv, %.lr.ph ] ; 2 uses
  %i.ci = add nuw i64 %.023, 1                    ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 56
  %i.cn = icmp ult i64 %i.ci, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.loopexit, !llvm.loop !408

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.f
  %i.co = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #33
  br label %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i: ; preds = %bb.j, %.loopexit
  %i.cu = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #33
  br label %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN3gsl7details13span_iteratorIcEEiESaIS5_EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.da = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.db = load ptr, ptr %i.q, align 8
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN3gsl7details13span_iteratorIcEESaINSt7__cxx119sub_matchIS4_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.bq

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %i.bn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.df = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %.body
  %i.dg = load ptr, ptr %i.q, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN3gsl7details13span_iteratorIcEEEESaIS6_EED2Ev.exit20: ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_span_tests.cpp() #28 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
end_hunk_13
