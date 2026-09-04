Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils16return_call_host:bb.a
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = load i64, ptr %4, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.l = load i16, ptr %i.k, align 2, !noundef !7
  call void @_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack25return_prepare_host_frame(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %5, i16 noundef %6, i16 noundef %i.l, double noundef %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %i.m = load i64, ptr %i.g, align 8, !range !29, !alias.scope !1974, !noalias !1973, !noundef !7 ; 3 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.o, align 8, !range !27, !alias.scope !1974, !noalias !1973, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1
  store i8 1, ptr %0, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %.sroa.7.0.copyload = load i64, ptr %i.o, align 8, !alias.scope !1975
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !1975
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !1975
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.13.sroa.0.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !1975 ; 3 uses
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.13.sroa.5.0.copyload = load i64, ptr %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 3 uses
  %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.13.sroa.6.0.copyload = load i64, ptr %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 2 uses
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.13.sroa.7.0.copyload = load i64, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.r = inttoptr i64 %.sroa.7.0.copyload to ptr  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !1977, !noalias !1978 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i = load i64, ptr %i.t, align 8, !alias.scope !1977, !noalias !1978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %i.u = or i64 %.sroa.13.sroa.7.0.copyload, %.sroa.13.sroa.6.0.copyload
  %or.cond.i.i = icmp eq i64 %i.u, 0
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.v = icmp ult i64 %.sroa.13.sroa.5.0.copyload, %.sroa.13.sroa.0.0.copyload
  %.not.i.i = icmp ugt i64 %.sroa.13.sroa.5.0.copyload, %.val1.i
  %or.cond3.i.i = select i1 %i.v, i1 true, i1 %.not.i.i, !prof !32
  br i1 %or.cond3.i.i, label %bb.f, label %bb.g, !prof !32

bb.e:                                             ; preds = %bb.c
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !1980, !noalias !1981
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !1980, !noalias !1981
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 179 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #38, !noalias !1982
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = sub nuw i64 %.sroa.13.sroa.5.0.copyload, %.sroa.13.sroa.0.0.copyload
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.13.sroa.0.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1982
  call void @_RNvMNtNtNtCsefoF4u9kbII_5wasmi6engine8executor5inoutNtB2_11InOutParams3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef %i.x, i64 noundef %.sroa.13.sroa.6.0.copyload, i64 noundef %.sroa.13.sroa.7.0.copyload), !noalias !1982
  %i.z = load ptr, ptr %i.d, align 8, !noalias !1982, !noundef !7
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 201 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !noalias !1982
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1982
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit

_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit: ; preds = %bb.e, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1984
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1983, !noalias !1985, !nonnull !7, !noundef !7
  call void %i.ac(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef %i.h, i32 noundef %i.j, i64 noundef 1, double %7, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext false), !inline_history !2
  %i.ad = load i64, ptr %i.c, align 8, !range !35, !noalias !1984, !noundef !7 ; 2 uses
  switch i64 %i.ad, label %bb.j [
    i64 -2, label %bb.l
    i64 -1, label %bb.k
  ], !prof !36

bb.j:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1984
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1984
  store i64 %i.ad, ptr %i.b, align 8, !noalias !1984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !1984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1984
  store ptr %i.b, ptr %i.a, align 8, !noalias !1984
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1984
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #38, !noalias !1985
  unreachable

bb.k:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1984, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1984
  %i.aj = trunc nuw i64 %i.m to i1
  %. = select i1 %i.aj, i64 3, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %., ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %2, ptr %.sroa.717.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %3, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %5, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !34, !alias.scope !1987, !noalias !1986, !noundef !7
  %.not.i = icmp eq i64 %i.al, -1
  br i1 %.not.i, label %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit, label %bb.m, !prof !16

bb.l:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1984
  %i.am = trunc nuw i64 %i.m to i1
  br i1 %i.am, label %bb.o, label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @_RINvNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB8_11ExecContext9done_with3errNCNvNtBa_5utils16return_call_host0EBg_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e) #38
  unreachable

_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit, %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.an, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !34, !alias.scope !1989, !noundef !7
  %.not.i15 = icmp eq i64 %i.ap, -1
  br i1 %.not.i15, label %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit, label %bb.p, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @_RINvNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB8_11ExecContext9done_with3errNCNvNtBa_5utils16return_call_hosts_0EBg_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noundef %i.r) #38
  unreachable

_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit: ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %i.ao, align 8, !alias.scope !1989
  store ptr %i.r, ptr %i.aq, align 8, !alias.scope !1989
  br label %bb.n

bb.q:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.ar, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.12.0.copyload, ptr %.sroa.5.0..sroa_idx14, align 8
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.n, %bb.q
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = zext i16 %3 to i32
  %i.b = shl nuw nsw i32 %i.a, 3                  ; 3 uses
  %i.c = add i32 %i.b, %1
  %.not6 = icmp eq i16 %3, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -8                     ; 2 uses
  %i.e = lshr exact i32 %i.d, 3
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 280
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.g = add nsw i32 %i.b, -8                     ; 2 uses
  %i.h = xor i32 %1, -1
  %i.i = icmp ugt i32 %i.g, %i.h
  %i.j = xor i32 %2, -1
  %i.k = icmp ugt i32 %i.g, %i.j
  %i.l = or i1 %i.i, %i.k
  %i.m = zext i32 %1 to i64
  %i.n = zext i32 %2 to i64
  %i.o = sub nsw i64 %i.n, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %i.l, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.f, 1073741820               ; 3 uses
  %i.p = shl i32 %n.vec, 3                        ; 2 uses
  %i.q = add i32 %1, %i.p
  %i.r = add i32 %2, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i32 %index, 3                        ; 2 uses
  %i.t = add i32 %1, %i.s
  %i.u = add i32 %2, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !noalias !2002
  %wide.load9 = load <2 x i64>, ptr %i.x, align 8, !noalias !2002
  %i.y = zext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %wide.load, ptr %i.z, align 8, !noalias !2003
  store <2 x i64> %wide.load9, ptr %i.aa, align 8, !noalias !2003
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ab = icmp eq i32 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2000

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.sroa.0.08.ph = phi i32 [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.sroa.04.07.ph = phi i32 [ %2, %vector.scevcheck ], [ %2, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %.lr.ph
  %.sroa.0.08 = phi i32 [ %i.ah, %.lr.ph ], [ %.sroa.0.08.ph, %.lr.ph.preheader13 ] ; 2 uses
  %.sroa.04.07 = phi i32 [ %i.ai, %.lr.ph ], [ %.sroa.04.07.ph, %.lr.ph.preheader13 ] ; 2 uses
  %i.ac = zext i32 %.sroa.04.07 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !2002, !noundef !7
  %i.af = zext i32 %.sroa.0.08 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  store i64 %i.ae, ptr %i.ag, align 8, !noalias !2003
  %i.ah = add i32 %.sroa.0.08, 8                  ; 2 uses
  %i.ai = add i32 %.sroa.04.07, 8
  %.not = icmp eq i32 %i.ah, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2001
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #16 {
bb.a:
  %.not5 = icmp eq i16 %3, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i16 %3 to i32
  %i.b = shl nuw nsw i32 %i.a, 3                  ; 3 uses
  %i.c = add i32 %i.b, %2                         ; 2 uses
  %i.d = add i32 %i.b, %1                         ; 2 uses
  %i.e = add nsw i32 %i.b, -8                     ; 2 uses
  %i.f = lshr exact i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 1
  %xtraiter = and i32 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader10, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i32 [ %.reass12, %vector.body ], [ %i.d, %.lr.ph.preheader ]
  %.sroa.03.06.prol = phi i32 [ %4, %vector.body ], [ %i.c, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ]
  %.reass12 = add i32 %index, -8                  ; 3 uses
  %4 = add i32 %.sroa.03.06.prol, -8              ; 3 uses
  %5 = zext i32 %4 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %6 = load i64, ptr %i.h, align 8, !noalias !2015, !noundef !7
  %i.i = zext i32 %.reass12 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i64 %6, ptr %i.j, align 8, !noalias !2016
  %index.next = add i32 %prol.iter, 1             ; 2 uses
  %i.k = icmp eq i32 %index.next, %xtraiter
  br i1 %i.k, label %.lr.ph.preheader10, label %vector.body, !llvm.loop !2014

.lr.ph.preheader10:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.0.07.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %.reass12, %vector.body ]
  %.sroa.03.06.unr = phi i32 [ %i.c, %.lr.ph.preheader ], [ %4, %vector.body ]
  %7 = icmp ult i32 %i.e, 24
  br i1 %7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.preheader10, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %.lr.ph
  %.sroa.0.07 = phi i32 [ %i.l, %.lr.ph ], [ %.sroa.0.07.unr, %.lr.ph.preheader10 ] ; 4 uses
  %.sroa.03.06 = phi i32 [ %i.m, %.lr.ph ], [ %.sroa.03.06.unr, %.lr.ph.preheader10 ] ; 4 uses
  %8 = add i32 %.sroa.0.07, -8
  %9 = add i32 %.sroa.03.06, -8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i64, ptr %11, align 8, !noalias !2015, !noundef !7
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  store i64 %12, ptr %14, align 8, !noalias !2016
  %15 = add i32 %.sroa.0.07, -16
  %16 = add i32 %.sroa.03.06, -16
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  %19 = load i64, ptr %18, align 8, !noalias !2015, !noundef !7
  %20 = zext i32 %15 to i64
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  store i64 %19, ptr %21, align 8, !noalias !2016
  %22 = add i32 %.sroa.0.07, -24
  %23 = add i32 %.sroa.03.06, -24
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  %26 = load i64, ptr %25, align 8, !noalias !2015, !noundef !7
  %27 = zext i32 %22 to i64
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %27
  store i64 %26, ptr %28, align 8, !noalias !2016
  %i.l = add i32 %.sroa.0.07, -32                 ; 3 uses
  %i.m = add i32 %.sroa.03.06, -32                ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !noalias !2015, !noundef !7
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i64 %i.p, ptr %i.r, align 8, !noalias !2016
  %.not = icmp eq i32 %i.l, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils25compile_or_get_func_entry(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, ptr nofree noundef nonnull align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load atomic i8, ptr %i.b acquire, align 8, !noalias !2024
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread, label %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit, !prof !16

_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !noalias !2025, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x i16>, ptr %i.f, align 8, !noalias !2025
  store <2 x i16> %i.g, ptr %.sroa.518.0..sroa_idx, align 8, !noalias !2026
  br label %bb.c

_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1580
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry7compile(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(32) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h) #41
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.j = icmp eq ptr %.pre, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit
  %i.m = phi ptr [ %i.e, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit.thread ], [ %.pre, %_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile.exit ]
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0.copyload = load i64, ptr %.sroa.513.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = trunc i64 %.sroa.513.0.copyload to i32
  store i32 %i.n, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.o, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils9call_host(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i64 noundef range(i64 0, 2) %4, ptr %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %6, i32 noundef %7, i16 noundef %8, i64 noundef range(i64 0, 2) %9, double %10, i1 noundef zeroext %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = load i64, ptr %6, align 8, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i32, ptr %i.h, align 8, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.k = load i16, ptr %i.j, align 2, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !2050, !noalias !2051 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i = load i64, ptr %i.m, align 8, !alias.scope !2050, !noalias !2051 ; 3 uses
  %i.n = trunc nuw i64 %4 to i1
  %.not.i.i.i = icmp eq i64 %.val1.i, 0           ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.c, label %.thread.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #38, !noalias !2052
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.o = getelementptr [32 x i8], ptr %.val.i, i64 %.val1.i
  %i.p = getelementptr i8, ptr %i.o, i64 -16
  store ptr %5, ptr %i.p, align 8, !noalias !2052
  br label %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.thread.i, label %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i

_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.thread.i: ; preds = %bb.d
  %i.q = lshr i32 %7, 3
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  br label %bb.e

_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i: ; preds = %bb.d, %.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.t = getelementptr [32 x i8], ptr %.val.i, i64 %.val1.i
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !noalias !2053, !noundef !7 ; 3 uses
  %i.w = lshr i32 %7, 3
  %i.x = and i32 %i.w, 65535
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add i64 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %bb.i, label %bb.e, !prof !33

bb.e:                                             ; preds = %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.thread.i
  %i.ab = phi i64 [ %i.s, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.thread.i ], [ %i.z, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i ] ; 3 uses
  %.sroa.02.0.i3.i = phi i64 [ 0, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.thread.i ], [ %i.v, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = zext i16 %8 to i64                      ; 3 uses
  %i.ae = zext i16 %i.k to i64                    ; 3 uses
  %..i30.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ad) ; 2 uses
  %i.af = add i64 %i.ab, %..i30.i.i               ; 6 uses
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %bb.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !2054, !noalias !2055, !noundef !7
  %i.aj = icmp ugt i64 %i.af, %i.ai
  br i1 %i.aj, label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !2054, !noalias !2055, !noundef !7 ; 2 uses
  %i.am = icmp ult i64 %i.al, 1152921504606846976
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ugt i64 %i.af, %i.al
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i64 %i.af, ptr %i.ak, align 8, !alias.scope !2054, !noalias !2055
  br label %bb.j

_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i: ; preds = %bb.f
  %i.ao = tail call noundef i8 @_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack9grow_cold(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac, i64 noundef %i.af) #41, !noalias !2055 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.not.i.i, label %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i._crit_edge, label %bb.i

_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i._crit_edge: ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i6.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2056, !noalias !2057
  %i.ap = icmp ugt i64 %i.af, %.val1.i6.pre
  br label %bb.j

bb.i:                                             ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i, %bb.e
  %.sroa.410.0.ph = phi i8 [ %i.ao, %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i ], [ 8, %_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack18prepare_host_frame.exit.i ], [ 8, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.410.0.ph, ptr %i.aq, align 1
  store i8 1, ptr %0, align 8
  br label %bb.u

bb.j:                                             ; preds = %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i._crit_edge, %bb.h, %bb.g
  %.val1.i6 = phi i1 [ %i.ap, %_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed.exit.i.i._crit_edge ], [ false, %bb.h ], [ false, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2058, !noalias !2055, !nonnull !7, !noundef !7 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.02.0.i3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %i.au = or i64 %i.ae, %i.ad
  %or.cond.i.i = icmp eq i64 %i.au, 0
  br i1 %or.cond.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.val1.i6, label %bb.m, label %bb.n, !prof !32

bb.l:                                             ; preds = %bb.j
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !2061, !noalias !2062
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !2061, !noalias !2062
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 179 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #38, !noalias !2063
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2063
  call void @_RNvMNtNtNtCsefoF4u9kbII_5wasmi6engine8executor5inoutNtB2_11InOutParams3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 %i.aw, i64 noundef %..i30.i.i, i64 noundef %i.ad, i64 noundef %i.ae), !noalias !2063
  %i.ax = load ptr, ptr %i.d, align 8, !noalias !2063, !noundef !7
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 201 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !noalias !2063
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2063
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1814 = distinct !{!1814, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi"}
!1815 = distinct !{!1815, !1814, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesECsefoF4u9kbII_5wasmi: argument 0"}
!1816 = distinct !{!1816, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleEECsefoF4u9kbII_5wasmi"}
!1817 = distinct !{!1817, !1816, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleEECsefoF4u9kbII_5wasmi: argument 0"}
!1818 = distinct !{!1818, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi"}
!1819 = distinct !{!1819, !1818, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core6ModuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi: argument 0"}
!1820 = distinct !{!1820, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry12set_compiled"}
!1821 = distinct !{!1821, !1820, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry12set_compiled: argument 0"}
!1822 = distinct !{!1822, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14set_uncompiled"}
!1823 = distinct !{!1823, !1822, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14set_uncompiled: argument 0"}
!1824 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 1, i32 2000}
!1825 = !{!1768}
!1826 = !{!1770}
!1827 = !{!1771}
!1828 = !{!1770, !1772}
!1829 = !{!1774, !1771}
!1830 = !{!"branch_weights", i32 4000000, i32 4001}
!1831 = !{!1770, !1771, !1772}
!1832 = !{!"branch_weights", i32 1, i32 4001}
!1833 = !{!1770, !1771}
!1834 = !{!1771, !1772}
!1835 = !{!1780, !1778, !1776}
!1836 = !{!1782}
!1837 = !{!1784}
!1838 = !{!1786}
!1839 = !{!1786, !1784, !1782}
!1840 = !{!1786, !1784, !1782, !1770}
!1841 = !{!1789, !1788}
!1842 = !{!1791}
!1843 = !{!1793}
!1844 = !{!1795}
!1845 = !{!1795, !1793, !1791}
!1846 = !{!1795, !1793, !1791, !1770}
!1847 = !{!1797}
!1848 = !{!1799}
!1849 = !{!1801}
!1850 = !{!1801, !1799, !1797}
!1851 = !{!1801, !1799, !1797, !1770}
!1852 = !{!1804, !1803}
!1853 = !{!1807, !1806, !1770, !1771, !1772}
!1854 = !{!1809}
!1855 = !{!1811}
!1856 = !{!1813}
!1857 = !{!1813, !1811, !1809}
!1858 = !{!1813, !1811, !1809, !1770, !1771}
!1859 = !{!1815}
!1860 = !{!1817}
!1861 = !{!1819}
!1862 = !{!1819, !1817, !1815}
!1863 = !{!1819, !1817, !1815, !1770, !1771}
!1864 = !{!1776}
!1865 = !{!1778}
!1866 = !{!1780}
!1867 = !{!1780, !1778, !1776, !1770}
!1868 = !{!1821}
!1869 = !{!1823}
!1870 = distinct !{!1870, !"_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE21try_clone_from_ref_inCsefoF4u9kbII_5wasmi"}
!1871 = distinct !{!1871, !1870, !"_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShE21try_clone_from_ref_inCsefoF4u9kbII_5wasmi: argument 0"}
!1872 = !{!1871}
!1873 = distinct !{!1873, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout"}
!1874 = distinct !{!1874, !1873, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 0"}
!1875 = distinct !{!1875, !1873, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 1"}
!1876 = !{!1874}
!1877 = !{!1875}
!1878 = !{!1874, !1875}
!1879 = distinct !{!1879, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack13restore_frame"}
!1880 = distinct !{!1880, !1879, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack13restore_frame: argument 1"}
!1881 = distinct !{!1881, !1879, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack13restore_frame: argument 0"}
!1882 = !{!1880}
!1883 = !{!1881}
!1884 = !{!1881, !1880}
!1885 = distinct !{!1885, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip"}
!1886 = distinct !{!1886, !1885, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip: argument 0"}
!1887 = distinct !{!1887, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame"}
!1888 = distinct !{!1888, !1887, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame: argument 0"}
!1889 = distinct !{!1889, !1887, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame: argument 1"}
!1890 = distinct !{!1890, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed"}
!1891 = distinct !{!1891, !1890, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed: argument 0"}
!1892 = !{!1886}
!1893 = !{!1888}
!1894 = !{!1889}
!1895 = !{!1891, !1889}
!1896 = distinct !{!1896, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack25return_prepare_host_frame"}
!1897 = distinct !{!1897, !1896, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack25return_prepare_host_frame: argument 1"}
!1898 = distinct !{!1898, !1896, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack25return_prepare_host_frame: argument 0"}
!1899 = distinct !{!1899, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack3pop"}
!1900 = distinct !{!1900, !1899, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack3pop: argument 1"}
!1901 = distinct !{!1901, !1899, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack3pop: argument 0"}
!1902 = distinct !{!1902, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack25return_prepare_host_frame"}
!1903 = distinct !{!1903, !1902, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack25return_prepare_host_frame: argument 0"}
!1904 = distinct !{!1904, !1902, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack25return_prepare_host_frame: argument 1"}
!1905 = distinct !{!1905, !1902, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack25return_prepare_host_frame: argument 2"}
!1906 = distinct !{!1906, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4Cell11copy_withinINtNtNtB5_3ops5range5RangejEEBF_"}
!1907 = distinct !{!1907, !1906, !"_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4Cell11copy_withinINtNtNtB5_3ops5range5RangejEEBF_: argument 0"}
!1908 = distinct !{!1908, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed"}
!1909 = distinct !{!1909, !1908, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed: argument 0"}
!1910 = !{!1897}
!1911 = !{!1898}
!1912 = !{!1901, !1900, !1898, !1897}
!1913 = !{!1898, !1897}
!1914 = !{!1900}
!1915 = !{!1900, !1897}
!1916 = !{!1901, !1898}
!1917 = !{!1903}
!1918 = !{!1904}
!1919 = !{!1903, !1905}
!1920 = !{!1904, !1905}
!1921 = !{!1907}
!1922 = !{!1907, !1903, !1904, !1905}
!1923 = !{!1903, !1904, !1905}
!1924 = !{!1909, !1904}
!1925 = distinct !{!1925, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack3new"}
!1926 = distinct !{!1926, !1925, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack3new: argument 0"}
!1927 = distinct !{!1927, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsefoF4u9kbII_5wasmi"}
!1928 = distinct !{!1928, !1927, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsefoF4u9kbII_5wasmi: argument 0"}
!1929 = !{!1928, !1926}
!1930 = !{!1926}
!1931 = distinct !{!1931, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip"}
!1932 = distinct !{!1932, !1931, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip: argument 0"}
!1933 = !{!1932}
!1934 = distinct !{!1934, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi"}
!1935 = distinct !{!1935, !1934, !"_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi: argument 0"}
!1936 = distinct !{!1936, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi"}
!1937 = distinct !{!1937, !1936, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi: argument 0"}
!1938 = !{!1935}
!1939 = !{!1937}
!1940 = !{!1937, !1935}
!1941 = distinct !{!1941, !"_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsefoF4u9kbII_5wasmi"}
!1942 = distinct !{!1942, !1941, !"_RINvMNtCskKLDkoKarTP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsefoF4u9kbII_5wasmi: argument 0"}
!1943 = distinct !{!1943, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack7sync_ip"}
!1944 = distinct !{!1944, !1943, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack7sync_ip: argument 0"}
!1945 = distinct !{!1945, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip"}
!1946 = distinct !{!1946, !1945, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip: argument 0"}
!1947 = distinct !{!1947, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_4exec18memory_copy_withins_0EBe_"}
!1948 = distinct !{!1948, !1947, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_4exec18memory_copy_withins_0EBe_: argument 0"}
!1949 = !{!1942}
!1950 = !{!1944}
!1951 = !{!1946}
!1952 = !{!1946, !1944}
!1953 = !{!1948}
!1954 = !{ptr @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc, ptr @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des}
!1955 = distinct !{!1955, !"_RNvXNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsINtNtCskKLDkoKarTP_4core6result6ResultTINtNtNtB13_3ops12control_flow11ControlFlowNtNtB4_5state2SpTNtB2j_2IpB2h_NtB2j_4InstEENtB2j_9HostFrameENtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeENtB2_11IntoControl12into_controlBa_"}
!1956 = distinct !{!1956, !1955, !"_RNvXNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsINtNtCskKLDkoKarTP_4core6result6ResultTINtNtNtB13_3ops12control_flow11ControlFlowNtNtB4_5state2SpTNtB2j_2IpB2h_NtB2j_4InstEENtB2j_9HostFrameENtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeENtB2_11IntoControl12into_controlBa_: argument 0"}
!1957 = distinct !{!1957, !1955, !"_RNvXNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsINtNtCskKLDkoKarTP_4core6result6ResultTINtNtNtB13_3ops12control_flow11ControlFlowNtNtB4_5state2SpTNtB2j_2IpB2h_NtB2j_4InstEENtB2j_9HostFrameENtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeENtB2_11IntoControl12into_controlBa_: argument 1"}
!1958 = distinct !{!1958, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout"}
!1959 = distinct !{!1959, !1958, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 0"}
!1960 = distinct !{!1960, !1958, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 1"}
!1961 = distinct !{!1961, !1958, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 2"}
!1962 = distinct !{!1962, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout"}
!1963 = distinct !{!1963, !1962, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 0"}
!1964 = distinct !{!1964, !1962, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 1"}
!1965 = distinct !{!1965, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host"}
!1966 = distinct !{!1966, !1965, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host: argument 0"}
!1967 = distinct !{!1967, !1965, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host: argument 1"}
!1968 = distinct !{!1968, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_"}
!1969 = distinct !{!1969, !1968, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_: argument 1"}
!1970 = distinct !{!1970, !1968, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_: argument 0"}
!1971 = distinct !{!1971, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_"}
!1972 = distinct !{!1972, !1971, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_: argument 0"}
!1973 = !{!1956}
!1974 = !{!1957}
!1975 = !{!1956, !1957}
!1976 = !{!1959}
!1977 = !{!1960}
!1978 = !{!1959, !1961}
!1979 = !{!1963}
!1980 = !{!1963, !1959}
!1981 = !{!1964, !1960, !1961}
!1982 = !{!1963, !1964, !1959, !1960, !1961}
!1983 = !{!1966}
!1984 = !{!1966, !1967}
!1985 = !{!1967}
!1986 = !{!1969}
!1987 = !{!1970}
!1988 = !{!1970, !1969}
!1989 = !{!1972}
!1990 = distinct !{!1990, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_"}
!1991 = distinct !{!1991, !1990, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_: argument 1"}
!1992 = distinct !{!1992, !1990, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_: argument 0"}
!1993 = distinct !{!1993, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next"}
!1994 = distinct !{!1994, !1993, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next: argument 1"}
!1995 = distinct !{!1995, !1993, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next: argument 0"}
!1996 = distinct !{!1996, !"_RINvXs1b_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_12StoreToCells14store_to_cellsNtNtB9_5state2SpEBf_"}
!1997 = distinct !{!1997, !1996, !"_RINvXs1b_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_12StoreToCells14store_to_cellsNtNtB9_5state2SpEBf_: argument 0"}
!1998 = distinct !{!1998, !"_RNvXsg_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsWriter4next"}
!1999 = distinct !{!1999, !1998, !"_RNvXsg_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsWriter4next: argument 0"}
!2000 = distinct !{!2000, !19, !20}
!2001 = distinct !{!2001, !19}
!2002 = !{!1995, !1994, !1992, !1991}
!2003 = !{!1999, !1997}
!2004 = distinct !{!2004, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_"}
!2005 = distinct !{!2005, !2004, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_: argument 1"}
!2006 = distinct !{!2006, !2004, !"_RINvXs2c_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_20LoadFromCellsByValue24load_from_cells_by_valueNtNtB9_5state2SpEBf_: argument 0"}
!2007 = distinct !{!2007, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next"}
!2008 = distinct !{!2008, !2007, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next: argument 1"}
!2009 = distinct !{!2009, !2007, !"_RNvXsh_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsReader4next: argument 0"}
!2010 = distinct !{!2010, !"_RINvXs1b_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_12StoreToCells14store_to_cellsNtNtB9_5state2SpEBf_"}
!2011 = distinct !{!2011, !2010, !"_RINvXs1b_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cellyNtB7_12StoreToCells14store_to_cellsNtNtB9_5state2SpEBf_: argument 0"}
!2012 = distinct !{!2012, !"_RNvXsg_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsWriter4next"}
!2013 = distinct !{!2013, !2012, !"_RNvXsg_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_2SpNtNtB7_4cell11CellsWriter4next: argument 0"}
!2014 = distinct !{!2014, !2017}
!2015 = !{!2009, !2008, !2006, !2005}
!2016 = !{!2013, !2011}
!2017 = !{!"llvm.loop.unroll.disable"}
!2018 = distinct !{!2018, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile"}
!2019 = distinct !{!2019, !2018, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile: argument 2"}
!2020 = distinct !{!2020, !2018, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile: argument 1"}
!2021 = distinct !{!2021, !2018, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry14get_or_compile: argument 0"}
!2022 = distinct !{!2022, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry15assume_compiled"}
!2023 = distinct !{!2023, !2022, !"_RNvMsc_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_9FuncEntry15assume_compiled: argument 0"}
!2024 = !{!2021, !2020, !2019}
!2025 = !{!2023, !2021, !2020, !2019}
!2026 = !{!2020, !2019}
!2027 = distinct !{!2027, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack18prepare_host_frame"}
!2028 = distinct !{!2028, !2027, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack18prepare_host_frame: argument 1"}
!2029 = distinct !{!2029, !2027, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack18prepare_host_frame: argument 0"}
!2030 = distinct !{!2030, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip"}
!2031 = distinct !{!2031, !2030, !"_RNvMsq_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_9CallStack7sync_ip: argument 0"}
!2032 = distinct !{!2032, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame"}
!2033 = distinct !{!2033, !2032, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame: argument 1"}
!2034 = distinct !{!2034, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed"}
!2035 = distinct !{!2035, !2034, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack14grow_if_needed: argument 0"}
!2036 = distinct !{!2036, !2032, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack18prepare_host_frame: argument 0"}
!2037 = distinct !{!2037, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout"}
!2038 = distinct !{!2038, !2037, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 1"}
!2039 = distinct !{!2039, !2037, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 2"}
!2040 = distinct !{!2040, !2037, !"_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout: argument 0"}
!2041 = distinct !{!2041, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout"}
!2042 = distinct !{!2042, !2041, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 0"}
!2043 = distinct !{!2043, !2041, !"_RNvMsp_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_10ValueStack10host_inout: argument 1"}
!2044 = distinct !{!2044, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host"}
!2045 = distinct !{!2045, !2044, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host: argument 0"}
!2046 = distinct !{!2046, !2044, !"_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils11invoke_host: argument 1"}
!2047 = distinct !{!2047, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils9call_host0EBe_"}
!2048 = distinct !{!2048, !2047, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils9call_host0EBe_: argument 0"}
!2049 = distinct !{!2049, !2047, !"_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils9call_host0EBe_: argument 1"}
!2050 = !{!2028}
!2051 = !{!2029}
!2052 = !{!2031, !2029, !2028}
!2053 = !{!2029, !2028}
!2054 = !{!2035, !2033, !2028}
!2055 = !{!2036, !2029}
!2056 = !{!2038}
!2057 = !{!2040, !2039}
!2058 = !{!2033, !2028}
!2059 = !{!2040}
!2060 = !{!2042}
!2061 = !{!2042, !2040}
!2062 = !{!2043, !2038, !2039}
!2063 = !{!2042, !2043, !2040, !2038, !2039}
!2064 = !{!2045}
!2065 = !{!2045, !2046}
!2066 = !{!2046}
!2067 = !{!2048}
!2068 = !{!2049}
!2069 = distinct !{!2069, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!2070 = distinct !{!2070, !2069, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!2071 = distinct !{!2071, !2069, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!2072 = distinct !{!2072, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!2073 = distinct !{!2073, !2072, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!2074 = distinct !{!2074, !2072, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!2075 = !{!2070}
!2076 = !{!2071}
!2077 = !{!2070, !2071}
!2078 = !{!2073}
!2079 = !{!2074}
!2080 = !{!2073, !2074, !2070, !2071}
!2081 = !{!2073, !2070}
!2082 = !{!2074, !2071}
!2083 = distinct !{!2083, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!2084 = distinct !{!2084, !2083, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!2085 = distinct !{!2085, !2083, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!2086 = distinct !{!2086, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!2087 = distinct !{!2087, !2086, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!2088 = distinct !{!2088, !2086, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!2089 = !{!2084}
!2090 = !{!2085}
!2091 = !{!2084, !2085}
!2092 = !{!2087}
!2093 = !{!2088}
!2094 = !{!2087, !2088, !2084, !2085}
!2095 = !{!2087, !2084}
!2096 = !{!2088, !2085}
!2097 = distinct !{!2097, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!2098 = distinct !{!2098, !2097, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!2099 = distinct !{!2099, !2097, !"_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!2100 = !{!2098}
!2101 = !{!2099}
!2102 = !{!2098, !2099}
!2103 = !{ptr @_RNvXs4_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_24RestoreTypeMismatchErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt}
!2104 = distinct !{!2104, !"_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_6Import3new"}
!2105 = distinct !{!2105, !2104, !"_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_6Import3new: argument 3"}
!2106 = distinct !{!2106, !2104, !"_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_6Import3new: argument 0"}
!2107 = distinct !{!2107, !2104, !"_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_6Import3new: argument 2"}
!2108 = distinct !{!2108, !2104, !"_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module6importNtB5_6Import3new: argument 1"}
!2109 = !{i64 0, i64 7}
!2110 = !{!2105}
!2111 = !{!2106, !2105}
!2112 = !{!2108, !2107}
!2113 = distinct !{!2113, !"_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsefoF4u9kbII_5wasmi"}
!2114 = distinct !{!2114, !2113, !"_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsefoF4u9kbII_5wasmi: argument 0"}
!2115 = !{!2114}
!2116 = distinct !{!2116, !"_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs7buckets"}
!2117 = distinct !{!2117, !2116, !"_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs7buckets: argument 0"}
!2118 = distinct !{!2118, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB4_7Buckets3new"}
!2119 = distinct !{!2119, !2118, !"_RNvMs_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB4_7Buckets3new: argument 0"}
!2120 = distinct !{!2120, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_7BucketsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next"}
!2121 = distinct !{!2121, !2120, !"_RNvXs0_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_7BucketsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!2122 = !{!2119, !2117}
!2123 = !{!2121}
!2124 = distinct !{!2124, !"_RNvXs2I_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsefoF4u9kbII_5wasmi"}
!2125 = distinct !{!2125, !2124, !"_RNvXs2I_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsefoF4u9kbII_5wasmi: argument 0"}
!2126 = !{!2125}
!2127 = distinct !{!2127, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2128 = distinct !{!2128, !2127, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 1"}
!2129 = distinct !{!2129, !2127, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2130 = distinct !{!2130, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2131 = distinct !{!2131, !2130, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi: argument 1"}
!2132 = distinct !{!2132, !2130, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2133 = !{!2132, !2131, !2129, !2128}
!2134 = !{!2132, !2129}
!2135 = distinct !{!2135, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj16_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2136 = distinct !{!2136, !2135, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj16_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 1"}
!2137 = distinct !{!2137, !2135, !"_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj16_NtNtB7_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2138 = distinct !{!2138, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2139 = distinct !{!2139, !2138, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi: argument 1"}
!2140 = distinct !{!2140, !2138, !"_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2141 = !{!2140, !2139, !2137, !2136}
!2142 = !{!2140, !2137}
!2143 = distinct !{!2143, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_4func4FuncENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2144 = distinct !{!2144, !2143, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_4func4FuncENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2145 = distinct !{!2145, !2143, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_4func4FuncENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2146 = !{!2145, !2144}
!2147 = !{!2145}
!2148 = distinct !{!2148, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_5table5TableENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2149 = distinct !{!2149, !2148, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_5table5TableENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2150 = distinct !{!2150, !2148, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_5table5TableENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2151 = !{!2150, !2149}
!2152 = !{!2150}
!2153 = distinct !{!2153, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6global6GlobalENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2154 = distinct !{!2154, !2153, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6global6GlobalENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2155 = distinct !{!2155, !2153, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6global6GlobalENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2156 = !{!2155, !2154}
!2157 = !{!2155}
!2158 = distinct !{!2158, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6memory6MemoryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2159 = distinct !{!2159, !2158, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6memory6MemoryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2160 = distinct !{!2160, !2158, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_6memory6MemoryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2161 = !{!2160, !2159}
!2162 = !{!2160}
!2163 = distinct !{!2163, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_7reftype9ExternRefENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2164 = distinct !{!2164, !2163, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_7reftype9ExternRefENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2165 = distinct !{!2165, !2163, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_7reftype9ExternRefENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2166 = !{!2165, !2164}
!2167 = !{!2165}
!2168 = distinct !{!2168, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_8instance8InstanceENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2169 = distinct !{!2169, !2168, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_8instance8InstanceENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2170 = distinct !{!2170, !2168, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtB7_8instance8InstanceENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2171 = !{!2170, !2169}
!2172 = !{!2170}
!2173 = distinct !{!2173, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_6engine10func_types13DedupFuncTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2174 = distinct !{!2174, !2173, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_6engine10func_types13DedupFuncTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2175 = distinct !{!2175, !2173, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_6engine10func_types13DedupFuncTypeENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2176 = !{!2175, !2174}
!2177 = !{!2175}
!2178 = distinct !{!2178, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_8instance6handle12RawAnyHandleENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_"}
!2179 = distinct !{!2179, !2178, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_8instance6handle12RawAnyHandleENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 1"}
!2180 = distinct !{!2180, !2178, !"_RNvXs6_NtCsefoF4u9kbII_5wasmi6handleINtB5_9RawHandleNtNtNtB7_8instance6handle12RawAnyHandleENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_: argument 0"}
!2181 = !{!2180, !2179}
!2182 = !{!2180}
!2183 = distinct !{!2183, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map17CompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_"}
!2184 = distinct !{!2184, !2183, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map17CompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_: argument 1"}
!2185 = distinct !{!2185, !2183, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map17CompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_: argument 0"}
!2186 = !{!2185, !2184}
!2187 = distinct !{!2187, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_"}
!2188 = distinct !{!2188, !2187, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_: argument 1"}
!2189 = distinct !{!2189, !2187, !"_RNvXs0_NtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB5_13MaybeDanglingNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map19UncompiledFuncEntryENtNtB9_3fmt5Debug3fmtB1d_: argument 0"}
!2190 = !{!2189, !2188}
!2191 = distinct !{!2191, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2192 = distinct !{!2192, !2191, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2193 = distinct !{!2193, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt"}
!2194 = distinct !{!2194, !2193, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!2195 = distinct !{!2195, !2193, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!2196 = !{!2192}
!2197 = !{!2194, !2192}
!2198 = !{!2195}
!2199 = distinct !{!2199, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerolENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2200 = distinct !{!2200, !2199, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerolENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2201 = distinct !{!2201, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt"}
!2202 = distinct !{!2202, !2201, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt: argument 1"}
!2203 = distinct !{!2203, !2201, !"_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt: argument 0"}
!2204 = !{!2200}
!2205 = !{!2202, !2200}
!2206 = !{!2203}
!2207 = distinct !{!2207, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi"}
!2208 = distinct !{!2208, !2207, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 0"}
!2209 = distinct !{!2209, !2207, !"_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCsefoF4u9kbII_5wasmi: argument 1"}
!2210 = distinct !{!2210, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt"}
!2211 = distinct !{!2211, !2210, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt: argument 1"}
!2212 = distinct !{!2212, !2210, !"_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt: argument 0"}
!2213 = !{!2208}
!2214 = !{!2209}
!2215 = !{!2208, !2209}
!2216 = !{!2211, !2209}
!2217 = !{!2212, !2208}
end_hunk_1
