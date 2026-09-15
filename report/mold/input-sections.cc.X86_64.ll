Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-sections.cc.X86_64?download=true
inline.NumInlined: 1857
inline.NumDeleted: 968
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4mold16MergeableSectionINS_6X86_64EE14split_contentsERNS_7ContextIS1_EE:bb.a
_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread: ; preds = %bb.a
  %i.aj = load ptr, ptr %0, align 8, !tbaa !458, !nonnull !38, !align !39 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %.0.copyload.i137 = load i64, ptr %i.ak, align 8
  %.0.copyload.i.fr138 = freeze i64 %.0.copyload.i137
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.0.copyload.i29139 = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i29139, 32
  %.not140 = icmp eq i64 %i.am, 0
  br i1 %.not140, label %bb.u, label %.loopexit

.preheader:                                       ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread
  %.not81.a = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not81.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.aq = icmp eq i64 %.0.copyload.i.fr, 1
  %i.ar = sub i64 %.sroa.0.0.i, %.0.copyload.i.fr ; 2 uses
  %i.as = ptrtoint ptr %i.f to i64
  %.pre96.a = load ptr, ptr %i.ao, align 8, !tbaa !459 ; 2 uses
  %.pre97.a = load ptr, ptr %i.ap, align 8, !tbaa !578 ; 2 uses
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.at = phi ptr [ %i.bs, %bb.h ], [ %.pre97.a, %.lr.ph ] ; 3 uses
  %i.au = phi ptr [ %i.bt, %bb.h ], [ %.pre96.a, %.lr.ph ] ; 3 uses
  %.076.us = phi i64 [ %i.aw, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.av = trunc nuw i64 %.076.us to i32           ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.us, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us
  %i.aw = add nuw i64 %i.by, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.0.0.i
  br i1 %i.ax, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !573

bb.i:                                             ; preds = %.lr.ph.split.us
  store i32 %i.av, ptr %i.au, align 4, !tbaa !435
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !434 ; 4 uses
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.j
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i.i.us = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.us)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #27 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i32 %i.av, ptr %i.bl, align 4, !tbaa !435
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.k:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.k, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %.not.i17.i.i.i.us = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !578
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bq) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.bk, ptr %i.an, align 8, !tbaa !434
  store ptr %i.bn, ptr %i.ao, align 8, !tbaa !459
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store ptr %i.br, ptr %i.ap, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.i
  %i.bs = phi ptr [ %i.br, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us ], [ %i.at, %bb.i ]
  %i.bt = phi ptr [ %i.bn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us ], [ %i.ay, %bb.i ]
  %i.bu = sub nuw nsw i64 %.sroa.0.0.i, %.076.us
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.076.us
  %i.bw = tail call ptr @memchr(ptr noundef nonnull %i.bv, i32 noundef 0, i64 noundef %i.bu) #15 ; 2 uses
  %.not.i.i31.us = icmp eq ptr %i.bw, null
  br i1 %.not.i.i31.us, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us

_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us: ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.as                    ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %bb.h

bb.m:                                             ; preds = %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit
  %i.ca = add i64 %.01023.i, %.0.copyload.i.fr    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.0.0.i
  br i1 %i.cb, label %.lr.ph.split, label %.loopexit, !llvm.loop !573

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.cc = phi ptr [ %i.cz, %bb.m ], [ %.pre97.a, %.lr.ph ] ; 3 uses
  %i.cd = phi ptr [ %i.da, %bb.m ], [ %.pre96.a, %.lr.ph ] ; 3 uses
  %.076 = phi i64 [ %i.ca, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.ce = trunc i64 %.076 to i32                  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !435
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  store ptr %i.cf, ptr %i.ao, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.o:                                             ; preds = %.lr.ph.split
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !434 ; 4 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775804
  br i1 %i.ck, label %.split.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

.split.us:                                        ; preds = %bb.o, %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.cl = ashr exact i64 %i.cj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 2305843009213693951)
  %i.cp = select i1 %i.cn, i64 2305843009213693951, i64 %i.co ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #27 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i32 %i.ce, ptr %i.cs, align 4, !tbaa !435
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.p, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.cv = load ptr, ptr %i.ap, align 8, !tbaa !578
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cx) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cr, ptr %i.an, align 8, !tbaa !434
  store ptr %i.cu, ptr %i.ao, align 8, !tbaa !459
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp ; 2 uses
  store ptr %i.cy, ptr %i.ap, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.cz = phi ptr [ %i.cc, %bb.n ], [ %i.cy, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.da = phi ptr [ %i.cf, %bb.n ], [ %i.cu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %.not22.i = icmp ugt i64 %.076, %i.ar
  br i1 %.not22.i, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.t
  %.01023.i = phi i64 [ %i.di, %bb.t ], [ %.076, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 7 uses
  %i.db = icmp ugt i64 %.01023.i, %.sroa.0.0.i
  br i1 %i.db, label %bb.r, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %.01023.i, i64 noundef %.sroa.0.0.i) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %.lr.ph.i
  %i.dc = sub nuw i64 %.sroa.0.0.i, %.01023.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %.0.copyload.i.fr) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 %.01023.i
  %.not17.i = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not17.i, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.s
  %.06.i.i = phi i64 [ %i.dh, %bb.s ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.06.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !57
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.dh = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dh, %.sroa.speculated.i.i
  br i1 %exitcond.not.i.i, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit, label %.lr.ph.i.i, !llvm.loop !574

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i: ; preds = %.lr.ph.i.i
  %5 = icmp eq i64 %.06.i.i, -1
  br i1 %5, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit, label %bb.t

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i
  %i.di = add nsw i64 %.01023.i, %.0.copyload.i.fr ; 2 uses
  %.not.i30 = icmp ugt i64 %i.di, %i.ar
  br i1 %.not.i30, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %.lr.ph.i, !llvm.loop !575

_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i, %bb.s
  %i.dj = icmp eq i64 %.01023.i, -1
  br i1 %i.dj, label %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread, label %bb.m

_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.thread: ; preds = %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.t, %_ZN4moldL9find_nullESt17basic_string_viewIcSt11char_traitsIcEEll.exit.us, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.dl = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(77) %i.dk)
  %i.dm = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA32_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.dl, ptr noundef nonnull align 1 dereferenceable(32) @.str.25) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #26
  unreachable

bb.u:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread
  %.0.copyload.i.fr144 = phi i64 [ %.0.copyload.i.fr138, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread ], [ %.0.copyload.i.fr, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread ] ; 3 uses
  %.sroa.0.0.i67141 = phi i64 [ 0, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread ], [ %.sroa.0.0.i, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread ] ; 4 uses
  %i.dn = urem i64 %.sroa.0.0.i67141, %.0.copyload.i.fr144
  %i.do = udiv i64 %.sroa.0.0.i67141, %.0.copyload.i.fr144 ; 3 uses
  %.not27 = icmp eq i64 %i.dn, 0
  br i1 %.not27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #15
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.dq = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(77) %i.dp)
  %i.dr = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA45_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.dq, ptr noundef nonnull align 1 dereferenceable(45) @.str.26) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #26
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !578 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !434 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2
  %i.ea = icmp ult i64 %i.dz, %i.do
  br i1 %i.ea, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !459
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.dx
  %i.ef = shl nuw nsw i64 %i.do, 2
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #27 ; 5 uses
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !434 ; 4 uses
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !459
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = icmp sgt i64 %i.el, 0
  br i1 %i.em, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eg, ptr align 4 %i.eh, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.x, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.eh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.en = load ptr, ptr %i.dt, align 8, !tbaa !578
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ep) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.eg, ptr %i.ds, align 8, !tbaa !434
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  store ptr %i.eq, ptr %i.eb, align 8, !tbaa !459
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.do ; 2 uses
  store ptr %i.er, ptr %i.dt, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.w, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.es = phi ptr [ %i.dv, %bb.w ], [ %i.eg, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.et = phi ptr [ %i.du, %bb.w ], [ %i.er, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %.not82.a = icmp eq i64 %.sroa.0.0.i67141, 0
  br i1 %.not82.a, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.pre98.a = load ptr, ptr %i.eu, align 8, !tbaa !459
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph78, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39
  %i.ev = phi ptr [ %i.es, %.lr.ph78 ], [ %i.fs, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39 ] ; 5 uses
  %i.ew = phi ptr [ %i.et, %.lr.ph78 ], [ %i.ft, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39 ] ; 3 uses
  %i.ex = phi ptr [ %.pre98.a, %.lr.ph78 ], [ %i.fu, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39 ] ; 3 uses
  %.02577 = phi i64 [ 0, %.lr.ph78 ], [ %i.fv, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39 ] ; 2 uses
  %i.ey = trunc nuw i64 %.02577 to i32            ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ex, %i.ew
  br i1 %.not.i.i32, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !435
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  store ptr %i.ez, ptr %i.eu, align 8, !tbaa !459
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39

bb.ab:                                            ; preds = %bb.z
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.fc = sub i64 %i.fa, %i.fb                    ; 5 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775804
  br i1 %i.fd, label %bb.ac, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i33

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i33: ; preds = %bb.ab
  %i.fe = ashr exact i64 %i.fc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i34, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 2305843009213693951)
  %i.fi = select i1 %i.fg, i64 2305843009213693951, i64 %i.fh ; 3 uses
  %.not.i.i.i.i35 = icmp ne i64 %i.fi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i35)
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #27 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fc ; 2 uses
  store i32 %i.ey, ptr %i.fl, align 4, !tbaa !435
  %i.fm = icmp sgt i64 %i.fc, 0
  br i1 %i.fm, label %bb.ad, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i36

bb.ad:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %i.ev, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i36

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i36: ; preds = %bb.ad, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %.not.i17.i.i.i37 = icmp eq ptr %i.ev, null
  br i1 %.not.i17.i.i.i37, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i36
  %i.fo = load ptr, ptr %i.dt, align 8, !tbaa !578
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fp, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fq) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38: ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i36
  store ptr %i.fk, ptr %i.ds, align 8, !tbaa !434
  store ptr %i.fn, ptr %i.eu, align 8, !tbaa !459
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi ; 2 uses
  store ptr %i.fr, ptr %i.dt, align 8, !tbaa !578
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39

_ZNSt6vectorIjSaIjEE9push_backEOj.exit39:         ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38
  %i.fs = phi ptr [ %i.ev, %bb.aa ], [ %i.fk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38 ]
  %i.ft = phi ptr [ %i.ew, %bb.aa ], [ %i.fr, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38 ]
  %i.fu = phi ptr [ %i.ez, %bb.aa ], [ %i.fn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i38 ]
  %i.fv = add nsw i64 %.02577, %.0.copyload.i.fr144 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %.sroa.0.0.i67141
  br i1 %i.fw, label %bb.z, label %.loopexit, !llvm.loop !576

.loopexit:                                        ; preds = %bb.m, %bb.h, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit39, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.thread.thread, %.preheader, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.fx = load ptr, ptr %0, align 8, !tbaa !458, !nonnull !38, !align !39
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.fz = call noundef nonnull align 1 dereferenceable(2048) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !459 ; 2 uses
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !434 ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 4 uses
  %i.gi = icmp ugt i64 %i.gh, 9223372036854775804
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #26
  unreachable

bb.ag:                                            ; preds = %.loopexit
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !578
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !434
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = icmp ult i64 %i.go, %i.gh
  br i1 %i.gp, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i40, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit44

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i40: ; preds = %bb.ag
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !459
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.gn
  %i.gu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #27 ; 4 uses
end_hunk_0
