Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSSLSocket?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1314
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly14AsyncSSLSocket13handleConnectEv:bb.a

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.7, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !11303
  %i.ci = zext i16 %i.ch to i64
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i64 noundef %i.ci)
          to label %.critedge21 unwind label %bb.ai ; 0 uses

.critedge21:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.critedge22

.critedge22:                                      ; preds = %.split65, %bb.y, %.critedge21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !11282
  %i.cm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #37
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !698
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.cp = invoke noundef zeroext i1 @_ZNK5folly12AsyncTimeout11isScheduledEv(ptr noundef nonnull align 8 dereferenceable(184) %i.co)
          to label %.noexc61 unwind label %bb.ai

.noexc61:                                         ; preds = %.critedge22
  br i1 %i.cp, label %bb.ae, label %.noexc62

bb.ae:                                            ; preds = %.noexc61
  invoke void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(184) %i.co)
          to label %.noexc62 unwind label %bb.ai

.noexc62:                                         ; preds = %bb.ae, %.noexc61
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !699 ; 3 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZN5folly14AsyncSSLSocket17invokeHandshakeCBEv.exit, label %bb.af

bb.af:                                            ; preds = %.noexc62
  store ptr null, ptr %i.cq, align 8, !tbaa !699
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !455
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(1960) %0) #37, !call_target !11237, !inline_history !11306
  br label %_ZN5folly14AsyncSSLSocket17invokeHandshakeCBEv.exit

_ZN5folly14AsyncSSLSocket17invokeHandshakeCBEv.exit: ; preds = %bb.af, %.noexc62
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !11282
  %.not = icmp eq ptr %i.cv, %i.cl
  br i1 %.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN5folly14AsyncSSLSocket17invokeHandshakeCBEv.exit
  call void @_ZN5folly11AsyncSocket22handleInitialReadWriteEv(ptr noundef nonnull align 8 dereferenceable(1193) %0) #37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.u, %_ZN5folly14AsyncSSLSocket17invokeHandshakeCBEv.exit, %bb.ag, %bb.i
  ret void

bb.ai:                                            ; preds = %bb.ae, %.critedge22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58, %bb.ad, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit50, %.noexc48, %.noexc47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZNSolsEPKv.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %bb.ab, %_ZN5folly14AsyncSSLSocket18invokeHandshakeErrERKNS_20AsyncSocketExceptionE.exit.i, %bb.s, %.noexc35, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %bb.g, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc24, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %bb.aa, %bb.z, %bb.x, %bb.v, %bb.q, %bb.p, %bb.n, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %bb.e, %bb.d, %bb.b
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #39
  unreachable
}

declare void @_ZN5folly11AsyncSocket27handleNetworkSocketAttachedEv(ptr noundef nonnull align 8 dereferenceable(1193)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS5_NS_11AsyncSocket15WriteRequestTagE(ptr dead_on_unwind noalias writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %9 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1212 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !690
  switch i32 %i.d, label %bb.c [
    i32 1, label %bb.b
    i32 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly11AsyncSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS5_NS0_15WriteRequestTagE(ptr dead_on_unwind writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1193) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 %7)
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS7_NS_11AsyncSocket15WriteRequestTagEE3$_0Lb1EED2Ev.exit160"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull @.str.1, i32 noundef 1666, i32 noundef 2)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.d unwind label %bb.h       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.49, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.9, i64 noundef 21)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11302
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.i)
          to label %.noexc138 unwind label %bb.h

.noexc138:                                        ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit unwind label %bb.h ; 0 uses

_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit: ; preds = %.noexc138
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.5, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141: ; preds = %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.n = load i8, ptr %i.m, align 8, !tbaa !11244
  %i.o = zext i8 %i.n to i32
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.o)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.6, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 4, !tbaa !690
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.r)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.7, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 266
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11303
  %i.w = zext i16 %i.v to i64
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.w)
          to label %_ZNSolsEt.exit unwind label %bb.h ; 3 uses

_ZNSolsEt.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.22, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148: ; preds = %_ZNSolsEt.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.101, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.102, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.ab = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40, !noalias !11752 ; 3 uses
  invoke void @_ZN5folly12SSLExceptionC1ENS_8SSLErrorE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i32 noundef 2)
          to label %_ZNSt10unique_ptrIN5folly12SSLExceptionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g, !noalias !11752

common.resume:                                    ; preds = %bb.h, %bb.at, %bb.au, %bb.av, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %.pn.pn.pn, %bb.at ], [ %.pn.pn.pn, %bb.au ], [ %.pn.pn.pn, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 40) #38, !noalias !11752
  br label %common.resume

_ZNSt10unique_ptrIN5folly12SSLExceptionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  store i64 -1, ptr %0, align 8, !tbaa !11315
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = ptrtoint ptr %i.ab to i64
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !11316
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_14AsyncSSLSocket12performWriteEPK5iovecjNS_10WriteFlagsEPjS7_NS_11AsyncSocket15WriteRequestTagEE3$_0Lb1EED2Ev.exit160"

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148, %_ZNSolsEt.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145, %bb.f, %bb.e, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc138, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !11259
  store i32 0, ptr %6, align 4, !tbaa !11259
  %.not134242.not = icmp eq i32 %3, 0
  br i1 %.not134242.not, label %.sink.split, label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1688 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph247, %bb.as
  %.099246 = phi i32 [ 0, %.lr.ph247 ], [ %.pre-phi, %bb.as ] ; 6 uses
  %.0103245 = phi i64 [ 0, %.lr.ph247 ], [ %.3106, %bb.as ] ; 5 uses
  %.0107244 = phi i64 [ 0, %.lr.ph247 ], [ %.2109, %bb.as ] ; 3 uses
  %.0181243 = phi ptr [ null, %.lr.ph247 ], [ %.4185, %bb.as ] ; 4 uses
  %i.am = zext i32 %.099246 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11318 ; 2 uses
  %i.aq = sub i64 %i.ap, %.0103245                ; 4 uses
  %i.ar = icmp eq i64 %i.ap, %.0103245
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %5, align 4, !tbaa !11259
  %i.at = add i32 %i.as, 1
  %.pre289 = add nuw i32 %.099246, 1
  br label %bb.as

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !11319
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0103245 ; 2 uses
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !11320 ; 4 uses
  %i.ax = icmp ult i64 %i.aq, %i.aw
  %i.ay = add nuw i32 %.099246, 1                 ; 5 uses
  %i.az = icmp ult i32 %i.ay, %3
  %or.cond = and i1 %i.az, %i.ax
  br i1 %or.cond, label %bb.m, label %.preheader

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp eq ptr %.0181243, null
  br i1 %i.ba, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ugt i64 %i.aw, 2048
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #40
          to label %bb.q unwind label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bd = alloca i8, i64 %i.aw, align 16
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %.1182 = phi ptr [ %.0181243, %bb.m ], [ %i.bd, %bb.p ], [ %i.bc, %bb.o ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1182, ptr align 1 %i.av, i64 %i.aq, i1 false)
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !11320
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %i.be = phi i64 [ %i.br, %bb.v ], [ %.pre, %bb.q ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %bb.q ] ; 2 uses
  %.0177 = phi i64 [ %i.bp, %bb.v ], [ %i.aq, %bb.q ] ; 3 uses
  %i.bf = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.bg = add i32 %i.ay, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = sub i64 %i.be, %.0177
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !698 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl) ; 6 uses
  %.not129 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not129, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.1182, i64 %.0177
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !11319
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %i.bn, i64 %.sroa.speculated, i1 false)
  %.pre288 = load i64, ptr %i.bj, align 8, !tbaa !11318
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = phi i64 [ %.pre288, %bb.s ], [ %i.bl, %bb.r ]
  %i.bp = add i64 %.sroa.speculated, %.0177       ; 6 uses
  %i.bq = icmp ult i64 %.sroa.speculated, %i.bo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  br i1 %i.bq, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %11 = add i32 %i.ay, %indvars
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !11320 ; 2 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.r, label %.preheader, !llvm.loop !11748

.critedge:                                        ; preds = %bb.t
  %i.bt = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.bt, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.v, %bb.u, %bb.l, %.critedge
  %.0318 = phi ptr [ %.1182, %.critedge ], [ %i.av, %bb.l ], [ %.1182, %bb.u ], [ %.1182, %bb.v ] ; 3 uses
  %.2316 = phi i32 [ %i.bf, %.critedge ], [ 0, %bb.l ], [ %indvars, %bb.u ], [ %indvars, %bb.v ] ; 3 uses
  %.1178313 = phi i64 [ %i.bp, %.critedge ], [ %i.aq, %bb.l ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 3 uses
  %.2183311 = phi ptr [ %.1182, %.critedge ], [ %.0181243, %bb.l ], [ %.1182, %bb.u ], [ %.1182, %bb.v ] ; 3 uses
  %i.bu = add i32 %i.ay, %.2316                   ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %3
  br i1 %i.bv, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %13 = xor i32 %.099246, -1
  %14 = add i32 %3, %13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %i.bw = phi i32 [ %i.cd, %bb.w ], [ %i.bu, %.lr.ph.preheader ]
  %.3239 = phi i32 [ %i.cc, %bb.w ], [ %.2316, %.lr.ph.preheader ] ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11318
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.w, label %.critedge2

bb.w:                                             ; preds = %.lr.ph
  %i.cc = add i32 %.3239, 1                       ; 2 uses
  %i.cd = add i32 %i.ay, %i.cc                    ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %3
  br i1 %i.ce, label %.lr.ph, label %.critedge2, !llvm.loop !11749

.critedge2:                                       ; preds = %bb.w, %.lr.ph, %.preheader, %.critedge
  %.0317 = phi ptr [ %.1182, %.critedge ], [ %.0318, %.preheader ], [ %.0318, %.lr.ph ], [ %.0318, %bb.w ]
  %.2105314 = phi i64 [ %.sroa.speculated, %.critedge ], [ 0, %.preheader ], [ 0, %.lr.ph ], [ 0, %bb.w ]
  %.1178312 = phi i64 [ %i.bp, %.critedge ], [ %.1178313, %.preheader ], [ %.1178313, %.lr.ph ], [ %.1178313, %bb.w ] ; 3 uses
  %.2183310 = phi ptr [ %.1182, %.critedge ], [ %.2183311, %.preheader ], [ %.2183311, %.lr.ph ], [ %.2183311, %bb.w ] ; 6 uses
  %.4 = phi i32 [ %i.bf, %.critedge ], [ %.2316, %.preheader ], [ %14, %bb.w ], [ %.3239, %.lr.ph ] ; 2 uses
  store i32 %4, ptr %i.ah, align 8, !tbaa !11321
  %i.cf = add i32 %.4, %.099246
  %i.cg = add i32 %i.cf, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !11259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 %3, ptr %i.b, align 4, !tbaa !11259
  %.not.i154 = icmp ugt i32 %i.cg, %3
  br i1 %.not.i154, label %bb.x, label %_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !11293

_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %.critedge2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.y

bb.x:                                             ; preds = %.critedge2
  %i.ch = invoke noundef ptr @_ZN6google17MakeCheckOpStringIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.103)
          to label %_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.z ; 2 uses

_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.x
  store ptr %i.ch, ptr %9, align 8, !tbaa !11324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not = icmp eq ptr %i.ch, null
  br i1 %.not, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ci = icmp eq i32 %i.cg, %3
  br i1 %i.ci, label %bb.ag, label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.af

bb.aa:                                            ; preds = %_ZN6google12Check_LEImplIjjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.1, i32 noundef 1798, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #39
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #39
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.ad ], [ %i.cj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.at

bb.ag:                                            ; preds = %bb.y
  %i.cn = load i8, ptr %i.ai, align 8, !tbaa !11325, !range !449, !noundef !947
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN5folly8OptionalImEaSIRmEERS1_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.ai, align 8, !tbaa !11325
  br label %_ZN5folly8OptionalImEaSIRmEERS1_OT_.exit

_ZN5folly8OptionalImEaSIRmEERS1_OT_.exit:         ; preds = %bb.ag, %bb.ah
  store i64 %.1178312, ptr %i.aj, align 8, !tbaa !11256
  br label %bb.aj

bb.ai:                                            ; preds = %bb.y
  store i8 0, ptr %i.ai, align 8, !tbaa !11326
  %i.cp = load i32, ptr %i.ah, align 8, !tbaa !11753
  %i.cq = or i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ah, align 8, !tbaa !11753
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN5folly8OptionalImEaSIRmEERS1_OT_.exit
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !460
  %i.cs = trunc i64 %.1178312 to i32
  %i.ct = load ptr, ptr %1, align 8, !tbaa !455
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1024
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(1960) %1, ptr noundef %i.cr, ptr noundef %.0317, i32 noundef %i.cs)
          to label %bb.ak unwind label %.loopexit, !call_target !2412 ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cy = load ptr, ptr %i.ak, align 8, !tbaa !460
  %i.cz = load ptr, ptr %1, align 8, !tbaa !455
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1032
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(1960) %1, ptr noundef %i.cy, i32 noundef %i.cw)
          to label %bb.am unwind label %.loopexit.split-lp, !call_target !2415 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.dd = icmp eq i32 %i.dc, 3
  br i1 %i.dd, label %.sink.split.sink.split, label %bb.an

.loopexit:                                        ; preds = %bb.aj, %bb.o
  %.3184.ph = phi ptr [ null, %bb.o ], [ %.2183310, %bb.aj ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.al, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5folly14AsyncSSLSocket17interpretSSLErrorEii(ptr dead_on_unwind writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i32 noundef %i.cw, i32 noundef %i.dc)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.ak
  %i.de = zext nneg i32 %i.cw to i64              ; 4 uses
  %i.df = add nsw i64 %.0107244, %i.de            ; 3 uses
  %i.dg = load i64, ptr %i.al, align 8, !tbaa !11268
  %i.dh = add i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.al, align 8, !tbaa !11268
  %i.di = icmp eq i64 %.1178312, %i.de
  br i1 %i.di, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dj = add i32 %.4, 1
  %i.dk = load i32, ptr %5, align 4, !tbaa !11259
  %i.dl = add i32 %i.dj, %i.dk
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dn = add i64 %.0103245, %i.de                ; 3 uses
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !11318 ; 2 uses
  %.not130250 = icmp slt i64 %i.dn, %i.do
  br i1 %.not130250, label %.sink.split.sink.split, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.aq
  %.promoted = load i32, ptr %5, align 4, !tbaa !11259
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph253, %bb.ar
  %i.dp = phi i32 [ %.promoted, %.lr.ph253 ], [ %i.ds, %bb.ar ]
  %i.dq = phi i64 [ %i.do, %.lr.ph253 ], [ %i.dx, %bb.ar ]
  %.092252 = phi i64 [ %i.dn, %.lr.ph253 ], [ %i.dr, %bb.ar ]
  %.1100251 = phi i32 [ %.099246, %.lr.ph253 ], [ %i.dt, %bb.ar ]
  %i.dr = sub i64 %.092252, %i.dq                 ; 3 uses
  %i.ds = add i32 %i.dp, 1                        ; 2 uses
  %i.dt = add i32 %.1100251, 1                    ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !11318 ; 2 uses
  %.not130 = icmp slt i64 %i.dr, %i.dx
  br i1 %.not130, label %._crit_edge, label %bb.ar, !llvm.loop !11750

._crit_edge:                                      ; preds = %bb.ar
  store i32 %i.ds, ptr %5, align 4, !tbaa !11259
  br label %.sink.split.sink.split

bb.as:                                            ; preds = %bb.k, %bb.ap
  %.pre-phi = phi i32 [ %.pre289, %bb.k ], [ %i.cg, %bb.ap ] ; 2 uses
  %storemerge = phi i32 [ %i.at, %bb.k ], [ %i.dl, %bb.ap ]
  %.4185 = phi ptr [ %.0181243, %bb.k ], [ %.2183310, %bb.ap ] ; 2 uses
  %.2109 = phi i64 [ %.0107244, %bb.k ], [ %i.df, %bb.ap ] ; 2 uses
  %.3106 = phi i64 [ 0, %bb.k ], [ %.2105314, %bb.ap ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !11259
  %.not134 = icmp ult i32 %.pre-phi, %3
  br i1 %.not134, label %bb.j, label %.sink.split, !llvm.loop !11751

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af
  %.5 = phi ptr [ %.2183310, %bb.af ], [ %.3184.ph, %.loopexit ], [ %.2183310, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.5, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = load i64, ptr %i.ag, align 8, !tbaa !11320
  %i.dz = icmp ugt i64 %i.dy, 2048
  br i1 %i.dz, label %bb.av, label %common.resume

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %.5) #38
  br label %common.resume

.sink.split.sink.split:                           ; preds = %bb.aq, %._crit_edge, %bb.am
end_hunk_0
