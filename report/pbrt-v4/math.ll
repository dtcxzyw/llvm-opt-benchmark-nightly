Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math?download=true
inline.NumInlined: 930
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.1
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !19
  %i.az = add i64 %i.ay, -4611686018427387901
  %i.ba = icmp ult i64 %i.az, 3
  br i1 %i.ba, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1.1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.cont unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.1
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !41
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !41
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !41
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.172 unwind label %bb.a

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.be = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bf = sub i64 4611686018427387903, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.173: ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.172
  %i.bh = load ptr, ptr %2, align 8, !tbaa !21
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bh, i64 noundef %i.bd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.174 unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.173
  %i.bj = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.d
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.174
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.175
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.bo = add i64 %i.bn, 1                        ; 3 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29.180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.179: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.176
  %i.br = load i64, ptr %i.a, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29.180: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.176
  %i.bs = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29.180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.179
  %i.bt = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.179 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29.180 ]
  %i.bu = icmp ugt i64 %i.bo, %i.bt
  br i1 %i.bu, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.185

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc30.183 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30.183:                                     ; preds = %bb.d
  %.pre.i.i.182 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.185: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181, %.noexc30.183
  %i.bv = phi ptr [ %.pre.i.i.182, %.noexc30.183 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.181 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 44, ptr %i.bw, align 1, !tbaa !20
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !19
  %i.bx = load ptr, ptr %0, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bo
  store i8 0, ptr %i.by, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !41
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !41
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !41
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1.1 unwind label %bb.a

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.185
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1.1: ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1.1
  %i.ce = load ptr, ptr %2, align 8, !tbaa !21
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1.1 unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1.1
  %i.cg = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.d
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1.1
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cl = and i64 %i.ck, -2
  %i.cm = icmp eq i64 %i.cl, 4611686018427387902
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.1.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.1.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1.1
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41.1 unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.1.1
  %.pre.pre = load i64, ptr %i.b, align 8, !tbaa !19
  %i.co = and i64 %.pre.pre, -2
  %i.cp = icmp eq i64 %i.co, 4611686018427387902
  br i1 %i.cp, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

.loopexit.split-lp46.loopexit.split-lp:           ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cq = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.a
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %.loopexit.split-lp46.loopexit.split-lp
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %.loopexit.split-lp46.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  resume { ptr, i32 } %.pn19.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK4pbrt12SquareMatrixILi2EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN4pbrt12SquareMatrixILi2EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4pbrt7InverseILi2EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca i32, align 8                  ; 5 uses
  %.sroa.5 = alloca i32, align 4                  ; 8 uses
  %i.a = alloca [2 x [2 x float]], align 16       ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i32 0, ptr %.sroa.0, align 8
  store i32 0, ptr %.sroa.5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa !10
  %i.b = load float, ptr %i.a, align 16, !tbaa !10 ; 2 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  %i.d = tail call float @llvm.fabs.f32(float %i.b)
  %spec.select = select i1 %i.c, float 0.000000e+00, float %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = tail call noundef float @llvm.fabs.f32(float %i.f) ; 2 uses
  %i.h = fcmp oge float %i.g, %spec.select        ; 3 uses
  %.2.1 = select i1 %i.h, float %i.g, float %spec.select ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !10
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j) ; 2 uses
  %i.l = fcmp oge float %i.k, %.2.1               ; 6 uses
  %not. = xor i1 %i.l, true
  %narrow = and i1 %i.h, %not.                    ; 4 uses
  %.2.1157 = select i1 %i.l, float %i.k, float %.2.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = tail call noundef float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp ult float %i.o, %.2.1157
  %.sink221.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink221.sroa.gep250 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sink231.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sink231.sroa.gep251 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br i1 %i.p, label %.critedge.1, label %.critedge.1.thread

.critedge.1.thread:                               ; preds = %bb.a
  %.sroa.5.0..sroa.5.4.255 = load i32, ptr %.sroa.5, align 4, !tbaa !11
  %i.q = add nsw i32 %.sroa.5.0..sroa.5.4.255, 1
  store i32 %i.q, ptr %.sroa.5, align 4, !tbaa !11
  br label %.loopexit122

.critedge.1:                                      ; preds = %bb.a
  %.sroa.sel254 = select i1 %narrow, ptr %.sroa.5, ptr %.sroa.0 ; 2 uses
  %i.r = load i32, ptr %.sroa.sel254, align 4, !tbaa !11
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %.sroa.sel254, align 4, !tbaa !11
  %i.t = or i1 %i.l, %i.h
  br i1 %i.t, label %.preheader121, label %.loopexit122

bb.b:                                             ; preds = %bb.l, %bb.g, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %.critedge112

.preheader121:                                    ; preds = %.critedge.1
  %.sroa.sel.idx = select i1 %i.l, i64 8, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx ; 2 uses
  %.sroa.sel237.idx = select i1 %narrow, i64 8, i64 0
  %.sroa.sel237 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel237.idx ; 2 uses
  %i.u = load <2 x float>, ptr %.sroa.sel, align 8, !tbaa !10
  %i.v = load <2 x float>, ptr %.sroa.sel237, align 8, !tbaa !10
  store <2 x float> %i.v, ptr %.sroa.sel, align 8, !tbaa !10
  store <2 x float> %i.u, ptr %.sroa.sel237, align 8, !tbaa !10
  br label %.loopexit122

.loopexit122:                                     ; preds = %.critedge.1.thread, %.preheader121, %.critedge.1
  %.not108203 = phi i1 [ true, %.critedge.1.thread ], [ false, %.preheader121 ], [ true, %.critedge.1 ]
  %.292.1.1202.shrunk = phi i1 [ true, %.critedge.1.thread ], [ %narrow, %.preheader121 ], [ %narrow, %.critedge.1 ] ; 4 uses
  %.296.1.1201.shrunk = phi i1 [ true, %.critedge.1.thread ], [ %i.l, %.preheader121 ], [ %i.l, %.critedge.1 ] ; 2 uses
  %i.w = zext i1 %.292.1.1202.shrunk to i64       ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !10 ; 2 uses
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %.preheader120.preheader

bb.c:                                             ; preds = %.loopexit122.1, %.loopexit122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %.critedge112

.preheader120.preheader:                          ; preds = %.loopexit122
  %i.ab = fdiv float 1.000000e+00, %i.z
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !10
  %i.ac = load <2 x float>, ptr %i.x, align 8, !tbaa !10
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac           ; 2 uses
  store <2 x float> %i.af, ptr %i.x, align 8, !tbaa !10
  br i1 %.292.1.1202.shrunk, label %.loopexit118.thread, label %.loopexit118.loopexit.1

.loopexit118.thread:                              ; preds = %.preheader120.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10 ; 2 uses
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !10
  %i.ai = load float, ptr %i.x, align 8, !tbaa !10
  %i.aj = fneg float %i.ai
  %i.ak = load float, ptr %i.a, align 16, !tbaa !10
  %i.al = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.ah, float %i.ak)
  store float %i.al, ptr %i.a, align 16, !tbaa !10
  %i.am = extractelement <2 x float> %i.af, i64 1
  br label %.loopexit118.1

.loopexit118.loopexit.1:                          ; preds = %.preheader120.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  store float 0.000000e+00, ptr %i.ao, align 8, !tbaa !10
  %i.aq = load float, ptr %i.x, align 8, !tbaa !10
  %i.ar = fneg float %i.aq
  %i.as = tail call noundef float @llvm.fma.f32(float %i.ar, float %i.ap, float 0.000000e+00)
  store float %i.as, ptr %i.ao, align 8, !tbaa !10
  %i.at = load float, ptr %i.an, align 4, !tbaa !10
  br label %.loopexit118.1

.loopexit118.1:                                   ; preds = %.loopexit118.thread, %.loopexit118.loopexit.1
  %.sink = phi float [ %i.am, %.loopexit118.thread ], [ %i.at, %.loopexit118.loopexit.1 ]
  %.sink221.sroa.phi = phi ptr [ %.sink221.sroa.gep, %.loopexit118.thread ], [ %.sink221.sroa.gep250, %.loopexit118.loopexit.1 ] ; 2 uses
  %.sink219 = phi float [ %i.ah, %.loopexit118.thread ], [ %i.ap, %.loopexit118.loopexit.1 ]
  %i.au = fneg float %.sink
  %i.av = load float, ptr %.sink221.sroa.phi, align 4, !tbaa !10
  %i.aw = tail call noundef float @llvm.fma.f32(float %i.au, float %.sink219, float %i.av)
  store float %i.aw, ptr %.sink221.sroa.phi, align 4, !tbaa !10
  %.sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 8, !tbaa !11 ; 3 uses
  switch i32 %.sroa.0.0..sroa.0.0., label %bb.d [
    i32 1, label %.loopexit118.1..critedge.1170_crit_edge
    i32 0, label %bb.e
  ]

.loopexit118.1..critedge.1170_crit_edge:          ; preds = %.loopexit118.1
  %.sroa.5.0..sroa.5.4..pre = load i32, ptr %.sroa.5, align 4, !tbaa !11
  br label %.critedge.1170

bb.d:                                             ; preds = %.loopexit118.1
  %i.ax = icmp sgt i32 %.sroa.0.0..sroa.0.0., 1
  br i1 %i.ax, label %bb.b, label %bb.f

bb.e:                                             ; preds = %.loopexit118.1
  %i.ay = load float, ptr %i.a, align 16, !tbaa !10 ; 2 uses
  %i.az = fcmp uno float %i.ay, 0.000000e+00
  %i.ba = tail call float @llvm.fabs.f32(float %i.ay)
  %spec.select222 = select i1 %i.az, float 0.000000e+00, float %i.ba
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.1165 = phi float [ 0.000000e+00, %bb.d ], [ %spec.select222, %bb.e ] ; 3 uses
  %.sroa.5.0..sroa.5.4. = load i32, ptr %.sroa.5, align 4, !tbaa !11 ; 3 uses
  %i.bb = icmp eq i32 %.sroa.5.0..sroa.5.4., 0
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp sgt i32 %.sroa.5.0..sroa.5.4., 1
  br i1 %i.bc, label %bb.b, label %.critedge.1170

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = tail call noundef float @llvm.fabs.f32(float %i.be) ; 2 uses
  %i.bg = fcmp oge float %i.bf, %.2.1165          ; 2 uses
  %spec.select223 = select i1 %i.bg, float %i.bf, float %.2.1165
  %spec.select224 = zext i1 %i.bg to i32
  br label %.preheader119.1.1

.critedge.1170:                                   ; preds = %bb.g, %.loopexit118.1..critedge.1170_crit_edge
  %i.bh = phi i32 [ %.sroa.5.0..sroa.5.4..pre, %.loopexit118.1..critedge.1170_crit_edge ], [ %.sroa.5.0..sroa.5.4., %bb.g ] ; 2 uses
  %.3.1 = phi float [ 0.000000e+00, %.loopexit118.1..critedge.1170_crit_edge ], [ %.2.1165, %bb.g ]
  %.not.1.1 = icmp eq i32 %i.bh, 1
  br i1 %.not.1.1, label %.critedge.1.1.thread, label %.preheader119.1.1

.preheader119.1.1:                                ; preds = %bb.h, %.critedge.1170
  %.3.1209 = phi float [ %.3.1, %.critedge.1170 ], [ %spec.select223, %bb.h ] ; 3 uses
  %.393.1169208 = phi i32 [ 0, %.critedge.1170 ], [ %spec.select224, %bb.h ] ; 2 uses
  %i.bi = phi i32 [ %i.bh, %.critedge.1170 ], [ 0, %bb.h ] ; 2 uses
  %i.bj = icmp eq i32 %.sroa.0.0..sroa.0.0., 0
  br i1 %i.bj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader119.1.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !10
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl) ; 2 uses
  %i.bn = fcmp ult float %i.bm, %.3.1209
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %.preheader119.1.1, %bb.j, %bb.i
  %.296.1155.1 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %.preheader119.1.1 ] ; 4 uses
  %.292.1156.1 = phi i32 [ 0, %bb.j ], [ %.393.1169208, %bb.i ], [ %.393.1169208, %.preheader119.1.1 ] ; 4 uses
  %.2.1157.1 = phi float [ %i.bm, %bb.j ], [ %.3.1209, %bb.i ], [ %.3.1209, %.preheader119.1.1 ]
  %i.bo = icmp eq i32 %i.bi, 0
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = icmp sgt i32 %i.bi, 1
  br i1 %i.bp, label %bb.b, label %.critedge.1.1

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.br)
  %i.bt = fcmp ult float %i.bs, %.2.1157.1
  br i1 %i.bt, label %.critedge.1.1, label %.critedge.1.1.thread

.critedge.1.1.thread:                             ; preds = %.critedge.1170, %bb.m
  %.397.1.1.ph = phi i32 [ 0, %.critedge.1170 ], [ 1, %bb.m ] ; 3 uses
  %i.bu = zext nneg i32 %.397.1.1.ph to i64
  br label %.loopexit122.1

.critedge.1.1:                                    ; preds = %bb.l, %bb.m
  %i.bv = zext nneg i32 %.292.1156.1 to i64       ; 3 uses
  %.not108.1 = icmp eq i32 %.296.1155.1, %.292.1156.1
  br i1 %.not108.1, label %.loopexit122.1, label %.preheader121.1

.preheader121.1:                                  ; preds = %.critedge.1.1
  %i.bw = zext nneg i32 %.296.1155.1 to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bx, align 8, !tbaa !10
  %i.ca = load <2 x float>, ptr %i.by, align 8, !tbaa !10
  store <2 x float> %i.ca, ptr %i.bx, align 8, !tbaa !10
  store <2 x float> %i.bz, ptr %i.by, align 8, !tbaa !10
  br label %.loopexit122.1

.loopexit122.1:                                   ; preds = %.critedge.1.1.thread, %.preheader121.1, %.critedge.1.1
  %.not108.1215 = phi i1 [ true, %.critedge.1.1.thread ], [ false, %.preheader121.1 ], [ true, %.critedge.1.1 ]
  %i.cb = phi i64 [ %i.bu, %.critedge.1.1.thread ], [ %i.bv, %.preheader121.1 ], [ %i.bv, %.critedge.1.1 ] ; 2 uses
  %.393.1.1214 = phi i32 [ %.397.1.1.ph, %.critedge.1.1.thread ], [ %.292.1156.1, %.preheader121.1 ], [ %.292.1156.1, %.critedge.1.1 ] ; 2 uses
  %.397.1.1213 = phi i32 [ %.397.1.1.ph, %.critedge.1.1.thread ], [ %.296.1155.1, %.preheader121.1 ], [ %.296.1155.1, %.critedge.1.1 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cb ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !10 ; 2 uses
  %i.cf = fcmp oeq float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.c, label %.preheader120.preheader.1

.preheader120.preheader.1:                        ; preds = %.loopexit122.1
  %i.cg = fdiv float 1.000000e+00, %i.ce
  store float 1.000000e+00, ptr %i.cd, align 4, !tbaa !10
  %i.ch = load <2 x float>, ptr %i.cc, align 8, !tbaa !10
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cj, %i.ch           ; 2 uses
  store <2 x float> %i.ck, ptr %i.cc, align 8, !tbaa !10
  %.not109.1171 = icmp eq i32 %.393.1.1214, 0
  br i1 %.not109.1171, label %.loopexit118.loopexit.1.1, label %.loopexit118.1173.thread

.loopexit118.1173.thread:                         ; preds = %.preheader120.preheader.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !10 ; 2 uses
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !10
  %i.cn = load float, ptr %i.cc, align 8, !tbaa !10
  %i.co = fneg float %i.cn
  %i.cp = load float, ptr %i.a, align 16, !tbaa !10
  %i.cq = tail call noundef float @llvm.fma.f32(float %i.co, float %i.cm, float %i.cp)
  store float %i.cq, ptr %i.a, align 16, !tbaa !10
  %i.cr = extractelement <2 x float> %i.ck, i64 1
  br label %.loopexit118.1.1

.loopexit118.loopexit.1.1:                        ; preds = %.preheader120.preheader.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !10 ; 2 uses
  store float 0.000000e+00, ptr %i.ct, align 8, !tbaa !10
  %i.cv = load float, ptr %i.cc, align 8, !tbaa !10
  %i.cw = fneg float %i.cv
  %i.cx = tail call noundef float @llvm.fma.f32(float %i.cw, float %i.cu, float 0.000000e+00)
  store float %i.cx, ptr %i.ct, align 8, !tbaa !10
  %i.cy = load float, ptr %i.cs, align 4, !tbaa !10
  br label %.loopexit118.1.1

end_hunk_0
begin_hunk_1_@_ZNK4pbrt12SquareMatrixILi4EE8ToStringB5cxx11Ev:._crit_edge.i.i
  %i.bw = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.a
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.2

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
  br i1 %i.cb, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31.2 unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31.2:                                       ; preds = %bb.f
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
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.3 unwind label %bb.b

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cj = sub i64 4611686018427387903, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.3

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
  br i1 %.not, label %bb.a, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.3
  %i.cw = add i64 %i.cv, -4611686018427387901
  %i.cx = icmp ult i64 %i.cw, 3
  br i1 %i.cx, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

.invoke:                                          ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.3, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.cont unwind label %.loopexit.split-lp47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %bb.g
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

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.f
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
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.a

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
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.a ; 4 uses

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
end_hunk_1
