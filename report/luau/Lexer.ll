Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Lexer?download=true
inline.NumInlined: 468
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau5Lexer29readInterpolatedStringSectionENS_8PositionENS_6Lexeme4TypeES3_:bb.a
  %i.ce = sub i64 %i.cd, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !76
  store ptr %i.cb, ptr %i.bi, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cf, ptr %i.bk, align 8, !tbaa !77
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65
  %.pre50 = load i64, ptr %i.c, align 8, !tbaa !64
  %.pre51.pre = load ptr, ptr %1, align 8, !tbaa !63
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.j, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre51 = phi ptr [ %i.g, %bb.j ], [ %.pre51.pre, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 3 uses
  %i.cg = phi i64 [ %i.d, %bb.j ], [ %.pre50, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ch = phi i32 [ %i.l, %bb.j ], [ %.pre, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 5 uses
  %i.ci = add i32 %i.ch, 1                        ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = icmp ugt i64 %i.cg, %i.cj
  br i1 %i.ck, label %_ZNK4Luau5Lexer6peekchEj.exit, label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit._ZNK4Luau5Lexer6peekchEj.exit.thread_crit_edge

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit._ZNK4Luau5Lexer6peekchEj.exit.thread_crit_edge: ; preds = %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit
  %.pre54 = load i32, ptr %i.i, align 8, !tbaa !67
  br label %_ZNK4Luau5Lexer6peekchEj.exit.thread

_ZNK4Luau5Lexer6peekchEj.exit:                    ; preds = %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre51, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cn = icmp eq i8 %i.cm, 123
  %.pre55 = load i32, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  br i1 %i.cn, label %bb.o, label %_ZNK4Luau5Lexer6peekchEj.exit.thread

bb.o:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit
  %i.co = load i32, ptr %i.h, align 4, !tbaa !66
  %i.cp = sub i32 %i.ch, %.pre55
  %.sroa.431.0.insert.ext = zext i32 %i.cp to i64
  %.sroa.431.0.insert.shift = shl nuw i64 %.sroa.431.0.insert.ext, 32
  %.sroa.030.0.insert.ext = zext i32 %i.co to i64
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.431.0.insert.shift, %.sroa.030.0.insert.ext
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre51, i64 %i.e
  %i.cr = sub i32 %i.ch, %i.b
  store i32 289, ptr %0, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %2, ptr %i.cs, align 4
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.030.0.insert.insert, ptr %.sroa.417.0..sroa_idx, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cq, ptr %i.cu, align 8, !tbaa !22
  %i.cv = add i32 %i.ch, 2
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !65
  br label %bb.r

_ZNK4Luau5Lexer6peekchEj.exit.thread:             ; preds = %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit._ZNK4Luau5Lexer6peekchEj.exit.thread_crit_edge, %_ZNK4Luau5Lexer6peekchEj.exit
  %i.cw = phi i32 [ %.pre54, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_.exit._ZNK4Luau5Lexer6peekchEj.exit.thread_crit_edge ], [ %.pre55, %_ZNK4Luau5Lexer6peekchEj.exit ]
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !65
  %i.cx = load i32, ptr %i.h, align 4, !tbaa !66
  %i.cy = sub i32 %i.ci, %i.cw
  %.sroa.429.0.insert.ext = zext i32 %i.cy to i64
  %.sroa.429.0.insert.shift = shl nuw i64 %.sroa.429.0.insert.ext, 32
  %.sroa.028.0.insert.ext = zext i32 %i.cx to i64
  %.sroa.028.0.insert.insert = or disjoint i64 %.sroa.429.0.insert.shift, %.sroa.028.0.insert.ext
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre51, i64 %i.e
  %i.da = sub i32 %i.ch, %i.b
  store i32 %3, ptr %0, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %2, ptr %i.db, align 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.028.0.insert.insert, ptr %.sroa.414.0..sroa_idx, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cz, ptr %i.dd, align 8, !tbaa !22
  br label %bb.r

bb.p:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8
  %i.de = add i32 %i.l, 1
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split: ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit4.i, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i, %bb.h, %bb.b, %bb.d, %bb.p
  %.sink.i.sink = phi i32 [ %i.v, %bb.b ], [ %i.ah, %bb.d ], [ %i.de, %bb.p ], [ %i.aq, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %.pre6.i, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.bg, %bb.h ] ; 2 uses
  %.ph = phi i32 [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.p ], [ %i.ap, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %i.j, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.bf, %bb.h ]
  store i32 %.sink.i.sink, ptr %i.a, align 8, !tbaa !65
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZN4Luau5Lexer21readBackslashInStringEv.exit:     ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit3.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split, %bb.f, %_ZNK4Luau5Lexer6peekchEv.exit1.i, %bb.e, %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.df = phi i32 [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %.ph, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %i.j, %bb.f ], [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %i.j, %bb.e ], [ %i.au, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %i.bb, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ] ; 2 uses
  %i.dg = phi i32 [ %i.v, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %.sink.i.sink, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %i.ar, %bb.f ], [ %i.aj, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %i.aj, %bb.e ], [ %storemerge5.i, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %.pre-phi9.i, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ] ; 3 uses
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = icmp ugt i64 %i.d, %i.dh
  br i1 %i.di, label %_ZNK4Luau5Lexer6peekchEv.exit8, label %_ZNK4Luau5Lexer6peekchEv.exit.thread, !llvm.loop !98

bb.q:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8
  %i.dj = add i32 %i.l, 1                         ; 2 uses
  store i32 %i.dj, ptr %i.a, align 8, !tbaa !65
  %i.dk = load i32, ptr %i.i, align 8, !tbaa !67
  %i.dl = sub i32 %i.dj, %i.dk
  %.sroa.427.0.insert.ext = zext i32 %i.dl to i64
  %.sroa.427.0.insert.shift = shl nuw i64 %.sroa.427.0.insert.ext, 32
  %.sroa.026.0.insert.ext = zext i32 %i.j to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.427.0.insert.shift, %.sroa.026.0.insert.ext
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  %i.dn = sub i32 %i.l, %i.b
  store i32 %4, ptr %0, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %2, ptr %i.do, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.026.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK4Luau5Lexer6peekchEj.exit.thread, %bb.o, %_ZNK4Luau5Lexer6peekchEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !74
  store i32 %i.e, ptr %i.b, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !76     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #21
  unreachable

_ZNKSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !74
  store i32 %i.t, ptr %i.s, align 4, !tbaa !74
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #25
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !76
  store ptr %i.v, ptr %i.a, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau5Lexer10readNumberERKNS_8PositionEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 5 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.d = add i32 %.promoted, 1                    ; 4 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !65
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  %.pre.pre.pre = load ptr, ptr %1, align 8, !tbaa !63 ; 5 uses
  br i1 %i.f, label %_ZNK4Luau5Lexer6peekchEv.exit13, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread

_ZNK4Luau5Lexer6peekchEv.exit13:                  ; preds = %bb.a, %.backedge
  %i.g = phi i64 [ %i.o, %.backedge ], [ %i.e, %bb.a ]
  %4 = phi i32 [ %i.n, %.backedge ], [ %i.d, %bb.a ] ; 3 uses
  %i.h = phi i32 [ %4, %.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %.fr = freeze i8 %i.j                           ; 2 uses
  %i.k = sext i8 %.fr to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %.backedge, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK4Luau5Lexer6peekchEv.exit13
  switch i8 %.fr, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread [
    i8 95, label %.backedge
    i8 46, label %.backedge
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

.backedge:                                        ; preds = %switch.early.test, %switch.early.test, %_ZNK4Luau5Lexer6peekchEv.exit13
  %i.n = add i32 %4, 1                            ; 4 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !65
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %i.c, %i.o
  br i1 %i.p, label %_ZNK4Luau5Lexer6peekchEv.exit13, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread, !llvm.loop !99

bb.b:                                             ; preds = %switch.early.test, %switch.early.test
  %i.q = add i32 %i.h, 2                          ; 4 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !65
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp ugt i64 %i.c, %i.r
  br i1 %i.s, label %_ZNK4Luau5Lexer6peekchEv.exit8, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread

_ZNK4Luau5Lexer6peekchEv.exit8:                   ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  switch i8 %i.u, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8, %_ZNK4Luau5Lexer6peekchEv.exit8
  %i.v = add i32 %i.h, 3                          ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !65
  br label %_ZNK4Luau5Lexer6peekchEv.exit9.thread

_ZNK4Luau5Lexer6peekchEv.exit9.thread:            ; preds = %switch.early.test, %.backedge, %_ZNK4Luau5Lexer6peekchEv.exit8, %bb.a, %bb.b, %bb.c
  %.promoted31 = phi i32 [ %i.d, %bb.a ], [ %i.q, %bb.b ], [ %i.q, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.v, %bb.c ], [ %4, %switch.early.test ], [ %i.n, %.backedge ] ; 3 uses
  %i.w = zext i32 %.promoted31 to i64             ; 2 uses
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %_ZNK4Luau5Lexer6peekchEv.exit6, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

_ZNK4Luau5Lexer6peekchEv.exit6:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.thread, %.critedge2
  %i.y = phi i64 [ %i.an, %.critedge2 ], [ %i.w, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ] ; 2 uses
  %i.z = phi i32 [ %i.am, %.critedge2 ], [ %.promoted31, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22  ; 2 uses
  %i.ac = or i8 %i.ab, 32
  %i.ad = sext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -97
  %i.af = icmp ult i32 %i.ae, 26
  br i1 %i.af, label %.critedge2, label %_ZNK4Luau5Lexer6peekchEv.exit5

_ZNK4Luau5Lexer6peekchEv.exit5:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.y
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48
  %i.ak = icmp ult i32 %i.aj, 10
  %i.al = icmp eq i8 %i.ab, 95
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %.critedge2, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

.critedge2:                                       ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5, %_ZNK4Luau5Lexer6peekchEv.exit6
  %i.am = add i32 %i.z, 1                         ; 4 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !65
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp ugt i64 %i.c, %i.an
  br i1 %i.ao, label %_ZNK4Luau5Lexer6peekchEv.exit6, label %_ZNK4Luau5Lexer6peekchEv.exit.thread, !llvm.loop !100

_ZNK4Luau5Lexer6peekchEv.exit.thread:             ; preds = %.critedge2, %_ZNK4Luau5Lexer6peekchEv.exit5, %_ZNK4Luau5Lexer6peekchEv.exit9.thread
  %.lcssa = phi i32 [ %.promoted31, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %i.am, %.critedge2 ], [ %i.z, %_ZNK4Luau5Lexer6peekchEv.exit5 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !67
  %i.at = sub i32 %.lcssa, %i.as
  %.sroa.416.0.insert.ext = zext i32 %i.at to i64
  %.sroa.416.0.insert.shift = shl nuw i64 %.sroa.416.0.insert.ext, 32
  %.sroa.015.0.insert.ext = zext i32 %i.aq to i64
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.416.0.insert.shift, %.sroa.015.0.insert.ext
  %i.au = load i64, ptr %2, align 4
  %i.av = zext i32 %3 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.av
  %i.ax = sub i32 %.lcssa, %3
  store i32 280, ptr %0, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.au, ptr %i.ay, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.015.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aw, ptr %i.ba, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i32 } @_ZN4Luau5Lexer8readNameEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  %2 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = add i32 %i.b, 1                          ; 4 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !65
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %_ZNK4Luau5Lexer6peekchEv.exit11.lr.ph, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

_ZNK4Luau5Lexer6peekchEv.exit11.lr.ph:            ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZNK4Luau5Lexer6peekchEv.exit11

_ZNK4Luau5Lexer6peekchEv.exit11:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11.lr.ph, %.backedge
  %i.i = phi i64 [ %i.f, %_ZNK4Luau5Lexer6peekchEv.exit11.lr.ph ], [ %i.v, %.backedge ]
  %i.j = phi i32 [ %i.e, %_ZNK4Luau5Lexer6peekchEv.exit11.lr.ph ], [ %i.u, %.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22    ; 3 uses
  %i.m = or i8 %i.l, 32
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -97
  %i.p = icmp ult i32 %i.o, 26
  br i1 %i.p, label %.backedge, label %_ZNK4Luau5Lexer6peekchEv.exit10

_ZNK4Luau5Lexer6peekchEv.exit10:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11
  %i.q = sext i8 %i.l to i32
  %i.r = add nsw i32 %i.q, -48
  %i.s = icmp ult i32 %i.r, 10
  %i.t = icmp eq i8 %i.l, 95
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %.backedge, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

.backedge:                                        ; preds = %_ZNK4Luau5Lexer6peekchEv.exit10, %_ZNK4Luau5Lexer6peekchEv.exit11
  %i.u = add i32 %i.j, 1                          ; 4 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !65
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp ugt i64 %i.d, %i.v
  br i1 %i.w, label %_ZNK4Luau5Lexer6peekchEv.exit11, label %_ZNK4Luau5Lexer6peekchEv.exit.thread, !llvm.loop !101

_ZNK4Luau5Lexer6peekchEv.exit.thread:             ; preds = %.backedge, %_ZNK4Luau5Lexer6peekchEv.exit10, %bb.a
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.u, %.backedge ], [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit10 ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.y = load i8, ptr %i.x, align 1, !tbaa !69, !range !70, !noundef !54
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102, !nonnull !54, !align !55 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !63
  %i.ad = zext i32 %i.b to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 4 uses
  %i.af = sub i32 %.lcssa, %i.b                   ; 3 uses
  br i1 %i.z, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.ae, ptr %2, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !48
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48 ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.am = inttoptr i64 %i.al to ptr
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

bb.d:                                             ; preds = %bb.b
  %i.an = zext i32 %i.af to i64                   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.aq = add nuw nsw i64 %i.an, 1
  %i.ar = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 noundef %i.aq) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.ae, i64 %i.an, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an
  store i8 0, ptr %i.as, align 1, !tbaa !22
  %i.at = ptrtoint ptr %i.ar to i64
  store i64 %i.at, ptr %i.ai, align 8, !tbaa !32
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.av = icmp eq i8 %i.au, 64
  %i.aw = select i1 %i.av, i32 284, i32 281       ; 2 uses
  store i32 %i.aw, ptr %i.aj, align 4, !tbaa !48
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit: ; preds = %bb.c, %bb.d
  %.pn27.i = phi ptr [ %i.am, %bb.c ], [ %i.ar, %bb.d ]
  %.pn25.i = phi i32 [ %i.ak, %bb.c ], [ %i.aw, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNK4Luau12AstNameTable11getWithTypeEPKcm.exit

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.ae, ptr %1, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.af, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !48
  %i.az = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not.not.i = icmp eq ptr %i.az, null
  br i1 %.not.not.i, label %_ZNK4Luau12AstNameTable11getWithTypeEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !32
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !39
  br label %_ZNK4Luau12AstNameTable11getWithTypeEPKcm.exit

_ZNK4Luau12AstNameTable11getWithTypeEPKcm.exit:   ; preds = %bb.f, %bb.e, %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit
  %.pn27.i.pn = phi ptr [ %.pn27.i, %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit ], [ %i.bc, %bb.f ], [ null, %bb.e ]
  %.pn25.i.pn = phi i32 [ %.pn25.i, %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit ], [ %i.bd, %bb.f ], [ 281, %bb.e ]
  %.fca.0.insert.i.pn.i.pn = insertvalue { ptr, i32 } poison, ptr %.pn27.i.pn, 0
  %.pn = insertvalue { ptr, i32 } %.fca.0.insert.i.pn.i.pn, i32 %.pn25.i.pn, 1
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau5Lexer13readUtf8ErrorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67   ; 4 uses
  %i.g = sub i32 %i.d, %i.f
  %.sroa.437.0.insert.ext = zext i32 %i.g to i64
  %.sroa.437.0.insert.shift = shl nuw i64 %.sroa.437.0.insert.ext, 32
  %.sroa.036.0.insert.ext = zext i32 %i.b to i64  ; 4 uses
  %.sroa.036.0.insert.insert = or disjoint i64 %.sroa.437.0.insert.shift, %.sroa.036.0.insert.ext ; 3 uses
  %i.h = zext i32 %i.d to i64                     ; 2 uses
end_hunk_0
