Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InitHeaderSearch?download=true
inline.NumInlined: 997
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clang24ApplyHeaderSearchOptionsERNS_12HeaderSearchERKNS_19HeaderSearchOptionsERKNS_11LangOptionsERKN4llvm6TripleE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 5 uses
  store i8 %i.k, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq ptr %i.f, null
  %i.q = icmp ne i64 %i.h, 0
  %or.cond.i.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.h, ptr %i.c, align 8, !tbaa !31
  %i.r = icmp ugt i64 %i.h, 15
  br i1 %i.r, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #15 ; 2 uses
  store ptr %i.s, ptr %i.n, align 8, !tbaa !8
  %i.t = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.t, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.v = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 %i.u, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %i.f, i64 %i.h, i1 false)
  %i.y = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ac = load i8, ptr %i.f, align 1, !tbaa !32
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !32
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !14
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %lhsc.i = load i8, ptr %i.f, align 1
  %i.ah = icmp ne i8 %lhsc.i, 47
  %i.ai = zext i1 %i.ah to i8
  br label %_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit

_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i, %bb.e, %bb.f
  %i.aj = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i ], [ %i.ai, %bb.f ], [ 1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %19, i64 96
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 40                ; 2 uses
  %i.at = and i64 %i.as, 4294967295
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 33
  %i.ay = and i64 %i.as, 4294967295
  br label %bb.u

._crit_edge:                                      ; preds = %bb.x, %_ZN12_GLOBAL__N_116InitHeaderSearchC2ERN5clang12HeaderSearchEbN4llvm9StringRefE.exit
  %.val = load i64, ptr %2, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !38 ; 6 uses
  switch i32 %i.ba, label %bb.i [
    i32 19, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 2, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 25, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 39, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 3, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 4, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 17, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 34, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 7, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 41, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 10, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 11, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 12, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 23, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 24, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 18, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 42, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 13, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 14, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 35, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 36, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 37, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 38, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 15, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 16, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = and i32 %i.bc, -2
  %spec.select.i.i.i = icmp eq i32 %i.bd, 58
  br i1 %spec.select.i.i.i, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !47
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bi, 5
  %i.bk = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %_ZN12_GLOBAL__N_116InitHeaderSearch28ShouldAddDefaultIncludePathsERKN4llvm6TripleE.exit.i

bb.i:                                             ; preds = %._crit_edge
  %i.bl = and i32 %i.ba, -9
  %spec.select.i.i.i.i = icmp eq i32 %i.bl, 1
  br i1 %spec.select.i.i.i.i, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.ba, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i [
    i32 26, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 5, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 27, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 29, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 30, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
    i32 28, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
  ]

_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i:          ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !47
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = icmp eq i32 %i.ba, 47
  %i.bq = and i1 %i.bp, %i.bo
  br i1 %i.bq, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %_ZNK4llvm6Triple10isOSDarwinEv.exit._ZNK4llvm6Triple10isOSDarwinEv.exit.thread3_crit_edge.i.i

_ZNK4llvm6Triple10isOSDarwinEv.exit._ZNK4llvm6Triple10isOSDarwinEv.exit.thread3_crit_edge.i.i: ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  br label %_ZN12_GLOBAL__N_116InitHeaderSearch28ShouldAddDefaultIncludePathsERKN4llvm6TripleE.exit.i

_ZN12_GLOBAL__N_116InitHeaderSearch28ShouldAddDefaultIncludePathsERKN4llvm6TripleE.exit.i: ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit._ZNK4llvm6Triple10isOSDarwinEv.exit.thread3_crit_edge.i.i, %bb.h
  %i.br = phi i32 [ %.pre.i.i, %_ZNK4llvm6Triple10isOSDarwinEv.exit._ZNK4llvm6Triple10isOSDarwinEv.exit.thread3_crit_edge.i.i ], [ %i.bc, %bb.h ]
  %.not2.i = icmp eq i32 %i.br, 12
  br i1 %.not2.i, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_116InitHeaderSearch28ShouldAddDefaultIncludePathsERKN4llvm6TripleE.exit.i
  %i.bs = and i64 %.val, 34359742464
  %or.cond.i = icmp eq i64 %i.bs, 4096
  br i1 %or.cond.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bt = load i16, ptr %i.d, align 8
  %i.bu = and i16 %i.bt, 14
  %or.cond14.not.i = icmp eq i16 %i.bu, 14
  br i1 %or.cond14.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !48
  store ptr @.str.9, ptr %18, align 8, !tbaa !32
  store i8 3, ptr %i.bv, align 8, !tbaa !51
  call fastcc void @_ZN12_GLOBAL__N_116InitHeaderSearch7AddPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %18, i32 noundef 5, i1 noundef zeroext false, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bx = phi i32 [ %.pre.i, %bb.m ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ] ; 3 uses
  %cond.i.i = icmp eq i32 %i.bx, 0
  br i1 %cond.i.i, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i, label %_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i.i

_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i.i:        ; preds = %bb.n
  %i.by = and i32 %i.bx, -9
  %spec.select.i.i.i.i.i = icmp ne i32 %i.by, 1
  call void @llvm.assume(i1 %spec.select.i.i.i.i.i)
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !47
  %29 = icmp ne i32 %28, 1
  %spec.select.i.i.i.i.i.a = icmp ne i32 %i.bx, 47
  %.not40.i.i = or i1 %spec.select.i.i.i.i.i.a, %29
  call void @llvm.assume(i1 %.not40.i.i)
  br label %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i

_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i: ; preds = %bb.n, %_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i.i
  %i.bz = load i16, ptr %i.d, align 8             ; 2 uses
  %i.ca = and i16 %i.bz, 2
  %.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.cc, align 1, !tbaa !48
  store ptr @.str.5, ptr %10, align 8, !tbaa !32
  store i8 3, ptr %i.cb, align 8, !tbaa !51
  call fastcc void @_ZN12_GLOBAL__N_116InitHeaderSearch7AddPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %10, i32 noundef 2, i1 noundef zeroext false, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %.pre.i15.i = load i16, ptr %i.d, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i
  %i.cd = phi i16 [ %.pre.i15.i, %bb.o ], [ %i.bz, %_ZNK4llvm6Triple10isOSDarwinEv.exit.thread3.i.i.i ] ; 2 uses
  %i.ce = and i16 %i.cd, 1
  %.not15.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not15.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  store ptr %i.cj, ptr %11, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 128, ptr %i.cl, align 8, !tbaa !55
  %i.cm = icmp ugt i64 %i.ci, 128
  br i1 %i.cm, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i.i.i: ; preds = %bb.q
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %11, ptr noundef nonnull %i.cj, i64 noundef %i.ci, i64 noundef 1) #15
  %.pre8.pre.i.i.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !54
  %.pre44.i.i = load ptr, ptr %11, align 8, !tbaa !52
  br label %bb.r

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.q
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i.i.i
  %i.cn = phi ptr [ %.pre44.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i.i.i ], [ %i.cj, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i ]
  %.pre8.i.i4.i.i.i = phi i64 [ %.pre8.pre.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.pre8.i.i4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cg, i64 %i.ci, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !54
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit.i.i

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit.i.i: ; preds = %bb.r, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i
  %i.cp = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.r ]
  %i.cq = add i64 %i.cp, %i.ci
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !48
  store ptr @.str, ptr %12, align 8, !tbaa !32
  store i8 3, ptr %i.cr, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i16 257, ptr %i.cv, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr noundef nonnull align 8 dereferenceable(34) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 5, ptr %i.cw, align 8, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.cx, align 1, !tbaa !48
  %i.cy = load ptr, ptr %11, align 8, !tbaa !52
  store ptr %i.cy, ptr %16, align 8, !tbaa !32
  %i.cz = load i64, ptr %i.ck, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !32
  %i.db = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116InitHeaderSearch15AddUnmappedPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %16, i32 noundef 3, i1 noundef zeroext false, i64 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.dc = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cj
  br i1 %i.dd, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit.i.i
  call void @free(ptr noundef %i.dc) #15
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i.i:      ; preds = %bb.s, %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %.pre45.i.i = load i16, ptr %i.d, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i.i, %bb.p
  %i.de = phi i16 [ %.pre45.i.i, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i.i ], [ %i.cd, %bb.p ]
  %i.df = and i16 %i.de, 2
  %.not16.i.i = icmp eq i16 %i.df, 0
  br i1 %.not16.i.i, label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i

_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i:     ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.dh, align 1, !tbaa !48
  store ptr @.str.4, ptr %17, align 8, !tbaa !32
  store i8 3, ptr %i.dg, align 8, !tbaa !51
  call fastcc void @_ZN12_GLOBAL__N_116InitHeaderSearch7AddPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %17, i32 noundef 3, i1 noundef zeroext false, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit

_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit: ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %bb.g, %bb.h, %bb.i, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %_ZNK4llvm6Triple10isOSDarwinEv.exit.i.i, %_ZN12_GLOBAL__N_116InitHeaderSearch28ShouldAddDefaultIncludePathsERKN4llvm6TripleE.exit.i, %bb.t, %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !59
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 40                ; 2 uses
  %i.dq = and i64 %i.dp, 4294967295
  %.not3086 = icmp eq i64 %i.dq, 0
  br i1 %.not3086, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.dw = and i64 %i.dp, 4294967295
  br label %bb.y

bb.u:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.dx = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %indvars.iv ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 36 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 4
  %i.eb = and i8 %i.ea, 2
  %.not32 = icmp eq i8 %i.eb, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %.sroa.051.0.insert.insert = or disjoint i64 %indvars.iv, 4294967296 ; 2 uses
  br i1 %.not32, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  store i8 4, ptr %i.au, align 8, !tbaa !51
  store i8 1, ptr %i.av, align 1, !tbaa !48
  store ptr %i.dy, ptr %20, align 8, !tbaa !32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !60
  %i.ee = load i8, ptr %i.dz, align 4
  %i.ef = trunc i8 %i.ee to i1
  %i.eg = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116InitHeaderSearch15AddUnmappedPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %20, i32 noundef %i.ed, i1 noundef zeroext %i.ef, i64 %.sroa.051.0.insert.insert) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store i8 4, ptr %i.aw, align 8, !tbaa !51
  store i8 1, ptr %i.ax, align 1, !tbaa !48
  store ptr %i.dy, ptr %21, align 8, !tbaa !32
  %i.eh = load i32, ptr %i.ec, align 8, !tbaa !60
  %i.ei = load i8, ptr %i.dz, align 4
  %i.ej = trunc i8 %i.ei to i1
  call fastcc void @_ZN12_GLOBAL__N_116InitHeaderSearch7AddPathERKN4llvm5TwineEN5clang8frontend15IncludeDirGroupEbSt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(97) %19, ptr noundef nonnull align 8 dereferenceable(34) %21, i32 noundef %i.eh, i1 noundef zeroext %i.ej, i64 %.sroa.051.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ay
  br i1 %.not, label %._crit_edge, label %bb.u, !llvm.loop !63

._crit_edge89:                                    ; preds = %_ZN12_GLOBAL__N_116InitHeaderSearch21AddSystemHeaderPrefixEN4llvm9StringRefEb.exit, %_ZN12_GLOBAL__N_116InitHeaderSearch22AddDefaultIncludePathsERKN5clang11LangOptionsERKN4llvm6TripleERKNS1_19HeaderSearchOptionsE.exit
  %i.ek = load i16, ptr %i.d, align 8
  %i.el = and i16 %i.ek, 1
  %.not31 = icmp eq i16 %i.el, 0
  br i1 %.not31, label %bb.al, label %bb.ag

bb.y:                                             ; preds = %.lr.ph88, %_ZN12_GLOBAL__N_116InitHeaderSearch21AddSystemHeaderPrefixEN4llvm9StringRefEb.exit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next108, %_ZN12_GLOBAL__N_116InitHeaderSearch21AddSystemHeaderPrefixEN4llvm9StringRefEb.exit ] ; 2 uses
  %i.em = load ptr, ptr %i.di, align 8, !tbaa !59
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.em, i64 %indvars.iv107 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8  ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
end_hunk_0
