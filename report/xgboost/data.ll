Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/data?download=true
inline.NumInlined: 10971
inline.NumDeleted: 3124
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZN7xgboost6common20ParallelGroupBuilderINS_5EntryEmLb1EE10InitBudgetEmi:bb.a
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 3 uses
  %i.aq = icmp ugt i64 %i.ah, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ar = sub nuw i64 %i.ah, %i.ap
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.ak, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.g:                                             ; preds = %._crit_edge
  %i.as = icmp ult i64 %i.ah, %i.ap
  br i1 %i.as, label %bb.h, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i12, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !116
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15
  %i.au = phi ptr [ %i.bj, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15 ], [ %i.z, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit ] ; 4 uses
  %i.av = phi ptr [ %i.bk, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15 ], [ %i.w, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.016 = phi i64 [ %i.bl, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15 ], [ 0, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !145 ; 4 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.016 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !112 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 3 uses
  %i.bf = icmp ugt i64 %i.aw, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bg = sub nuw i64 %i.aw, %i.be
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.az, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre18 = load ptr, ptr %i.e, align 8, !tbaa !118
  %.pre19 = load ptr, ptr %i.c, align 8, !tbaa !117
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15

bb.j:                                             ; preds = %.lr.ph
  %i.bh = icmp ult i64 %i.aw, %i.be
  br i1 %i.bh, label %bb.k, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.az, %i.bi
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14:      ; preds = %bb.k
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !116
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit15

_ZNSt6vectorImSaImEE6resizeEmRKm.exit15:          ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14
  %i.bj = phi ptr [ %.pre19, %bb.i ], [ %i.au, %bb.j ], [ %i.au, %bb.k ], [ %i.au, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14 ] ; 3 uses
  %i.bk = phi ptr [ %.pre18, %bb.i ], [ %i.av, %bb.j ], [ %i.av, %bb.k ], [ %i.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bl = add nuw i64 %.016, 1                    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = icmp ult i64 %i.bl, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.100, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.110) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.a) #20
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !98
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !147
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.100, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #41
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGroupBuilderINS_5EntryEmLb1EE11InitStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !117  ; 8 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 24                        ; 5 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %1 = icmp ult i64 %i.i, 2
  br i1 %1, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02530.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.02629.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02530.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = add i64 %i.q, %.02629.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa76 = phi i64 [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.epil.preheader ]
  %i.s = add i64 %.lcssa76, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.026.lcssa = phi i64 [ 1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.t = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !136, !align !149 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120  ; 5 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02530 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.02629 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02530 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !112
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = add i64 %i.af, %.02629
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02530 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add i64 %i.ap, %i.ag                    ; 3 uses
  %i.ar = add nuw i64 %.02530, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !150

bb.b:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.au = phi i64 [ %i.at, %bb.b ], [ 0, %._crit_edge ]
  store i64 %i.au, ptr %i.a, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103 ; 4 uses
  %i.ax = add i64 %.026.lcssa, %i.aw              ; 4 uses
  %i.ay = ptrtoint ptr %i.w to i64
  %i.az = ptrtoint ptr %i.u to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 3 uses
  %i.bc = icmp ugt i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = sub nuw i64 %i.ax, %i.bb
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.w, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load i64, ptr %i.av, align 8, !tbaa !103
  %.pre51 = load ptr, ptr %i.c, align 8, !tbaa !118 ; 2 uses
  %.pre52 = load ptr, ptr %i.b, align 8, !tbaa !117 ; 2 uses
  %.pre53 = ptrtoint ptr %.pre51 to i64
  %.pre54 = ptrtoint ptr %.pre52 to i64
  %.pre56 = sub i64 %.pre53, %.pre54
  %.pre58 = sdiv i64 %.pre56, 24
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.e:                                             ; preds = %bb.c
  %i.be = icmp ult i64 %i.ax, %i.bb
  br i1 %i.be, label %bb.f, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ax ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !116
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi59 = phi i64 [ %.pre58, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %i.bg = phi ptr [ %.pre52, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bh = phi ptr [ %.pre51, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %i.bi = phi i64 [ %.pre, %bb.d ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ], [ %i.aw, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %.not44 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not44, label %._crit_edge43, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.bj = add i64 %i.bi, 1
  %umax49 = call i64 @llvm.umax.i64(i64 %.pre-phi59, i64 1)
  br label %.lr.ph42

._crit_edge43:                                    ; preds = %._crit_edge36, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !151, !nonnull !136, !align !149 ; 3 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !136, !align !149
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !120
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !98 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !152 ; 2 uses
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !155 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ugt i64 %i.bq, %i.bx
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge43
  %i.bz = sub nuw i64 %i.bq, %i.bx
  call void @_ZNSt6vectorIN7xgboost5EntryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.bz)
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %._crit_edge43
  %i.ca = icmp ult i64 %i.bq, %i.bx
  br i1 %i.ca, label %bb.i, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bq ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bs, %i.cb
  br i1 %.not.i.i27, label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7xgboost5EntryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7xgboost5EntryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !152
  br label %_ZNSt6vectorIN7xgboost5EntryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7xgboost5EntryESaIS1_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPN7xgboost5EntryES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %._crit_edge36
  %.02141 = phi i64 [ %i.cs, %._crit_edge36 ], [ 0, %.lr.ph42.preheader ] ; 2 uses
  %.02240 = phi i64 [ %.1.lcssa, %._crit_edge36 ], [ %i.bj, %.lr.ph42.preheader ] ; 2 uses
  %.02339 = phi i64 [ %.124.lcssa, %._crit_edge36 ], [ 0, %.lr.ph42.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.02141 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !116 ; 2 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !112 ; 3 uses
  %.not45 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not45, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph42
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !136, !align !149 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !116
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !112 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  br label %bb.j

._crit_edge36:                                    ; preds = %bb.l, %.lr.ph42
  %.124.lcssa = phi i64 [ %.02339, %.lr.ph42 ], [ %i.cx, %bb.l ]
  %.1.lcssa = phi i64 [ %.02240, %.lr.ph42 ], [ %.2, %bb.l ]
  %i.cs = add nuw i64 %.02141, 1                  ; 2 uses
  %exitcond50.not = icmp eq i64 %i.cs, %umax49
  br i1 %exitcond50.not, label %._crit_edge43, label %.lr.ph42, !llvm.loop !156

bb.j:                                             ; preds = %.lr.ph35, %bb.l
  %.033 = phi i64 [ 0, %.lr.ph35 ], [ %i.dd, %bb.l ] ; 2 uses
  %.132 = phi i64 [ %.02240, %.lr.ph35 ], [ %.2, %bb.l ] ; 4 uses
  %.12431 = phi i64 [ %.02339, %.lr.ph35 ], [ %i.cx, %bb.l ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.033 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !98
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !98
  %i.cw = add i64 %i.cv, %.12431
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !98
  %i.cx = add i64 %i.cu, %.12431                  ; 3 uses
  %i.cy = icmp ult i64 %.132, %i.cr
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = add nuw i64 %.132, 1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.132 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !98
  %i.dc = add i64 %i.db, %i.cx
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !98
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i64 [ %i.cz, %bb.k ], [ %.132, %bb.j ] ; 2 uses
  %i.dd = add nuw i64 %.033, 1                    ; 2 uses
  %exitcond48.not = icmp eq i64 %i.dd, %i.cj
  br i1 %exitcond48.not, label %._crit_edge36, label %bb.j, !llvm.loop !157
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #39
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !144

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #39
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6common20ParallelGroupBuilderINS_5EntryEmLb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = ptrtoint ptr %i.g to i64
end_hunk_0
