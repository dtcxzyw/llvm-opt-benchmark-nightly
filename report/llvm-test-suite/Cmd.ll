Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Cmd?download=true
inline.NumInlined: 4253
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.i, ptr %i.a, align 8, !tbaa !69
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !55
  %i.l = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.l, ptr %i.f, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !25
  store i8 %i.n, ptr %i.m, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.b, align 8, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare void @_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIiSaIiEERS7_IS6_SaIS6_EEiiS6_PSt5dequeIS6_SB_ERNS1_18basic_stringstreamIcS4_S5_EERi(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP3Cmd17evaluate_variableEiRiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::_Deque_iterator.10", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.13", align 8   ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.PP::Word", align 8         ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.ei, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.o = sext i32 %1 to i64                       ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72, !noalias !855 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !855
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !855 ; 3 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 7
  %i.z = add nsw i64 %i.y, %i.o                   ; 7 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.c, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread404

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp samesign ult i64 %i.z, 4
  br i1 %i.ab, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.c
  %i.ac = lshr i64 %i.z, 2                        ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60, !noalias !855
  %i.af = and i64 %i.z, 3
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !79
  %i.aj = icmp eq i32 %i.ai, 13
  br i1 %i.aj, label %bb.e, label %bb.ei

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread404: ; preds = %bb.b
  %i.ak = ashr i64 %i.z, 2                        ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60, !noalias !855
  %i.an = and i64 %i.z, 3
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !79
  %i.ar = icmp eq i32 %i.aq, 13
  br i1 %i.ar, label %bb.e, label %bb.ei

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread:   ; preds = %bb.c
  %i.as = getelementptr inbounds [128 x i8], ptr %i.q, i64 %i.o ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !79
  %i.av = icmp eq i32 %i.au, 13
  br i1 %i.av, label %bb.d, label %bb.ei

bb.d:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread404, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.aw = phi i64 [ %i.ac, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ], [ %i.ak, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread404 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60, !noalias !856
  %i.az = shl nsw i64 %i.aw, 2
  %i.ba = sub nsw i64 %i.z, %i.az
  %i.bb = getelementptr inbounds [128 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140:       ; preds = %bb.d, %bb.e
  %storemerge.i.i.i.i139 = phi ptr [ %i.bb, %bb.e ], [ %i.as, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !21, !alias.scope !857
  %i.bd = load ptr, ptr %storemerge.i.i.i.i139, align 8, !tbaa !55, !noalias !857 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i139, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24, !noalias !857 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22, !noalias !857
  store i64 %i.bf, ptr %i.j, align 8, !tbaa !69, !noalias !857
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) ; 2 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !55, !alias.scope !857
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !69, !noalias !857
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !25, !alias.scope !857
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140
  %i.bj = phi ptr [ %i.bh, %.noexc.i.i ], [ %i.bc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit140 ] ; 2 uses
  switch i64 %i.bf, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !25
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !25
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !69, !noalias !857 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !24, !alias.scope !857
  %i.bn = load ptr, ptr %8, align 8, !tbaa !55, !alias.scope !857
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22, !noalias !857
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !66  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !134 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  %i.bt = load i64, ptr %i.bm, align 8, !tbaa !24 ; 4 uses
  %i.bu = load ptr, ptr %8, align 8               ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bw) ; 2 uses
  %i.bx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55
  %i.ca = call i32 @memcmp(ptr noundef %i.bz, ptr noundef %i.bu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.cb = sub i64 %i.bw, %i.bt
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ca, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cc = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !135 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.h, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cd = icmp eq ptr %.19.i.i.i, %i.bs
  br i1 %i.cd, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !24 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.bt) ; 2 uses
  %i.cg = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55
  %i.cj = call i32 @memcmp(ptr noundef %i.bu, ptr noundef %i.ci, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.ck = sub i64 %i.bt, %i.cf
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ck, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cl = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cl, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.preheader424

.preheader424:                                    ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.cm = load i32, ptr %3, align 4, !tbaa !17    ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader424
  %i.co = add nsw i32 %1, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cs = sext i32 %i.co to i64
  br label %.outer592

.outer592:                                        ; preds = %.thread, %.lr.ph
  %.ph593 = phi i32 [ %.pre, %.thread ], [ %i.cm, %.lr.ph ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %indvars.iv.next582, %.thread ], [ 0, %.lr.ph ]
  %.086459.ph = phi i1 [ false, %.thread ], [ true, %.lr.ph ]
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !72, !noalias !858 ; 3 uses
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !858
  %i.cv = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !858 ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 7
  %i.da = sext i32 %.ph593 to i64
  br label %bb.ad

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.db = load ptr, ptr %i.p, align 8, !tbaa !72, !noalias !859 ; 2 uses
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !859
  %i.dd = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !859
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 7
  %i.di = add nsw i64 %i.dh, %i.o                 ; 5 uses
  %i.dj = icmp sgt i64 %i.di, -1
  br i1 %i.dj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.dk = icmp samesign ult i64 %i.di, 4
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds [128 x i8], ptr %i.db, i64 %i.o
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit142

bb.l:                                             ; preds = %bb.j
  %i.dm = lshr i64 %i.di, 2
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.dn = ashr i64 %i.di, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.do = phi i64 [ %i.dm, %bb.l ], [ %i.dn, %bb.m ] ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !60, !noalias !859
  %i.dr = shl nsw i64 %i.do, 2
  %i.ds = sub nsw i64 %i.di, %i.dr
  %i.dt = getelementptr inbounds [128 x i8], ptr %i.dq, i64 %i.ds
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit142

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit142:       ; preds = %bb.k, %bb.n
  %storemerge.i.i.i.i141 = phi ptr [ %i.dt, %bb.n ], [ %i.dl, %bb.k ]
  invoke void @_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i141, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.o unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit142
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.83, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !84
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i298 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i298, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !105
  %.not.i1.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
          to label %.noexc300 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc300:                                        ; preds = %bb.q
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !84
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.eb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc300, %bb.p
  %.0.i.i.i = phi i8 [ %i.ef, %bb.p ], [ %i.ej, %.noexc300 ]
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i8 noundef signext %.0.i.i.i)
          to label %.noexc302 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc302:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc302
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.78, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.en = load ptr, ptr %8, align 8, !tbaa !55
  %i.eo = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.en, i64 noundef %i.eo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !84
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 240
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i304 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i304, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i305

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i305: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !105
  %.not.i1.i.i306 = icmp eq i8 %i.ex, 0
  br i1 %.not.i1.i.i306, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i305
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 67
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i307

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i305
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ev)
          to label %.noexc310 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc310:                                        ; preds = %bb.s
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !84
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef signext i8 %i.fc(ptr noundef nonnull align 8 dereferenceable(570) %i.ev, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i307 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i307: ; preds = %.noexc310, %bb.r
  %.0.i.i.i308 = phi i8 [ %i.ez, %bb.r ], [ %i.fd, %.noexc310 ]
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, i8 noundef signext %.0.i.i.i308)
          to label %.noexc312 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc312:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i307
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_ZNSolsEPFRSoS_E.exit144 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit144:                         ; preds = %.noexc312
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.84, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZNSolsEPFRSoS_E.exit144
  %i.fh = load ptr, ptr %i.du, align 8, !tbaa !84
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.du, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i315 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i315, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i316

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i316: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !105
  %.not.i1.i.i317 = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i317, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i316
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 67
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i318

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i316
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
          to label %.noexc321 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc321:                                        ; preds = %bb.u
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !84
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd17evaluate_variableEiRiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sj, ptr align 4 %i.ry, i64 %i.sb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.cc, %.noexc212
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.sn = load ptr, ptr %i.qv, align 8, !tbaa !121
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = sub i64 %i.so, %i.sa
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sp) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.sj, ptr %12, align 8, !tbaa !120
  store ptr %i.sm, ptr %i.qu, align 8, !tbaa !119
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.sh
  store ptr %i.sq, ptr %i.qv, align 8, !tbaa !121
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bz
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %i.sr = load i32, ptr %3, align 4, !tbaa !17    ; 2 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = icmp slt i64 %indvars.iv.next488, %i.ss
  br i1 %i.st, label %bb.bs, label %._crit_edge469, !llvm.loop !844

.loopexit.split-lp410.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit209, %bb.cb
  %lpad.loopexit.split-lp714 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp410

bb.ce:                                            ; preds = %._crit_edge469
  %i.su = call noundef i64 @_ZNKSt5dequeIN2PP4WordESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #22
  %i.sv = trunc i64 %i.su to i32
  %i.sw = icmp slt i32 %i.qy, %i.sv
  br i1 %i.sw, label %bb.cf, label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.sx = sext i32 %i.qy to i64
  %i.sy = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt5dequeIN2PP4WordESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef %i.sx) #22
  invoke void @_ZN2PP4Word10get_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.sy)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.sz = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.75)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ta = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.76)
          to label %bb.ck unwind label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.cj
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !25
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.th) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.ck:                                            ; preds = %bb.ch
  %spec.select = zext i1 %i.sz to i32
  %spec.select138 = select i1 %i.ta, i32 -1, i32 %spec.select
  %i.ti = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ck
  %i.tl = load i64, ptr %i.tj, align 8, !tbaa !25
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.ci
  %.pn = phi { ptr, i32 } [ %i.tb, %bb.ci ], [ %i.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %i.tc, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.loopexit.split-lp410

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.ce, %._crit_edge469
  %.2 = phi i32 [ %spec.select138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ 0, %bb.ce ], [ 0, %._crit_edge469 ] ; 2 uses
  %i.tn = load ptr, ptr %i.p, align 8, !tbaa !72, !noalias !868 ; 2 uses
  %i.to = load ptr, ptr %i.r, align 8, !tbaa !73, !noalias !868
  %i.tp = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !868 ; 2 uses
  %i.tq = ptrtoint ptr %i.tn to i64
  %i.tr = ptrtoint ptr %i.to to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = ashr exact i64 %i.ts, 7
  %i.tu = add nsw i64 %i.tt, %i.o                 ; 6 uses
  %i.tv = icmp sgt i64 %i.tu, -1
  br i1 %i.tv, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.tw = icmp samesign ult i64 %i.tu, 4
  br i1 %i.tw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.tx = getelementptr inbounds [128 x i8], ptr %i.tn, i64 %i.o ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 80
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !126
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 84
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224

bb.co:                                            ; preds = %bb.cm
  %i.uc = lshr i64 %i.tu, 2
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.ud = ashr i64 %i.tu, 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sink = phi i64 [ %i.ud, %bb.cp ], [ %i.uc, %bb.co ] ; 3 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %.sink
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !60, !noalias !868
  %i.ug = and i64 %i.tu, 3
  %i.uh = getelementptr inbounds nuw [128 x i8], ptr %i.uf, i64 %i.ug ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 80
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !126
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 84
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.um = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %.sink
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !60, !noalias !869
  %i.uo = shl nsw i64 %.sink, 2
  %i.up = sub nsw i64 %i.tu, %i.uo
  %i.uq = getelementptr inbounds [128 x i8], ptr %i.un, i64 %i.up
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224:       ; preds = %bb.cn, %bb.cq
  %i.ur = phi i32 [ %i.ul, %bb.cq ], [ %i.ub, %bb.cn ] ; 3 uses
  %i.us = phi i32 [ %i.uj, %bb.cq ], [ %i.tz, %bb.cn ] ; 3 uses
  %storemerge.i.i.i.i223 = phi ptr [ %i.uq, %bb.cq ], [ %i.tx, %bb.cn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.ut = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i223, i64 88
  %i.uu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.uu, ptr %14, align 8, !tbaa !21, !alias.scope !870
  %i.uv = load ptr, ptr %i.ut, align 8, !tbaa !55, !noalias !870 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i223, i64 96
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !24, !noalias !870 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !870
  store i64 %i.ux, ptr %i.f, align 8, !tbaa !69, !noalias !870
  %i.uy = icmp ugt i64 %i.ux, 15
  br i1 %i.uy, label %.noexc.i.i226, label %._crit_edge.i.i.i225

.noexc.i.i226:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224
  %i.uz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc227 unwind label %bb.dg ; 2 uses

.noexc227:                                        ; preds = %.noexc.i.i226
  store ptr %i.uz, ptr %14, align 8, !tbaa !55, !alias.scope !870
  %i.va = load i64, ptr %i.f, align 8, !tbaa !69, !noalias !870
  store i64 %i.va, ptr %i.uu, align 8, !tbaa !25, !alias.scope !870
  br label %._crit_edge.i.i.i225

._crit_edge.i.i.i225:                             ; preds = %.noexc227, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224
  %i.vb = phi ptr [ %i.uz, %.noexc227 ], [ %i.uu, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit224 ] ; 2 uses
  switch i64 %i.ux, label %bb.cs [
    i64 1, label %bb.cr
    i64 0, label %bb.ct
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i225
  %i.vc = load i8, ptr %i.uv, align 1, !tbaa !25
  store i8 %i.vc, ptr %i.vb, align 1, !tbaa !25
  br label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.i.i.i225
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vb, ptr align 1 %i.uv, i64 %i.ux, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i225
  %i.vd = load i64, ptr %i.f, align 8, !tbaa !69, !noalias !870 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.vd, ptr %i.ve, align 8, !tbaa !24, !alias.scope !870
  %i.vf = load ptr, ptr %14, align 8, !tbaa !55, !alias.scope !870
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vd
  store i8 0, ptr %i.vg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !870
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.vh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.vi, ptr %16, align 8, !tbaa !21
  %i.vj = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.vk = load i64, ptr %i.bm, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.vk, ptr %i.e, align 8, !tbaa !69
  %i.vl = icmp ugt i64 %i.vk, 15
  br i1 %i.vl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ct
  %i.vm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc228 unwind label %bb.dh ; 2 uses

.noexc228:                                        ; preds = %.noexc.i
  store ptr %i.vm, ptr %16, align 8, !tbaa !55
  %i.vn = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.vn, ptr %i.vi, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc228, %bb.ct
  %i.vo = phi ptr [ %i.vm, %.noexc228 ], [ %i.vi, %bb.ct ] ; 2 uses
  switch i64 %i.vk, label %bb.cv [
    i64 1, label %bb.cu
    i64 0, label %bb.cw
  ]

bb.cu:                                            ; preds = %._crit_edge.i.i
  %i.vp = load i8, ptr %i.vj, align 1, !tbaa !25
  store i8 %i.vp, ptr %i.vo, align 1, !tbaa !25
  br label %bb.cw

bb.cv:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vo, ptr align 1 %i.vj, i64 %i.vk, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %._crit_edge.i.i
  %i.vq = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.vq, ptr %i.vr, align 8, !tbaa !24
  %i.vs = load ptr, ptr %16, align 8, !tbaa !55
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vq
  store i8 0, ptr %i.vt, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.vu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.vu, ptr %17, align 8, !tbaa !21
  %i.vv = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.vw = load i64, ptr %i.ve, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.vw, ptr %i.d, align 8, !tbaa !69
  %i.vx = icmp ugt i64 %i.vw, 15
  br i1 %i.vx, label %.noexc.i230, label %._crit_edge.i.i229

.noexc.i230:                                      ; preds = %bb.cw
  %i.vy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc231 unwind label %bb.di ; 2 uses

.noexc231:                                        ; preds = %.noexc.i230
  store ptr %i.vy, ptr %17, align 8, !tbaa !55
  %i.vz = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.vz, ptr %i.vu, align 8, !tbaa !25
  br label %._crit_edge.i.i229

._crit_edge.i.i229:                               ; preds = %.noexc231, %bb.cw
  %i.wa = phi ptr [ %i.vy, %.noexc231 ], [ %i.vu, %bb.cw ] ; 2 uses
  switch i64 %i.vw, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i229
  %i.wb = load i8, ptr %i.vv, align 1, !tbaa !25
  store i8 %i.wb, ptr %i.wa, align 1, !tbaa !25
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wa, ptr align 1 %i.vv, i64 %i.vw, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i229
  %i.wc = load i64, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !24
  %i.we = load ptr, ptr %17, align 8, !tbaa !55
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wc
  store i8 0, ptr %i.wf, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !68
  invoke void @_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(136) %i.vh, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %16, i32 noundef %i.us, i32 noundef %i.ur, ptr noundef nonnull %17, ptr noundef %i.wh, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.da unwind label %bb.dj

bb.da:                                            ; preds = %bb.cz
  %i.wi = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.vu
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.da
  %i.wk = load i64, ptr %i.vu, align 8, !tbaa !25
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  %i.wm = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.vi
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.wo = load i64, ptr %i.vi, align 8, !tbaa !25
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  %.not = icmp eq i32 %.2, 0                      ; 2 uses
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.wq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.wq, ptr %18, align 8, !tbaa !21
  %i.wr = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.ws = load i64, ptr %i.ve, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.ws, ptr %i.c, align 8, !tbaa !69
  %i.wt = icmp ugt i64 %i.ws, 15
  br i1 %i.wt, label %.noexc.i240, label %._crit_edge.i.i239

.noexc.i240:                                      ; preds = %bb.db
  %i.wu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc241 unwind label %bb.dk ; 2 uses

.noexc241:                                        ; preds = %.noexc.i240
  store ptr %i.wu, ptr %18, align 8, !tbaa !55
  %i.wv = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.wv, ptr %i.wq, align 8, !tbaa !25
  br label %._crit_edge.i.i239

._crit_edge.i.i239:                               ; preds = %.noexc241, %bb.db
  %i.ww = phi ptr [ %i.wu, %.noexc241 ], [ %i.wq, %bb.db ] ; 2 uses
  switch i64 %i.ws, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i239
  %i.wx = load i8, ptr %i.wr, align 1, !tbaa !25
  store i8 %i.wx, ptr %i.ww, align 1, !tbaa !25
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i239
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ww, ptr align 1 %i.wr, i64 %i.ws, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i239
  %i.wy = load i64, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !24
  %i.xa = load ptr, ptr %18, align 8, !tbaa !55
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.wy
  store i8 0, ptr %i.xb, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.xc = load ptr, ptr %i.wg, align 8, !tbaa !68
  invoke void @_ZN2PP8Variable8bump_varERSt6vectorIiSaIiEEiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136) %i.vh, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %.2, i32 noundef %i.us, i32 noundef %i.ur, ptr noundef nonnull %18, ptr noundef %i.xc, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.df unwind label %bb.dl

bb.df:                                            ; preds = %bb.de
  %i.xd = load ptr, ptr %18, align 8, !tbaa !55   ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.wq
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.df
  %i.xf = load i64, ptr %i.wq, align 8, !tbaa !25
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.dg:                                            ; preds = %.noexc.i.i226
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.dh:                                            ; preds = %.noexc.i
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

bb.di:                                            ; preds = %.noexc.i230
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

bb.dj:                                            ; preds = %bb.cz
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xl = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.vu
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.dj
  %i.xn = load i64, ptr %i.vu, align 8, !tbaa !25
end_hunk_1
