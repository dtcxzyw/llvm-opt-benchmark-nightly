Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Lexer?download=true
inline.NumInlined: 468
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau5Lexer29readInterpolatedStringSectionENS_8PositionENS_6Lexeme4TypeES3_:bb.a

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
  store i64 %2, ptr %i.cs, align 4, !tbaa !14
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.030.0.insert.insert, ptr %.sroa.417.0..sroa_idx, align 4, !tbaa !14
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
  store i64 %2, ptr %i.db, align 4, !tbaa !14
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.028.0.insert.insert, ptr %.sroa.414.0..sroa_idx, align 4, !tbaa !14
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
  store i64 %2, ptr %i.do, align 4, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.026.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
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
  %i.g = phi i64 [ %i.p, %.backedge ], [ %i.e, %bb.a ]
  %i.h = phi i32 [ %i.o, %.backedge ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = phi i32 [ %i.h, %.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %.fr = freeze i8 %i.k                           ; 2 uses
  %i.l = sext i8 %.fr to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = icmp ult i32 %i.m, 10
  br i1 %i.n, label %.backedge, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK4Luau5Lexer6peekchEv.exit13
  switch i8 %.fr, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread [
    i8 95, label %.backedge
    i8 46, label %.backedge
    i8 101, label %bb.b
    i8 69, label %bb.b
  ]

.backedge:                                        ; preds = %switch.early.test, %switch.early.test, %_ZNK4Luau5Lexer6peekchEv.exit13
  %i.o = add i32 %i.h, 1                          ; 4 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !65
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %i.c, %i.p
  br i1 %i.q, label %_ZNK4Luau5Lexer6peekchEv.exit13, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread, !llvm.loop !99

bb.b:                                             ; preds = %switch.early.test, %switch.early.test
  %i.r = add i32 %i.i, 2                          ; 4 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !65
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.c, %i.s
  br i1 %i.t, label %_ZNK4Luau5Lexer6peekchEv.exit8, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread

_ZNK4Luau5Lexer6peekchEv.exit8:                   ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  switch i8 %i.v, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8, %_ZNK4Luau5Lexer6peekchEv.exit8
  %i.w = add i32 %i.i, 3                          ; 2 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !65
  br label %_ZNK4Luau5Lexer6peekchEv.exit9.thread

_ZNK4Luau5Lexer6peekchEv.exit9.thread:            ; preds = %switch.early.test, %.backedge, %_ZNK4Luau5Lexer6peekchEv.exit8, %bb.a, %bb.b, %bb.c
  %.promoted31 = phi i32 [ %i.d, %bb.a ], [ %i.r, %bb.b ], [ %i.r, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.w, %bb.c ], [ %i.h, %switch.early.test ], [ %i.o, %.backedge ] ; 3 uses
  %i.x = zext i32 %.promoted31 to i64             ; 2 uses
  %i.y = icmp ugt i64 %i.c, %i.x
  br i1 %i.y, label %_ZNK4Luau5Lexer6peekchEv.exit6, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

_ZNK4Luau5Lexer6peekchEv.exit6:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.thread, %.critedge2
  %i.z = phi i64 [ %i.ao, %.critedge2 ], [ %i.x, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ] ; 2 uses
  %i.aa = phi i32 [ %i.an, %.critedge2 ], [ %.promoted31, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22  ; 2 uses
  %i.ad = or i8 %i.ac, 32
  %i.ae = sext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -97
  %i.ag = icmp ult i32 %i.af, 26
  br i1 %i.ag, label %.critedge2, label %_ZNK4Luau5Lexer6peekchEv.exit5

_ZNK4Luau5Lexer6peekchEv.exit5:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.z
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = icmp ult i32 %i.ak, 10
  %i.am = icmp eq i8 %i.ac, 95
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %.critedge2, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

.critedge2:                                       ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5, %_ZNK4Luau5Lexer6peekchEv.exit6
  %i.an = add i32 %i.aa, 1                        ; 4 uses
  store i32 %i.an, ptr %i.a, align 8, !tbaa !65
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = icmp ugt i64 %i.c, %i.ao
  br i1 %i.ap, label %_ZNK4Luau5Lexer6peekchEv.exit6, label %_ZNK4Luau5Lexer6peekchEv.exit.thread, !llvm.loop !100

_ZNK4Luau5Lexer6peekchEv.exit.thread:             ; preds = %.critedge2, %_ZNK4Luau5Lexer6peekchEv.exit5, %_ZNK4Luau5Lexer6peekchEv.exit9.thread
  %.lcssa = phi i32 [ %.promoted31, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %i.an, %.critedge2 ], [ %i.aa, %_ZNK4Luau5Lexer6peekchEv.exit5 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !67
  %i.au = sub i32 %.lcssa, %i.at
  %.sroa.416.0.insert.ext = zext i32 %i.au to i64
  %.sroa.416.0.insert.shift = shl nuw i64 %.sroa.416.0.insert.ext, 32
  %.sroa.015.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.416.0.insert.shift, %.sroa.015.0.insert.ext
  %i.av = load i64, ptr %2, align 4, !tbaa !14
  %i.aw = zext i32 %3 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.aw
  %i.ay = sub i32 %.lcssa, %3
  store i32 280, ptr %0, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.av, ptr %i.az, align 4, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.015.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !22
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
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  %i.k = icmp ugt i64 %i.j, %i.h
  br i1 %i.k, label %_ZNK4Luau5Lexer6peekchEv.exit19, label %_ZNK4Luau5Lexer6peekchEv.exit18

_ZNK4Luau5Lexer6peekchEv.exit19:                  ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22    ; 6 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %_ZNK4Luau5Lexer6peekchEv.exit18, label %_ZNK4Luau5Lexer6peekchEv.exit17

_ZNK4Luau5Lexer6peekchEv.exit17:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit19
  %i.p = and i8 %i.n, -32
  %i.q = icmp eq i8 %i.p, -64                     ; 2 uses
  br i1 %i.q, label %.lr.ph, label %_ZNK4Luau5Lexer6peekchEv.exit15

_ZNK4Luau5Lexer6peekchEv.exit15:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit17
  %i.r = and i8 %i.n, -16
  %i.s = icmp eq i8 %i.r, -32
  br i1 %i.s, label %.lr.ph, label %_ZNK4Luau5Lexer6peekchEv.exit13

_ZNK4Luau5Lexer6peekchEv.exit13:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit15
  %i.t = and i8 %i.n, -8
  %i.u = icmp eq i8 %i.t, -16
  br i1 %i.u, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit13
  %i.v = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !65
  %i.w = sub i32 %i.v, %i.f
  %.sroa.435.0.insert.ext = zext i32 %i.w to i64
  %.sroa.435.0.insert.shift = shl nuw i64 %.sroa.435.0.insert.ext, 32
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.435.0.insert.shift, %.sroa.036.0.insert.ext
  store i32 288, ptr %0, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.036.0.insert.insert, ptr %i.x, align 4, !tbaa !14
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.034.0.insert.insert, ptr %.sroa.426.0..sroa_idx, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8, !tbaa !22
  br label %bb.e

_ZNK4Luau5Lexer6peekchEv.exit18:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit19, %bb.a
  %.09.in = phi i8 [ %i.n, %_ZNK4Luau5Lexer6peekchEv.exit19 ], [ 0, %bb.a ]
  %.09 = zext nneg i8 %.09.in to i32
  %i.aa = add i32 %i.d, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !65
  br label %.critedge

.lr.ph:                                           ; preds = %_ZNK4Luau5Lexer6peekchEv.exit13, %_ZNK4Luau5Lexer6peekchEv.exit15, %_ZNK4Luau5Lexer6peekchEv.exit17
  %.sink = phi i8 [ 15, %_ZNK4Luau5Lexer6peekchEv.exit15 ], [ 31, %_ZNK4Luau5Lexer6peekchEv.exit17 ], [ 7, %_ZNK4Luau5Lexer6peekchEv.exit13 ]
  %exitcond.not.1 = phi i1 [ true, %_ZNK4Luau5Lexer6peekchEv.exit15 ], [ false, %_ZNK4Luau5Lexer6peekchEv.exit17 ], [ false, %_ZNK4Luau5Lexer6peekchEv.exit13 ]
  %i.ab = and i8 %i.n, %.sink
  %.0952 = zext nneg i8 %i.ab to i32
  %i.ac = add i32 %i.d, 1                         ; 4 uses
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !65
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = icmp ugt i64 %i.j, %i.ad
  br i1 %i.ae, label %_ZNK4Luau5Lexer6peekchEv.exit11, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit11:                  ; preds = %.lr.ph
  %i.af = load ptr, ptr %1, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22  ; 2 uses
  %.not = icmp slt i8 %i.ah, -64
  br i1 %.not, label %_ZNK4Luau5Lexer6peekchEv.exit, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit11.thread:           ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11.2, %bb.d, %_ZNK4Luau5Lexer6peekchEv.exit11.1, %bb.c, %.lr.ph, %_ZNK4Luau5Lexer6peekchEv.exit11
  %.lcssa = phi i32 [ %i.ac, %.lr.ph ], [ %i.ac, %_ZNK4Luau5Lexer6peekchEv.exit11 ], [ %i.aq, %bb.c ], [ %i.aq, %_ZNK4Luau5Lexer6peekchEv.exit11.1 ], [ %i.ba, %bb.d ], [ %i.ba, %_ZNK4Luau5Lexer6peekchEv.exit11.2 ]
  %i.ai = sub i32 %.lcssa, %i.f
  %.sroa.433.0.insert.ext = zext i32 %i.ai to i64
  %.sroa.433.0.insert.shift = shl nuw i64 %.sroa.433.0.insert.ext, 32
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.433.0.insert.shift, %.sroa.036.0.insert.ext
  store i32 288, ptr %0, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.036.0.insert.insert, ptr %i.aj, align 4, !tbaa !14
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.032.0.insert.insert, ptr %.sroa.423.0..sroa_idx, align 4, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.al, align 8, !tbaa !22
  br label %bb.e

_ZNK4Luau5Lexer6peekchEv.exit:                    ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11
  %i.am = shl nuw nsw i32 %.0952, 6
  %i.an = and i8 %i.ah, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = add i32 %i.d, 2                         ; 5 uses
  store i32 %i.aq, ptr %i.c, align 8, !tbaa !65
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.j, %i.ar
  br i1 %i.as, label %_ZNK4Luau5Lexer6peekchEv.exit11.1, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit11.1:                ; preds = %bb.c
  %i.at = load ptr, ptr %1, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !22  ; 2 uses
  %.not.1 = icmp slt i8 %i.av, -64
  br i1 %.not.1, label %_ZNK4Luau5Lexer6peekchEv.exit.1, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit.1:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11.1
  %i.aw = shl nuw nsw i32 %i.ap, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = add i32 %i.d, 3                         ; 5 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !65
  br i1 %exitcond.not.1, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.1
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %i.j, %i.bb
  br i1 %i.bc, label %_ZNK4Luau5Lexer6peekchEv.exit11.2, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit11.2:                ; preds = %bb.d
  %i.bd = load ptr, ptr %1, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !22  ; 2 uses
  %.not.2 = icmp slt i8 %i.bf, -64
  br i1 %.not.2, label %_ZNK4Luau5Lexer6peekchEv.exit.2, label %_ZNK4Luau5Lexer6peekchEv.exit11.thread

_ZNK4Luau5Lexer6peekchEv.exit.2:                  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11.2
  %i.bg = shl nuw nsw i32 %i.az, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = add i32 %i.d, 4                         ; 2 uses
  store i32 %i.bk, ptr %i.c, align 8, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit.1, %_ZNK4Luau5Lexer6peekchEv.exit.2, %_ZNK4Luau5Lexer6peekchEv.exit18
  %i.bl = phi i32 [ %i.aa, %_ZNK4Luau5Lexer6peekchEv.exit18 ], [ %i.aq, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.ba, %_ZNK4Luau5Lexer6peekchEv.exit.1 ], [ %i.bk, %_ZNK4Luau5Lexer6peekchEv.exit.2 ]
  %.1.lcssa = phi i32 [ %.09, %_ZNK4Luau5Lexer6peekchEv.exit18 ], [ %i.ap, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.az, %_ZNK4Luau5Lexer6peekchEv.exit.1 ], [ %i.bj, %_ZNK4Luau5Lexer6peekchEv.exit.2 ]
  %i.bm = sub i32 %i.bl, %i.f
  %.sroa.431.0.insert.ext = zext i32 %i.bm to i64
  %.sroa.431.0.insert.shift = shl nuw i64 %.sroa.431.0.insert.ext, 32
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.431.0.insert.shift, %.sroa.036.0.insert.ext
  store i32 288, ptr %0, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.036.0.insert.insert, ptr %i.bn, align 4, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.030.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.bo, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !22
  store i32 %.1.lcssa, ptr %i.bp, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit11.thread, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4Luau5Lexer17peekBraceStackTopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74
  %i.h = zext i32 %i.g to i64
  %i.i = or disjoint i64 %i.h, 4294967296
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau5Lexer17fixupQuotedStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread202, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 92, i64 noundef 0) #20
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %.thread202, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !29   ; 28 uses
  %.not240 = icmp eq i64 %i.f, 0
  br i1 %.not240, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.c, %.backedge
  %.0127235 = phi i64 [ %.0127.be, %.backedge ], [ 0, %bb.c ] ; 25 uses
  %.0137234 = phi i64 [ %.0137.be, %.backedge ], [ 0, %bb.c ] ; 17 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !31     ; 31 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0127235
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22    ; 2 uses
  %.not = icmp eq i8 %i.i, 92
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph237
  %i.j = add i64 %.0137234, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 %i.i, ptr %i.k, align 1, !tbaa !22
  %i.l = add nuw i64 %.0127235, 1
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph, %.thread195, %bb.aw, %.thread170, %bb.i, %_ZN4LuauL8unescapeEc.exit, %bb.h, %bb.g, %.preheader207, %bb.d
  %.0137.be = phi i64 [ %i.j, %bb.d ], [ %i.mu, %_ZN4LuauL8unescapeEc.exit ], [ %i.t, %bb.g ], [ %i.ls, %bb.aw ], [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.bi, %.thread170 ], [ %i.mq, %.thread195 ], [ %.0137234, %.preheader207 ], [ %.0137234, %.lr.ph ] ; 2 uses
  %.0127.be = phi i64 [ %i.l, %bb.d ], [ %i.r, %_ZN4LuauL8unescapeEc.exit ], [ %i.r, %bb.g ], [ %i.lo, %bb.aw ], [ %spec.select, %bb.i ], [ %i.r, %bb.h ], [ %i.ad, %.thread170 ], [ %.7134.lcssa289, %.thread195 ], [ %i.r, %.preheader207 ], [ %.2129220, %.lr.ph ] ; 2 uses
  %i.m = icmp ult i64 %.0127.be, %i.f
  br i1 %i.m, label %.lr.ph237, label %._crit_edge238, !llvm.loop !103

bb.e:                                             ; preds = %.lr.ph237
  %i.n = add nuw i64 %.0127235, 1                 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.f
  br i1 %i.o, label %.thread202, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22    ; 5 uses
  %i.r = add nuw i64 %.0127235, 2                 ; 14 uses
  switch i8 %i.q, label %bb.ax [
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 0, label %.thread202
    i8 120, label %bb.j
    i8 122, label %.preheader207
    i8 117, label %bb.m
  ]

.preheader207:                                    ; preds = %bb.f
  %i.s = icmp ult i64 %i.r, %i.f
  br i1 %i.s, label %.lr.ph, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %.0137234, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 10, ptr %i.u, align 1, !tbaa !22
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.v = add i64 %.0137234, 1                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 10, ptr %i.w, align 1, !tbaa !22
  %i.x = icmp ult i64 %i.r, %i.f
  br i1 %i.x, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = icmp eq i8 %i.aa, 10
  %i.ac = add nuw i64 %.0127235, 3
  %spec.select = select i1 %i.ab, i64 %i.ac, i64 %i.r
  br label %.backedge

bb.j:                                             ; preds = %bb.f
  %i.ad = add i64 %.0127235, 4                    ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %i.f
  br i1 %i.ae, label %.thread202, label %.preheader206

.preheader206:                                    ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.g, i64 %i.r    ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22  ; 2 uses
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10                  ; 2 uses
  %i.ak = or i32 %i.ah, 32
  %i.al = add nsw i32 %i.ak, -97
  %i.am = icmp ult i32 %i.al, 6
  %i.an = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %i.an, label %bb.k, label %.thread202

bb.k:                                             ; preds = %.preheader206
  %i.ao = getelementptr i8, ptr %i.af, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22  ; 2 uses
  %i.aq = sext i8 %i.ap to i32                    ; 2 uses
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10                  ; 2 uses
  %i.at = or i32 %i.aq, 32
  %i.au = add nsw i32 %i.at, -97
  %i.av = icmp ult i32 %i.au, 6
  %i.aw = select i1 %i.as, i1 true, i1 %i.av
  br i1 %i.aw, label %.thread170, label %.thread202

.thread170:                                       ; preds = %bb.k
  %i.ax = or i8 %i.ag, 32
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -87
  %i.ba = select i1 %i.aj, i32 %i.ai, i32 %i.az
  %i.bb = shl nsw i32 %i.ba, 4
  %i.bc = or i8 %i.ap, 32
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 169
  %i.bf = select i1 %i.as, i32 %i.ar, i32 %i.be
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i64 %.0137234, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !22
  br label %.backedge

.lr.ph:                                           ; preds = %.preheader207, %bb.l
  %.2129220 = phi i64 [ %i.bm, %bb.l ], [ %i.r, %.preheader207 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %.2129220
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !22
  switch i8 %i.bl, label %.backedge [
    i8 32, label %bb.l
    i8 13, label %bb.l
    i8 11, label %bb.l
    i8 10, label %bb.l
    i8 9, label %bb.l
    i8 12, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.bm = add i64 %.2129220, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.f
  br i1 %exitcond.not, label %._crit_edge238, label %.lr.ph, !llvm.loop !104

bb.m:                                             ; preds = %bb.f
  %i.bn = add i64 %.0127235, 5                    ; 4 uses
  %i.bo = icmp ugt i64 %i.bn, %i.f
  br i1 %i.bo, label %.thread202, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %.not162 = icmp eq i8 %i.bq, 123
  br i1 %.not162, label %bb.o, label %.thread202

bb.o:                                             ; preds = %bb.n
  %i.br = add i64 %.0127235, 3                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !22  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 125
  br i1 %i.bu, label %.thread202, label %.preheader208.preheader

.preheader208.preheader:                          ; preds = %bb.o
  %i.bv = add i64 %.0127235, 19
  %i.bw = icmp eq i64 %i.br, %i.f
  br i1 %i.bw, label %.thread202, label %bb.p

bb.p:                                             ; preds = %.preheader208.preheader
  %i.bx = sext i8 %i.bt to i32                    ; 2 uses
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10                  ; 2 uses
  %i.ca = or i32 %i.bx, 32                        ; 2 uses
  %i.cb = add nsw i32 %i.ca, -97
  %i.cc = icmp ult i32 %i.cb, 6
  %i.cd = select i1 %i.bz, i1 true, i1 %i.cc
  br i1 %i.cd, label %.preheader208.1, label %.thread202

.preheader208.1:                                  ; preds = %bb.p
  %i.ce = add nsw i32 %i.ca, -87
  %i.cf = select i1 %i.bz, i32 %i.by, i32 %i.ce   ; 2 uses
  %i.cg = add i64 %.0127235, 4                    ; 3 uses
  %i.ch = icmp eq i64 %i.cg, %i.f
  br i1 %i.ch, label %.thread202, label %bb.q

bb.q:                                             ; preds = %.preheader208.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cg
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 125
  br i1 %i.ck, label %.thread180, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = sext i8 %i.cj to i32                    ; 2 uses
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10                  ; 2 uses
  %i.co = or i32 %i.cl, 32                        ; 2 uses
  %i.cp = add nsw i32 %i.co, -97
  %i.cq = icmp ult i32 %i.cp, 6
  %i.cr = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %i.cr, label %.preheader208.2, label %.thread202

.preheader208.2:                                  ; preds = %bb.r
  %i.cs = shl nsw i32 %i.cf, 4
  %i.ct = add nsw i32 %i.co, -87
  %i.cu = select i1 %i.cn, i32 %i.cm, i32 %i.ct
  %i.cv = add nsw i32 %i.cu, %i.cs                ; 2 uses
  %i.cw = icmp eq i64 %i.bn, %i.f
  br i1 %i.cw, label %.thread202, label %bb.s

bb.s:                                             ; preds = %.preheader208.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bn
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !22  ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 125
  br i1 %i.cz, label %.thread180, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = sext i8 %i.cy to i32                    ; 2 uses
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10                  ; 2 uses
  %i.dd = or i32 %i.da, 32                        ; 2 uses
  %i.de = add nsw i32 %i.dd, -97
  %i.df = icmp ult i32 %i.de, 6
  %i.dg = select i1 %i.dc, i1 true, i1 %i.df
  br i1 %i.dg, label %.preheader208.3, label %.thread202

.preheader208.3:                                  ; preds = %bb.t
  %i.dh = shl nsw i32 %i.cv, 4
  %i.di = add nsw i32 %i.dd, -87
  %i.dj = select i1 %i.dc, i32 %i.db, i32 %i.di
  %i.dk = add i32 %i.dj, %i.dh                    ; 2 uses
  %i.dl = add i64 %.0127235, 6                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, %i.f
  br i1 %i.dm, label %.thread202, label %bb.u

bb.u:                                             ; preds = %.preheader208.3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22  ; 2 uses
  %i.dp = icmp eq i8 %i.do, 125
  br i1 %i.dp, label %.thread180, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = sext i8 %i.do to i32                    ; 2 uses
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10                  ; 2 uses
  %i.dt = or i32 %i.dq, 32                        ; 2 uses
  %i.du = add nsw i32 %i.dt, -97
  %i.dv = icmp ult i32 %i.du, 6
  %i.dw = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %i.dw, label %.preheader208.4, label %.thread202

.preheader208.4:                                  ; preds = %bb.v
  %i.dx = shl i32 %i.dk, 4
  %i.dy = add nsw i32 %i.dt, -87
  %i.dz = select i1 %i.ds, i32 %i.dr, i32 %i.dy
  %i.ea = add i32 %i.dz, %i.dx                    ; 2 uses
  %i.eb = add i64 %.0127235, 7                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, %i.f
  br i1 %i.ec, label %.thread202, label %bb.w

bb.w:                                             ; preds = %.preheader208.4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !22  ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 125
  br i1 %i.ef, label %.thread180, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = sext i8 %i.ee to i32                    ; 2 uses
  %i.eh = add nsw i32 %i.eg, -48                  ; 2 uses
  %i.ei = icmp ult i32 %i.eh, 10                  ; 2 uses
  %i.ej = or i32 %i.eg, 32                        ; 2 uses
  %i.ek = add nsw i32 %i.ej, -97
  %i.el = icmp ult i32 %i.ek, 6
  %i.em = select i1 %i.ei, i1 true, i1 %i.el
  br i1 %i.em, label %.preheader208.5, label %.thread202

.preheader208.5:                                  ; preds = %bb.x
  %i.en = shl i32 %i.ea, 4
  %i.eo = add nsw i32 %i.ej, -87
  %i.ep = select i1 %i.ei, i32 %i.eh, i32 %i.eo
  %i.eq = add i32 %i.ep, %i.en                    ; 2 uses
  %i.er = add i64 %.0127235, 8                    ; 3 uses
  %i.es = icmp eq i64 %i.er, %i.f
  br i1 %i.es, label %.thread202, label %bb.y

bb.y:                                             ; preds = %.preheader208.5
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !22  ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 125
  br i1 %i.ev, label %.thread180, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = sext i8 %i.eu to i32                    ; 2 uses
  %i.ex = add nsw i32 %i.ew, -48                  ; 2 uses
  %i.ey = icmp ult i32 %i.ex, 10                  ; 2 uses
  %i.ez = or i32 %i.ew, 32                        ; 2 uses
  %i.fa = add nsw i32 %i.ez, -97
  %i.fb = icmp ult i32 %i.fa, 6
  %i.fc = select i1 %i.ey, i1 true, i1 %i.fb
  br i1 %i.fc, label %.preheader208.6, label %.thread202

.preheader208.6:                                  ; preds = %bb.z
  %i.fd = shl i32 %i.eq, 4
  %i.fe = add nsw i32 %i.ez, -87
  %i.ff = select i1 %i.ey, i32 %i.ex, i32 %i.fe
  %i.fg = add i32 %i.ff, %i.fd                    ; 2 uses
  %i.fh = add i64 %.0127235, 9                    ; 3 uses
  %i.fi = icmp eq i64 %i.fh, %i.f
  br i1 %i.fi, label %.thread202, label %bb.aa

bb.aa:                                            ; preds = %.preheader208.6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22  ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 125
  br i1 %i.fl, label %.thread180, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = sext i8 %i.fk to i32                    ; 2 uses
  %i.fn = add nsw i32 %i.fm, -48                  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 10                  ; 2 uses
  %i.fp = or i32 %i.fm, 32                        ; 2 uses
  %i.fq = add nsw i32 %i.fp, -97
  %i.fr = icmp ult i32 %i.fq, 6
  %i.fs = select i1 %i.fo, i1 true, i1 %i.fr
  br i1 %i.fs, label %.preheader208.7, label %.thread202

.preheader208.7:                                  ; preds = %bb.ab
  %i.ft = shl i32 %i.fg, 4
  %i.fu = add nsw i32 %i.fp, -87
  %i.fv = select i1 %i.fo, i32 %i.fn, i32 %i.fu
  %i.fw = add i32 %i.fv, %i.ft                    ; 2 uses
  %i.fx = add i64 %.0127235, 10                   ; 3 uses
  %i.fy = icmp eq i64 %i.fx, %i.f
  br i1 %i.fy, label %.thread202, label %bb.ac

bb.ac:                                            ; preds = %.preheader208.7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !22  ; 2 uses
  %i.gb = icmp eq i8 %i.ga, 125
  br i1 %i.gb, label %.thread180, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gc = sext i8 %i.ga to i32                    ; 2 uses
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau5Lexer17fixupQuotedStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.md = add nuw nsw i32 %i.ma, %i.mc            ; 3 uses
  %i.me = add i64 %.0127235, 3                    ; 4 uses
  %i.mf = icmp eq i64 %i.me, %i.f
  br i1 %i.mf, label %._crit_edge, label %.lr.ph228.1

.lr.ph228.1:                                      ; preds = %bb.ay
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.me
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !22
  %i.mi = sext i8 %i.mh to i32
  %i.mj = add nsw i32 %i.mi, -48                  ; 2 uses
  %i.mk = icmp ult i32 %i.mj, 10
  br i1 %i.mk, label %bb.az, label %._crit_edge

bb.az:                                            ; preds = %.lr.ph228.1
  %i.ml = mul nuw nsw i32 %i.md, 10
  %i.mm = add nuw nsw i32 %i.mj, %i.ml
  %i.mn = add i64 %.0127235, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.az, %.lr.ph228.1, %bb.ay, %.lr.ph228
  %.7134.lcssa = phi i64 [ %i.r, %.lr.ph228 ], [ %i.me, %bb.ay ], [ %i.me, %.lr.ph228.1 ], [ %i.mn, %bb.az ]
  %.0117.lcssa = phi i32 [ %i.lu, %.lr.ph228 ], [ %i.md, %bb.ay ], [ %i.md, %.lr.ph228.1 ], [ %i.mm, %bb.az ] ; 2 uses
  %i.mo = icmp ult i32 %.0117.lcssa, 256
  br i1 %i.mo, label %.thread195, label %.thread202

.thread195:                                       ; preds = %.preheader, %._crit_edge
  %.0117.lcssa290 = phi i32 [ %.0117.lcssa, %._crit_edge ], [ %i.lu, %.preheader ]
  %.7134.lcssa289 = phi i64 [ %.7134.lcssa, %._crit_edge ], [ %i.f, %.preheader ]
  %i.mp = trunc nuw i32 %.0117.lcssa290 to i8
  %i.mq = add i64 %.0137234, 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !22
  br label %.backedge

bb.ba:                                            ; preds = %bb.ax
  %switch.tableidx = add i8 %i.q, -97             ; 3 uses
  %i.ms = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ms, label %switch.hole_check, label %_ZN4LuauL8unescapeEc.exit

switch.hole_check:                                ; preds = %bb.ba
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 2760739, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN4LuauL8unescapeEc.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.mt = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau5Lexer17fixupQuotedStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 %i.mt
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LuauL8unescapeEc.exit

_ZN4LuauL8unescapeEc.exit:                        ; preds = %bb.ba, %switch.hole_check, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ %i.q, %switch.hole_check ], [ %i.q, %bb.ba ]
  %i.mu = add i64 %.0137234, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0137234
  store i8 %.0.i, ptr %i.mv, align 1, !tbaa !22
  br label %.backedge

._crit_edge238:                                   ; preds = %.backedge, %bb.l, %bb.c
  %.0137.lcssa = phi i64 [ 0, %bb.c ], [ %.0137234, %bb.l ], [ %.0137.be, %.backedge ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0137.lcssa, i8 noundef signext 0)
  br label %.thread202

.thread202:                                       ; preds = %bb.aw, %.thread180, %bb.av, %bb.n, %bb.m, %bb.j, %bb.o, %bb.f, %._crit_edge, %bb.e, %.preheader208.preheader, %bb.p, %.preheader208.1, %bb.r, %.preheader208.2, %bb.t, %.preheader208.3, %bb.v, %.preheader208.4, %bb.x, %.preheader208.5, %bb.z, %.preheader208.6, %bb.ab, %.preheader208.7, %bb.ad, %.preheader208.8, %bb.af, %.preheader208.9, %bb.ah, %.preheader208.10, %bb.aj, %.preheader208.11, %bb.al, %.preheader208.12, %bb.an, %.preheader208.13, %bb.ap, %.preheader208.14, %bb.ar, %.preheader208.15, %bb.at, %.preheader206, %bb.k, %._crit_edge238, %bb.a, %bb.b
  %.14 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %._crit_edge238 ], [ false, %bb.k ], [ false, %.preheader206 ], [ false, %bb.at ], [ false, %.preheader208.15 ], [ false, %bb.ar ], [ false, %.preheader208.14 ], [ false, %bb.ap ], [ false, %.preheader208.13 ], [ false, %bb.an ], [ false, %.preheader208.12 ], [ false, %bb.al ], [ false, %.preheader208.11 ], [ false, %bb.aj ], [ false, %.preheader208.10 ], [ false, %bb.ah ], [ false, %.preheader208.9 ], [ false, %bb.af ], [ false, %.preheader208.8 ], [ false, %bb.ad ], [ false, %.preheader208.7 ], [ false, %bb.ab ], [ false, %.preheader208.6 ], [ false, %bb.z ], [ false, %.preheader208.5 ], [ false, %bb.x ], [ false, %.preheader208.4 ], [ false, %bb.v ], [ false, %.preheader208.3 ], [ false, %bb.t ], [ false, %.preheader208.2 ], [ false, %bb.r ], [ false, %.preheader208.1 ], [ false, %bb.p ], [ false, %.preheader208.preheader ], [ false, %bb.e ], [ false, %._crit_edge ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.av ], [ false, %.thread180 ], [ false, %bb.aw ]
  ret i1 %.14
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef range(i64 0, 5) i64 @_ZN4LuauL6toUtf8EPcj(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %1 to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !22
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %1, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %0, align 1, !tbaa !22
  %i.g = trunc i32 %1 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !22
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %1, 65536
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %1, 12
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = or disjoint i8 %i.m, -32
  store i8 %i.n, ptr %0, align 1, !tbaa !22
  %i.o = lshr i32 %1, 6
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !22
  %i.t = trunc i32 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i32 %1, 1114112
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = lshr i32 %1, 12
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = lshr i32 %1, 6
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = trunc i32 %1 to i8
  %i.af = insertelement <4 x i8> poison, i8 %i.z, i64 0
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ab, i64 1
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ad, i64 2
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ae, i64 3
  %i.aj = and <4 x i8> %i.ai, <i8 -1, i8 63, i8 63, i8 63>
  %i.ak = or disjoint <4 x i8> %i.aj, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ak, ptr %0, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 0, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau5Lexer20fixupMultilineStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22    ; 2 uses
  %i.f = icmp eq i8 %i.e, 13
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !22
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = icmp eq i8 %i.e, 10
  %spec.select.idx = zext i1 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %spec.select.idx.sink = phi i64 [ %spec.select.idx, %bb.d ], [ 2, %bb.c ]
  %spec.select = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select.idx.sink
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.120 = phi ptr [ %spec.select, %bb.e ], [ %i.o, %bb.i ] ; 3 uses
  %.0 = phi ptr [ %i.d, %bb.e ], [ %.1, %bb.i ]   ; 3 uses
  %i.k = load i8, ptr %.120, align 1, !tbaa !22   ; 2 uses
  switch i8 %i.k, label %bb.h [
    i8 0, label %bb.j
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.120, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink22 = phi i8 [ %i.k, %bb.h ], [ 10, %bb.g ]
  %.sink = phi i64 [ 1, %bb.h ], [ 2, %bb.g ]
  store i8 %.sink22, ptr %.0, align 1, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.120, i64 %.sink
  %.1 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.f, !llvm.loop !105

bb.j:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !tbaa !31
  %i.q = ptrtoint ptr %.0 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i8 noundef signext 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit, label %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge

._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge: ; preds = %bb.b
  %.pre = zext i32 %i.f to i64
  br label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !36
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.l = zext i32 %i.f to i64                     ; 2 uses
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.k, i64 %i.l)
  %i.m = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.m, label %.thread, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread: ; preds = %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit
  %.pre-phi = phi i64 [ %.pre, %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge ], [ %i.l, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  %i.p = add i64 %i.o, -1                         ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread
  %i.q = load ptr, ptr %1, align 8, !tbaa !36     ; 5 uses
  %i.r = add nsw i64 %.pre-phi, -1
  %xtraiter = and i64 %.pre-phi, 3                ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.pre-phi, 4294967292
  br label %bb.d

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i ], [ %i.aw, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.09.i.epil = phi i64 [ %.09.i.epil.init, %.epil.preheader ], [ %i.y, %bb.c ] ; 2 uses
  %.078.i.epil = phi i32 [ %.078.i.epil.init, %.epil.preheader ], [ %i.x, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i.epil
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %.078.i.epil, %i.v
  %i.x = mul i32 %i.w, 16777619                   ; 2 uses
  %i.y = add nuw nsw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !106

._crit_edge.loopexit.i:                           ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aw, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.x, %bb.c ]
  %i.z = zext i32 %.lcssa to i64
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ax, %bb.d ] ; 5 uses
  %.078.i = phi i32 [ -2128831035, %.lr.ph.i.new ], [ %i.aw, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %.078.i, %i.ac
  %i.ae = mul i32 %i.ad, 16777619
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, 16777619
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ak, %i.ao
  %i.aq = mul i32 %i.ap, 16777619
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = zext i8 %i.at to i32
  %i.av = xor i32 %i.aq, %i.au
  %i.aw = mul i32 %i.av, 16777619                 ; 3 uses
  %i.ax = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.d, !llvm.loop !0

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i64 [ 2166136261, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread ], [ %i.z, %._crit_edge.loopexit.i ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !44
  %i.az = zext i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread
  %.07.lcssa.i.pn = phi i64 [ %.07.lcssa.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit ], [ %i.bm, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  %.01832 = phi i64 [ 0, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit ], [ %i.bl, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  %.01933 = and i64 %.07.lcssa.i.pn, %i.p         ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.01933 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !35 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %i.f
  br i1 %i.bd, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25: ; preds = %bb.e
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bf = load ptr, ptr %1, align 8, !tbaa !36
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.be, ptr %i.bf, i64 %.pre-phi)
  %i.bg = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bg, label %.thread, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread: ; preds = %bb.e, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25
  %i.bh = icmp eq i32 %i.bc, %i.h
  br i1 %i.bh, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !36
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bi, ptr %i.bj, i64 %i.az)
  %i.bk = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.bk, label %.thread, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27
  %i.bl = add i64 %.01832, 1                      ; 3 uses
  %i.bm = add i64 %i.bl, %.01933
  %.not = icmp ugt i64 %i.bl, %i.p
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !107

.thread:                                          ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit, %bb.a
  %.4 = phi ptr [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit ], [ null, %bb.a ], [ %i.ba, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25 ], [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27 ], [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.16.24.copyload = load ptr, ptr %i.e, align 8, !tbaa !32
  %.sroa.18.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.18.24.copyload = load i32, ptr %.sroa.18.24..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %spec.select, 4
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 6 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.h = icmp ult i64 %spec.select, 4
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.05.i.i = phi i64 [ 0, %.new ], [ %i.p, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.p = add nuw i64 %.05.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa, %bb.b
  %.05.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05.i.i.epil = phi i64 [ %i.r, %.lr.ph.i.i.epil ], [ %.05.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.r = add nuw i64 %.05.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !108

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, %bb.a
  %i.s = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.g, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit
  %i.t = add i64 %spec.select, -1                 ; 2 uses
  %i.u = zext i32 %.sroa.18.24.copyload to i64
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !44  ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !111
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !30
  %.not.i11 = icmp eq ptr %.pre28, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.v = phi ptr [ %.pre29, %._crit_edge.thread ], [ %.pre28, %._crit_edge ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #20
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.pre29, i64 %.025 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35   ; 5 uses
  %i.z = load i32, ptr %.sroa.18.24..sroa_idx, align 8, !tbaa !35
  %i.aa = icmp eq i32 %i.y, %i.z
  %.pre.i.pre = load ptr, ptr %i.w, align 8       ; 7 uses
  br i1 %i.aa, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit, label %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge

._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre30 = zext i32 %i.y to i64
  br label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.ac = zext i32 %i.y to i64                    ; 2 uses
  %bcmp.i.i = tail call i32 @bcmp(ptr %.pre.i.pre, ptr %i.ab, i64 %i.ac)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %bb.f, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread: ; preds = %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit
  %.pre-phi = phi i64 [ %.pre30, %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge ], [ %i.ac, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit ] ; 4 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader, label %.lr.ph.i.i12.preheader

.lr.ph.i.i12.preheader:                           ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread
  %i.ae = add nsw i64 %.pre-phi, -1
  %xtraiter42 = and i64 %.pre-phi, 3              ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %.lr.ph.i.i12.epil.preheader, label %.lr.ph.i.i12.preheader.new

.lr.ph.i.i12.preheader.new:                       ; preds = %.lr.ph.i.i12.preheader
  %unroll_iter47 = and i64 %.pre-phi, 4294967292
  br label %.lr.ph.i.i12

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader: ; preds = %._crit_edge.loopexit.i.i, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread
  %.07.lcssa.i.pn.i.ph = phi i64 [ %i.am, %._crit_edge.loopexit.i.i ], [ 2166136261, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread ]
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i12
  %lcmp.mod44.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i12.epil.preheader

.lr.ph.i.i12.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i12.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i12.preheader ], [ %i.bk, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i.i12.preheader ], [ %i.bj, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i12.epil

.lr.ph.i.i12.epil:                                ; preds = %.lr.ph.i.i12.epil, %.lr.ph.i.i12.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.al, %.lr.ph.i.i12.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i12.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %i.ak, %.lr.ph.i.i12.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i12.epil.preheader ]
  %epil.iter43 = phi i64 [ %epil.iter43.next, %.lr.ph.i.i12.epil ], [ 0, %.lr.ph.i.i12.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i.pre, i64 %.09.i.i.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %.078.i.i.epil, %i.ai
  %i.ak = mul i32 %i.aj, 16777619                 ; 2 uses
  %i.al = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter43.next = add i64 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i64 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i12.epil, !llvm.loop !109

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i12.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bj, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ak, %.lr.ph.i.i12.epil ]
  %i.am = zext i32 %.lcssa to i64
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i.i12, %.lr.ph.i.i12.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i12.preheader.new ], [ %i.bk, %.lr.ph.i.i12 ] ; 5 uses
  %.078.i.i = phi i32 [ -2128831035, %.lr.ph.i.i12.preheader.new ], [ %i.bj, %.lr.ph.i.i12 ]
  %niter48 = phi i64 [ 0, %.lr.ph.i.i12.preheader.new ], [ %niter48.next.3, %.lr.ph.i.i12 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.pre, i64 %.09.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %.078.i.i, %i.ap
  %i.ar = mul i32 %i.aq, 16777619
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i.pre, i64 %.09.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.ar, %i.av
  %i.ax = mul i32 %i.aw, 16777619
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.pre, i64 %.09.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = zext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 16777619
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.pre, i64 %.09.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh
  %i.bj = mul i32 %i.bi, 16777619                 ; 3 uses
  %i.bk = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter48.next.3 = add i64 %niter48, 4           ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i12, !llvm.loop !0

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i: ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i
  %.07.lcssa.i.pn.i = phi i64 [ %i.bv, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ], [ %.07.lcssa.i.pn.i.ph, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader ]
  %.02033.i = phi i64 [ %i.bu, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ], [ 0, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader ]
  %.02134.i = and i64 %.07.lcssa.i.pn.i, %i.t     ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02134.i ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, %.sroa.18.24.copyload
  br i1 %i.bo, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i: ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !36
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bp, ptr %.sroa.16.24.copyload, i64 %i.u)
  %i.bq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bq, label %bb.e, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

bb.e:                                             ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !50
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i
  %i.br = icmp eq i32 %i.bn, %i.y
  br i1 %i.br, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !36
  %bcmp.i.i26.i = tail call i32 @bcmp(ptr %i.bs, ptr %.pre.i.pre, i64 %.pre-phi)
  %i.bt = icmp eq i32 %bcmp.i.i26.i, 0
  br i1 %i.bt, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bu = add i64 %.02033.i, 1                    ; 3 uses
  %i.bv = add i64 %i.bu, %.02134.i
  %.not.i14 = icmp ule i64 %i.bu, %i.t
  tail call void @llvm.assume(i1 %.not.i14)
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !50
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit
  %i.bw = add nuw i64 %.025, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.s
  br i1 %i.bx, label %bb.d, label %._crit_edge.thread, !llvm.loop !110

._crit_edge.thread:                               ; preds = %bb.f
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !111
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !30
  br label %bb.c
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"_ZTSN4Luau6Lexeme4TypeE", !10, i64 0}
!16 = !{!"_ZTSN4Luau8PositionE", !11, i64 0, !11, i64 4}
!17 = !{!"_ZTSN4Luau8LocationE", !16, i64 0, !16, i64 8}
!18 = !{!"_ZTSN4Luau6LexemeE", !15, i64 0, !17, i64 4, !11, i64 20, !10, i64 24}
!19 = !{!18, !15, i64 0}
!20 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14}
!21 = !{!18, !11, i64 20}
!22 = !{!10, !10, i64 0}
!23 = !{!"any pointer", !10, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"long", !10, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !27, i64 8, !10, i64 16}
!29 = !{!28, !27, i64 8}
!30 = !{!27, !27, i64 0}
!31 = !{!28, !24, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!"_ZTSN4Luau7AstNameE", !24, i64 0}
!34 = !{!"_ZTSN4Luau12AstNameTable5EntryE", !33, i64 0, !11, i64 8, !15, i64 12}
!35 = !{!34, !11, i64 8}
!36 = !{!34, !24, i64 0}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!15, !15, i64 0}
!40 = !{!"p1 _ZTSN4Luau12AstNameTable5EntryE", !23, i64 0}
!41 = !{!"_ZTSN4Luau12AstNameTable9EntryHashE"}
!42 = !{!"_ZTSSt8equal_toIN4Luau12AstNameTable5EntryEE"}
!43 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEE", !40, i64 0, !27, i64 8, !27, i64 16, !34, i64 24, !41, i64 40, !42, i64 41}
!44 = !{!43, !40, i64 0}
!45 = !{!43, !27, i64 8}
!46 = !{!"p1 _ZTSN4Luau9AllocatorE", !23, i64 0}
!47 = !{!33, !24, i64 0}
!48 = !{!34, !15, i64 12}
!49 = !{!43, !27, i64 16}
!50 = !{i64 0, i64 8, !32, i64 8, i64 4, !14, i64 12, i64 4, !39}
!51 = !{!"_ZTSN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EEE", !43, i64 0}
!52 = !{!"_ZTSN4Luau12AstNameTableE", !51, i64 0, !46, i64 48}
!53 = !{!52, !46, i64 48}
!54 = !{}
!55 = !{i64 8}
!56 = !{!"p1 _ZTSN4Luau12AstNameTableE", !23, i64 0}
!57 = !{!"bool", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSN4Luau5LexerE", !24, i64 0, !27, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !18, i64 32, !17, i64 64, !56, i64 80, !57, i64 88, !57, i64 89, !61, i64 96}
!63 = !{!62, !24, i64 0}
!64 = !{!62, !27, i64 8}
!65 = !{!62, !11, i64 16}
!66 = !{!62, !11, i64 20}
!67 = !{!62, !11, i64 24}
!68 = !{!62, !57, i64 88}
!69 = !{!62, !57, i64 89}
!70 = !{i8 0, i8 2}
!71 = !{i64 0, i64 4, !39, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 8, !22}
!72 = !{!23, !23, i64 0}
!73 = !{!"_ZTSN4Luau5Lexer9BraceTypeE", !10, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!58, !23, i64 8}
!76 = !{!58, !23, i64 0}
!77 = !{!58, !23, i64 16}
!78 = distinct !{!78, !37}
!79 = !{!46, !46, i64 0}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !38}
!82 = !{!56, !56, i64 0}
!83 = distinct !{!83, !38}
!84 = !{!62, !15, i64 32}
!85 = distinct !{!85, i1 true, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_"}
!86 = distinct !{!86, !85, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4Luau5Lexer27readInterpolatedStringBeginEv"}
!88 = distinct !{!88, !87, !"_ZN4Luau5Lexer27readInterpolatedStringBeginEv: argument 0"}
!89 = !{!16, !11, i64 4}
!90 = !{!86}
!91 = !{!88}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, i1 true, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_"}
!94 = distinct !{!94, !93, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_: argument 0"}
!95 = distinct !{!95, !38}
!96 = !{!94}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = !{!62, !56, i64 80}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !37}
!110 = distinct !{!110, !38}
!111 = !{!40, !40, i64 0}
end_hunk_1
