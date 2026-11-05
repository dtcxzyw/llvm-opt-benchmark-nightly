Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/logging_unittest?download=true
inline.NumInlined: 4872
inline.NumDeleted: 1444
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN21Logging_Truncate_Test8TestBodyEv:bb.a

bb.u:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.n, %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.v, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.bt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.ad

bb.y:                                             ; preds = %.critedge34, %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge37
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ab, %bb.ac, %bb.x
  %.pn29.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.bu, %bb.y ], [ %i.bx, %bb.ac ], [ %.pn27, %bb.ab ] ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ag
  br i1 %i.bz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ad, %bb.k
  %.sink = phi ptr [ %i.as, %bb.k ], [ %i.by, %bb.ad ]
  %.pn29.pn.pn.ph = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn29.pn, %bb.ad ]
  %i.ca = load i64, ptr %i.ag, align 8, !tbaa !75
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cb) #41
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ad, %bb.k
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn29.pn, %bb.ad ], [ %.pn29.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.u
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %.body ], [ %i.br, %bb.u ]
  %i.cc = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.i
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ae
  %i.ce = load i64, ptr %i.i, align 8, !tbaa !75
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %common.resume

bb.af:                                            ; preds = %bb.aa, %bb.w
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15TestOneTruncatePKcmmmmm(ptr noundef %0, i64 noundef range(i64 10, 2097153) %1, i64 noundef range(i64 0, 4097) %2, i64 noundef range(i64 0, 3145729) %3, i64 noundef range(i64 0, 4097) %4, i64 noundef range(i64 0, 4097) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.nglog::tools::FileDescriptor", align 4 ; 5 uses
  %7 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %8 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %9 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %10 = alloca %struct.stat, align 8              ; 5 uses
  %11 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %12 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %16 = alloca %"class.nglog::ErrnoLogMessage", align 8 ; 7 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %17 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 578, i32 noundef 384) ; 8 uses
  store i32 %i.i, ptr %6, align 4, !tbaa !144
  %i.j = icmp eq i32 %i.i, -1                     ; 2 uses
  br i1 %i.j, label %bb.b, label %.critedge143, !prof !128

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !75
  %.fca.1.gep59 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep59, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str, i32 noundef 1003, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.333, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7)
          to label %.critedge unwind label %bb.j

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.critedge143

.critedge143:                                     ; preds = %bb.a, %.critedge
  %.not212 = icmp eq i64 %3, 0
  br i1 %.not212, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge143
  %.fca.1.gep38 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

.preheader:                                       ; preds = %.critedge146, %.critedge143
  %.not213 = icmp eq i64 %4, 0
  br i1 %.not213, label %._crit_edge, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader
  %.fca.1.gep30 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph, %.critedge146
  %.095207 = phi i64 [ 0, %.lr.ph ], [ %i.r, %.critedge146 ] ; 2 uses
  %i.m = sub nuw nsw i64 %3, %.095207
  %.sroa.speculated194 = call i64 @llvm.umin.i64(i64 %i.m, i64 10) ; 2 uses
  %i.n = invoke i64 @write(i32 noundef %i.i, ptr noundef nonnull @.str.334, i64 noundef %.sroa.speculated194)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.g, label %.critedge146, !prof !128

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !75
  store i64 0, ptr %.fca.1.gep38, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull @.str, i32 noundef 1012, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.336, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161: ; preds = %bb.i
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8)
          to label %.critedge145 unwind label %bb.m

.critedge145:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.critedge146

.critedge146:                                     ; preds = %bb.f, %.critedge145
  %i.r = add i64 %.sroa.speculated194, %.095207   ; 2 uses
  %i.s = icmp ult i64 %i.r, %3
  br i1 %i.s, label %bb.e, label %.preheader, !llvm.loop !559

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7)
          to label %bb.l unwind label %bb.br

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.u, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8)
          to label %bb.o unwind label %bb.br

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pn138 = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.w, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph209, %.critedge149
  %.196208 = phi i64 [ 0, %.lr.ph209 ], [ %i.ac, %.critedge149 ] ; 2 uses
  %i.x = sub nuw nsw i64 %4, %.196208
  %.sroa.speculated189 = call i64 @llvm.umin.i64(i64 %i.x, i64 7) ; 2 uses
  %i.y = invoke i64 @write(i32 noundef %i.i, ptr noundef nonnull @.str.335, i64 noundef %.sroa.speculated189)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.r, label %.critedge149, !prof !128

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.c, align 8, !tbaa !75
  store i64 0, ptr %.fca.1.gep30, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str, i32 noundef 1018, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.c)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.337, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163: ; preds = %bb.t
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9)
          to label %.critedge148 unwind label %bb.u

.critedge148:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %.critedge149

.critedge149:                                     ; preds = %bb.q, %.critedge148
  %i.ac = add i64 %.sroa.speculated189, %.196208  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %4
  br i1 %i.ad, label %bb.p, label %._crit_edge, !llvm.loop !560

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.e, %._crit_edge
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163, %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9)
          to label %bb.w unwind label %bb.br

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pn135 = phi { ptr, i32 } [ %i.ae, %bb.u ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %.critedge149, %.preheader
  invoke void @_ZN5nglog15TruncateLogFileEPKcmm(ptr noundef %0, i64 noundef %1, i64 noundef %2)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.ag = call i32 @fstat(i32 noundef %i.i, ptr noundef nonnull %10) #40
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.y, label %.critedge152, !prof !128

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.d, align 8, !tbaa !75
  %.fca.1.gep24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep24, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull @.str, i32 noundef 1026, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.d)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %11)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.338, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.aa
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11)
          to label %.critedge151 unwind label %bb.ac

.critedge151:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.critedge152

.critedge152:                                     ; preds = %bb.x, %.critedge151
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !132 ; 5 uses
  store i64 %i.al, ptr %i.e, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  store i64 %5, ptr %i.f, align 8, !tbaa !100
  %i.am = icmp eq i64 %i.al, %5
  br i1 %i.am, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, label %bb.ab, !prof !133

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread: ; preds = %.critedge152
  store ptr null, ptr %13, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %_ZN5nglog8internal13CheckOpStringD2Ev.exit

bb.ab:                                            ; preds = %.critedge152
  invoke void @_ZN5nglog8internal17MakeCheckOpStringImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS8_EERKT_RKT0_PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.339)
          to label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit unwind label %bb.af

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.ab
  %.pre = load i64, ptr %13, align 8, !tbaa !88   ; 2 uses
  store i64 %.pre, ptr %12, align 8, !tbaa !88
  store ptr null, ptr %13, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %_ZN5nglog8internal13CheckOpStringD2Ev.exit, label %bb.ag

_ZN5nglog8internal13CheckOpStringD2Ev.exit:       ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  %i.an = call i64 @lseek(i32 noundef %i.i, i64 noundef 0, i32 noundef 0) #40
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.an, label %.critedge155, !prof !128

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164, %bb.y
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11)
          to label %bb.ae unwind label %bb.br

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn123 = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.aq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit176

bb.af:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.am

bb.ag:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  invoke void @_ZN5nglog15LogMessageFatalC1EPKciRKNS_8internal13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull @.str, i32 noundef 1027, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %14)
          to label %bb.ai unwind label %bb.al     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %14) #43
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ag
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @_ZN5nglog8internal13CheckOpStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #40
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke

bb.am:                                            ; preds = %bb.ak, %bb.af
  %.pn132 = phi { ptr, i32 } [ %i.at, %bb.ak ], [ %i.ar, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit176

bb.an:                                            ; preds = %_ZN5nglog8internal13CheckOpStringD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.g, align 8, !tbaa !75
  %.fca.1.gep18 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep18, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull @.str, i32 noundef 1028, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.g)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %bb.ap unwind label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.340, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %bb.ap
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15)
          to label %.critedge154 unwind label %bb.bc

.critedge154:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.critedge155

.critedge155:                                     ; preds = %_ZN5nglog8internal13CheckOpStringD2Ev.exit, %.critedge154
  %i.ax = add i64 %i.al, 1                        ; 5 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.aq, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.aq:                                            ; preds = %.critedge155
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #43
          to label %.noexc167 unwind label %bb.bf

.noexc167:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge155
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45
          to label %.noexc168 unwind label %bb.bf ; 5 uses

.noexc168:                                        ; preds = %bb.ar
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ax  ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !75
  %i.bb = icmp eq i64 %i.al, 0
  br i1 %i.bb, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.as

bb.as:                                            ; preds = %.noexc168
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.as, %.noexc168, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ba, %bb.as ], [ %i.ba, %.noexc168 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0180.0 = phi ptr [ %i.az, %bb.as ], [ %i.az, %.noexc168 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.bd = invoke i64 @read(i32 noundef %i.i, ptr noundef %.sroa.0180.0, i64 noundef %i.ax)
          to label %bb.at unwind label %bb.bg

bb.at:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.au, label %.critedge158, !prof !128

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  store i64 ptrtoint (ptr @_ZN5nglog10LogMessage9SendToLogEv to i64), ptr %i.h, align 8, !tbaa !75
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !75
  invoke void @_ZN5nglog15ErrnoLogMessageC1EPKciNS_11LogSeverityElMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %16, ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.h)
          to label %bb.av unwind label %bb.bh

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %16)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.341, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.aw
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16)
          to label %.critedge157 unwind label %bb.bh

.critedge157:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %.critedge158

.critedge158:                                     ; preds = %bb.at, %.critedge157
  %.not214 = icmp eq i64 %5, 0
  br i1 %.not214, label %._crit_edge211, label %.critedge160

bb.ax:                                            ; preds = %.critedge160
  %i.bh = add i64 %.sroa.speculated, %.074210     ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %5
  br i1 %i.bi, label %.critedge160, label %._crit_edge211, !llvm.loop !561

.critedge160:                                     ; preds = %.critedge158, %bb.ax
  %.074210 = phi i64 [ %i.bh, %bb.ax ], [ 0, %.critedge158 ] ; 2 uses
  %i.bj = sub nuw nsw i64 %5, %.074210
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bj, i64 7) ; 2 uses
  %bcmp = call i32 @bcmp(ptr %.sroa.0180.0, ptr nonnull @.str.335, i64 %.sroa.speculated)
  %.not.not = icmp eq i32 %bcmp, 0
  br i1 %.not.not, label %bb.ax, label %bb.ay, !prof !133

bb.ay:                                            ; preds = %.critedge160
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  invoke void @_ZN5nglog15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull @.str, i32 noundef 1039)
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %bb.ba unwind label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.342, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.bl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %bb.ba
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #43
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  unreachable

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166, %bb.an
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ap, %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15)
          to label %bb.be unwind label %bb.br

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.pn125 = phi { ptr, i32 } [ %i.bm, %bb.bc ], [ %i.bn, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit176

bb.bf:                                            ; preds = %bb.ar, %bb.aq
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit176

bb.bg:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170, %bb.au
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.aw, %bb.av
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16)
          to label %bb.bj unwind label %bb.br

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.pn127 = phi { ptr, i32 } [ %i.bq, %bb.bh ], [ %i.br, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.bp

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173, %bb.ay
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.bp

bb.bl:                                            ; preds = %bb.ba, %bb.az
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke

.invoke:                                          ; preds = %bb.al, %bb.bl
  %i.bu = phi ptr [ %17, %bb.bl ], [ %14, %bb.al ]
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bu) #43
          to label %.cont unwind label %bb.br

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge211:                                   ; preds = %bb.ax, %.critedge158
  %.not.i.i.i = icmp eq ptr %.sroa.0180.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge211
  %i.bv = ptrtoint ptr %.sroa.11.0 to i64
  %i.bw = ptrtoint ptr %.sroa.0180.0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.bx) #41
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge211, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br i1 %i.j, label %_ZN5nglog5tools14FileDescriptorD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.by = invoke i32 @close(i32 noundef %i.i)
          to label %_ZN5nglog5tools14FileDescriptorD2Ev.exit unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #42
  unreachable

_ZN5nglog5tools14FileDescriptorD2Ev.exit:         ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void

bb.bp:                                            ; preds = %bb.bk, %bb.bj, %bb.bg
  %.pn129 = phi { ptr, i32 } [ %i.bs, %bb.bk ], [ %.pn127, %bb.bj ], [ %i.bp, %bb.bg ] ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %.sroa.0180.0, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIcSaIcEED2Ev.exit176, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cb = ptrtoint ptr %.sroa.11.0 to i64
  %i.cc = ptrtoint ptr %.sroa.0180.0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.cd) #41
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit176

_ZNSt6vectorIcSaIcEED2Ev.exit176:                 ; preds = %bb.bf, %bb.bp, %bb.bq, %bb.be, %bb.am, %bb.ae
  %.pn132.pn = phi { ptr, i32 } [ %.pn132, %bb.am ], [ %.pn123, %bb.ae ], [ %.pn125, %bb.be ], [ %i.bo, %bb.bf ], [ %.pn129, %bb.bp ], [ %.pn129, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIcSaIcEED2Ev.exit176, %bb.o, %bb.w, %bb.l
  %.pn138.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %.pn138, %bb.o ], [ %.pn135, %bb.w ], [ %.pn132.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit176 ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5nglog5tools14FileDescriptorD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn138.pn.pn.pn

bb.br:                                            ; preds = %.invoke, %bb.bi, %bb.bd, %bb.ad, %bb.v, %bb.n, %bb.k
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #42
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define hidden void @_ZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::unique_ptr.173", align 8 ; 6 uses
  %2 = alloca %"class.std::unique_ptr.173", align 8 ; 6 uses
  %3 = alloca %"class.google::FlagSaver", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::vector.39", align 8    ; 11 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %14 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %18 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN6google9FlagSaverC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  store i8 0, ptr @_ZN3fLB17FLAGS_logtostderrE, align 1, !tbaa !66
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !68
  %fwrite = call i64 @fwrite(ptr nonnull @.str.125, i64 74, i64 1, ptr %i.e) #46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5nglog10TestTmpDirB5cxx11Ev()
          to label %bb.b unwind label %bb.j       ; 2 uses

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN7testing8internal12PrintTupleToISt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EELm3EEEvRKT_St17integral_constantImXT0_EEPSo:bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.358, i64 noundef 1) ; 0 uses
  tail call void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21GetActionForArgumentsEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EEPSoSM_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !236
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !237  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.d), !inline_history !820
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !236
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !236
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.378, i64 noundef 14) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !74
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.379, i64 noundef 1) ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.r = load i64, ptr %i.m, align 8, !tbaa !74
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.q, i64 noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.380, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.381, i64 noundef 34) ; 0 uses
  tail call void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE23DescribeDefaultActionToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull %3)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %4)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.w = load i8, ptr %i.v, align 2, !tbaa !821, !range !69, !noundef !70
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.y = load i32, ptr %i.c, align 8, !tbaa !236
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !237  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.y), !inline_history !820
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 1, ptr %i.ae, align 4, !tbaa !235
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.378, i64 noundef 14) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.379, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ak, i64 noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.380, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.382, i64 noundef 13) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %3, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !101
  %i.ax = or i32 %i.aw, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.au, i32 noundef %i.ax)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #40
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aq, i64 noundef %i.ay) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k, %bb.l
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.365, i64 noundef 4) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE16GetCurrentActionEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  ret ptr %.0
}

declare void @_ZNK7testing8internal15ExpectationBase25CheckActionCountIfNotDoneEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK7testing8internal15ExpectationBase28AllPrerequisitesAreSatisfiedEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = tail call noundef zeroext i1 @_ZN7testing8internal11TuplePrefixILm3EE7MatchesISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !247
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %3, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = icmp ne ptr %i.f, null
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.g)
  br i1 %i.h, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.285, i32 noundef 233)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit

.body.i:                                          ; preds = %.noexc3.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.j

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !248
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %3), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %i.m, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE28PrintTriedExpectationsLockedERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !257  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = ashr i64 %.fr, 4                         ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.360, i64 noundef 32) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h) ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.358, i64 noundef 1) ; 0 uses
  %i.l = icmp eq i64 %.fr, 16                     ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.361, ptr @.str.362
  %i.n = select i1 %i.l, i64 32, i64 30
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.m, i64 noundef %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.363, i64 noundef 2) ; 0 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = icmp ugt i64 %i.h, 1
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %.021.us = phi i64 [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !257
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.021.us
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !216  ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.354, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.364, i64 noundef 19) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.021.us)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.321, i64 noundef 2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #40
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ac = load ptr, ptr %2, align 8, !tbaa !31
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !101
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %bb.c, %bb.b
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.365, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %i.t, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.ak = add nuw i64 %.021.us, 1                 ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !822

._crit_edge.loopexit23:                           ; preds = %bb.e, %bb.d
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.365, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %5, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef nonnull %2)
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, %._crit_edge.loopexit23, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph
  %4 = load ptr, ptr %i.a, align 8, !tbaa !257
  %5 = load ptr, ptr %4, align 8, !tbaa !216      ; 4 uses
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.354, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef nonnull %2)
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !73       ; 3 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.al = load ptr, ptr %2, align 8, !tbaa !31
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !101
  %i.ar = or i32 %i.aq, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
  br label %._crit_edge.loopexit23

bb.e:                                             ; preds = %.lr.ph.split
  %i.as = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #40
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %8, i64 noundef %i.as) ; 0 uses
  br label %._crit_edge.loopexit23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.b, i32 noundef %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.358, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !75
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !75
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.testing::ExpectationSet", align 8 ; 11 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4, !tbaa !235, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.366, i64 noundef 45) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.367, i64 noundef 33) ; 0 uses
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.f, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal11TuplePrefixILm3EE7MatchesISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7testing8internal11TuplePrefixILm3EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !247
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.o = icmp ne ptr %i.n, null
  %i.p = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.o)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.285, i32 noundef 233)
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc32
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.i

bb.h:                                             ; preds = %.noexc32
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %5)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !823

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit: ; preds = %bb.i
  br i1 %i.u, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.368, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.x = icmp ne ptr %i.w, null
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.x)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.285, i32 noundef 245)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35: ; preds = %.noexc37
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.m

bb.l:                                             ; preds = %.noexc37
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35, %.noexc36
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !240
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit unwind label %bb.r, !inline_history !260

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit: ; preds = %bb.m
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.369, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !102, !alias.scope !834
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !74, !alias.scope !834
  store i8 0, ptr %i.af, align 8, !tbaa !75, !alias.scope !834
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37, !noalias !834 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !834 ; 2 uses
  %i.al = icmp ugt ptr %i.ai, %i.ak
  %.08.i.i.i.i = select i1 %i.al, ptr %i.ai, ptr %i.ak ; 2 uses
end_hunk_1
