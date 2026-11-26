Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math?download=true
inline.NumInlined: 930
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZNK4pbrt12SquareMatrixILi4EE8ToStringB5cxx11Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2
  %i.by = load i64, ptr %i.a, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2
  %i.bz = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.2
  %i.ca = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.2 ]
  %i.cb = icmp ugt i64 %i.bv, %i.ca
  br i1 %i.cb, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31.2 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31.2:                                       ; preds = %bb.g
  %.pre.i.i.2 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2, %.noexc31.2
  %i.cc = phi ptr [ %.pre.i.i.2, %.noexc31.2 ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i8 44, ptr %i.cd, align 1, !tbaa !20
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !19
  %i.ce = load ptr, ptr %0, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bv
  store i8 0, ptr %i.cf, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !50
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !50
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !50
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.3 unwind label %bb.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cj = sub i64 4611686018427387903, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.3: ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.3
  %i.cl = load ptr, ptr %2, align 8, !tbaa !21
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cl, i64 noundef %i.ch)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.3
  %i.cn = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.d
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.3
  %i.cp = load i64, ptr %i.d, align 8, !tbaa !20
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cs = and i64 %i.cr, -2
  %i.ct = icmp eq i64 %i.cs, 4611686018427387902
  br i1 %i.ct, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.3 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.3
  %.not = icmp eq i64 %indvars.iv, 3
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.3
  %i.cw = add i64 %i.cv, -4611686018427387901
  %i.cx = icmp ult i64 %i.cw, 3
  br i1 %i.cx, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

.invoke:                                          ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.cont unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %bb.h
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

.loopexit.split-lp47.loopexit.split-lp:           ; preds = %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cz = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.a
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %.loopexit.split-lp47.loopexit.split-lp
  %i.db = load i64, ptr %i.a, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %.loopexit.split-lp47.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK4pbrt12SquareMatrixILi4EEixEi(ptr noundef nonnull align 4 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 4, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN4pbrt12SquareMatrixILi4EEixEi(ptr noundef nonnull align 4 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 4, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16CompensatedFloat8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17, !alias.scope !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !19, !alias.scope !53
  store i8 0, ptr %i.b, align 8, !tbaa !20, !alias.scope !53
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !21, !alias.scope !53 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20, !alias.scope !53
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4pbrt9NextPrimeEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = or i32 %0, 1                     ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %i.d = add nsw i32 %spec.select, 320
  %i.e = sitofp i32 %i.d to double                ; 2 uses
  %i.f = tail call noundef double @sqrt(double noundef %i.e) #23
  %i.g = fptosi double %i.f to i32
  %.not60 = icmp slt i32 %i.g, 3
  br i1 %.not60, label %.lr.ph.i22.preheader.preheader, label %.lr.ph

.preheader:                                       ; preds = %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit"
  %.not45.i21 = icmp eq ptr %.sroa.0.1, %.sroa.12.1
  br i1 %.not45.i21, label %.loopexit, label %.lr.ph.i22.preheader.preheader

.lr.ph.i22.preheader.preheader:                   ; preds = %bb.b, %.preheader
  %.sroa.18.0.lcssa90 = phi ptr [ %.sroa.18.1, %.preheader ], [ %i.c, %bb.b ]
  %.sroa.12.0.lcssa89 = phi ptr [ %.sroa.12.1, %.preheader ], [ %i.c, %bb.b ]
  %.sroa.0.0.lcssa87 = phi ptr [ %.sroa.0.1, %.preheader ], [ %i.b, %bb.b ] ; 2 uses
  br label %.lr.ph.i22.preheader

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.061, i64 noundef %i.o) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp100

.lr.ph:                                           ; preds = %bb.b, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit"
  %storemerge64 = phi i32 [ %i.ab, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit" ], [ 3, %bb.b ] ; 5 uses
  %.sroa.18.063 = phi ptr [ %.sroa.18.1, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit" ], [ %i.c, %bb.b ] ; 4 uses
  %.sroa.12.062 = phi ptr [ %.sroa.12.1, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit" ], [ %i.c, %bb.b ] ; 6 uses
  %.sroa.0.061 = phi ptr [ %.sroa.0.1, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit" ], [ %i.b, %bb.b ] ; 8 uses
  %.not45.i = icmp eq ptr %.sroa.0.061, %.sroa.12.062
  br i1 %.not45.i, label %.loopexit47, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.critedge.i
  %.sroa.01.06.i = phi ptr [ %i.k, %.critedge.i ], [ %.sroa.0.061, %.lr.ph ] ; 2 uses
  %i.h = load i32, ptr %.sroa.01.06.i, align 4, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i32 %storemerge64, %i.h
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = srem i32 %storemerge64, %i.h
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit", label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 4 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, %.sroa.12.062
  br i1 %.not4.i, label %.loopexit47, label %.lr.ph.i

.loopexit47:                                      ; preds = %.critedge.i, %.lr.ph
  %.not.i18 = icmp eq ptr %.sroa.12.062, %.sroa.18.063
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit47
  store i32 %storemerge64, ptr %.sroa.12.062, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.12.062, i64 4
  br label %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit"

bb.e:                                             ; preds = %.loopexit47
  %i.m = ptrtoint ptr %.sroa.18.063 to i64
  %i.n = ptrtoint ptr %.sroa.0.061 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951)
  %i.u = select i1 %i.s, i64 2305843009213693951, i64 %i.t ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i19)
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i32 %storemerge64, ptr %i.x, align 4, !tbaa !11
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

bb.g:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %.sroa.0.061, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %.noexc20
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.061, i64 noundef %i.o) #25
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  br label %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit"

"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit":          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d
  %.sroa.0.1 = phi ptr [ %.sroa.0.061, %bb.d ], [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.061, %bb.c ] ; 4 uses
  %.sroa.12.1 = phi ptr [ %i.l, %bb.d ], [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.12.062, %bb.c ] ; 3 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.063, %bb.d ], [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.063, %bb.c ] ; 3 uses
  %i.ab = add nuw nsw i32 %storemerge64, 2        ; 2 uses
  %i.ac = tail call noundef double @sqrt(double noundef %i.e) #23
  %i.ad = fptosi double %i.ac to i32
  %.not = icmp sgt i32 %i.ab, %i.ad
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !54

.lr.ph.i22.preheader:                             ; preds = %.lr.ph.i22.preheader.preheader, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit28"
  %.167 = phi i32 [ %i.ai, %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit28" ], [ %spec.select, %.lr.ph.i22.preheader.preheader ] ; 4 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %.critedge.i25
  %.sroa.01.06.i23 = phi ptr [ %i.ah, %.critedge.i25 ], [ %.sroa.0.0.lcssa87, %.lr.ph.i22.preheader ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.01.06.i23, align 4, !tbaa !11 ; 2 uses
  %.not.i24 = icmp eq i32 %.167, %i.ae
  br i1 %.not.i24, label %.critedge.i25, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i22
  %i.af = srem i32 %.167, %i.ae
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit28", label %.critedge.i25

.critedge.i25:                                    ; preds = %bb.h, %.lr.ph.i22
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i23, i64 4 ; 2 uses
  %.not4.i26 = icmp eq ptr %i.ah, %.sroa.12.0.lcssa89
  br i1 %.not4.i26, label %.loopexit, label %.lr.ph.i22

"_ZZN4pbrt9NextPrimeEiENK3$_0clEi.exit28":        ; preds = %bb.h
  %i.ai = add nsw i32 %.167, 2
  br label %.lr.ph.i22.preheader

.loopexit:                                        ; preds = %.critedge.i25, %.preheader
  %.sroa.18.0.lcssa91 = phi ptr [ %.sroa.18.1, %.preheader ], [ %.sroa.18.0.lcssa90, %.critedge.i25 ]
  %.sroa.0.0.lcssa88 = phi ptr [ %.sroa.0.1, %.preheader ], [ %.sroa.0.0.lcssa87, %.critedge.i25 ] ; 2 uses
  %.150 = phi i32 [ %spec.select, %.preheader ], [ %.167, %.critedge.i25 ]
  %i.aj = ptrtoint ptr %.sroa.18.0.lcssa91 to i64
  %i.ak = ptrtoint ptr %.sroa.0.0.lcssa88 to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa88, i64 noundef %i.al) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %.loopexit, %bb.a
  %.010 = phi i32 [ 3, %bb.a ], [ %.150, %.loopexit ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt8Interval8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17, !alias.scope !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !19, !alias.scope !57
  store i8 0, ptr %i.b, align 8, !tbaa !20, !alias.scope !57
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !21, !alias.scope !57 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !20, !alias.scope !57
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr nofree readonly captures(none) %0, i64 %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree writeonly captures(none) %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %5, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 4, ptr %i.b, align 4, !tbaa !11
  %i.c = icmp ugt i64 %5, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA15_KcRA2_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 159, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, ptr noundef nonnull align 1 dereferenceable(2) @.str.13, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.d = load float, ptr %0, align 4, !tbaa !10
  %i.e = fcmp ult float %2, %i.d
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr [4 x i8], ptr %0, i64 %1
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fcmp ugt float %2, %i.h
  br i1 %i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %1, -2                           ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %"_ZN4pbrt12FindIntervalIZNS_17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS2_IfEEE3$_0EEmmRKT_.exit"

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.02.i = phi i64 [ %.fr.i, %.lr.ph.i ], [ 1, %bb.e ] ; 2 uses
  %.0151.i = phi i64 [ %i.v, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = lshr i64 %.0151.i, 1                     ; 3 uses
  %i.m = add i64 %i.l, %.02.i                     ; 2 uses
  %i.n = shl i64 %i.m, 32
  %i.o = ashr exact i64 %i.n, 30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fcmp ole float %i.q, %2                  ; 2 uses
  %i.s = add i64 %i.m, 1
  %i.t = select i1 %i.r, i64 %i.s, i64 %.02.i
  %.fr.i = freeze i64 %i.t                        ; 3 uses
  %.neg.i = xor i64 %i.l, -1
  %i.u = add nsw i64 %.0151.i, %.neg.i
  %i.v = select i1 %i.r, i64 %i.u, i64 %i.l       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.x = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.j)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %"_ZN4pbrt12FindIntervalIZNS_17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS2_IfEEE3$_0EEmmRKT_.exit"

"_ZN4pbrt12FindIntervalIZNS_17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS2_IfEEE3$_0EEmmRKT_.exit": ; preds = %bb.e, %._crit_edge.i
  %i.y = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.e ] ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %3, align 4, !tbaa !11
  %sext = shl i64 %i.y, 32                        ; 3 uses
  %i.ab = ashr exact i64 %sext, 30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10 ; 3 uses
  %sext44 = add i64 %sext, 4294967296
  %i.ae = ashr exact i64 %sext44, 30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10 ; 2 uses
  %i.ah = fsub float %2, %i.ad
  %i.ai = fsub float %i.ag, %i.ad                 ; 3 uses
  %i.aj = fdiv float %i.ah, %i.ai                 ; 4 uses
  %i.ak = fmul float %i.aj, %i.aj                 ; 4 uses
  %i.al = fmul float %i.aj, %i.ak                 ; 3 uses
  %i.am = fmul float %i.al, 2.000000e+00          ; 2 uses
  %i.an = fmul float %i.ak, 3.000000e+00          ; 2 uses
  %i.ao = fsub float %i.am, %i.an
  %i.ap = fadd float %i.ao, 1.000000e+00          ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = fsub float %i.an, %i.am                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !10
  %i.at = icmp sgt i32 %i.z, 0
  %i.au = fmul float %i.ak, 2.000000e+00
  %i.av = fsub float %i.al, %i.au
  %i.aw = fadd float %i.aj, %i.av                 ; 3 uses
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN4pbrt12FindIntervalIZNS_17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS2_IfEEE3$_0EEmmRKT_.exit"
  %i.ax = fmul float %i.ai, %i.aw
  %i.ay = zext nneg i32 %i.aa to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fsub float %i.ag, %i.ba
  %i.bc = fdiv float %i.ax, %i.bb                 ; 2 uses
  %i.bd = fneg float %i.bc
  br label %bb.h

bb.g:                                             ; preds = %"_ZN4pbrt12FindIntervalIZNS_17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS2_IfEEE3$_0EEmmRKT_.exit"
  %i.be = fsub float %i.ap, %i.aw                 ; 2 uses
  store float %i.be, ptr %i.aq, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = phi float [ %i.ap, %bb.f ], [ %i.be, %bb.g ] ; 2 uses
  %.sink = phi float [ %i.bd, %bb.f ], [ 0.000000e+00, %bb.g ]
  %.pn = phi float [ %i.bc, %bb.f ], [ %i.aw, %bb.g ]
  store float %.sink, ptr %4, align 4, !tbaa !10
  %storemerge = fadd float %i.ar, %.pn            ; 2 uses
  store float %storemerge, ptr %i.as, align 4, !tbaa !10
end_hunk_0
