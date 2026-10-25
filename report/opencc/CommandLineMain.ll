Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5TCLAP8MultiArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_S9_S9_bS9_RNS_16CmdLineInterfaceEPNS_7VisitorE:bb.a
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !47
  store i8 %i.l, ptr %i.k, align 1, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.q, align 8, !tbaa !215
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.r, align 8, !tbaa !216
  %i.s = load ptr, ptr %6, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 1, ptr %i.v, align 2, !tbaa !217
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !47
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.x, %bb.g ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #34
  call void @_ZN5TCLAP3ArgD2Ev(ptr noundef nonnull align 8 dead_on_return(163) dereferenceable(163) %0) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5TCLAP7CmdLine5parseERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !152    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 104) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.143, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.144, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5TCLAP21CmdLineParseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN5TCLAP21CmdLineParseExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #35
          to label %bb.av unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.039 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 4 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !47
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.n = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.r = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.u = load i64, ptr %i.s, align 8, !tbaa !47
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.o, align 8, !tbaa !47
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.x) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.039, label %bb.g, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.039, label %bb.g, label %bb.ag

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.thread
  %.pn62.pn88.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn62.pn88 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn62.pn88.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.f) #34
  br label %bb.ag

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.h
  %i.z = load ptr, ptr %1, align 8, !tbaa !152
  %i.aa = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.z)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %bb.y ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.ac = load ptr, ptr %1, align 8, !tbaa !42
  %.not143 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 219
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %.035.lcssa = phi i32 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit ], [ %.136100106, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !201 ; 2 uses
  %i.ai = icmp slt i32 %.035.lcssa, %i.ah
  br i1 %i.ai, label %bb.x, label %bb.z

bb.i:                                             ; preds = %.lr.ph, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103
  %.035142 = phi i32 [ 0, %.lr.ph ], [ %.136100106, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103 ] ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.081.0.in = phi ptr [ %i.ad, %bb.i ], [ %.sroa.081.0, %bb.l ]
  %.sroa.081.0 = load ptr, ptr %.sroa.081.0.in, align 8, !tbaa !80 ; 4 uses
  %.not = icmp eq ptr %.sroa.081.0, %i.ad
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.081.0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(163) %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.ao, label %bb.m, label %bb.j, !llvm.loop !376

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.081.0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.ar = invoke noundef i32 @_ZN5TCLAP10XorHandler5checkEPKNS_3ArgE(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.aq)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.m
  %i.as = add nsw i32 %i.ar, %.035142
  %.pre = load i32, ptr %i.a, align 4, !tbaa !39
  %.pre147 = load ptr, ptr %1, align 8, !tbaa !42
  br label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.m
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.a, align 4, !tbaa !39  ; 7 uses
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %1, align 8, !tbaa !42    ; 7 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !47
  %.not10.i = icmp eq i8 %i.ba, 45
  br i1 %.not10.i, label %bb.p, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp eq i64 %i.ay, 1
  br i1 %i.bb, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %.lr.ph.i

bb.q:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ay
  br i1 %exitcond.not.i, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %.lr.ph.i, !llvm.loop !377

.lr.ph.i:                                         ; preds = %bb.p, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !47
  %.not11.i = icmp eq i8 %i.bd, 7
  br i1 %.not11.i, label %bb.q, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %12 = load i8, ptr @_ZZN5TCLAP3Arg13ignoreRestRefEvE3ign, align 1, !range !37
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %bb.r

_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107: ; preds = %bb.o
  %.old = load i8, ptr @_ZZN5TCLAP3Arg13ignoreRestRefEvE3ign, align 1, !tbaa !149, !range !37, !noundef !38
  %.old137 = trunc nuw i8 %.old to i1
  br i1 %.old137, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %bb.r

bb.r:                                             ; preds = %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107
  %i.be = load i8, ptr %i.af, align 1, !tbaa !205, !range !37, !noundef !38
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = call ptr @__cxa_allocate_exception(i64 104) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.145, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread

bb.t:                                             ; preds = %bb.s
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !39
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load ptr, ptr %1, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bi
  invoke void @_ZN5TCLAP21CmdLineParseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN5TCLAP21CmdLineParseExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #35
          to label %bb.av unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread: ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.029 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 4 uses
  %i.bn = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.v
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.029, label %bb.w, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.029, label %bb.w, label %.loopexit.split-lp

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn58113 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ]
  call void @__cxa_free_exception(ptr %i.bg) #34
  br label %.loopexit.split-lp

_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread103: ; preds = %bb.q, %bb.n, %bb.p, %.thread, %bb.r, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %14 = phi ptr [ %i.av, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.av, %bb.r ], [ %i.av, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107 ], [ %i.av, %bb.p ], [ %i.av, %bb.n ], [ %.pre147, %.thread ], [ %i.av, %bb.q ]
  %15 = phi i32 [ %i.at, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.at, %bb.r ], [ %i.at, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107 ], [ %i.at, %bb.p ], [ %i.at, %bb.n ], [ %.pre, %.thread ], [ %i.at, %bb.q ]
  %.136100106 = phi i32 [ %.035142, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.035142, %bb.r ], [ %.035142, %_ZN5TCLAP7CmdLine14_emptyCombinedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread107 ], [ %.035142, %bb.p ], [ %.035142, %bb.n ], [ %i.as, %.thread ], [ %.035142, %bb.q ] ; 2 uses
  %i.bs = add nsw i32 %15, 1                      ; 2 uses
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !39
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %14 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 5
  %i.bz = icmp ugt i64 %i.by, %i.bt
  br i1 %i.bz, label %bb.i, label %._crit_edge, !llvm.loop !378

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.w
  %.pn58.pn = phi { ptr, i32 } [ %.pn58113, %bb.w ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.split-lp171, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ag

bb.x:                                             ; preds = %._crit_edge
  invoke void @_ZN5TCLAP7CmdLine20missingArgsExceptionEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
          to label %._crit_edge148 unwind label %bb.y

._crit_edge148:                                   ; preds = %bb.x
  %.pre149 = load i32, ptr %i.ag, align 8, !tbaa !201
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.h, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE
  br label %bb.ag

bb.z:                                             ; preds = %._crit_edge148, %._crit_edge
  %i.cb = phi i32 [ %.pre149, %._crit_edge148 ], [ %i.ah, %._crit_edge ]
  %i.cc = icmp sgt i32 %.035.lcssa, %i.cb
  br i1 %i.cc, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.cd = call ptr @__cxa_allocate_exception(i64 104) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.146, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.144, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5TCLAP21CmdLineParseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN5TCLAP21CmdLineParseExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #35
          to label %bb.av unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread: ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE
  br label %.sink.split168

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 4 uses
  %i.cg = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.ae
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !47
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.cl = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread: ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP12ArgExceptionE
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.cp = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %.sink.split168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #36
  br label %.sink.split168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !47
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cv) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0, label %bb.af, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0, label %bb.af, label %bb.ag

.sink.split168:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread
  %.pn.pn116.ph = phi { ptr, i32 } [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.thread ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.af

bb.af:                                            ; preds = %.sink.split168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.pn.pn116 = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn.pn116.ph, %.sink.split168 ]
  call void @__cxa_free_exception(ptr %i.cd) #34
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %.loopexit.split-lp, %bb.y, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.g
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn88, %bb.g ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.ca, %bb.y ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn58.pn, %.loopexit.split-lp ], [ %.pn.pn116, %bb.af ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ] ; 3 uses
  %.7 = extractvalue { ptr, i32 } %.pn62.pn.pn, 1 ; 2 uses
  %.752 = extractvalue { ptr, i32 } %.pn62.pn.pn, 0 ; 2 uses
  %i.cw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5TCLAP12ArgExceptionE) #34
  %i.cx = icmp eq i32 %.7, %i.cw
  br i1 %i.cx, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cy = call ptr @__cxa_begin_catch(ptr %.752) #34
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !203, !range !37, !noundef !38
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_rethrow() #35
          to label %bb.av unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ag
  %i.dc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5TCLAP13ExitExceptionE) #34
  %i.dd = icmp eq i32 %.7, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.de = call ptr @__cxa_begin_catch(ptr %.752) #34
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !203, !range !37, !noundef !38
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.thread126, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_rethrow() #35
          to label %bb.av unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.au

.thread126:                                       ; preds = %bb.ak
  %i.dj = load i32, ptr %i.de, align 4, !tbaa !219
  br label %.thread130

bb.an:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !113 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.cy)
          to label %bb.aq unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5TCLAP13ExitExceptionE  ; 3 uses
  %i.dq = extractvalue { ptr, i32 } %i.dp, 1
  %i.dr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5TCLAP13ExitExceptionE) #34
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dt = extractvalue { ptr, i32 } %i.dp, 0
  %i.du = call ptr @__cxa_begin_catch(ptr %i.dt) #34
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !219
  invoke void @__cxa_end_catch()
          to label %.thread130 unwind label %bb.ar

bb.aq:                                            ; preds = %bb.an
  call void @__cxa_end_catch()
  br label %.critedge

.thread130:                                       ; preds = %bb.ap, %.thread126
end_hunk_0
