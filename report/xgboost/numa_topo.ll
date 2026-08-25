Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/numa_topo?download=true
inline.NumInlined: 880
inline.NumDeleted: 386
begin_hunk_0_@_ZN7xgboost6common11ReadCpuListERKNSt10filesystem7__cxx114pathEPSt6vectorIiSaIiEE:bb.a
  %15 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::unique_ptr.6", align 8 ; 9 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %18 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 0, ptr %i.q, align 8, !tbaa !16
  store i8 0, ptr %i.p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %i.r, i32 noundef 8)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit unwind label %bb.g

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !21
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %3, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !23
  %i.z = and i32 %i.y, 5
  %.not267 = icmp eq i32 %i.z, 0
  br i1 %.not267, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.aa, label %.noexc.i, label %bb.dj

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 55, ptr %i.e, align 8, !tbaa !32
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc67 unwind label %bb.i   ; 3 uses

.noexc67:                                         ; preds = %.noexc.i
  store ptr %i.ac, ptr %5, align 8, !tbaa !20
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ac, ptr noundef nonnull align 1 dereferenceable(55) @.str, i64 55, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 57, i32 noundef 1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.noexc67
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.k       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #13
  %i.ai = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.dj

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.h:                                             ; preds = %bb.c, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.i:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.j:                                             ; preds = %.noexc67
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn57 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.l
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.i
  %.pn57.pn = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %.pn57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %.pn57, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.dl

bb.m:                                             ; preds = %bb.b
  %i.av = load i64, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %.thread515, !prof !33

.thread515:                                       ; preds = %bb.m
  %i.ax = load ptr, ptr %2, align 8, !tbaa !20
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.preheader

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc72 unwind label %bb.o

.noexc72:                                         ; preds = %bb.n
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ay, ptr noundef nonnull @.str, i32 noundef 61)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.o

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc72
  %i.az = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.p ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.2, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %.noexc72, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.q unwind label %bb.dn

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.bd, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.dl

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr = load i64, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.bf = icmp eq i64 %.pr, 0
  br i1 %i.bf, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.preheader

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.preheader: ; preds = %.thread515, %bb.r
  %i.bg = phi ptr [ %i.ax, %.thread515 ], [ %i.be, %bb.r ] ; 3 uses
  %i.bh = phi i64 [ %i.av, %.thread515 ], [ %.pr, %bb.r ] ; 5 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.preheader, %bb.s
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.s ], [ %i.bh, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.preheader ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.1.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19  ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i64
  %memchr.bounds.i = icmp ugt i8 %i.bj, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bl, 4294977024
  %memchr.bits.i = icmp eq i64 %i.bm, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %19, label %bb.s

bb.s:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !34

19:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.1.i.i.in.i) ; 2 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i83

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i83: ; preds = %19, %bb.t
  %.0710.i.i.i = phi i64 [ %i.bs, %bb.t ], [ 0, %19 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0710.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19  ; 2 uses
  %i.bp = zext nneg i8 %i.bo to i64
  %memchr.bounds.i84 = icmp ugt i8 %i.bo, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bq, 4294977024
  %memchr.bits.i85 = icmp eq i64 %i.br, 0
  %memchr.not.i86 = select i1 %memchr.bounds.i84, i1 true, i1 %memchr.bits.i85
  br i1 %memchr.not.i86, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i83
  %i.bs = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bs, %.sroa.speculated.i.i
  br i1 %exitcond.not.i.i.i, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i83, !llvm.loop !36

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0710.i.i.i
  %i.bu = icmp eq i64 %.0710.i.i.i, -1            ; 2 uses
  %i.bv = sub nuw i64 %.sroa.speculated.i.i, %.0710.i.i.i
  %spec.select.i = select i1 %i.bu, i64 0, i64 %i.bv
  %spec.select17.i = select i1 %i.bu, ptr null, ptr %i.bt
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.t, %bb.r, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i
  %i.bw = phi i64 [ 0, %bb.r ], [ %i.bh, %bb.t ], [ %i.bh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ %i.bh, %bb.s ]
  %.sroa.0.0.i87 = phi i64 [ 0, %bb.r ], [ 0, %bb.t ], [ %spec.select.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %bb.s ]
  %.sroa.4.0.i88 = phi ptr [ %i.be, %bb.r ], [ null, %bb.t ], [ %spec.select17.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ null, %bb.s ]
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.bw, ptr noundef %.sroa.4.0.i88, i64 noundef %.sroa.0.0.i87)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 0, ptr %i.f, align 4, !tbaa !37
  %i.by = load ptr, ptr %2, align 8, !tbaa !20
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19
  %i.ca = sext i8 %i.bz to i32
  %i.cb = call i32 @isalnum(i32 noundef %i.ca) #29
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %bb.u, label %bb.aa, !prof !33

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.cc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc92 unwind label %bb.x

.noexc92:                                         ; preds = %bb.u
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cc, ptr noundef nonnull @.str, i32 noundef 65)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit94 unwind label %bb.x

_ZN4dmlc15LogMessageFatalC2EPKci.exit94:          ; preds = %.noexc92
  %i.cd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96 unwind label %bb.y ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit94
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.4, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.pre = load i32, ptr %i.f, align 4, !tbaa !37
  br label %bb.aa

bb.w:                                             ; preds = %.thread
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.x:                                             ; preds = %.noexc92, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96, %_ZN4dmlc15LogMessageFatalC2EPKci.exit94
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.z unwind label %bb.dn

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %i.ci, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.dk

bb.aa:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.cj = phi i32 [ %.pre, %bb.v ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ] ; 2 uses
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = load i64, ptr %i.q, align 8, !tbaa !16
  %i.cm = icmp ugt i64 %i.cl, %i.ck
  br i1 %i.cm, label %.lr.ph407, label %._crit_edge408

.lr.ph407:                                        ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph407, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cs = phi i32 [ %i.cj, %.lr.ph407 ], [ %i.md, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ct = phi i64 [ %i.ck, %.lr.ph407 ], [ %i.me, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 0, ptr %i.g, align 8, !tbaa !32
  %i.cu = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !19
  %i.cx = sext i8 %i.cw to i32
  %i.cy = call i32 @isalnum(i32 noundef %i.cx) #29
  %.not32 = icmp eq i32 %i.cy, 0
  br i1 %.not32, label %bb.ac, label %.thread516, !prof !33

.thread516:                                       ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.cz = sext i32 %i.cs to i64
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz
  store ptr %i.cn, ptr %9, align 8, !tbaa !13
  br label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.db = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc101 unwind label %bb.ae

.noexc101:                                        ; preds = %bb.ac
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.db, ptr noundef nonnull @.str, i32 noundef 69)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit103 unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit103:         ; preds = %.noexc101
  %i.dc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105 unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit103
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.4, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.df = load i32, ptr %i.f, align 4, !tbaa !37
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef %i.df)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %bb.ad
  %i.di = load ptr, ptr %2, align 8, !tbaa !20
  %i.dj = load i64, ptr %i.q, align 8, !tbaa !16
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef %i.di, i64 noundef %i.dj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc101, %bb.ac, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit105, %_ZN4dmlc15LogMessageFatalC2EPKci.exit103, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ag unwind label %bb.dn

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn33 = phi { ptr, i32 } [ %i.dl, %bb.ae ], [ %i.dm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.di

bb.ah:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pre464 = load ptr, ptr %2, align 8, !tbaa !20 ; 2 uses
  %.pre465 = load i32, ptr %i.f, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.dn = sext i32 %.pre465 to i64
  %i.do = getelementptr inbounds i8, ptr %.pre464, i64 %i.dn
  store ptr %i.cn, ptr %9, align 8, !tbaa !13
  %i.dp = icmp eq ptr %.pre464, null
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc115 unwind label %.loopexit.split-lp273

.noexc115:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %.thread516, %bb.ah
  %i.dq = phi ptr [ %i.da, %.thread516 ], [ %i.do, %bb.ah ] ; 3 uses
  %i.dr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !32
  %i.ds = icmp ugt i64 %i.dr, 15
  br i1 %i.ds, label %.noexc.i114, label %._crit_edge.i.i113

.noexc.i114:                                      ; preds = %bb.aj
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc116 unwind label %.loopexit272 ; 2 uses

.noexc116:                                        ; preds = %.noexc.i114
  store ptr %i.dt, ptr %9, align 8, !tbaa !20
  %i.du = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.du, ptr %i.cn, align 8, !tbaa !19
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.noexc116, %bb.aj
  %i.dv = phi ptr [ %i.dt, %.noexc116 ], [ %i.cn, %bb.aj ] ; 2 uses
  switch i64 %i.dr, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i113
  %i.dw = load i8, ptr %i.dq, align 1, !tbaa !19
end_hunk_0
