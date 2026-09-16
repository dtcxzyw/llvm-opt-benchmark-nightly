Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.09?download=true
inline.NumInlined: 345
inline.NumDeleted: 192
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder13start_pattern:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE8push_mutBK_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder14finish_pattern(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !16, !alias.scope !608, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22, !noalias !608
  unreachable

_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !608 ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.f
  store i32 %2, ptr %i.l, align 4
  store i32 0, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.m, align 8
  store i64 -2, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder15add_capture_end(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i32, ptr %i.b, align 8, !range !16, !alias.scope !611, !noundef !3
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22, !noalias !611
  unreachable

_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit: ; preds = %bb.a
  %i.e = icmp ugt i32 %3, 2147483646
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %i.j, align 4
  store i32 5, ptr %i.a, align 8
  call fastcc void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder3add(ptr noalias noundef align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id.exit
  store i64 -9223372036854775803, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder17add_capture_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !range !16, !alias.scope !645, !noundef !3
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22
          to label %.noexc unwind label %.body.thread45

.noexc:                                           ; preds = %bb.b
  unreachable

.body.thread45:                                   ; preds = %.invoke, %bb.b, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !645 ; 3 uses
  %i.k = icmp ugt i32 %3, 2147483646
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %3 to i64                  ; 3 uses
  %i.m = zext i32 %i.j to i64                     ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 5 uses
  %i.q = icmp ult i64 %i.p, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  %.not = icmp samesign ugt i64 %i.p, %i.m
  br i1 %.not, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775803, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.48.0..sroa_idx, align 8
  %i.r = icmp eq ptr %4, null
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !646
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit

bb.h:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i64 %i.m, %i.p               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.i

.loopexit:                                        ; preds = %bb.ac, %bb.d
  %i.y = phi i64 [ %i.p, %bb.d ], [ %i.cl, %bb.ac ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = icmp ugt i64 %i.y, %i.m
  br i1 %i.aa, label %bb.m, label %.invoke

bb.i:                                             ; preds = %bb.h, %bb.ac
  %i.ab = phi i64 [ %i.p, %bb.h ], [ %i.cl, %bb.ac ] ; 3 uses
  %.sroa.0.056 = phi i64 [ 0, %bb.h ], [ %spec.select54, %bb.ac ] ; 2 uses
  %i.ac = icmp uge i64 %.sroa.0.056, %i.u         ; 2 uses
  %not. = xor i1 %i.ac, true
  %i.ad = zext i1 %not. to i64
  %spec.select54 = add nuw i64 %.sroa.0.056, %i.ad ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  store i64 0, ptr %i.w, align 8
  %i.ae = load i64, ptr %i.n, align 8, !range !4, !alias.scope !647, !noalias !648, !noundef !3
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ac unwind label %bb.k, !noalias !648

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionINtNtBG_4sync3ArceEEEECs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #24
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %.loopexit
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 4 uses
  %i.am = icmp ult i64 %i.al, 576460752303423488
  tail call void @llvm.assume(i1 %i.am)
  %.not24 = icmp samesign ugt i64 %i.al, %i.l
  br i1 %.not24, label %bb.n, label %6

.invoke:                                          ; preds = %.lr.ph, %._crit_edge, %.loopexit
  %i.an = phi i64 [ %i.y, %.loopexit ], [ %i.ax, %._crit_edge ], [ %i.az, %.lr.ph ]
  %i.ao = phi ptr [ @59, %.loopexit ], [ @60, %._crit_edge ], [ @61, %.lr.ph ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #22
          to label %.cont unwind label %.body.thread45

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %2, ptr %i.ar, align 4
  store i32 4, ptr %i.b, align 8
  invoke fastcc void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder3add(ptr noalias noundef align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.o unwind label %.body.thread45

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.as = load ptr, ptr %i.d, align 8, !alias.scope !649, !noundef !3 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !650
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.y
  ret void

6:                                                ; preds = %bb.m
  %.not58 = icmp eq i64 %i.al, %i.l
  br i1 %.not58, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %6
  %i.aw = sub nsw i64 %i.l, %i.al
  %smax = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 1)
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33
  %.pre = load i64, ptr %i.o, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  %i.ax = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.y, %6 ] ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %i.m
  br i1 %i.ay, label %bb.s, label %.invoke

.lr.ph:                                           ; preds = %bb.r, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33
  %.sroa.010.057 = phi i64 [ %i.by, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33 ], [ 0, %bb.r ]
  %i.az = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, %i.m
  br i1 %i.ba, label %bb.z, label %.invoke

bb.s:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.m ; 4 uses
  %i.bd = load ptr, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.be = load i64, ptr %i.e, align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bd, ptr %i.a, align 8, !noalias !651
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !651
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !651, !noundef !3 ; 3 uses
  %i.bi = load i64, ptr %i.bc, align 8, !range !4, !alias.scope !651, !noundef !3
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.y unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bl = icmp eq ptr %i.bd, null
  br i1 %i.bl, label %.body.thread41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !652
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.w, label %.body.thread41

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body.thread41 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.y:                                             ; preds = %bb.t, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !651, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bh ; 2 uses
  store ptr %i.bd, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.be, ptr %i.bs, align 8
  %i.bt = add i64 %i.bh, 1
  store i64 %i.bt, ptr %i.bg, align 8, !alias.scope !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %3, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %2, ptr %i.bw, align 4
  store i32 4, ptr %i.b, align 8
  call fastcc void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder3add(ptr noalias noundef align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata.exit

bb.z:                                             ; preds = %.lr.ph
  %i.bx = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  %i.by = add nuw nsw i64 %.sroa.010.057, 1       ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.m ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !653, !noundef !3 ; 3 uses
  %i.cc = load i64, ptr %i.bz, align 8, !range !4, !alias.scope !653, !noundef !3
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.aa, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata.exit33: ; preds = %bb.z, %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !653, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cb
  store ptr null, ptr %i.ch, align 8
  %i.ci = add i64 %i.cb, 1
  store i64 %i.ci, ptr %i.ca, align 8, !alias.scope !653
  %exitcond.not = icmp eq i64 %i.by, %smax
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.ac:                                            ; preds = %bb.j, %bb.i
  %i.cj = load ptr, ptr %i.x, align 8, !alias.scope !647, !noalias !648, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.cl = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.o, align 8, !alias.scope !647, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp ugt i64 %spec.select54, %i.u
  %or.cond = select i1 %i.ac, i1 true, i1 %.not.i
  br i1 %or.cond, label %.loopexit, label %bb.i

.body.thread41:                                   ; preds = %bb.ad, %.body.thread, %bb.ae, %bb.w, %bb.v, %bb.u
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %eh.lpad-body40, %bb.ad ], [ %i.bk, %bb.u ], [ %i.bk, %bb.v ], [ %eh.lpad-body40, %bb.ae ], [ %eh.lpad-body40, %.body.thread ]
  resume { ptr, i32 } %eh.lpad-body39

.body.thread:                                     ; preds = %bb.k, %bb.ab, %.body.thread45
  %eh.lpad-body40 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread45 ], [ %i.ce, %bb.ab ], [ %i.ag, %bb.k ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.cm = load ptr, ptr %i.d, align 8, !alias.scope !654, !noundef !3 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.body.thread41, label %bb.ad

bb.ad:                                            ; preds = %.body.thread
  %i.co = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !655
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ae, label %.body.thread41

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body.thread41 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder17add_union_reverse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i32 7, ptr %i.a, align 8
  call fastcc void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder3add(ptr noalias noundef align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder18current_pattern_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !range !16, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder3add(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 7 uses
  %i.e = icmp ult i64 %i.d, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 2147483646
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw nsw i64 %i.d to i32
  %i.h = load i32, ptr %2, align 8, !range !10, !noundef !3
  switch i32 %i.h, label %default.unreachable72 [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %.sink.split
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2147483647, ptr %.sroa.641.0..sroa_idx, align 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateEBJ_(ptr noalias noundef align 8 dereferenceable(32) %2)
  br label %bb.m

default.unreachable72:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink76 = phi i64 [ 1152921504606846976, %bb.b ], [ 2305843009213693952, %bb.d ]
  %.sink73 = phi i64 [ 3, %bb.b ], [ 2, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.sink76
  tail call void @llvm.assume(i1 %i.k)
  %i.l = shl nuw nsw i64 %i.j, %.sink73
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.016.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.l, %.sink.split ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = add i64 %i.n, %.sroa.016.0
  store i64 %i.o, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.p = load i64, ptr %i.b, align 8, !range !4, !alias.scope !659, !noalias !660, !noundef !3
  %i.q = icmp eq i64 %i.d, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8push_mutBM_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8push_mutBM_.exit unwind label %bb.g, !noalias !660

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #24
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8push_mutBM_.exit: ; preds = %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !659, !noalias !660, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.w = add nuw nsw i64 %i.d, 1                  ; 2 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !659, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %1, align 8, !range !6, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8push_mutBM_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3 ; 2 uses
  %i.ab = shl nuw nsw i64 %i.w, 5
  %i.ac = load i64, ptr %i.m, align 8, !noundef !3
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = icmp ugt i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8push_mutBM_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.g, ptr %i.af, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.465.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [256 x i8], align 1               ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1s_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1g_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTNtB6_10SmallIndexB24_EEE3newBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, ptr } @_RNvXs1h_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTNtB6_10SmallIndexB24_EEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextBa_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8grow_oneCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapINtNtB7_4sync3ArceENtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexEE8grow_oneB25_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateE8grow_oneBT_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexBM_EE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDBM_EE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE6resizeBK_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_5Inner10set_starts(ptr noalias noundef align 16 dereferenceable(384), i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_5Inner12set_captures(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 16 dereferenceable(384), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1H_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson7builder5StateEE3newBa_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, ptr } @_RNvXs1I_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtBa_3nfa8thompson7builder5StateEENtNtNtNtB1p_4iter6traits8iterator8Iterator4nextBa_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_5Inner5remap(ptr noalias noundef align 16 dereferenceable(384), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_5Inner8into_nfa(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(384)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_5Inner3add(ptr noalias noundef align 16 dereferenceable(384), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfa10TransitionE16into_boxed_sliceBL_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDE16into_boxed_sliceBJ_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECs98D8VPWzHuM_14regex_automata(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives14PatternIDErrorNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRyNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRuNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtCs4NRVxsYgnAr_4core7default7Default7defaultBL_() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util8alphabetNtB5_11ByteClassesNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 1 captures(none) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtB6_5Debug3fmtB19_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives14PatternIDErrorNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1p_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noreturn }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i64 0, i64 2}
!7 = !{i64 0, i64 -9223372036854775807}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 -9223372036854775804}
!10 = !{i32 0, i32 10}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{i64 8}
!16 = !{i32 0, i32 2}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core5array4iterAAINtNtB8_6option6OptionReEj1_B13_NtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs98D8VPWzHuM_14regex_automata"}
!19 = distinct !{!19, !18, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core5array4iterAAINtNtB8_6option6OptionReEj1_B13_NtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs98D8VPWzHuM_14regex_automata: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXs_NtNtCs4NRVxsYgnAr_4core5array4iterAAINtNtB8_6option6OptionReEj1_B13_NtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs98D8VPWzHuM_14regex_automata: argument 0"}
!21 = distinct !{!21, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges"}
!22 = distinct !{!22, !21, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges: argument 1"}
!23 = distinct !{!23, !21, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges: argument 0"}
!24 = distinct !{!24, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_"}
!25 = distinct !{!25, !24, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_: argument 0"}
!26 = !{!20, !19}
!27 = !{!22}
!28 = !{!23}
!29 = !{!23, !22}
!30 = !{!25, !23, !22}
!31 = distinct !{!31, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionINtNtB1S_4sync3ArceEEEENCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB3a_5Inner12set_captures0EENtNtNtB8_6traits8iterator8Iterator4nextB3g_"}
!32 = distinct !{!32, !31, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionINtNtB1S_4sync3ArceEEEENCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB3a_5Inner12set_captures0EENtNtNtB8_6traits8iterator8Iterator4nextB3g_: argument 1"}
!33 = distinct !{!33, !31, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionINtNtB1S_4sync3ArceEEEENCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB3a_5Inner12set_captures0EENtNtNtB8_6traits8iterator8Iterator4nextB3g_: argument 0"}
!34 = distinct !{!34, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBb_6option6OptionINtNtB1r_4sync3ArceEEEENCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2J_5Inner12set_captures0ENtNtNtB9_6traits8iterator8Iterator4nextB2P_"}
!35 = distinct !{!35, !34, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBb_6option6OptionINtNtB1r_4sync3ArceEEEENCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2J_5Inner12set_captures0ENtNtNtB9_6traits8iterator8Iterator4nextB2P_: argument 0"}
!36 = distinct !{!36, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges"}
!37 = distinct !{!37, !36, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges: argument 1"}
!38 = distinct !{!38, !36, !"_RNvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoInner17fixup_slot_ranges: argument 0"}
!39 = distinct !{!39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_"}
!40 = distinct !{!40, !39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives10SmallIndexNtBJ_15SmallIndexErrorE6unwrapBN_: argument 0"}
!41 = distinct !{!41, !"_RNCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB9_5Inner12set_captures00Bf_"}
!42 = distinct !{!42, !41, !"_RNCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB9_5Inner12set_captures00Bf_: argument 0"}
!43 = distinct !{!43, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_"}
!44 = distinct !{!44, !43, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_: argument 1"}
!45 = distinct !{!45, !43, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_: argument 0"}
!46 = distinct !{!46, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2t_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2z_"}
!47 = distinct !{!47, !46, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2t_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2z_: argument 0"}
!48 = distinct !{!48, !"_RNCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB9_5Inner12set_captures00Bf_"}
!49 = distinct !{!49, !48, !"_RNCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB9_5Inner12set_captures00Bf_: argument 0"}
!50 = distinct !{!50, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_"}
!51 = distinct !{!51, !50, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_: argument 1"}
!52 = distinct !{!52, !50, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2U_5Inner12set_captures00EENtNtNtB8_6traits8iterator8Iterator4nextB30_: argument 0"}
!53 = distinct !{!53, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2t_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2z_"}
!54 = distinct !{!54, !53, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEENCNCNvMs0_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB2t_5Inner12set_captures00ENtNtNtB9_6traits8iterator8Iterator4nextB2z_: argument 0"}
!55 = distinct !{!55, !"_RINvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCscdodAO9FK5_5alloc4sync3ArceEEBa_"}
!56 = distinct !{!56, !55, !"_RINvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCscdodAO9FK5_5alloc4sync3ArceEEBa_: argument 1"}
!57 = distinct !{!57, !55, !"_RINvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCscdodAO9FK5_5alloc4sync3ArceEEBa_: argument 2"}
!58 = distinct !{!58, !55, !"_RINvMs6_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB6_14GroupInfoInner18add_explicit_groupRINtNtCscdodAO9FK5_5alloc4sync3ArceEEBa_: argument 0"}
!59 = distinct !{!59, !"_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate"}
!60 = distinct !{!60, !59, !"_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate: argument 1"}
!61 = distinct !{!61, !59, !"_RNvMs7_NtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB5_14GroupInfoError9duplicate: argument 0"}
!62 = distinct !{!62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata"}
!63 = distinct !{!63, !62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!64 = distinct !{!64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata"}
!65 = distinct !{!65, !64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs98D8VPWzHuM_14regex_automata: argument 0"}
!66 = distinct !{!66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata"}
!67 = distinct !{!67, !66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata: argument 0"}
!68 = distinct !{!68, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!69 = distinct !{!69, !68, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!70 = distinct !{!70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata"}
!71 = distinct !{!71, !70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata: argument 0"}
!72 = distinct !{!72, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!73 = distinct !{!73, !72, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata"}
!75 = distinct !{!75, !74, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs98D8VPWzHuM_14regex_automata: argument 0"}
!76 = distinct !{!76, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata"}
!77 = distinct !{!77, !76, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs98D8VPWzHuM_14regex_automata: argument 0"}
!78 = distinct !{!78, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata"}
!79 = distinct !{!79, !78, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEE8push_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!80 = !{!35, !33, !32}
!81 = !{!37}
!82 = !{!38}
!83 = !{!38, !37}
!84 = !{!40, !38, !37}
!85 = !{!42}
!86 = !{!47, !45, !44}
!87 = !{!49}
!88 = !{!54, !52, !51}
!89 = !{!56}
!90 = !{!57}
!91 = !{!58, !57}
!92 = !{!58, !56, !57}
!93 = !{!58, !56}
!94 = !{!61, !60, !58, !56, !57}
!95 = !{!61, !58, !56, !57}
!96 = !{!63}
!97 = !{!63, !58, !56, !57}
!98 = !{!69, !67, !65, !63, !58, !56, !57}
!99 = !{!71}
!100 = !{!73}
!101 = !{!73, !71}
!102 = !{!73, !71, !58, !56, !57}
!103 = !{!75}
!104 = !{!77}
!105 = !{!77, !75}
!106 = !{!77, !75, !58, !56, !57}
!107 = !{!79}
!108 = distinct !{!108, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures18GroupInfoErrorKindEBH_"}
!109 = distinct !{!109, !108, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures18GroupInfoErrorKindEBH_: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!112 = distinct !{!112, !111, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!113 = distinct !{!113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!114 = distinct !{!114, !113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!115 = distinct !{!115, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!116 = distinct !{!116, !115, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!117 = distinct !{!117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_"}
!118 = distinct !{!118, !117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoEBH_: argument 0"}
!119 = distinct !{!119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_"}
!120 = distinct !{!120, !119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerEEB1e_: argument 0"}
!121 = distinct !{!121, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!122 = distinct !{!122, !121, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!123 = !{!112}
!124 = !{!114}
!125 = !{!116}
!126 = !{!116, !114, !112}
!127 = !{!118}
!128 = !{!120}
!129 = !{!122}
!130 = !{!122, !120, !118}
!131 = distinct !{!131, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata"}
!132 = distinct !{!132, !131, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata: argument 0"}
!133 = distinct !{!133, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata"}
!134 = distinct !{!134, !133, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!135 = distinct !{!135, !133, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 1"}
!136 = distinct !{!136, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata"}
!137 = distinct !{!137, !136, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 0"}
!138 = distinct !{!138, !136, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 1"}
!139 = distinct !{!139, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!140 = distinct !{!140, !139, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!141 = distinct !{!141, !139, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!142 = distinct !{!142, !131, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata: argument 1"}
!143 = distinct !{!143, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata"}
!144 = distinct !{!144, !143, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 1"}
!145 = distinct !{!145, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata"}
!146 = distinct !{!146, !145, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 1"}
!147 = distinct !{!147, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!148 = distinct !{!148, !147, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!149 = distinct !{!149, !143, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!150 = distinct !{!150, !145, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 0"}
!151 = distinct !{!151, !147, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!152 = distinct !{!152, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata"}
!153 = distinct !{!153, !152, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 1"}
!154 = distinct !{!154, !152, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!155 = distinct !{!155, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata"}
!156 = distinct !{!156, !155, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 1"}
!157 = distinct !{!157, !155, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 0"}
!158 = distinct !{!158, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!159 = distinct !{!159, !158, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!160 = distinct !{!160, !158, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!161 = distinct !{!161, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata"}
!162 = distinct !{!162, !161, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 0"}
!163 = distinct !{!163, !161, !"_RNvYNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB11_3ops8function5FnMutTRB5_B28_EE8call_mutCs98D8VPWzHuM_14regex_automata: argument 1"}
!164 = distinct !{!164, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata"}
!165 = distinct !{!165, !164, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 0"}
!166 = distinct !{!166, !164, !"_RNvYNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs98D8VPWzHuM_14regex_automata: argument 1"}
!167 = distinct !{!167, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!168 = distinct !{!168, !167, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!169 = distinct !{!169, !167, !"_RNvXsn_NtNtCs79ICTHwG85D_12regex_syntax3hir7literalNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
end_hunk_1
