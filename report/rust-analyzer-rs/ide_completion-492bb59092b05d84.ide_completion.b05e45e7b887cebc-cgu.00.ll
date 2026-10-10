Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.00?download=true
inline.NumInlined: 2634
inline.NumDeleted: 1503
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints11VerifyBoundECsf8NQSppxkmK_14ide_completion:bb.a
  %.sroa.0.1.i.i415 = phi i64 [ %i.aa, %bb.k ], [ %i.z, %bb.l ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.1.i.i415
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints11VerifyBoundECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #27
          to label %bb.k unwind label %bb.m, !noalias !737, !inline_history !731

bb.m:                                             ; preds = %.lr.ph16
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !737, !inline_history !731
  unreachable

.body5:                                           ; preds = %bb.k, %bb.l
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints11VerifyBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.body5
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !inline_history !732
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtBE_11term_search4expr4ExprEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !743, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !743, !noundef !7 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i1
  %i.i = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #25
          to label %bb.b unwind label %bb.d, !noalias !742, !inline_history !0

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #26
          to label %bb.c unwind label %bb.e, !noalias !742, !inline_history !0

bb.e:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !742, !inline_history !0
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.f, !inline_history !13

bb.f:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !inline_history !13
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !13
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs39E2wp1vf7X_6intern6symbol6SymbolBC_EECsf8NQSppxkmK_14ide_completion(ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = ptrtoint ptr %.0.val to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.g)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load atomic i64, ptr %i.j acquire, align 8
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %.noexc3, !prof !11

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit

bb.d:                                             ; preds = %.noexc3, %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion(ptr nonnull %.8.val) #27
          to label %bb.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc4, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.n = ptrtoint ptr %.8.val to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i5 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit6, label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit
  %i.p = getelementptr i8, ptr %.8.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.p)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit6: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsf8NQSppxkmK_14ide_completion.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1S_8node_extNtB1O_4Path8segments0EB1M_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !19, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !754
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !754, !noundef !7 ; 5 uses
  store ptr null, ptr %i.h, align 8, !alias.scope !754
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1Q_8node_extNtB1M_4Path8segments0EEECsf8NQSppxkmK_14ide_completion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8, !noalias !754
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i.i = load i32, ptr %i.j, align 8, !alias.scope !754
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val9.i.i = load i32, ptr %i.k, align 4, !alias.scope !754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !755
  %i.l = invoke noundef nonnull ptr @_RNvMse_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes11PathSegment11parent_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc.i.i unwind label %bb.ak, !noalias !754 ; 5 uses

.noexc.i.i:                                       ; preds = %bb.c
  store ptr %i.l, ptr %i.d, align 8, !noalias !755
  %i.m = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path11parent_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.f unwind label %bb.d, !noalias !754 ; 12 uses

bb.d:                                             ; preds = %bb.af, %.noexc.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.p, %.body.i.i.i.i, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %eh.lpad-body.i.i.i.i, %bb.p ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !754, !noundef !7
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !754
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.body.i.i

bb.e:                                             ; preds = %.body.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.l) #29
          to label %.body.i.i unwind label %bb.ai, !noalias !754

bb.f:                                             ; preds = %.noexc.i.i
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.t = load i8, ptr %i.s, align 4, !range !27, !noalias !754, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.w = load i32, ptr %i.v, align 8, !noalias !754, !noundef !7
  br label %.noexc.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !754

.noexc.i.i.i.i:                                   ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.x, %bb.i ] ; 3 uses
  %i.y = load i64, ptr %i.m, align 8, !range !19, !noalias !754, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = trunc nuw i64 %i.y to i1
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !754, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !754, !noundef !7 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 4294967295
  %i.af = shl nuw i64 %i.ad, 32
  %.sroa.09.0.insert.insert.i.i.i.i.i.i = select i1 %i.ae, i64 513, i64 %i.af ; 2 uses
  %i.ag = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i to i1
  br i1 %i.ag, label %bb.k, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i, !prof !11

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !755
  store i8 2, ptr %i.c, align 1, !noalias !755
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
          to label %.noexc5.i.i.i.i unwind label %bb.o, !noalias !754

.noexc5.i.i.i.i:                                  ; preds = %bb.k
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i: ; preds = %bb.j
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i to i32
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.ah = load i32, ptr %i.ab, align 8, !noalias !754, !noundef !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i ], [ %i.ah, %bb.l ]
  %i.ai = add i32 %.sroa.02.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, %i.ai
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.q, !prof !11

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
          to label %.noexc6.i.i.i.i unwind label %bb.o, !noalias !754

.noexc6.i.i.i.i:                                  ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.ac, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i, %bb.s, %bb.n, %bb.k, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aa, %bb.z, %.body.i.i.i.i.i, %bb.o
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %eh.lpad-body.i.i.i.i.i, %bb.aa ], [ %eh.lpad-body.i.i.i.i.i, %bb.z ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !754, !noundef !7
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !noalias !754
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %.body.i.i.i

bb.p:                                             ; preds = %.body.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #29
          to label %.body.i.i.i unwind label %bb.ag, !noalias !754

bb.q:                                             ; preds = %bb.m
  %i.ao = icmp ule i32 %.val8.i.i, %.sroa.0.0.i.i.i.i.i
  %i.ap = icmp ule i32 %i.ai, %.val9.i.i
  %or.cond.i.i.i.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !755
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !754, !noundef !7 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.s, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i, !prof !11

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #31
          to label %.noexc8.i.i.i.i unwind label %bb.o, !noalias !754

.noexc8.i.i.i.i:                                  ; preds = %bb.s
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i: ; preds = %bb.r
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %i.aq, align 8, !noalias !754
  %i.au = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.m)
          to label %.noexc9.i.i.i.i unwind label %bb.o, !noalias !754

.noexc9.i.i.i.i:                                  ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i
  store ptr %i.au, ptr %i.b, align 8, !noalias !755
  %i.av = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !754 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc9.i.i.i.i
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not12.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i, %.noexc7.i.i.i.i.i
  %i.aw = phi ptr [ %i.bj, %.noexc7.i.i.i.i.i ], [ %i.av, %.noexc.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !756
  store ptr %i.aw, ptr %i.a, align 8, !noalias !756
  %i.ax = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.t, !noalias !754

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !noalias !754, !noundef !7
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.az, align 4, !noalias !754
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %.body.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #29
          to label %.body.i.i.i.i.i unwind label %bb.y, !noalias !754

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = icmp eq i16 %i.ax, 264
  br i1 %i.bd, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11PathSegmentNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noalias !754, !noundef !7
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !noalias !754
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11PathSegmentNvYB2M_NtB2S_7AstNode4castE0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #29
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11PathSegmentNvYB2M_NtB2S_7AstNode4castE0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !754

bb.y:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11PathSegmentNvYB2M_NtB2S_7AstNode4castE0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  %i.bj = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !754 ; 2 uses

.noexc7.i.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11PathSegmentNvYB2M_NtB2S_7AstNode4castE0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes11PathSegmentNvYB2M_NtB2S_7AstNode4castE0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i.i, %bb.x
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %.noexc9.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.u, %bb.t
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !755, !noundef !7 ; 3 uses
  %i.bk = icmp eq ptr %.val4.i.i.i.i.i, null
  br i1 %i.bk, label %.body.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.body.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 48 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !754, !noundef !7
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 4, !noalias !754
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.aa, label %.body.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i.i) #29
          to label %.body.i.i.i.i unwind label %bb.ad, !noalias !754

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11PathSegmentNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11PathSegmentNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bp = phi ptr [ %i.aw, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes11PathSegmentNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ null, %.noexc.i.i.i.i.i ], [ null, %.noexc7.i.i.i.i.i ]
  %.val3.i.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !755, !noundef !7 ; 3 uses
  %i.bq = icmp eq ptr %.val3.i.i.i.i.i, null
  br i1 %i.bq, label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 48 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !noalias !754, !noundef !7
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !noalias !754
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ac, label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i.i) #29
          to label %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i unwind label %bb.o, !noalias !754

bb.ad:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !755
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i, %bb.q
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.q ], [ %i.bp, %_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !noalias !754, !noundef !7
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !noalias !754
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.af, label %_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #29
          to label %_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i unwind label %bb.d, !noalias !754

bb.ag:                                            ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %bb.af, %bb.ae, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.f ], [ %.sroa.0.0.i.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i.i, %bb.ae ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !754, !noundef !7
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !noalias !754
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ah, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit

bb.ah:                                            ; preds = %_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.l) #29
          to label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.ak, !noalias !754

bb.ai:                                            ; preds = %bb.e
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

.body.i.i:                                        ; preds = %bb.ak, %bb.e, %.body.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ck, %bb.ak ], [ %eh.lpad-body.i.i.i, %bb.e ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !754, !noundef !7
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !noalias !754
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #29
          to label %common.resume unwind label %bb.al, !noalias !754

bb.ak:                                            ; preds = %bb.ah, %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.al:                                            ; preds = %bb.aj
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !754
  unreachable

common.resume:                                    ; preds = %.body.i.i, %bb.aj
  resume { ptr, i32 } %.pn.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNCNCNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtBb_9generated5nodes4Path8segments00Csf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !755
  store ptr %.sroa.0.0.i.i.i, ptr %i.h, align 8, !alias.scope !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !754
  br label %bb.am

bb.am:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1Q_8node_extNtB1M_4Path8segments0EEECsf8NQSppxkmK_14ide_completion.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1Q_8node_extNtB1M_4Path8segments0EEECsf8NQSppxkmK_14ide_completion.exit ], [ %i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsf8NQSppxkmK_14ide_completion.exit ]
  ret ptr %.sroa.0.0

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1Q_8node_extNtB1M_4Path8segments0EEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !754
  store i64 0, ptr %0, align 8
  br label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxeEE16into_boxed_sliceCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtBG_5boxed3BoxeEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #27
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, label %bb.e, !prof !8

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2p_4util11SharedValueuEEEEEE16into_boxed_sliceCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 128, i64 noundef 128)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 72057594037927936
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2T_4util11SharedValueuEEEEEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #27
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, label %bb.e, !prof !8

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB2p_4util11SharedValueuEEEEEE16into_boxed_sliceCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 128, i64 noundef 128)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 72057594037927936
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB2T_4util11SharedValueuEEEEEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #27
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, label %bb.e, !prof !8

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge: ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB4A_6ClauseEINtNtB2p_4util11SharedValueuEEEEEE16into_boxed_sliceCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 128, i64 noundef 128)
          to label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 72057594037927936
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB54_6ClauseEINtNtB2T_4util11SharedValueuEEEEEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #27
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.b
end_hunk_0
