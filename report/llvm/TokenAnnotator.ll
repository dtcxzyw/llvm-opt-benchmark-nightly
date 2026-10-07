Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TokenAnnotator?download=true
inline.NumInlined: 3440
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6format12_GLOBAL__N_116AnnotatingParser26parseTableGenDAGArgAndListEPNS0_11FormatTokenE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 9 uses
  %i.d = tail call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser19parseTableGenDAGArgEb(ptr noundef nonnull align 8 dereferenceable(1804) %0, i1 noundef zeroext false)
  br i1 %i.d, label %bb.b, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1040
  %i.h = load i8, ptr %i.g, align 8, !tbaa !353
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1016 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !658  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !658  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit.thread32, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp ne i16 %i.o, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 67
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp slt i8 %i.r, -126
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !62
  %i.x = icmp eq i16 %i.w, 63
  br i1 %i.x, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !284, !noalias !659 ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !660, !alias.scope !659
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !376, !alias.scope !659
  store i8 0, ptr %i.aa, align 8, !tbaa !331, !alias.scope !659
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !283, !noalias !659 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !660, !alias.scope !659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !659
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !66, !noalias !659
  %i.af = icmp ugt i64 %i.ad, 15
  br i1 %i.af, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !375, !alias.scope !659
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !66, !noalias !659
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !331, !alias.scope !659
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ag, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %i.ad, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = load i8, ptr %i.z, align 1, !tbaa !331
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !331
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !66, !noalias !659 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !376, !alias.scope !659
  %i.am = load ptr, ptr %3, align 8, !tbaa !375, !alias.scope !659
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !659
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !658
  %.pre3.i = load ptr, ptr %i.k, align 8, !tbaa !658
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.h
  %i.ao = phi ptr [ %i.l, %bb.h ], [ %.pre3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i ]
  %i.ap = phi ptr [ %i.j, %bb.h ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i ]
  %i.aq = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.ap, ptr %i.ao, ptr nonnull align 8 dereferenceable(32) %3)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !658
  %.not37 = icmp eq ptr %i.aq, %i.ar
  %i.as = load ptr, ptr %3, align 8, !tbaa !375   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !331
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not37, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit.thread32

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit.thread32: ; preds = %bb.c, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load i32, ptr %i.ax, align 8
  %i.bc = icmp eq i32 %i.bb, 1
  %or.cond.i10 = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond.i10, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit.thread32
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 -118, ptr %i.bd, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit: ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit.thread32, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 67 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !261
  %i.bg = icmp slt i8 %i.bf, -126
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !266 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 296
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !267, !range !225, !noundef !122
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i32, ptr %i.bk, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  %or.cond.i11 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond.i11, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  store i8 -116, ptr %i.bq, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12

bb.p:                                             ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !62
  %i.bt = icmp eq i16 %i.bs, 5
  br i1 %i.bt, label %bb.q, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1040
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !353
  %i.bx = icmp eq i8 %i.bw, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !267, !range !225, !noundef !122
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i32, ptr %i.by, align 8
  %i.cd = icmp eq i32 %i.cc, 1
  %or.cond.i13 = select i1 %i.cb, i1 %i.cd, i1 false ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond.i13, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 -116, ptr %i.be, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12

bb.t:                                             ; preds = %bb.q
  br i1 %or.cond.i13, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 -117, ptr %i.be, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12: ; preds = %bb.f, %bb.e, %bb.d, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit, %bb.p, %bb.b
  %.0 = phi i1 [ true, %bb.u ], [ true, %bb.o ], [ true, %bb.s ], [ true, %bb.p ], [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser32isTableGenDAGArgBreakingOperatorERKNS0_11FormatTokenE.exit ], [ false, %bb.b ], [ true, %bb.n ], [ true, %bb.r ], [ true, %bb.t ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.val8.i = load i32, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.cf = zext i32 %.val8.i to i64
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %.val7.i, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !251
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -48
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !252, !range !225, !noundef !122
  store i16 22, ptr %2, align 8, !tbaa !250
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !251
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.ck, ptr %i.cm, align 8, !tbaa !252
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.cn, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cp, align 8, !tbaa !253
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.cr, align 4, !tbaa !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cq, i8 0, i64 9, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !227
  %.not.i.i30 = icmp ult i32 %.val8.i, %i.ct
  br i1 %.not.i.i30, label %bb.w, label %bb.v, !prof !255

bb.v:                                             ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang6format12_GLOBAL__N_116AnnotatingParser7ContextELb1EE15growAndPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(1804) %0, ptr noundef nonnull readonly align 8 dereferenceable(56) %2)
  %.val10.i.pre = load i32, ptr %i.ce, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit

bb.w:                                             ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.cu = load i32, ptr %i.ce, align 8, !tbaa !21
  %i.cv = add i32 %i.cu, 1                        ; 2 uses
  store i32 %i.cv, ptr %i.ce, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit: ; preds = %bb.v, %bb.w
  %.val10.i = phi i32 [ %.val10.i.pre, %bb.v ], [ %i.cv, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.cw = zext i32 %.val10.i to i64
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -9
  store i8 1, ptr %i.cy, align 1, !tbaa !402
  br i1 %.0, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us: ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us
  %.0.i17.us = phi i1 [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us ], [ true, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit ]
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !240 ; 7 uses
  %.not.i18.us = icmp eq ptr %i.cz, null
  br i1 %.not.i18.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us
  br i1 %.0.i17.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i16, ptr %i.da, align 8, !tbaa !62
  %i.dc = icmp eq i16 %i.db, 67
  br i1 %i.dc, label %bb.z, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 256
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 296
  %i.df = load i8, ptr %i.de, align 8, !tbaa !267, !range !225, !noundef !122
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load i32, ptr %i.dd, align 8
  %i.di = icmp eq i32 %i.dh, 1
  %or.cond.i28.us = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond.i28.us, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 67
  store i8 -120, ptr %i.dj, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us: ; preds = %bb.aa, %bb.z
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not1.i24.us = icmp eq ptr %i.dk, null
  br i1 %.not1.i24.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us, label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us, %bb.ab
  %i.dl = phi ptr [ %i.dp, %bb.ab ], [ %i.dk, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i16, ptr %i.dm, align 8, !tbaa !62
  %i.do = icmp eq i16 %i.dn, 4
  br i1 %i.do, label %bb.ab, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us

bb.ab:                                            ; preds = %.lr.ph.i25.us
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not.i26.us = icmp eq ptr %i.dp, null
  br i1 %.not.i26.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us, label %.lr.ph.i25.us, !llvm.loop !9

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us: ; preds = %.lr.ph.i25.us, %bb.y, %bb.x
  %i.dq = phi ptr [ %i.cz, %bb.x ], [ %i.cz, %bb.y ], [ %i.dl, %.lr.ph.i25.us ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !62
  %i.dt = icmp eq i16 %i.ds, 23
  br i1 %i.dt, label %.split.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us: ; preds = %bb.ab, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29.us
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 75
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !661, !range !225, !noundef !122
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser19parseTableGenDAGArgEb(ptr noundef nonnull align 8 dereferenceable(1804) %0, i1 noundef zeroext %i.dx), !inline_history !656
  br i1 %i.dy, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, !llvm.loop !657

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split: ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread
  %.0.i17 = phi i1 [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread ], [ true, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit ]
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !240 ; 7 uses
  %.not.i18 = icmp eq ptr %i.dz, null
  br i1 %.not.i18, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split
  br i1 %.0.i17, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i16, ptr %i.ea, align 8, !tbaa !62
  %i.ec = icmp eq i16 %i.eb, 67
  br i1 %i.ec, label %bb.ae, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 296
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !267, !range !225, !noundef !122
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load i32, ptr %i.ed, align 8
  %i.ei = icmp eq i32 %i.eh, 1
  %or.cond.i28 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond.i28, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 67
  store i8 -121, ptr %i.ej, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29: ; preds = %bb.ae, %bb.af
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not1.i24 = icmp eq ptr %i.ek, null
  br i1 %.not1.i24, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29, %bb.ag
  %i.el = phi ptr [ %i.ep, %bb.ag ], [ %i.ek, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i16, ptr %i.em, align 8, !tbaa !62
  %i.eo = icmp eq i16 %i.en, 4
  br i1 %i.eo, label %bb.ag, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35

bb.ag:                                            ; preds = %.lr.ph.i25
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ep, null
  br i1 %.not.i26, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread, label %.lr.ph.i25, !llvm.loop !9

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35: ; preds = %.lr.ph.i25, %bb.ad, %bb.ac
  %i.eq = phi ptr [ %i.dz, %bb.ac ], [ %i.dz, %bb.ad ], [ %i.el, %.lr.ph.i25 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i16, ptr %i.er, align 8, !tbaa !62
  %i.et = icmp eq i16 %i.es, 23
  br i1 %i.et, label %.split.us, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread

.split.us:                                        ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us
  %.us-phi = phi ptr [ %i.dq, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35.us ], [ %i.eq, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35 ] ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.us-phi, i64 256
  %i.ev = getelementptr inbounds nuw i8, ptr %.us-phi, i64 296
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !267, !range !225, !noundef !122
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load i32, ptr %i.eu, align 8
  %i.ez = icmp eq i32 %i.ey, 1
  %or.cond.i22 = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond.i22, label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23, label %bb.ah

bb.ah:                                            ; preds = %.split.us
  %i.fa = getelementptr inbounds nuw i8, ptr %.us-phi, i64 67
  store i8 -124, ptr %i.fa, align 1, !tbaa !261
  br label %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23

_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23: ; preds = %.split.us, %bb.ah
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.us-phi, ptr %i.fb, align 8, !tbaa !262
  %i.fc = getelementptr inbounds nuw i8, ptr %.us-phi, i64 200
  store ptr %1, ptr %i.fc, align 8, !tbaa !262
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not1.i = icmp eq ptr %i.fd, null
  br i1 %.not1.i, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23, %bb.ai
  %i.fe = phi ptr [ %i.fi, %bb.ai ], [ %i.fd, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i16, ptr %i.ff, align 8, !tbaa !62
  %i.fh = icmp eq i16 %i.fg, 4
  br i1 %i.fh, label %bb.ai, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit

bb.ai:                                            ; preds = %.lr.ph.i
  call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !240 ; 2 uses
  %.not.i21 = icmp eq ptr %i.fi, null
  br i1 %.not.i21, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread: ; preds = %bb.ag, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit29, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread35
  %i.fj = call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser19parseTableGenDAGArgEb(ptr noundef nonnull align 8 dereferenceable(1804) %0, i1 noundef zeroext false), !inline_history !656
  br i1 %i.fj, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit, !llvm.loop !657

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit: ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us, %bb.ai, %.lr.ph.i, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23
  %.06.i = phi i1 [ true, %_ZN5clang6format11FormatToken7setTypeENS0_9TokenTypeE.exit23 ], [ true, %bb.ai ], [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread.us ], [ true, %.lr.ph.i ], [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split.us ], [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorC2ERS2_NS_3tok9TokenKindEj.exit.split ], [ false, %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit27.thread ] ; 2 uses
  %i.fk = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !122, !align !123
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 37
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !307
  %.not.i19 = icmp eq i8 %i.fm, 2
  br i1 %.not.i19, label %._crit_edge.i, label %bb.aj

._crit_edge.i:                                    ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit
  %.pre.i20 = load i32, ptr %i.ce, align 8, !tbaa !21
  br label %bb.al

bb.aj:                                            ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser23parseTableGenDAGArgListEPNS0_11FormatTokenEb.exit
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !20 ; 2 uses
  %.val3.i = load i32, ptr %i.ce, align 8, !tbaa !21 ; 3 uses
  %i.fn = zext i32 %.val3.i to i64
  %i.fo = getelementptr inbounds nuw [56 x i8], ptr %.val2.i, i64 %i.fn
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !254
  %i.fr = icmp eq i32 %i.fq, 4
  br i1 %i.fr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fs = add i32 %.val3.i, -1                    ; 2 uses
  store i32 %i.fs, ptr %i.ce, align 8, !tbaa !21
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %.val2.i, i64 %i.ft
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4
  store i32 4, ptr %i.fv, align 4, !tbaa !254
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit

bb.al:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.fw = phi i32 [ %.pre.i20, %._crit_edge.i ], [ %.val3.i, %bb.aj ]
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr %i.ce, align 8, !tbaa !21
  br label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20ScopedContextCreatorD2Ev.exit: ; preds = %bb.al, %bb.ak, %bb.a
  %.09 = phi i1 [ false, %bb.a ], [ %.06.i, %bb.ak ], [ %.06.i, %bb.al ]
  ret i1 %.09
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser18parseTableGenValueEb(ptr noundef nonnull align 8 dereferenceable(1804) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !62
  %i.e = icmp eq i16 %i.d, 4
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !62
  %i.i = icmp eq i16 %i.h, 4
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !662

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa62 = phi ptr [ %i.b, %.preheader ], [ %i.f, %.lr.ph ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa62, i64 16 ; 2 uses
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not1.i41 = icmp eq ptr %i.k, null
  br i1 %.not1.i41, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit44, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %._crit_edge, %bb.b
  %i.l = phi ptr [ %i.p, %bb.b ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i16, ptr %i.m, align 8, !tbaa !62
  %i.o = icmp eq i16 %i.n, 4
  br i1 %i.o, label %bb.b, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit44

bb.b:                                             ; preds = %.lr.ph.i42
  tail call fastcc void @_ZN5clang6format12_GLOBAL__N_116AnnotatingParser4nextEv(ptr noundef nonnull align 8 dereferenceable(1804) %0)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.not.i43 = icmp eq ptr %i.p, null
  br i1 %.not.i43, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit44, label %.lr.ph.i42, !llvm.loop !9

_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit44: ; preds = %.lr.ph.i42, %bb.b, %._crit_edge
  %i.q = phi ptr [ null, %._crit_edge ], [ null, %bb.b ], [ %i.l, %.lr.ph.i42 ] ; 12 uses
  %i.r = load i16, ptr %i.j, align 8, !tbaa !62   ; 4 uses
  %i.s = icmp eq i16 %i.r, 7
  br i1 %i.s, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48, label %bb.c

bb.c:                                             ; preds = %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser20skipToNextNonCommentEv.exit44
  %i.t = icmp eq i16 %i.r, 14
  %i.u = getelementptr i8, ptr %.lcssa62, i64 67  ; 3 uses
  %i.v = load i8, ptr %i.u, align 1               ; 3 uses
  %i.w = icmp eq i8 %i.v, -113
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i16 %i.r, label %bb.s [
    i16 152, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48
    i16 138, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48
    i16 93, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48
    i16 62, label %_ZN5clang6format12_GLOBAL__N_116AnnotatingParser24parseTableGenSimpleValueEv.exit.thread48
    i16 24, label %bb.e
    i16 20, label %bb.k
    i16 22, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !398, !nonnull !122, !align !123 ; 4 uses
  switch i8 %i.v, label %bb.h [
    i8 17, label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40
    i8 123, label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40
    i8 -99, label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40
    i8 46, label %bb.f
    i8 20, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40

bb.g:                                             ; preds = %bb.e
  br label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40

bb.h:                                             ; preds = %bb.e
  br label %_ZNK5clang6format12_GLOBAL__N_116AnnotatingParser12getScopeTypeERKNS0_11FormatTokenE.exit40
end_hunk_0
