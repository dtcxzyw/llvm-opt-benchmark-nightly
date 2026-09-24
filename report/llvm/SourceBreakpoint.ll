Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourceBreakpoint?download=true
inline.NumInlined: 562
inline.NumDeleted: 284
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8lldb_dap16SourceBreakpoint13FormatLogTextEN4llvm9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [5 x i8], align 1                 ; 9 uses
  %i.d = alloca [3 x i8], align 1                 ; 7 uses
  tail call void @_ZN4lldb7SBErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.critedge57, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 28 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 26 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph, %bb.bg
  %.sroa.0140.0197 = phi ptr [ %2, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph ], [ %.sroa.0140.3, %bb.bg ] ; 9 uses
  %.sroa.22.0196 = phi i64 [ %3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.lr.ph ], [ %.sroa.22.3, %bb.bg ] ; 8 uses
  %i.n = call ptr @memchr(ptr noundef %.sroa.0140.0197, i32 noundef 92, i64 noundef %.sroa.22.0196) #16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit.thread, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit

_ZNK4llvm9StringRef13find_first_ofEcm.exit:       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.sroa.0140.0197 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit.thread, label %bb.f

_ZNK4llvm9StringRef13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNK4llvm9StringRef13find_first_ofEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %.not.i = icmp eq ptr %.sroa.0140.0197, null
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !20, !alias.scope !121
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.b

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !24, !alias.scope !121
  store i8 0, ptr %i.s, align 8, !tbaa !26, !alias.scope !121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.b:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !121
  store i64 %.sroa.22.0196, ptr %i.b, align 8, !tbaa !25, !noalias !121
  %i.u = icmp ugt i64 %.sroa.22.0196, 15
  br i1 %i.u, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.b
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !23, !alias.scope !121
  %i.w = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !121
  store i64 %i.w, ptr %i.s, align 8, !tbaa !26, !alias.scope !121
  br label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.b
  %cond = icmp eq i64 %.sroa.22.0196, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %.sroa.0140.0197, align 1, !tbaa !26
  store i8 %i.x, ptr %i.s, align 8, !tbaa !26
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.y = phi ptr [ %i.v, %._crit_edge.i.i.i.thread ], [ %i.s, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %.sroa.0140.0197, i64 %.sroa.22.0196, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.c, %bb.d
  %i.z = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !121 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !24, !alias.scope !121
  %i.ab = load ptr, ptr %5, align 8, !tbaa !23, !alias.scope !121
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !121
  %.pre213 = load i64, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %.pre213
  br i1 %i.af, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.e:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ag = phi i64 [ 0, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %.pre213, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.ah = load ptr, ptr %5, align 8, !tbaa !23
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ah, i64 noundef %i.ag) #16 ; 0 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.critedge57

bb.f:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.22.0196, i64 %i.q) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %.not.i58 = icmp eq ptr %.sroa.0140.0197, null
  store ptr %i.f, ptr %6, align 8, !tbaa !20, !alias.scope !122
  br i1 %.not.i58, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61.thread, label %bb.g

_ZNK4llvm9StringRef3strB5cxx11Ev.exit61.thread:   ; preds = %bb.f
  store i64 0, ptr %i.g, align 8, !tbaa !24, !alias.scope !122
  store i8 0, ptr %i.f, align 8, !tbaa !26, !alias.scope !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit62

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !122
  store i64 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !25, !noalias !122
  %i.ao = icmp ugt i64 %.sroa.speculated.i, 15
  br i1 %i.ao, label %bb.h, label %._crit_edge.i.i.i59

bb.h:                                             ; preds = %bb.g
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !23, !alias.scope !122
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !122
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !26, !alias.scope !122
  br label %._crit_edge.i.i.i59

._crit_edge.i.i.i59:                              ; preds = %bb.h, %bb.g
  %i.ar = phi ptr [ %i.ap, %bb.h ], [ %i.f, %bb.g ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i59
  %i.as = load i8, ptr %.sroa.0140.0197, align 1, !tbaa !26
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !26
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61

bb.j:                                             ; preds = %._crit_edge.i.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %.sroa.0140.0197, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61

_ZNK4llvm9StringRef3strB5cxx11Ev.exit61:          ; preds = %._crit_edge.i.i.i59, %bb.i, %bb.j
  %i.at = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !122 ; 2 uses
  store i64 %i.at, ptr %i.g, align 8, !tbaa !24, !alias.scope !122
  %i.au = load ptr, ptr %6, align 8, !tbaa !23, !alias.scope !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !122
  %.pre = load i64, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !24
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %.pre
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit62

bb.k:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit62: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61
  %i.az = phi i64 [ 0, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61.thread ], [ %.pre, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit61 ]
  %i.ba = load ptr, ptr %6, align 8, !tbaa !23
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ba, i64 noundef %i.az) #16 ; 0 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.f
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit62
  %i.be = load i64, ptr %i.f, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.bg = add nuw i64 %i.q, 1                     ; 2 uses
  %.not180 = icmp ugt i64 %.sroa.22.0196, %i.bg
  br i1 %.not180, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @_ZN4lldb7SBError14SetErrorStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5) #16
  br label %.critedge57

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0140.0197, i64 %i.bg ; 7 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 15 uses
  %reass.sub = sub i64 %.sroa.22.0196, %i.q       ; 3 uses
  %i.bk = add i64 %reass.sub, -2                  ; 19 uses
  switch i8 %i.bi, label %bb.be [
    i8 97, label %bb.n
    i8 98, label %bb.p
    i8 102, label %bb.r
    i8 110, label %bb.t
    i8 114, label %bb.v
    i8 116, label %bb.x
    i8 118, label %bb.z
    i8 39, label %bb.ab
    i8 92, label %bb.ad
    i8 48, label %bb.af
    i8 120, label %bb.as
  ]

bb.n:                                             ; preds = %bb.m
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.j
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70: ; preds = %bb.n
  %i.bp = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.n
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70 ]
  %i.bs = icmp ugt i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bl, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.bt = phi ptr [ %.pre.i, %bb.o ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store i8 7, ptr %i.bu, align 1, !tbaa !26
  store i64 %i.bm, ptr %i.h, align 8, !tbaa !24
  %i.bv = load ptr, ptr %4, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm
  store i8 0, ptr %i.bw, align 1, !tbaa !26
  br label %bb.bg

bb.p:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.j
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74: ; preds = %bb.p
  %i.cb = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.p
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74
  %i.cd = phi i64 [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i74 ]
  %i.ce = icmp ugt i64 %i.by, %i.cd
  br i1 %i.ce, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit75

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bx, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i73 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72, %bb.q
  %i.cf = phi ptr [ %.pre.i73, %bb.q ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  store i8 8, ptr %i.cg, align 1, !tbaa !26
  store i64 %i.by, ptr %i.h, align 8, !tbaa !24
  %i.ch = load ptr, ptr %4, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.by
  store i8 0, ptr %i.ci, align 1, !tbaa !26
  br label %bb.bg

bb.r:                                             ; preds = %bb.m
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.j
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79: ; preds = %bb.r
  %i.cn = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.r
  %i.co = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79
  %i.cp = phi i64 [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79 ]
  %i.cq = icmp ugt i64 %i.ck, %i.cp
  br i1 %i.cq, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit80

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i78 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77, %bb.s
  %i.cr = phi ptr [ %.pre.i78, %bb.s ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i77 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  store i8 12, ptr %i.cs, align 1, !tbaa !26
  store i64 %i.ck, ptr %i.h, align 8, !tbaa !24
  %i.ct = load ptr, ptr %4, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck
  store i8 0, ptr %i.cu, align 1, !tbaa !26
  br label %bb.bg

bb.t:                                             ; preds = %bb.m
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.j
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84: ; preds = %bb.t
  %i.cz = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.t
  %i.da = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84
  %i.db = phi i64 [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84 ]
  %i.dc = icmp ugt i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit85

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cv, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i83 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82, %bb.u
  %i.dd = phi ptr [ %.pre.i83, %bb.u ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i82 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 10, ptr %i.de, align 1, !tbaa !26
  store i64 %i.cw, ptr %i.h, align 8, !tbaa !24
  %i.df = load ptr, ptr %4, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cw
  store i8 0, ptr %i.dg, align 1, !tbaa !26
  br label %bb.bg

bb.v:                                             ; preds = %bb.m
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.j
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89: ; preds = %bb.v
  %i.dl = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.dl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.v
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89
  %i.dn = phi i64 [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89 ]
  %i.do = icmp ugt i64 %i.di, %i.dn
  br i1 %i.do, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit90

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.dh, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i88 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87, %bb.w
  %i.dp = phi ptr [ %.pre.i88, %bb.w ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i87 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 13, ptr %i.dq, align 1, !tbaa !26
  store i64 %i.di, ptr %i.h, align 8, !tbaa !24
  %i.dr = load ptr, ptr %4, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.di
  store i8 0, ptr %i.ds, align 1, !tbaa !26
  br label %bb.bg

bb.x:                                             ; preds = %bb.m
  %i.dt = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.du = add i64 %i.dt, 1                        ; 3 uses
  %i.dv = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.j
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94: ; preds = %bb.x
  %i.dx = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.x
  %i.dy = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94
  %i.dz = phi i64 [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i94 ]
  %i.ea = icmp ugt i64 %i.du, %i.dz
  br i1 %i.ea, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit95

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.dt, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i93 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92, %bb.y
  %i.eb = phi ptr [ %.pre.i93, %bb.y ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i92 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  store i8 9, ptr %i.ec, align 1, !tbaa !26
  store i64 %i.du, ptr %i.h, align 8, !tbaa !24
  %i.ed = load ptr, ptr %4, align 8, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.du
  store i8 0, ptr %i.ee, align 1, !tbaa !26
  br label %bb.bg

bb.z:                                             ; preds = %bb.m
  %i.ef = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.eg = add i64 %i.ef, 1                        ; 3 uses
  %i.eh = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.j
  br i1 %i.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99: ; preds = %bb.z
  %i.ej = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.ej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.z
  %i.ek = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99
  %i.el = phi i64 [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i99 ]
  %i.em = icmp ugt i64 %i.eg, %i.el
  br i1 %i.em, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit100

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ef, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i98 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit100: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97, %bb.aa
  %i.en = phi ptr [ %.pre.i98, %bb.aa ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i97 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef
  store i8 11, ptr %i.eo, align 1, !tbaa !26
  store i64 %i.eg, ptr %i.h, align 8, !tbaa !24
  %i.ep = load ptr, ptr %4, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eg
  store i8 0, ptr %i.eq, align 1, !tbaa !26
  br label %bb.bg

bb.ab:                                            ; preds = %bb.m
  %i.er = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %i.et = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.j
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104: ; preds = %bb.ab
  %i.ev = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ev)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ab
  %i.ew = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104
  %i.ex = phi i64 [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104 ]
  %i.ey = icmp ugt i64 %i.es, %i.ex
  br i1 %i.ey, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit105

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.er, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i103 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102, %bb.ac
  %i.ez = phi ptr [ %.pre.i103, %bb.ac ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store i8 39, ptr %i.fa, align 1, !tbaa !26
  store i64 %i.es, ptr %i.h, align 8, !tbaa !24
  %i.fb = load ptr, ptr %4, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.es
  store i8 0, ptr %i.fc, align 1, !tbaa !26
  br label %bb.bg

bb.ad:                                            ; preds = %bb.m
  %i.fd = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.fe = add i64 %i.fd, 1                        ; 3 uses
  %i.ff = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.j
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %bb.ad
  %i.fh = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ad
  %i.fi = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109
  %i.fj = phi i64 [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109 ]
  %i.fk = icmp ugt i64 %i.fe, %i.fj
  br i1 %i.fk, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit110

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.fd, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i108 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107, %bb.ae
  %i.fl = phi ptr [ %.pre.i108, %bb.ae ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i107 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  store i8 92, ptr %i.fm, align 1, !tbaa !26
  store i64 %i.fe, ptr %i.h, align 8, !tbaa !24
  %i.fn = load ptr, ptr %4, align 8, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe
  store i8 0, ptr %i.fo, align 1, !tbaa !26
  br label %bb.bg

bb.af:                                            ; preds = %bb.m
  %i.fp = icmp eq i64 %i.bk, 0
  br i1 %i.fp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4lldb7SBError14SetErrorStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6) #16
  br label %.critedge57

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.c, i8 0, i64 5, i1 false)
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.bk, i64 4) ; 4 uses
  %i.fq = load i8, ptr %i.bj, align 1, !tbaa !26  ; 2 uses
  %i.fr = and i8 %i.fq, -8
  %or.cond179 = icmp eq i8 %i.fr, 48
  br i1 %or.cond179, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  store i8 %i.fq, ptr %i.c, align 1, !tbaa !26
  %exitcond.not = icmp eq i64 %i.bk, 1
  br i1 %exitcond.not, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !26  ; 2 uses
  %i.fu = and i8 %i.ft, -8
  %or.cond179.1 = icmp eq i8 %i.fu, 48
  br i1 %or.cond179.1, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.ft, ptr %i.k, align 1, !tbaa !26
  %exitcond.not.1 = icmp eq i64 %i.bk, 2
  br i1 %exitcond.not.1, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !26  ; 2 uses
  %i.fx = and i8 %i.fw, -8
  %or.cond179.2 = icmp eq i8 %i.fx, 48
  br i1 %or.cond179.2, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  store i8 %i.fw, ptr %i.l, align 1, !tbaa !26
  %exitcond.not.2 = icmp eq i64 %i.bk, 3
  br i1 %exitcond.not.2, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !26  ; 2 uses
  %i.ga = and i8 %i.fz, -8
  %or.cond179.3 = icmp eq i8 %i.ga, 48
  br i1 %or.cond179.3, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  store i8 %i.fz, ptr %i.m, align 1, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.051.lcssa = phi i64 [ %invariant.umin, %bb.ai ], [ 0, %bb.ah ], [ 1, %bb.aj ], [ %invariant.umin, %bb.ak ], [ 2, %bb.al ], [ %invariant.umin, %bb.am ], [ 3, %bb.an ], [ %invariant.umin, %bb.ao ]
  %.sroa.speculated4.i.i111 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.051.lcssa) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.speculated4.i.i111
  %i.gc = sub nuw i64 %i.bk, %.sroa.speculated4.i.i111
  %i.gd = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 8) #16 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 256
  br i1 %i.ge, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.critedge
  %i.gf = trunc nuw i64 %i.gd to i8
  %i.gg = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.gh = add i64 %i.gg, 1                        ; 3 uses
  %i.gi = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.j
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117: ; preds = %bb.ap
  %i.gk = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ap
  %i.gl = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117
  %i.gm = phi i64 [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117 ]
  %i.gn = icmp ugt i64 %i.gh, %i.gm
  br i1 %i.gn, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.gg, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i116 = load ptr, ptr %4, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115
  %i.go = phi ptr [ %.pre.i116, %bb.aq ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i115 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  store i8 %i.gf, ptr %i.gp, align 1, !tbaa !26
  store i64 %i.gh, ptr %i.h, align 8, !tbaa !24
  %i.gq = load ptr, ptr %4, align 8, !tbaa !23
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gh
  store i8 0, ptr %i.gr, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bg

bb.ar:                                            ; preds = %.critedge
  call void @_ZN4lldb7SBError14SetErrorStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.critedge57

bb.as:                                            ; preds = %bb.m
  %i.gs = icmp eq i64 %i.bk, 0
  br i1 %i.gs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @_ZN4lldb7SBError14SetErrorStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8) #16
  br label %.critedge57

bb.au:                                            ; preds = %bb.as
  %i.gt = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.gu = sext i8 %i.gt to i32
  %i.gv = call i32 @isxdigit(i32 noundef %i.gu) #20
  %.not = icmp eq i32 %i.gv, 0
  br i1 %.not, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.gw = load i8, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.gw, ptr %i.d, align 1, !tbaa !26
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  %i.gy = add i64 %reass.sub, -3                  ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ha = load i8, ptr %i.gx, align 1, !tbaa !26  ; 2 uses
  %i.hb = sext i8 %i.ha to i32
  %i.hc = call i32 @isxdigit(i32 noundef %i.hb) #20
  %.not55 = icmp eq i32 %i.hc, 0
  br i1 %.not55, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 %i.ha, ptr %i.i, align 1, !tbaa !26
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.he = add i64 %reass.sub, -4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.22.1 = phi i64 [ 0, %bb.av ], [ %i.gy, %bb.aw ], [ %i.he, %bb.ax ]
  %.sroa.0140.1 = phi ptr [ %i.gx, %bb.av ], [ %i.gx, %bb.aw ], [ %i.hd, %bb.ax ]
  %i.hf = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 16) #16 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 256
  br i1 %i.hg, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.hh = trunc nuw i64 %i.hf to i8
  %i.hi = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.hj = add i64 %i.hi, 1                        ; 3 uses
  %i.hk = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.j
  br i1 %i.hl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128: ; preds = %bb.az
  %i.hm = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.az
  %i.hn = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128
  %i.ho = phi i64 [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128 ]
  %i.hp = icmp ugt i64 %i.hj, %i.ho
  br i1 %i.hp, label %bb.ba, label %.thread171

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.hi, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i127 = load ptr, ptr %4, align 8, !tbaa !23
  br label %.thread171

.thread171:                                       ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126
  %i.hq = phi ptr [ %.pre.i127, %bb.ba ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i126 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hi
  store i8 %i.hh, ptr %i.hr, align 1, !tbaa !26
  store i64 %i.hj, ptr %i.h, align 8, !tbaa !24
  %i.hs = load ptr, ptr %4, align 8, !tbaa !23
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hj
  store i8 0, ptr %i.ht, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bg

bb.bb:                                            ; preds = %bb.ay
  call void @_ZN4lldb7SBError14SetErrorStringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.critedge57

bb.bc:                                            ; preds = %bb.au
  %i.hu = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.hv = add i64 %i.hu, 1                        ; 3 uses
  %i.hw = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.j
  br i1 %i.hx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133: ; preds = %bb.bc
  %i.hy = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.bc
  %i.hz = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133
  %i.ia = phi i64 [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i133 ]
  %i.ib = icmp ugt i64 %i.hv, %i.ia
  br i1 %i.ib, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit134

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.hu, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i132 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit134: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131, %bb.bd
  %i.ic = phi ptr [ %.pre.i132, %bb.bd ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i131 ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hu
  store i8 120, ptr %i.id, align 1, !tbaa !26
  store i64 %i.hv, ptr %i.h, align 8, !tbaa !24
  %i.ie = load ptr, ptr %4, align 8, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hv
  store i8 0, ptr %i.if, align 1, !tbaa !26
  br label %bb.bg

bb.be:                                            ; preds = %bb.m
  %i.ig = load i64, ptr %i.h, align 8, !tbaa !24  ; 4 uses
  %i.ih = add i64 %i.ig, 1                        ; 3 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.j
  br i1 %i.ij, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138: ; preds = %bb.be
  %i.ik = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.ik)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.be
  %i.il = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138
  %i.im = phi i64 [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138 ]
  %i.in = icmp ugt i64 %i.ih, %i.im
  br i1 %i.in, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit139

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ig, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i137 = load ptr, ptr %4, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136, %bb.bf
  %i.io = phi ptr [ %.pre.i137, %bb.bf ], [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig
end_hunk_0
