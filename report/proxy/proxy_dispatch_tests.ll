Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__format::_Iter_sink", align 8 ; 11 uses
  %6 = alloca %"class.std::basic_format_context", align 8 ; 9 uses
  %7 = alloca %"class.std::__format::_Formatting_scanner", align 8 ; 11 uses
  %8 = alloca %"class.std::__format::_Seq_sink", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !171
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 256, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.a, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 304 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 296
  store i64 0, ptr %i.f, align 8, !tbaa !114
  store i8 0, ptr %i.e, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !171
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 256, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.g, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE, i64 16), ptr %5, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 288
  store ptr %8, ptr %i.j, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 296
  store i64 -1, ptr %i.k, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 304
  store i64 0, ptr %i.l, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 %3, ptr %6, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %8, ptr %i.m, align 8, !tbaa !170
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i8 0, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %1
  store ptr %i.r, ptr %i.q, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !148
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.t, align 8, !tbaa !151
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 -1, ptr %i.u, align 8, !tbaa !945
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, i64 16), ptr %7, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %6, ptr %i.v, align 8, !tbaa !946
  invoke void @_ZNSt8__format8_ScannerIcE7_M_scanEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.w = load i8, ptr %i.o, align 8, !tbaa !158, !range !65, !noundef !66
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %i.n) #30
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.z = load i8, ptr %i.o, align 8, !tbaa !158, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcED2Ev.exit17.i

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %i.n) #30
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcED2Ev.exit17.i

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcED2Ev.exit17.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  invoke void @_ZNOSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3getEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !74
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #31
  br label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcED2Ev.exit17.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.y, %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcED2Ev.exit17.i ]
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.e
  br i1 %i.ah, label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %.body
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !74
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit11

_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNOSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3getEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !171  ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp eq ptr %i.d, %i.c
  br i1 %i.h, label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114  ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.340) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.n = add i64 %i.k, %i.g                       ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = load i64, ptr %i.p, align 8, !tbaa !74
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.n, %i.t
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.c, align 1, !tbaa !74
  store i8 %i.v, ptr %i.u, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.c, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef %i.c, i64 noundef %i.g)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.e, %bb.f, %bb.g
  store i64 %i.n, ptr %i.j, align 8, !tbaa !114
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !tbaa !74
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !171
  store ptr %i.y, ptr %i.b, align 8, !tbaa !171
  br label %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv.exit

_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !113
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !114 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv.exit
  store ptr %i.ab, ptr %0, align 8, !tbaa !71
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !74
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = phi i64 [ %i.af, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !114
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !71
  store i64 0, ptr %i.ak, align 8, !tbaa !114
  store i8 0, ptr %i.ac, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !171  ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp eq ptr %i.d, %i.c
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114  ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.340) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.n = add i64 %i.k, %i.g                       ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.r = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.s = load i64, ptr %i.p, align 8, !tbaa !74
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.t = phi i64 [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.n, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k ; 2 uses
  %cond.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.c, align 1, !tbaa !74
  store i8 %i.v, ptr %i.u, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.c, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef %i.c, i64 noundef %i.g)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i64 %i.n, ptr %i.j, align 8, !tbaa !114
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  store i8 0, ptr %i.x, align 1, !tbaa !74
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !171
  store ptr %i.y, ptr %i.b, align 8, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__format8_ScannerIcE7_M_scanEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  switch i64 %i.g, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i [
    i64 2, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 1, !tbaa !74
  %i.i = icmp eq i8 %i.h, 123
  br i1 %i.i, label %bb.c, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !74
  %i.l = icmp eq i8 %i.k, 125
  br i1 %i.l, label %bb.d, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.a, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !148
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__format39__conflicting_indexing_in_format_stringEv() #33
  unreachable

_ZNSt26basic_format_parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.d
  store i32 2, ptr %i.m, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !151  ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !151
  %i.s = load ptr, ptr %0, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.q)
  br label %.loopexit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b, %bb.c, %bb.a
  %i.v = tail call ptr @memchr(ptr noundef %i.b, i32 noundef 123, i64 noundef %i.g) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f
  %.1.i.ph = select i1 %.not.i, i64 -1, i64 %i.x  ; 2 uses
  %i.y = tail call ptr @memchr(ptr noundef %i.b, i32 noundef 125, i64 noundef %i.g) #30 ; 2 uses
  %.not.i47 = icmp eq ptr %i.y, null
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.f
  %.1.i45.ph = select i1 %.not.i47, i64 -1, i64 %i.aa ; 2 uses
  %i.ab = icmp eq i64 %.1.i.ph, %.1.i45.ph
  br i1 %i.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54.thread, label %.lr.ph139

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.lcssa = phi ptr [ %i.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %i.ca, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54 ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !40
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.lcssa)
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !147
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !146
  br label %.loopexit

.lr.ph139:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54
  %i.af = phi ptr [ %.sroa.16.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54 ], [ %i.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %.sroa.0.0107138 = phi i64 [ %.sroa.0.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54 ], [ %i.g, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 2 uses
  %.034108137 = phi i64 [ %.438, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54 ], [ %.1.i45.ph, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 5 uses
  %.033109136 = phi i64 [ %.4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit54 ], [ %.1.i.ph, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 6 uses
  %i.ag = icmp ult i64 %.033109136, %.034108137
end_hunk_0
