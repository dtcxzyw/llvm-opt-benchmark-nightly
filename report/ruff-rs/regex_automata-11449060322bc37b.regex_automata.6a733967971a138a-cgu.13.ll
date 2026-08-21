inline.NumInlined: 491
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker3new:bb.a
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !365, !noalias !364
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !5, !alias.scope !366
  br label %bb.j

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !5, !noalias !376, !noundef !4 ; 3 uses
  switch i8 %i.n, label %bb.f [
    i8 -1, label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i
    i8 2, label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 16, !noalias !376
  %i.q = load ptr, ptr %i.o, align 16, !noalias !376, !nonnull !4, !noundef !4
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !377
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.m, align 8, !range !3, !noalias !376, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.v = load i64, ptr %i.u, align 16, !noalias !376, !noundef !4
  br label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i: ; preds = %bb.e, %bb.g, %bb.e
  %i.w = phi i8 [ %i.n, %bb.e ], [ %i.t, %bb.g ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.0.sroa.5.0.i.i.i = phi i64 [ undef, %bb.e ], [ %i.v, %bb.g ], [ undef, %bb.e ]
  %i.x = phi <2 x ptr> [ undef, %bb.e ], [ %i.p, %bb.g ], [ undef, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load <2 x i64>, ptr %i.e, align 16, !noalias !376
  store <2 x i64> %i.z, ptr %i.y, align 8, !alias.scope !377, !noalias !364
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.x, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !377, !noalias !364
  %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.sroa.5.0.i.i.i, ptr %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !377, !noalias !364
  %.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.w, ptr %.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !377, !noalias !364
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !377, !noalias !364
  store i64 -2, ptr %0, align 8, !alias.scope !377, !noalias !364
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker7builder.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_(ptr noalias noundef align 8 dereferenceable(496) %i.e) #26
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i, %bb.d
  %i.ab = phi i8 [ %i.w, %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder14build_from_nfa.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !357
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ad = icmp eq i8 %i.ab, -1
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ae = icmp eq i8 %i.ab, 2
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.af = load ptr, ptr %i.ac, align 16, !alias.scope !393, !nonnull !4, !noundef !4
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !393
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs98D8VPWzHuM_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.h) #26
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7BuilderEBJ_.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias noundef align 8 dereferenceable(448) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker7builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([496 x i8]) align 8 captures(none) dereferenceable(496) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !394
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !394
  store i64 0, ptr %i.b, align 8, !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !394
  invoke void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.a)
          to label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder3new.exit unwind label %bb.b, !noalias !394

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack6ConfigEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #26
          to label %bb.d unwind label %bb.c, !noalias !394

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !394
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB4_7Builder3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.e, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !394
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher15is_word_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.not.i7 = icmp ugt i64 %2, %1
  br i1 %.not.i7, label %bb.p, label %bb.b, !prof !400

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 3 uses
  %i.f = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %.sroa.09.0.i.i80 = add nsw i64 %2, -1          ; 2 uses
  %i.g = icmp ugt i64 %.sroa.09.0.i.i80, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i81, -1 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i.i, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i.i81 = phi i64 [ %.sroa.09.0.i.i, %bb.d ], [ %.sroa.09.0.i.i80, %bb.c ] ; 5 uses
  %i.i = icmp ult i64 %.sroa.09.0.i.i81, %2
  br i1 %i.i, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i.i81, %bb.e ] ; 5 uses
  %i.j = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.j, label %bb.o, label %bb.g, !prof !108

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i81
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !404, !noundef !4
  %i.m = icmp slt i8 %i.l, -64
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i81, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !404
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %3 = load i8, ptr %i.o, align 1, !alias.scope !408, !noundef !4 ; 6 uses
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ult i8 %3, -64
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i8 %3, -32
  br i1 %i.q, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i8 %3, -16
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9: ; preds = %bb.j
  %i.s = icmp samesign ugt i8 %3, -9
  %i.t = icmp ult i64 %i.n, 4
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread: ; preds = %bb.i, %bb.j
  %.sroa.7.0.i.i.i10.ph = phi i64 [ 2, %bb.i ], [ 3, %bb.j ] ; 2 uses
  %i.u = icmp ugt i64 %.sroa.7.0.i.i.i10.ph, %i.n
  br i1 %i.u, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread.thread: ; preds = %bb.g
  %5 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %5, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread.thread
  %.sroa.419.4.insert.ext.i.i28 = zext nneg i8 %3 to i32
  br label %bb.q

.thread11:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9
  %.sroa.7.0.i.i.i1051013 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9 ], [ %.sroa.7.0.i.i.i10.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !408
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %.sroa.7.0.i.i.i1051013)
  %i.v = load i64, ptr %i.b, align 8, !range !106, !noalias !408, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, label %bb.k

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64: ; preds = %.thread11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !408
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit

bb.k:                                             ; preds = %.thread11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !408, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !408, !noundef !4 ; 4 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i8, ptr %i.y, align 1, !noalias !409, !noundef !4 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = and i8 %i.ac, 31
  %i.ag = zext nneg i8 %i.af to i32               ; 3 uses
  %i.ah = icmp samesign ne i64 %i.aa, 1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !409, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ag, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i8 %i.ac to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aq = icmp samesign ne i64 %i.aa, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ap, align 1, !noalias !409, !noundef !4
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ag, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ba = icmp samesign ne i64 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.az, align 1, !noalias !409, !noundef !4
  %i.bc = shl nuw nsw i32 %i.ag, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !404
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i, %bb.m
  %.sroa.4.0.i.ph = phi i32 [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i ], [ %i.bi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !408
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #28, !noalias !397
  unreachable

bb.q:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60
  %.sroa.7.sroa.0.0.i9.i.ph63 = phi i32 [ %.sroa.419.4.insert.ext.i.i28, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60 ], [ %.sroa.4.0.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i ]
  %i.bk = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i.ph63) ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread.thread, %bb.h, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, %bb.b, %bb.q
  %.sroa.0.0.i21 = phi i8 [ %i.bk, %bb.q ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64 ], [ 0, %bb.b ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9 ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread.thread ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i9.thread ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.bm = sub nuw nsw i64 %1, %2                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.bo = icmp eq i64 %1, %2
  br i1 %i.bo, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.s

bb.s:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !418, !noundef !4 ; 6 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = icmp samesign ult i8 %i.bp, -64
  br i1 %i.br, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp samesign ult i8 %i.bp, -32
  br i1 %i.bs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp samesign ult i8 %i.bp, -16
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i: ; preds = %bb.v
  %i.bu = icmp samesign ugt i8 %i.bp, -9
  %i.bv = icmp samesign ult i64 %i.bm, 4
  %or.cond77 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond77, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %bb.u, %bb.v
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %bb.u ], [ 3, %bb.v ] ; 2 uses
  %i.bw = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bm
  br i1 %i.bw, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

.thread69:                                        ; preds = %bb.s
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bp to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

.thread26:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i
  %.sroa.7.0.i.i.i192528 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !418
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %.sroa.7.0.i.i.i192528)
  %i.bx = load i64, ptr %i.c, align 8, !range !106, !noalias !418, !noundef !4
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.by, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.thread26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !418, !nonnull !4, !noundef !4 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !418, !noundef !4 ; 4 uses
  %i.cd = icmp samesign eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.ca, align 1, !noalias !419, !noundef !4 ; 5 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32: ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ch = and i8 %i.ce, 31
  %i.ci = zext nneg i8 %i.ch to i32               ; 3 uses
  %i.cj = icmp samesign ne i64 %i.cc, 1
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = load i8, ptr %i.cg, align 1, !noalias !419, !noundef !4
  %i.cl = shl nuw nsw i32 %i.ci, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = icmp samesign ugt i8 %i.ce, -33
  br i1 %i.cp, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = zext nneg i8 %i.ce to i32
  br label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cs = icmp samesign ne i64 %i.cc, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load i8, ptr %i.cr, align 1, !noalias !419, !noundef !4
  %i.cu = shl nuw nsw i32 %i.cn, 6
  %i.cv = and i8 %i.ct, 63
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ci, 12
  %i.cz = or disjoint i32 %i.cx, %i.cy
  %i.da = icmp samesign ugt i8 %i.ce, -17
  br i1 %i.da, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36, label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dc = icmp samesign ne i64 %i.cc, 3
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = load i8, ptr %i.db, align 1, !noalias !419, !noundef !4
  %i.de = shl nuw nsw i32 %i.ci, 18
  %i.df = and i32 %i.de, 1835008
  %i.dg = shl nuw nsw i32 %i.cx, 6
  %i.dh = and i8 %i.dd, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  %i.dk = or disjoint i32 %i.dj, %i.df
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35
  %.sroa.4.0.i33.ph = phi i32 [ %i.cz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i35 ], [ %i.dk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i36 ], [ %i.co, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i32 ], [ %i.cq, %bb.y ] ; 2 uses
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i33.ph, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.ab:                                            ; preds = %.thread26, %bb.z
  %.sroa.7.sroa.0.1.i.i = phi i32 [ %.sroa.4.0.i33.ph, %bb.z ], [ 0, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !418
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ab, %.thread69
  %.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.419.4.insert.ext.i.i, %.thread69 ], [ %.sroa.7.sroa.0.1.i.i, %bb.ab ]
  %.sroa.0.0.i.i = phi i1 [ false, %.thread69 ], [ %i.by, %bb.ab ]
  br i1 %.sroa.0.0.i.i, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %i.dm = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i) ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 2
  br i1 %i.dn, label %bb.ad, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, !prof !108

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %bb.t, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %bb.ac, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %.sroa.0.0.i = phi i8 [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ], [ %i.dm, %bb.ac ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ 0, %bb.t ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %i.do = icmp ne i8 %.sroa.0.0.i21, %.sroa.0.0.i
  %i.dp = zext i1 %i.do to i8
  ret i8 %i.dp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %.not.i8 = icmp ugt i64 %2, %1
  br i1 %.not.i8, label %bb.p, label %bb.b, !prof !400

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 3 uses
  %i.f = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %.sroa.09.0.i.i80 = add nsw i64 %2, -1          ; 2 uses
  %i.g = icmp ugt i64 %.sroa.09.0.i.i80, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i81, -1 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i.i, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i.i81 = phi i64 [ %.sroa.09.0.i.i, %bb.d ], [ %.sroa.09.0.i.i80, %bb.c ] ; 5 uses
  %i.i = icmp ult i64 %.sroa.09.0.i.i81, %2
  br i1 %i.i, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i.i81, %bb.e ] ; 5 uses
  %i.j = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.j, label %bb.o, label %bb.g, !prof !108

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i81
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !428, !noundef !4
  %i.m = icmp slt i8 %i.l, -64
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i81, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !428
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %3 = load i8, ptr %i.o, align 1, !alias.scope !432, !noundef !4 ; 6 uses
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ult i8 %3, -64
  br i1 %i.p, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i8 %3, -32
  br i1 %i.q, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i8 %3, -16
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10: ; preds = %bb.j
  %i.s = icmp samesign ugt i8 %3, -9
  %i.t = icmp ult i64 %i.n, 4
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %.critedge, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread: ; preds = %bb.i, %bb.j
  %.sroa.7.0.i.i.i11.ph = phi i64 [ 2, %bb.i ], [ 3, %bb.j ] ; 2 uses
  %i.u = icmp ugt i64 %.sroa.7.0.i.i.i11.ph, %i.n
  br i1 %i.u, label %.critedge, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread: ; preds = %bb.g
  %5 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %5, label %.critedge, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread
  %.sroa.419.4.insert.ext.i.i29 = zext nneg i8 %3 to i32
  br label %bb.q

.thread11:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10
  %.sroa.7.0.i.i.i1151013 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10 ], [ %.sroa.7.0.i.i.i11.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %.sroa.7.0.i.i.i1151013)
  %i.v = load i64, ptr %i.b, align 8, !range !106, !noalias !432, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, label %bb.k

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64: ; preds = %.thread11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  br label %.critedge

bb.k:                                             ; preds = %.thread11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !432, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !432, !noundef !4 ; 4 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i8, ptr %i.y, align 1, !noalias !433, !noundef !4 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = and i8 %i.ac, 31
  %i.ag = zext nneg i8 %i.af to i32               ; 3 uses
  %i.ah = icmp samesign ne i64 %i.aa, 1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !433, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ag, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i8 %i.ac to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aq = icmp samesign ne i64 %i.aa, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ap, align 1, !noalias !433, !noundef !4
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ag, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ba = icmp samesign ne i64 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.az, align 1, !noalias !433, !noundef !4
  %i.bc = shl nuw nsw i32 %i.ag, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !428
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i, %bb.m
  %.sroa.4.0.i.ph = phi i32 [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i ], [ %i.bi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #28, !noalias !422
  unreachable

bb.q:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60
  %.sroa.7.sroa.0.0.i9.i.ph63 = phi i32 [ %.sroa.419.4.insert.ext.i.i29, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60 ], [ %.sroa.4.0.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i ]
  %i.bk = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i.ph63) ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.q
  %i.bm = trunc nuw i8 %i.bk to i1
  br label %.critedge

.critedge:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread, %bb.h, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.0.0.i22 = phi i1 [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64 ], [ false, %bb.b ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10 ], [ false, %bb.h ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.bn = sub nuw nsw i64 %1, %2                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.bp = icmp eq i64 %1, %2
  br i1 %i.bp, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bq = load i8, ptr %i.bo, align 1, !alias.scope !442, !noundef !4 ; 6 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp samesign ult i8 %i.bq, -64
  br i1 %i.bs, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp samesign ult i8 %i.bq, -32
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = icmp samesign ult i8 %i.bq, -16
  br i1 %i.bu, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i: ; preds = %bb.v
  %i.bv = icmp samesign ugt i8 %i.bq, -9
  %i.bw = icmp samesign ult i64 %i.bn, 4
  %or.cond77 = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond77, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %bb.u, %bb.v
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %bb.u ], [ 3, %bb.v ] ; 2 uses
  %i.bx = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bn
  br i1 %i.bx, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

.thread69:                                        ; preds = %bb.s
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bq to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

.thread26:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i
  %.sroa.7.0.i.i.i192528 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !442
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %.sroa.7.0.i.i.i192528)
  %i.by = load i64, ptr %i.c, align 8, !range !106, !noalias !442, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1               ; 2 uses
  br i1 %i.bz, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.thread26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !442, !nonnull !4, !noundef !4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !442, !noundef !4 ; 4 uses
  %i.ce = icmp samesign eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load i8, ptr %i.cb, align 1, !noalias !443, !noundef !4 ; 5 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33: ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ci = and i8 %i.cf, 31
  %i.cj = zext nneg i8 %i.ci to i32               ; 3 uses
  %i.ck = icmp samesign ne i64 %i.cd, 1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = load i8, ptr %i.ch, align 1, !noalias !443, !noundef !4
  %i.cm = shl nuw nsw i32 %i.cj, 6
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i32               ; 2 uses
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = icmp samesign ugt i8 %i.cf, -33
  br i1 %i.cq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cr = zext nneg i8 %i.cf to i32
  br label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ct = icmp samesign ne i64 %i.cd, 2
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load i8, ptr %i.cs, align 1, !noalias !443, !noundef !4
  %i.cv = shl nuw nsw i32 %i.co, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cj, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cf, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37, label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.dd = icmp samesign ne i64 %i.cd, 3
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.dc, align 1, !noalias !443, !noundef !4
  %i.df = shl nuw nsw i32 %i.cj, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.cy, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36
  %.sroa.4.0.i34.ph = phi i32 [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36 ], [ %i.dl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37 ], [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33 ], [ %i.cr, %bb.y ] ; 2 uses
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i34.ph, 1114112
  tail call void @llvm.assume(i1 %i.dm)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.ab:                                            ; preds = %.thread26, %bb.z
  %.sroa.7.sroa.0.1.i.i = phi i32 [ %.sroa.4.0.i34.ph, %bb.z ], [ 0, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !442
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ab, %.thread69
  %.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.419.4.insert.ext.i.i, %.thread69 ], [ %.sroa.7.sroa.0.1.i.i, %bb.ab ]
  %.sroa.0.0.i.i = phi i1 [ false, %.thread69 ], [ %i.bz, %bb.ab ]
  br i1 %.sroa.0.0.i.i, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %i.dn = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i) ; 2 uses
  %i.do = icmp eq i8 %i.dn, 2
  br i1 %i.do, label %bb.ad, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit39, !prof !108

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit39: ; preds = %bb.ac
  %i.dp = xor i8 %i.dn, 1
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %bb.t, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i, %.critedge, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit39
  %.sroa.0.0.i = phi i8 [ %i.dp, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit39 ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ], [ 1, %.critedge ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ 1, %bb.t ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %.sroa.07.0 = select i1 %.sroa.0.0.i22, i8 %.sroa.0.0.i, i8 0
  ret i8 %.sroa.07.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %.not.i8 = icmp ugt i64 %2, %1
  br i1 %.not.i8, label %bb.p, label %bb.b, !prof !400

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 3 uses
  %i.f = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %.sroa.09.0.i.i80 = add nsw i64 %2, -1          ; 2 uses
  %i.g = icmp ugt i64 %.sroa.09.0.i.i80, %i.e
  br i1 %i.g, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i81, -1 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i.i, %i.e
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i.i81 = phi i64 [ %.sroa.09.0.i.i, %bb.d ], [ %.sroa.09.0.i.i80, %bb.c ] ; 5 uses
  %i.i = icmp ult i64 %.sroa.09.0.i.i81, %2
  br i1 %i.i, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i.i81, %bb.e ] ; 5 uses
  %i.j = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.j, label %bb.o, label %bb.g, !prof !108

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i81
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !452, !noundef !4
  %i.m = icmp slt i8 %i.l, -64
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i81, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !452
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %3 = load i8, ptr %i.o, align 1, !alias.scope !456, !noundef !4 ; 6 uses
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ult i8 %3, -64
  br i1 %i.p, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i8 %3, -32
  br i1 %i.q, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i8 %3, -16
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10: ; preds = %bb.j
  %i.s = icmp samesign ugt i8 %3, -9
  %i.t = icmp ult i64 %i.n, 4
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %.critedge, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread: ; preds = %bb.i, %bb.j
  %.sroa.7.0.i.i.i11.ph = phi i64 [ 2, %bb.i ], [ 3, %bb.j ] ; 2 uses
  %i.u = icmp ugt i64 %.sroa.7.0.i.i.i11.ph, %i.n
  br i1 %i.u, label %.critedge, label %.thread11

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread: ; preds = %bb.g
  %5 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %5, label %.critedge, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread
  %.sroa.419.4.insert.ext.i.i29 = zext nneg i8 %3 to i32
  br label %bb.q

.thread11:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10
  %.sroa.7.0.i.i.i1151013 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10 ], [ %.sroa.7.0.i.i.i11.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !456
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %.sroa.7.0.i.i.i1151013)
  %i.v = load i64, ptr %i.b, align 8, !range !106, !noalias !456, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, label %bb.k

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64: ; preds = %.thread11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  br label %.critedge

bb.k:                                             ; preds = %.thread11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !456, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !456, !noundef !4 ; 4 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i8, ptr %i.y, align 1, !noalias !457, !noundef !4 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = and i8 %i.ac, 31
  %i.ag = zext nneg i8 %i.af to i32               ; 3 uses
  %i.ah = icmp samesign ne i64 %i.aa, 1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !457, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ag, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i8 %i.ac to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aq = icmp samesign ne i64 %i.aa, 2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ap, align 1, !noalias !457, !noundef !4
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ag, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ba = icmp samesign ne i64 %i.aa, 3
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.az, align 1, !noalias !457, !noundef !4
  %i.bc = shl nuw nsw i32 %i.ag, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !452
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i, %bb.m
  %.sroa.4.0.i.ph = phi i32 [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i ], [ %i.bi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #28, !noalias !446
  unreachable

bb.q:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60
  %.sroa.7.sroa.0.0.i9.i.ph63 = phi i32 [ %.sroa.419.4.insert.ext.i.i29, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread60 ], [ %.sroa.4.0.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i ]
  %i.bk = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i.ph63) ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.q
  %i.bm = trunc nuw i8 %i.bk to i1
  br label %.critedge

.critedge:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread, %bb.h, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64, %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.0.0.i22 = phi i1 [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf811decode_last.exit.i.thread64 ], [ false, %bb.b ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10 ], [ false, %bb.h ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread.thread ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i10.thread ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.bn = sub nuw nsw i64 %1, %2                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.bp = icmp eq i64 %1, %2
  br i1 %i.bp, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bq = load i8, ptr %i.bo, align 1, !alias.scope !466, !noundef !4 ; 6 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp samesign ult i8 %i.bq, -64
  br i1 %i.bs, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp samesign ult i8 %i.bq, -32
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = icmp samesign ult i8 %i.bq, -16
  br i1 %i.bu, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i: ; preds = %bb.v
  %i.bv = icmp samesign ugt i8 %i.bq, -9
  %i.bw = icmp samesign ult i64 %i.bn, 4
  %or.cond77 = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond77, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %bb.u, %bb.v
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %bb.u ], [ 3, %bb.v ] ; 2 uses
  %i.bx = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bn
  br i1 %i.bx, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread26

.thread69:                                        ; preds = %bb.s
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bq to i32
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

.thread26:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i
  %.sroa.7.0.i.i.i192528 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !466
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %.sroa.7.0.i.i.i192528)
  %i.by = load i64, ptr %i.c, align 8, !range !106, !noalias !466, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1               ; 2 uses
  br i1 %i.bz, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.thread26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !466, !nonnull !4, !noundef !4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !466, !noundef !4 ; 4 uses
  %i.ce = icmp samesign eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load i8, ptr %i.cb, align 1, !noalias !467, !noundef !4 ; 5 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.y, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33: ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ci = and i8 %i.cf, 31
  %i.cj = zext nneg i8 %i.ci to i32               ; 3 uses
  %i.ck = icmp samesign ne i64 %i.cd, 1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = load i8, ptr %i.ch, align 1, !noalias !467, !noundef !4
  %i.cm = shl nuw nsw i32 %i.cj, 6
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i32               ; 2 uses
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = icmp samesign ugt i8 %i.cf, -33
  br i1 %i.cq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cr = zext nneg i8 %i.cf to i32
  br label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ct = icmp samesign ne i64 %i.cd, 2
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load i8, ptr %i.cs, align 1, !noalias !467, !noundef !4
  %i.cv = shl nuw nsw i32 %i.co, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cj, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cf, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37, label %bb.z

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.dd = icmp samesign ne i64 %i.cd, 3
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.dc, align 1, !noalias !467, !noundef !4
  %i.df = shl nuw nsw i32 %i.cj, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.cy, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36
  %.sroa.4.0.i34.ph = phi i32 [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14.i36 ], [ %i.dl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16.i37 ], [ %i.cp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12.i33 ], [ %i.cr, %bb.y ] ; 2 uses
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i34.ph, 1114112
  tail call void @llvm.assume(i1 %i.dm)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.ab:                                            ; preds = %.thread26, %bb.z
  %.sroa.7.sroa.0.1.i.i = phi i32 [ %.sroa.4.0.i34.ph, %bb.z ], [ 0, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !466
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ab, %.thread69
  %.sroa.7.sroa.0.0.i.i = phi i32 [ %.sroa.419.4.insert.ext.i.i, %.thread69 ], [ %.sroa.7.sroa.0.1.i.i, %bb.ab ]
  %.sroa.0.0.i.i = phi i1 [ false, %.thread69 ], [ %i.bz, %bb.ab ]
  br i1 %.sroa.0.0.i.i, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %i.dn = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i) ; 2 uses
  %i.do = icmp eq i8 %i.dn, 2
  br i1 %i.do, label %bb.ad, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, !prof !108

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %bb.t, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i, %.critedge, %bb.ac, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i
  %.sroa.0.0.i = phi i8 [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ], [ %i.dn, %bb.ac ], [ 0, %.critedge ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ 0, %bb.t ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %.sroa.07.0 = select i1 %.sroa.0.0.i22, i8 0, i8 %.sroa.0.0.i
  ret i8 %.sroa.07.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not20 = icmp ugt i64 %2, %1
  br i1 %.not20, label %bb.n, label %bb.c, !prof !108

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread.thread, %bb.s, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57.thread79, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %bb.a
  %.sroa.06.0 = phi i1 [ false, %bb.a ], [ %i.bo, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57.thread79 ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54 ], [ false, %bb.s ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread.thread ], [ false, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread ] ; 5 uses
  %i.j = icmp ult i64 %2, %1
  br i1 %i.j, label %bb.ab, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 5 uses
  %i.l = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 4 uses
  %.sroa.09.0.i104 = add nsw i64 %2, -1           ; 2 uses
  %i.m = icmp ugt i64 %.sroa.09.0.i104, %i.k
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i = add nsw i64 %.sroa.09.0.i105, -1 ; 2 uses
  %i.n = icmp ugt i64 %.sroa.09.0.i, %i.k
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i105 = phi i64 [ %.sroa.09.0.i, %bb.d ], [ %.sroa.09.0.i104, %bb.c ] ; 5 uses
  %i.o = icmp ult i64 %.sroa.09.0.i105, %2
  br i1 %i.o, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i105, %bb.e ] ; 5 uses
  %i.p = icmp ugt i64 %.sroa.09.0.i.lcssa, %2
  br i1 %i.p, label %bb.m, label %bb.g, !prof !108

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i105
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !470, !noundef !4
  %i.s = icmp slt i8 %i.r, -64
  br i1 %i.s, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i105, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !470
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.t = sub nuw nsw i64 %2, %.sroa.09.0.i.lcssa  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %3 = load i8, ptr %i.u, align 1, !alias.scope !473, !noundef !4 ; 5 uses
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %5 = icmp eq i64 %2, %.sroa.09.0.i.lcssa
  br i1 %5, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i8 %3, -64
  br i1 %i.v, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp samesign ult i8 %3, -32
  br i1 %i.w, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp samesign ult i8 %3, -16
  br i1 %i.x, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i: ; preds = %bb.k
  %i.y = icmp samesign ugt i8 %3, -9
  %i.z = icmp ult i64 %i.t, 4
  %or.cond49 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond49, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.j, %bb.k
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.j ], [ 3, %bb.k ] ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.7.0.i.i.ph, %i.t
  br i1 %i.aa, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread9

.thread9:                                         ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !473
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %.sroa.7.0.i.i3811)
  %i.ab = load i64, ptr %i.i, align 8, !range !106, !noalias !473, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %.split.thread, label %bb.l

.split.thread:                                    ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !473
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

bb.l:                                             ; preds = %.thread9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !473, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !473, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !473
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store ptr %i.ae, ptr %i.h, align 8, !noalias !473
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !473
  %i.aj = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.h)
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, label %6, !prof !169

6:                                                ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !473
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !470
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

.critedge:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %.sroa.09.0.i.i108 = add nsw i64 %2, -1         ; 2 uses
  %i.am = icmp ugt i64 %.sroa.09.0.i.i108, %i.k
  br i1 %i.am, label %.lr.ph111, label %._crit_edge112

bb.o:                                             ; preds = %bb.p
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i109, -1 ; 2 uses
  %i.an = icmp ugt i64 %.sroa.09.0.i.i, %i.k
  br i1 %i.an, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.critedge, %bb.o
  %.sroa.09.0.i.i109 = phi i64 [ %.sroa.09.0.i.i, %bb.o ], [ %.sroa.09.0.i.i108, %.critedge ] ; 5 uses
  %i.ao = icmp ult i64 %.sroa.09.0.i.i109, %2
  br i1 %i.ao, label %bb.p, label %bb.q

._crit_edge112:                                   ; preds = %bb.o, %bb.p, %.critedge
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %.critedge ], [ %umin, %bb.o ], [ %.sroa.09.0.i.i109, %bb.p ] ; 5 uses
  %i.ap = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.ap, label %bb.y, label %bb.r, !prof !108

bb.p:                                             ; preds = %.lr.ph111
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i109
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !482, !noundef !4
  %i.as = icmp slt i8 %i.ar, -64
  br i1 %i.as, label %bb.o, label %._crit_edge112

bb.q:                                             ; preds = %.lr.ph111
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i109, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !482
  unreachable

bb.r:                                             ; preds = %._crit_edge112
  %i.at = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %7 = load i8, ptr %i.au, align 1, !alias.scope !486, !noundef !4 ; 6 uses
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = icmp samesign ult i8 %7, -64
  br i1 %i.av, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = icmp samesign ult i8 %7, -32
  br i1 %i.aw, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = icmp samesign ult i8 %7, -16
  br i1 %i.ax, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54: ; preds = %bb.u
  %i.ay = icmp samesign ugt i8 %7, -9
  %i.az = icmp ult i64 %i.at, 4
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread: ; preds = %bb.t, %bb.u
  %.sroa.7.0.i.i.i55.ph = phi i64 [ 2, %bb.t ], [ 3, %bb.u ] ; 2 uses
  %i.ba = icmp ugt i64 %.sroa.7.0.i.i.i55.ph, %i.at
  br i1 %i.ba, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread.thread: ; preds = %bb.r
  %9 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %9, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread

.thread:                                          ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread.thread
  %.sroa.419.4.insert.ext.i.i73 = zext nneg i8 %7 to i32
  br label %bb.z

.thread21:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54
  %.sroa.7.0.i.i.i55142023 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54 ], [ %.sroa.7.0.i.i.i55.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i54.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !486
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %.sroa.7.0.i.i.i55142023)
  %i.bb = load i64, ptr %i.c, align 8, !range !106, !noalias !486, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57.thread79, label %bb.v

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i57.thread79: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !486
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

bb.v:                                             ; preds = %.thread21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !486, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !486, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !486
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  store ptr %i.be, ptr %i.b, align 8, !noalias !486
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !486
  %i.bj = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.bk = extractvalue { i32, i32 } %i.bj, 0
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %bb.x, label %bb.w, !prof !169

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.x:                                             ; preds = %bb.v
  %10 = extractvalue { i32, i32 } %i.bj, 1        ; 2 uses
  %11 = icmp ult i32 %10, 1114112
  tail call void @llvm.assume(i1 %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !486
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge112
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !482
  unreachable

bb.z:                                             ; preds = %bb.x, %.thread
  %.sroa.7.sroa.0.0.i9.i78 = phi i32 [ %.sroa.419.4.insert.ext.i.i73, %.thread ], [ %10, %bb.x ]
  %i.bm = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i78) ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 2
  br i1 %i.bn, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.z
  %i.bo = trunc nuw i8 %i.bm to i1
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

bb.ab:                                            ; preds = %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit
  %i.bp = sub nuw nsw i64 %1, %2                  ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !487, !noundef !4 ; 8 uses
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread, label %bb.ac

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread: ; preds = %bb.ab
  %i.bt = icmp eq i64 %1, %2
  br i1 %i.bt, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90

bb.ac:                                            ; preds = %bb.ab
  %i.bu = icmp samesign ult i8 %i.br, -64
  br i1 %i.bu, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = icmp samesign ult i8 %i.br, -32
  br i1 %i.bv, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = icmp samesign ult i8 %i.br, -16
  br i1 %i.bw, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31: ; preds = %bb.ae
  %i.bx = icmp samesign ugt i8 %i.br, -9
  %i.by = icmp samesign ult i64 %i.bp, 4
  %or.cond50 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond50, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread33

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i32.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
  %i.bz = icmp samesign ugt i64 %.sroa.7.0.i.i32.ph, %i.bp
  br i1 %i.bz, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread, label %.thread33

.thread33:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31
  %.sroa.7.0.i.i32263235 = phi i64 [ %.sroa.7.0.i.i32.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !487
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %.sroa.7.0.i.i32263235)
  %i.ca = load i64, ptr %i.g, align 8, !range !106, !noalias !487, !noundef !4
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %.split.thread.a, label %bb.af

.split.thread.a:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !487
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

bb.af:                                            ; preds = %.thread33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !487, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !487, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !487
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  store ptr %i.cd, ptr %i.f, align 8, !noalias !487
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !noalias !487
  %i.ci = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.f)
  %i.cj = extractvalue { i32, i32 } %i.ci, 0
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.split, label %bb.ag, !prof !169

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

.split:                                           ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !487
  %i.cl = icmp samesign ult i8 %i.br, -32
  br i1 %i.cl, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76 ], [ %.sroa.06.0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  %i.cm = xor i1 %.sroa.013.0, true
  %i.cn = zext i1 %i.cm to i8
  br label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread

bb.ah:                                            ; preds = %.split
  %i.co = icmp samesign ult i8 %i.br, -16
  br i1 %i.co, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split ], [ 3, %bb.ah ] ; 2 uses
  %i.cp = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bp
  br i1 %i.cp, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45

.thread42:                                        ; preds = %bb.ah
  %i.cq = icmp samesign ult i64 %i.bp, 4
  br i1 %i.cq, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.br to i32
  br label %bb.ak

.thread45:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !490
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %.sroa.7.0.i.i.i384447)
  %i.cr = load i64, ptr %i.e, align 8, !range !106, !noalias !490, !noundef !4
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94, label %bb.ai

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread94: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !490
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.ai:                                            ; preds = %.thread45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !490, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !490, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !490
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  store ptr %i.cu, ptr %i.d, align 8, !noalias !490
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !490
  %i.cz = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.d) ; 2 uses
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !prof !169

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.dc = extractvalue { i32, i32 } %i.cz, 1      ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 1114112
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !490
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90
  %.sroa.7.sroa.0.0.i.i93 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread90 ], [ %i.dc, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ]
  %i.de = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i93) ; 2 uses
  %i.df = icmp eq i8 %i.de, 2
  br i1 %i.df, label %bb.al, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76, !prof !108

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit76: ; preds = %bb.ak
  %i.dg = trunc nuw i8 %i.de to i1
  %i.dh = xor i1 %.sroa.06.0, %i.dg
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %bb.ac, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31, %.split.thread.a, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i, %bb.i, %.split.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread, %bb.h, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ], [ %i.cn, %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread.thread ], [ 0, %.split.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ], [ 0, %.split.thread.a ], [ 0, %bb.i ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31 ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i31.thread ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = icmp ult i64 %2, %1
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 %1, %2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !495, !noundef !4 ; 8 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread.thread, label %bb.c

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread.thread: ; preds = %bb.b
  %i.k = icmp eq i64 %1, %2
  br i1 %i.k, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread37

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i8 %i.i, -64
  br i1 %i.l, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i8 %i.i, -32
  br i1 %i.m, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i8 %i.i, -16
  br i1 %i.n, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i: ; preds = %bb.e
  %i.o = icmp samesign ugt i8 %i.i, -9
  %i.p = icmp samesign ult i64 %i.g, 4
  %or.cond24 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond24, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.d, %bb.e
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.d ], [ 3, %bb.e ] ; 2 uses
  %i.q = icmp samesign ugt i64 %.sroa.7.0.i.i.ph, %i.g
  br i1 %i.q, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9

.thread9:                                         ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !495
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i3811)
  %i.r = load i64, ptr %i.e, align 8, !range !106, !noalias !495, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %.split.thread, label %bb.f

.split.thread:                                    ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !495
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.f:                                             ; preds = %.thread9
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !495, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !495, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !495
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store ptr %i.u, ptr %i.d, align 8, !noalias !495
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !495
  %i.z = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.d)
  %i.aa = extractvalue { i32, i32 } %i.z, 0
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.split, label %bb.g, !prof !169

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

.split:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !495
  %i.ac = icmp samesign ult i8 %i.i, -32
  br i1 %i.ac, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.h

bb.h:                                             ; preds = %.split
  %i.ad = icmp samesign ult i8 %i.i, -16
  br i1 %i.ad, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread18

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split, %bb.h
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split ], [ 3, %bb.h ] ; 2 uses
  %i.ae = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.g
  br i1 %i.ae, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21

.thread18:                                        ; preds = %bb.h
  %i.af = icmp samesign ult i64 %i.g, 4
  br i1 %i.af, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread37: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.i to i32
  br label %bb.k

.thread21:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18
  %.sroa.7.0.i.i.i142023 = phi i64 [ 4, %.thread18 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !498
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i.i142023)
  %i.ag = load i64, ptr %i.c, align 8, !range !106, !noalias !498, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread41, label %bb.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread41: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !498
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

bb.i:                                             ; preds = %.thread21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !498, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !498, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !498
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  store ptr %i.aj, ptr %i.b, align 8, !noalias !498
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !498
  %i.ao = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, label %bb.j, !prof !169

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.i
  %i.ar = extractvalue { i32, i32 } %i.ao, 1      ; 2 uses
  %i.as = icmp ult i32 %i.ar, 1114112
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !498
  br label %bb.k

bb.k:                                             ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread37
  %.sroa.7.sroa.0.0.i.i40 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread37 ], [ %i.ar, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i ]
  %i.at = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i40) ; 2 uses
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %bb.l, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.k
  %i.av = xor i8 %i.at, 1
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18, %bb.c, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i, %.split.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread41, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ], [ %i.av, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread41 ], [ 0, %bb.c ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ], [ 1, %.thread18 ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp ugt i64 %2, %1
  br i1 %.not9, label %bb.n, label %bb.c, !prof !108

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4) ; 5 uses
  %i.g = add nsw i64 %2, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g) ; 4 uses
  %.sroa.09.0.i56 = add nsw i64 %2, -1            ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i56, %i.f
  br i1 %i.h, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i = add nsw i64 %.sroa.09.0.i57, -1 ; 2 uses
  %i.i = icmp ugt i64 %.sroa.09.0.i, %i.f
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i57 = phi i64 [ %.sroa.09.0.i, %bb.d ], [ %.sroa.09.0.i56, %bb.c ] ; 5 uses
  %i.j = icmp ult i64 %.sroa.09.0.i57, %2
  br i1 %i.j, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i57, %bb.e ] ; 5 uses
  %i.k = icmp ugt i64 %.sroa.09.0.i.lcssa, %2
  br i1 %i.k, label %bb.m, label %bb.g, !prof !108

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i57
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !503, !noundef !4
  %i.n = icmp slt i8 %i.m, -64
  br i1 %i.n, label %bb.d, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i57, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !503
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.o = sub nuw nsw i64 %2, %.sroa.09.0.i.lcssa  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %3 = load i8, ptr %i.p, align 1, !alias.scope !506, !noundef !4 ; 5 uses
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %5 = icmp eq i64 %2, %.sroa.09.0.i.lcssa
  br i1 %5, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.q = icmp samesign ult i8 %3, -64
  br i1 %i.q, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i8 %3, -32
  br i1 %i.r, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = icmp samesign ult i8 %3, -16
  br i1 %i.s, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i: ; preds = %bb.k
  %i.t = icmp samesign ugt i8 %3, -9
  %i.u = icmp ult i64 %i.o, 4
  %or.cond25 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond25, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread9

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.j, %bb.k
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.j ], [ 3, %bb.k ] ; 2 uses
  %i.v = icmp ugt i64 %.sroa.7.0.i.i.ph, %i.o
  br i1 %i.v, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread9

.thread9:                                         ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !506
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %.sroa.7.0.i.i3811)
  %i.w = load i64, ptr %i.e, align 8, !range !106, !noalias !506, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %.split.thread, label %bb.l

.split.thread:                                    ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !506
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

bb.l:                                             ; preds = %.thread9
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !506, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !506, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !506
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store ptr %i.z, ptr %i.d, align 8, !noalias !506
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !506
  %i.ae = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.d)
  %i.af = extractvalue { i32, i32 } %i.ae, 0
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, label %6, !prof !169

6:                                                ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !506
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !503
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28
  unreachable

.critedge:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %.sroa.09.0.i.i60 = add nsw i64 %2, -1          ; 2 uses
  %i.ah = icmp ugt i64 %.sroa.09.0.i.i60, %i.f
  br i1 %i.ah, label %.lr.ph63, label %._crit_edge64

bb.o:                                             ; preds = %bb.p
  %.sroa.09.0.i.i = add nsw i64 %.sroa.09.0.i.i61, -1 ; 2 uses
  %i.ai = icmp ugt i64 %.sroa.09.0.i.i, %i.f
  br i1 %i.ai, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %.critedge, %bb.o
  %.sroa.09.0.i.i61 = phi i64 [ %.sroa.09.0.i.i, %bb.o ], [ %.sroa.09.0.i.i60, %.critedge ] ; 5 uses
  %i.aj = icmp ult i64 %.sroa.09.0.i.i61, %2
  br i1 %i.aj, label %bb.p, label %bb.q

._crit_edge64:                                    ; preds = %bb.o, %bb.p, %.critedge
  %.sroa.09.0.i.i.lcssa = phi i64 [ %umin, %.critedge ], [ %umin, %bb.o ], [ %.sroa.09.0.i.i61, %bb.p ] ; 5 uses
  %i.ak = icmp ugt i64 %.sroa.09.0.i.i.lcssa, %2
  br i1 %i.ak, label %bb.y, label %bb.r, !prof !108

bb.p:                                             ; preds = %.lr.ph63
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i61
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !515, !noundef !4
  %i.an = icmp slt i8 %i.am, -64
  br i1 %i.an, label %bb.o, label %._crit_edge64

bb.q:                                             ; preds = %.lr.ph63
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i.i61, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !515
  unreachable

bb.r:                                             ; preds = %._crit_edge64
  %i.ao = sub nuw nsw i64 %2, %.sroa.09.0.i.i.lcssa ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.i.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %7 = load i8, ptr %i.ap, align 1, !alias.scope !519, !noundef !4 ; 6 uses
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp samesign ult i8 %7, -64
  br i1 %i.aq, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = icmp samesign ult i8 %7, -32
  br i1 %i.ar, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = icmp samesign ult i8 %7, -16
  br i1 %i.as, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i: ; preds = %bb.u
  %i.at = icmp samesign ugt i8 %7, -9
  %i.au = icmp ult i64 %i.ao, 4
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %bb.t, %bb.u
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %bb.t ], [ 3, %bb.u ] ; 2 uses
  %i.av = icmp ugt i64 %.sroa.7.0.i.i.i.ph, %i.ao
  br i1 %i.av, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread21

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread.thread: ; preds = %bb.r
  %9 = icmp eq i64 %2, %.sroa.09.0.i.i.lcssa
  br i1 %9, label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit, label %.thread

.thread:                                          ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %7 to i32
  br label %bb.z

.thread21:                                        ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i
  %.sroa.7.0.i.i.i142023 = phi i64 [ 4, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !519
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %.sroa.7.0.i.i.i142023)
  %i.aw = load i64, ptr %i.c, align 8, !range !106, !noalias !519, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread47, label %bb.v

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread47: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !519
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

bb.v:                                             ; preds = %.thread21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !519, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !519, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !519
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  store ptr %i.az, ptr %i.b, align 8, !noalias !519
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !519
  %i.be = call fastcc { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.bf = extractvalue { i32, i32 } %i.be, 0
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %bb.x, label %bb.w, !prof !169

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28
  unreachable

bb.x:                                             ; preds = %bb.v
  %10 = extractvalue { i32, i32 } %i.be, 1        ; 2 uses
  %11 = icmp ult i32 %10, 1114112
  tail call void @llvm.assume(i1 %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !519
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge64
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !515
  unreachable

bb.z:                                             ; preds = %bb.x, %.thread
  %.sroa.7.sroa.0.0.i9.i46 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %.thread ], [ %10, %bb.x ]
  %i.bh = tail call noundef i8 @_RNvCs79ICTHwG85D_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i9.i46) ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 2
  br i1 %i.bi, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, !prof !108

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.z
  %i.bj = xor i8 %i.bh, 1
  br label %_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit

_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4look12is_word_char3rev.exit: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread.thread, %bb.s, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i, %bb.i, %.split.thread, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread47, %bb.h, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread ], [ %i.bj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtCs79ICTHwG85D_12regex_syntax7unicode16UnicodeWordErrorE6expectCs98D8VPWzHuM_14regex_automata.exit ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf86decode.exit.i.thread47 ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i ], [ 0, %.split.thread ], [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i ], [ 1, %bb.s ], [ 1, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.i.thread.thread ], [ 0, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4utf83len.exit.i.thread ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM16search_slots_imp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 386
  %i.f = load i8, ptr %i.e, align 2, !range !3, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  %i.h = load i64, ptr %0, align 8, !range !106, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 387
  %i.k = load i8, ptr %i.j, align 1, !range !3, !noundef !4
  tail call void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  %i.l = load i64, ptr %0, align 8, !range !106, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = trunc nuw i8 %i.k to i1
  br i1 %i.n, label %bb.f, label %bb.j, !prof !108

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.u, align 8
  call void @_RINvNtNtCs98D8VPWzHuM_14regex_automata4util5empty15skip_splits_fwdNtNtB4_6search9HalfMatchNCNvMs2_NtNtNtB6_3nfa8thompson6pikevmNtB1y_6PikeVM16search_slots_imp0EB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.p, i32 noundef %i.r, i64 noundef %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.v = load i64, ptr %i.c, align 8, !range !525, !alias.scope !523, !noalias !520, !noundef !4
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.g, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapB19_.exit, !prof !108

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !523, !noalias !520, !nonnull !4, !align !165, !noundef !4
  store ptr %i.y, ptr %i.a, align 8, !noalias !526
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %bb.h unwind label %bb.i, !noalias !526

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !527, !noalias !526, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #27, !noalias !530
  resume { ptr, i32 } %i.z

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapB19_.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.d, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search9HalfMatchENtB15_10MatchErrorE6unwrapB19_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker10search_imp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(56) initializes((16, 24), (48, 56)) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull align 8 captures(none) %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 8 uses
  %i.b = alloca [256 x i8], align 1               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 17 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = icmp eq i64 %5, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %.idx, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val54 = load i64, ptr %i.i, align 8, !noundef !4 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val55 = load i64, ptr %i.j, align 8, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 17 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !531, !noalias !534
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %.val55, i64 %.val54) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.o = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !541, !noalias !542
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !542, !noalias !541, !nonnull !4, !noundef !4 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 336 ; 3 uses
  %i.s = load i64, ptr %i.r, align 16, !noalias !543, !noundef !4
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %i.o) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 0         ; 3 uses
  %i.v = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.v, label %_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_5Cache12setup_search.exit, label %bb.b, !prof !108

bb.b:                                             ; preds = %._crit_edge
  %i.w = load i64, ptr %1, align 8, !range !106, !alias.scope !542, !noalias !541, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !542, !noalias !541
  %i.aa = shl i64 %i.z, 3
  %.sroa.02.0.i.i = select i1 %i.x, i64 %i.aa, i64 2097152
  %i.ab = icmp ugt i64 %i.u, %.sroa.02.0.i.i
  br i1 %i.ab, label %_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_5Cache12setup_search.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = and i64 %i.u, 63
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = lshr i64 %i.u, 6
  %i.af = zext i1 %i.ad to i64
  %.sroa.0.0.i.i.i56 = add nuw nsw i64 %i.ae, %i.af ; 3 uses
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecjE8truncateCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %.sroa.0.0.i.i.i56), !noalias !542
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !541, !noalias !542, !noundef !4 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %.idx.i.i = shl i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !541, !noalias !542, !nonnull !4, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 0, i64 %.idx.i.i, i1 false), !noalias !542
  %.pre.i.i = load i64, ptr %i.ag, align 8, !alias.scope !541, !noalias !542
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.c
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.am = icmp ult i64 %i.al, 1152921504606846976
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp samesign ugt i64 %.sroa.0.0.i.i.i56, %i.al
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE6resizeCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %.sroa.0.0.i.i.i56, i64 noundef 0), !noalias !542
  br label %bb.e

_RNvMs5_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrackNtB5_5Cache12setup_search.exit: ; preds = %bb.b, %._crit_edge
  %i.ao = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10MatchError17haystack_too_long(i64 noundef %i.m), !noalias !543
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ff

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.aq = icmp ugt i64 %.val54, %.val55
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %3, align 8, !range !544, !noundef !4
  switch i32 %i.ar, label %default.unreachable758 [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8
  br label %bb.ff

default.unreachable758:                           ; preds = %bb.cs, %bb.cn, %bb.v, %bb.q, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.at = load i32, ptr %i.as, align 16, !noundef !4 ; 3 uses
end_hunk_0
