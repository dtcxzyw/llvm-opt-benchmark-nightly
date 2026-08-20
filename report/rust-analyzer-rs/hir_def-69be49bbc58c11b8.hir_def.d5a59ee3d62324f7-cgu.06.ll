inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def:bb.a
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !875

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit

_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !2720, !noundef !10
  switch i64 %i.g, label %bb.b [
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit
    i64 1, label %bb.d
    i64 2, label %bb.q
    i64 3, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2721, !nonnull !10, !noundef !10 ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit unwind label %bb.c, !noalias !2721, !inline_history !2724

common.resume:                                    ; preds = %.body14, %.body, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.bl, %.body14 ], [ %i.ad, %bb.l ], [ %i.aw, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #44, !noalias !2721
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #44, !noalias !2721
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit: ; preds = %bb.v, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit8, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit7.i, %bb.h, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !noundef !10 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.l, align 8            ; 8 uses
  %i.m = icmp eq ptr %.val, null
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.n = ptrtoint ptr %.val1 to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.val1, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.p)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.g, label %bb.h, !prof !875

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.s, ptr %i.e, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit

bb.i:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %.val to i64
  %i.w = and i64 %i.v, 1
  %.not.i.i.i4.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i4.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit7.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.val, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.x)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aa, ptr %i.d, align 8
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.k, label %.noexc5.i, !prof !875

bb.k:                                             ; preds = %.noexc.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc5.i unwind label %bb.l

.noexc5.i:                                        ; preds = %bb.k, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc6.i unwind label %bb.l

.noexc6.i:                                        ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit7.i

bb.l:                                             ; preds = %.noexc5.i, %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def(ptr nonnull %.val1) #43
          to label %common.resume unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit7.i: ; preds = %.noexc6.i, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ae = ptrtoint ptr %.val1 to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i.i8.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i8.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def.exit7.i
  %i.ag = getelementptr i8, ptr %.val1, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ag)
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aj, ptr %i.b, align 8
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.n, label %bb.o, !prof !875

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit

bb.p:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !2725, !nonnull !10, !noundef !10 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !2725, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.aq, 0
  br i1 %cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit, label %.lr.ph27

bb.r:                                             ; preds = %.lr.ph27
  %i.ar = icmp eq i64 %i.at, %i.aq
  br i1 %i.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.q, %bb.r
  %.sroa.0.0.i26 = phi i64 [ %i.at, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.0.0.i26
  %i.at = add i64 %.sroa.0.0.i26, 1               ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as)
          to label %bb.r unwind label %bb.t, !noalias !2725, !inline_history !2728

bb.s:                                             ; preds = %.lr.ph29
  %i.au = add i64 %.sroa.0.1.i28, 1               ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.aq
  br i1 %i.av, label %.body, label %.lr.ph29

bb.t:                                             ; preds = %.lr.ph27
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = icmp eq i64 %i.at, %i.aq
  br i1 %i.ax, label %.body, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.1.i28 = phi i64 [ %i.au, %bb.s ], [ %i.at, %bb.t ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.0.1.i28
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #43
          to label %bb.s unwind label %bb.u, !noalias !2725, !inline_history !2728

bb.u:                                             ; preds = %.lr.ph29
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39, !noalias !2725, !inline_history !2728
  unreachable

.body:                                            ; preds = %bb.s, %bb.t
  %i.ba = mul nuw nsw i64 %i.aq, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef 8) #44, !noalias !2725
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.r
  %i.bb = mul nuw nsw i64 %i.aq, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, -9223372036854775808) %i.bb, i64 noundef 8) #44, !noalias !2725
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit

bb.v:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !2729, !nonnull !10, !noundef !10 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2729, !noundef !10 ; 6 uses
  %cond30 = icmp eq i64 %i.bf, 0
  br i1 %cond30, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.bg = icmp eq i64 %i.bi, %i.bf
  br i1 %i.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit8, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %.sroa.0.0.i1223 = phi i64 [ %i.bi, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.sroa.0.0.i1223
  %i.bi = add i64 %.sroa.0.0.i1223, 1             ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh)
          to label %bb.w unwind label %bb.y, !noalias !2729, !inline_history !2728

bb.x:                                             ; preds = %.lr.ph25
  %i.bj = add i64 %.sroa.0.1.i1324, 1             ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.bf
  br i1 %i.bk, label %.body14, label %.lr.ph25

bb.y:                                             ; preds = %.lr.ph
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = icmp eq i64 %i.bi, %i.bf
  br i1 %i.bm, label %.body14, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.y, %bb.x
  %.sroa.0.1.i1324 = phi i64 [ %i.bj, %bb.x ], [ %i.bi, %bb.y ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.sroa.0.1.i1324
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #43
          to label %bb.x unwind label %bb.z, !noalias !2729, !inline_history !2728

bb.z:                                             ; preds = %.lr.ph25
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39, !noalias !2729, !inline_history !2728
  unreachable

.body14:                                          ; preds = %bb.x, %bb.y
  %i.bp = mul nuw nsw i64 %i.bf, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef range(i64 1, -9223372036854775808) %i.bp, i64 noundef 8) #44, !noalias !2729
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEECsileJQcQObtj_7hir_def.exit8: ; preds = %bb.w
  %i.bq = mul nuw nsw i64 %i.bf, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef range(i64 1, -9223372036854775808) %i.bq, i64 noundef 8) #44, !noalias !2729
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2689, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #43
          to label %common.resume unwind label %bb.i

_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !range !2732, !alias.scope !2733, !noundef !10
  %i.e = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.d)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #43
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  %i.g = icmp eq i64 %i.a, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2756, !nonnull !10, !noundef !10
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !2757
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #40
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def.exit

bb.h:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.g
  ret void

bb.i:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2689, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !range !2732, !alias.scope !2758, !noundef !10
  %i.d = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #43
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2779, !nonnull !10, !noundef !10
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !2779
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #40
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsileJQcQObtj_7hir_def.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def10item_scope9ItemScopeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECsileJQcQObtj_7hir_def.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB2o_11ModuleDefIdNtNtB2o_10item_scope19ImportOrExternCrateEEEEB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #43
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams15with_source_map:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsileJQcQObtj_7hir_def3hir8generics13GenericParamsE5force0EB1J_.exit1

_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsileJQcQObtj_7hir_def3hir8generics13GenericParamsE5force0EB1J_.exit1: ; preds = %bb.h, %bb.i
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvNtNtCsileJQcQObtj_7hir_def3hir8generics5EMPTY, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.as, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.at = tail call noundef nonnull align 8 ptr @_RNvMs1m_NtCsileJQcQObtj_7hir_def10signaturesNtB6_14TraitSignature15with_source_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %i.aw, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.az, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ba = tail call noundef nonnull align 8 ptr @_RNvMs1M_NtCsileJQcQObtj_7hir_def10signaturesNtB6_18TypeAliasSignature15with_source_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store ptr %i.bd, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bb, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.bh = tail call noundef nonnull align 8 ptr @_RNvMsf_NtCsileJQcQObtj_7hir_def10signaturesNtB5_15StructSignature15with_source_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bl, ptr %i.n, align 8
  store ptr %i.bi, ptr %i.o, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.bm = tail call noundef nonnull align 8 ptr @_RNvMsk_NtCsileJQcQObtj_7hir_def10signaturesNtB5_14UnionSignature15with_source_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bm, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store ptr %i.bp, ptr %0, align 8
  store ptr %i.bq, ptr %i.n, align 8
  store ptr %i.bn, ptr %i.o, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.br = tail call noundef nonnull align 8 ptr @_RNvMsw_NtCsileJQcQObtj_7hir_def10signaturesNtB5_13EnumSignature15with_source_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef %i.k, i32 noundef %i.m) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.br, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  store ptr %i.bu, ptr %0, align 8
  store ptr %i.bv, ptr %i.n, align 8
  store ptr %i.bs, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsileJQcQObtj_7hir_def3hir8generics13GenericParamsE5force0EB1J_.exit1, %bb.g, %bb.f, %_RINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsileJQcQObtj_7hir_def3hir8generics13GenericParamsE5force0EB1J_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams17find_type_by_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.val1.i4.i.i.i.i.i = load ptr, ptr %2, align 8, !nonnull !10
  %.sroa.0.0.copyload3.i.i.i.i = load i32, ptr %3, align 4
  %.sroa.0.0.copyload3.i.i.i.i.fr = freeze i32 %.sroa.0.0.copyload3.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload3.i.i.i.i.fr, -1
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.critedge.i.i.i.i.i
  %i.g = phi i32 [ %i.m, %.critedge.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.h = phi ptr [ %i.l, %.critedge.i.i.i.i.i ], [ %i.b, %.lr.ph.i.preheader ] ; 3 uses
  %.val.i = load i64, ptr %i.h, align 8, !range !886, !alias.scope !6613, !noalias !6618, !noundef !10
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val4.i = load ptr, ptr %i.i, align 8, !alias.scope !6625, !noalias !6626 ; 2 uses
  %i.j = trunc nuw i64 %.val.i to i1
  %.not.i.i.i.i.i = icmp ne ptr %.val4.i, null
  %not. = xor i1 %i.j, true
  %or.cond = select i1 %not., i1 %.not.i.i.i.i.i, i1 false
  %i.k = icmp eq ptr %.val4.i, %.val1.i4.i.i.i.i.i
  %or.cond16 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond16, label %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams17find_type_by_name0Bb_.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.m = add i32 %i.g, 1
  %i.n = icmp eq ptr %i.l, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams17find_type_by_name0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.6.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload4.i.i.i.i = load i64, ptr %.sroa.6.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !6627
  store i32 %.sroa.0.0.copyload3.i.i.i.i.fr, ptr %0, align 4
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.0.copyload4.i.i.i.i, ptr %.sroa.4.0..sroa_idx5, align 4
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx6, align 4
  br label %bb.b

.loopexit:                                        ; preds = %.critedge.i.i.i.i.i, %.lr.ph.i.preheader, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams17find_type_by_name0Bb_.exit.i.i.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.val1.i.i.i.i.i.i = load ptr, ptr %2, align 8, !nonnull !10
  %.sroa.0.0.copyload3.i.i.i.i = load i32, ptr %3, align 4
  %.sroa.0.0.copyload3.i.i.i.i.fr = freeze i32 %.sroa.0.0.copyload3.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload3.i.i.i.i.fr, -1
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.g = phi i32 [ %i.m, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.h = phi ptr [ %i.i, %bb.b ], [ %i.b, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.val.i = load i64, ptr %i.h, align 8, !range !886, !alias.scope !6638, !noalias !6643, !noundef !10
  %i.j = trunc nuw i64 %.val.i to i1
  br i1 %i.j, label %.critedge.i.i.i.i.i, label %bb.b

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %.val4.i = load ptr, ptr %i.k, align 8, !alias.scope !6650, !noalias !6651, !nonnull !10, !noundef !10
  %i.l = icmp eq ptr %.val4.i, %.val1.i.i.i.i.i.i
  br i1 %i.l, label %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams18find_const_by_name0Bb_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.critedge.i.i.i.i.i, %.lr.ph.i
  %i.m = add i32 %i.g, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams18find_const_by_name0Bb_.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i
  %.sroa.6.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload4.i.i.i.i = load i64, ptr %.sroa.6.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !6652
  store i32 %.sroa.0.0.copyload3.i.i.i.i.fr, ptr %0, align 4
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.0.copyload4.i.i.i.i, ptr %.sroa.4.0..sroa_idx5, align 4
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx6, align 4
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %.lr.ph.i.preheader, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams18find_const_by_name0Bb_.exit.i.i.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i8 } @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18lifetime_param_idx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = load i32, ptr %1, align 4
  %.fr = freeze i32 %i.c                          ; 3 uses
  %i.d = zext i32 %.fr to i64                     ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b)
  %.not = icmp ugt i64 %i.b, %i.d
  %i.e = add i32 %.fr, 1                          ; 2 uses
  br i1 %.not, label %.split, label %.loopexit

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %xtraiter = and i32 %i.e, 7                     ; 3 uses
  %i.h = icmp ult i32 %.fr, 7
  br i1 %i.h, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i32 %i.e, -8
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i, %.split.new
  %.sroa.013.0 = phi i64 [ 0, %.split.new ], [ %.sroa.013.1.7, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i ]
  %i.i = phi ptr [ %i.g, %.split.new ], [ %i.x, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.split.new ], [ %niter.next.7, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i ]
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load i8, ptr %i.j, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.k = zext nneg i8 %.val.i.i to i64
  %.sroa.013.1 = add i64 %.sroa.013.0, %i.k
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %.val.i.i.1 = load i8, ptr %i.l, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.m = zext nneg i8 %.val.i.i.1 to i64
  %.sroa.013.1.1 = add i64 %.sroa.013.1, %i.m
  %i.n = getelementptr i8, ptr %i.i, i64 40
  %.val.i.i.2 = load i8, ptr %i.n, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.o = zext nneg i8 %.val.i.i.2 to i64
  %.sroa.013.1.2 = add i64 %.sroa.013.1.1, %i.o
  %i.p = getelementptr i8, ptr %i.i, i64 56
  %.val.i.i.3 = load i8, ptr %i.p, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.q = zext nneg i8 %.val.i.i.3 to i64
  %.sroa.013.1.3 = add i64 %.sroa.013.1.2, %i.q
  %i.r = getelementptr i8, ptr %i.i, i64 72
  %.val.i.i.4 = load i8, ptr %i.r, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.s = zext nneg i8 %.val.i.i.4 to i64
  %.sroa.013.1.4 = add i64 %.sroa.013.1.3, %i.s
  %i.t = getelementptr i8, ptr %i.i, i64 88
  %.val.i.i.5 = load i8, ptr %i.t, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.u = zext nneg i8 %.val.i.i.5 to i64
  %.sroa.013.1.5 = add i64 %.sroa.013.1.4, %i.u
  %i.v = getelementptr i8, ptr %i.i, i64 104
  %.val.i.i.6 = load i8, ptr %i.v, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10
  %i.w = zext nneg i8 %.val.i.i.6 to i64
  %.sroa.013.1.6 = add i64 %.sroa.013.1.5, %i.w   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 120
  %.val.i.i.7 = load i8, ptr %i.y, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10 ; 2 uses
  %i.z = zext nneg i8 %.val.i.i.7 to i64
  %.sroa.013.1.7 = add i64 %.sroa.013.1.6, %i.z   ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader: ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa, %.split
  %.sroa.013.0.epil.init = phi i64 [ 0, %.split ], [ %.sroa.013.1.7, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.g, %.split ], [ %i.x, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader
  %.sroa.013.0.epil = phi i64 [ %.sroa.013.0.epil.init, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader ], [ %.sroa.013.1.epil, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil ] ; 2 uses
  %i.aa = phi ptr [ %.epil.init, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader ], [ %i.ab, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil.preheader ], [ %epil.iter.next, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.epil = load i8, ptr %i.ac, align 8, !range !591, !alias.scope !6663, !noalias !6668, !noundef !10 ; 2 uses
  %i.ad = zext nneg i8 %.val.i.i.epil to i64
  %.sroa.013.1.epil = add i64 %.sroa.013.0.epil, %i.ad
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil, !llvm.loop !6681

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa
  %.sroa.013.0.lcssa = phi i64 [ %.sroa.013.1.6, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa ], [ %.sroa.013.0.epil, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil ] ; 2 uses
  %.val.i.i.lcssa = phi i8 [ %.val.i.i.7, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit.unr-lcssa ], [ %.val.i.i.epil, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDatauINtNtNtBf_3ops12control_flow11ControlFlowTjbEENCINvNtBb_3map12map_try_foldTjB25_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB26_EB25_EuB35_NCNvMsm_B4s_INtB4s_5ArenaB26_E4iter0NCIB2_B4o_uB35_NCINvNvB1e_8find_map5checkTjB4o_EB3K_NCNvMs3_B28_NtB28_13GenericParams18lifetime_param_idx0E0E0E0E0B2c_.exit.i.i.epil ] ; 2 uses
  %i.ae = trunc nuw i8 %.val.i.i.lcssa to i1
  %i.af = sub i64 %umin, %.sroa.013.0.lcssa
  %.sroa.01.0.i.i.i.i.i.i.i = select i1 %i.ae, i64 %.sroa.013.0.lcssa, i64 %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit
  %.sroa.3.0.i.i18 = phi i8 [ %.val.i.i.lcssa, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit ], [ 2, %bb.a ]
  %i.ag = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB1y_EB3K_EuINtNtNtBb_3ops12control_flow11ControlFlowTjbEENCNvMsm_B3U_INtB3U_5ArenaB1y_E4iter0NCINvNvXs_B5_IBT_pEB2y_8try_fold9enumerateB3Q_uB4w_NCINvNvB2y_8find_map5checkTjB3Q_EB5b_NCNvMs3_B1A_NtB1A_13GenericParams18lifetime_param_idx0E0E0E0B4w_EB1E_.exit ], [ undef, %bb.a ]
  %i.ah = insertvalue { i64, i8 } poison, i64 %i.ag, 0
  %i.ai = insertvalue { i64, i8 } %i.ah, i8 %.sroa.3.0.i.i18, 1
  ret { i64, i8 } %i.ai
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams21find_lifetime_by_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !noalias !6683, !nonnull !10, !noundef !10
  %.sroa.0.0.copyload3.i.i.i.i = load i32, ptr %3, align 4
  %.sroa.0.0.copyload3.i.i.i.i.fr = freeze i32 %.sroa.0.0.copyload3.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload3.i.i.i.i.fr, -1
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %i.h = phi i32 [ %i.l, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %.lr.ph.i.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !6698, !noalias !6701, !nonnull !10, !noundef !10
  %i.j = icmp eq ptr %.val.i, %i.g
  br i1 %i.j, label %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams21find_lifetime_by_name0Bb_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.l = add i32 %i.h, 1
  %i.m = icmp eq ptr %i.k, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams21find_lifetime_by_name0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.6.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.6.0.copyload4.i.i.i.i = load i64, ptr %.sroa.6.0..8.val.sroa_idx.i.i.i.i, align 4, !noalias !6703
  store i32 %.sroa.0.0.copyload3.i.i.i.i.fr, ptr %0, align 4
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.6.0.copyload4.i.i.i.i, ptr %.sroa.4.0..sroa_idx5, align 4
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %.sroa.5.0..sroa_idx6, align 4
  br label %bb.c

.loopexit:                                        ; preds = %bb.b, %.lr.ph.i.preheader, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %_RNCNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB7_13GenericParams21find_lifetime_by_name0Bb_.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams2of(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams10with_store(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap13shrink_to_fit(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBV_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdEE9shrink_toNCINvNtB8_3map11make_hasherBQ_B2H_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EB2J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1x_13ExternCrateIdEEEE9shrink_toNCINvNtB8_3map11make_hasherBQ_B1u_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !5265, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, label %bb.b

_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a
  %i.j = tail call { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef range(i64 0, 9223372036854775807) %i.h, i64 noundef 8, i64 noundef 96) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !843

bb.b:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit, %bb.a
  tail call void @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBM_7nameres10ModuleDataE9shrink_toBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  tail call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBV_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBV_4name4NameNtCsileJQcQObtj_7hir_def7MacroIdINtCs83ee1IJTiSq_6either6EitherNtBV_11MacroCallIdNtB4l_19BuiltinDeriveImplIdEEEEE9shrink_toNCINvNtB8_3map11make_hasherBQ_B3u_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EB4l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.o, 616
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsileJQcQObtj_7hir_def.exit
  %i.r = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.r) #45
  unreachable

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.0.013 = phi ptr [ %i.s, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 616 ; 2 uses
  tail call void @_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtE9shrink_toB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.0.013, i64 noundef 0)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 56
  tail call void @_RNvMs2_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope13shrink_to_fit(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %i.t)
  %i.u = icmp eq ptr %i.s, %i.p
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsileJQcQObtj_7hir_def7nameresNtB5_6DefMap5empty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(232) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.32.val, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(600) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [608 x i8], align 8               ; 4 uses
  %i.c = alloca [600 x i8], align 8               ; 4 uses
  %i.d = alloca [600 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %4, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8, !alias.scope !6704
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6704
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6704
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @235, i64 32, i1 false)
  %i.g = load i32, ptr %6, align 4, !noundef !10  ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.sroa.5.0 = select i1 %.not, i32 undef, i32 %i.i
  %i.j = invoke { ptr, ptr } %.32.val(ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.f, !noalias !6707 ; 2 uses

bb.b:                                             ; preds = %.body
  br i1 %.sroa.05.1.lpad-body, label %.thread, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 4 uses
  %i.l = load atomic i32, ptr @_RNvNvMs0_NvCsileJQcQObtj_7hir_defsi_1__NtB9_10ModuleIdLt11ingredient_5CACHE acquire, align 4, !noalias !6707 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !875

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef i32 @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtEE24get_or_create_index_slowNCNvMs0_NvB1S_si_1__B1Q_11ingredient_0EB1S_(ptr noundef nonnull align 4 @_RNvNvMs0_NvCsileJQcQObtj_7hir_defsi_1__NtB9_10ModuleIdLt11ingredient_5CACHE, ptr noundef nonnull align 8 %i.k) #40
          to label %bb.e unwind label %bb.f, !noalias !6707

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink5.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !6707, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noalias !6707, !noundef !10
  %i.s = zext i32 %.sink5.i.i.i to i64            ; 2 uses
  %i.t = icmp ugt i64 %i.r, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s
  %.sroa.0.0.i.i.i = load ptr, ptr %i.u, align 8, !noalias !6707, !nonnull !10, !noundef !10
  %i.v = extractvalue { ptr, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6707
  store i32 %2, ptr %i.a, align 8, !noalias !6707
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %3, ptr %i.w, align 4, !noalias !6707
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.x, align 8, !noalias !6707
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.5.0, ptr %i.y, align 4, !noalias !6707
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.z, align 8, !noalias !6707
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7___empty10SYMBOL_STR, ptr %i.aa, align 8, !noalias !6707
  %i.ab = invoke { i32, i32 } @_RNvMs3_NtCsd9Lm8bEdjjY_5salsa14tracked_structINtB5_14IngredientImplNtCsileJQcQObtj_7hir_def10ModuleIdLtE10new_structB15_(ptr noundef nonnull align 128 %.sroa.0.0.i.i.i, ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.a, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.j, %bb.e, %bb.h
end_hunk_1
