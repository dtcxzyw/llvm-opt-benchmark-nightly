Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN68_$LT$actix_web..http..header..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h9da0ff31629f717bE":bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN68_$LT$actix_web..redirect..Redirect$u20$as$u20$core..clone..Clone$GT$5clone17h5b67a468e17ededaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !8687 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8688)
  %i.a = load i64, ptr %1, align 8, !range !37, !alias.scope !8688, !noundef !32
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8688, !nonnull !32, !noundef !32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8688, !noundef !32 ; 7 uses
  br i1 %.not.i, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8689
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #46, !noalias !8689 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !8690
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !8691
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit": ; preds = %bb.a, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ -9223372036854775808, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8692)
  %i.k = load i64, ptr %i.j, align 8, !range !37, !alias.scope !8692, !noundef !32
  %.not.i2 = icmp eq i64 %i.k, -9223372036854775808
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8692, !nonnull !32, !noundef !32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8692, !noundef !32 ; 7 uses
  br i1 %.not.i2, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit9", label %bb.e

bb.e:                                             ; preds = %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit"
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3: ; preds = %bb.e
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4", label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8693
  %i.r = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 1) #46, !noalias !8693 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4"

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i8 = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i8, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4": ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3
  %.sroa.10.0.i.i.i.i5 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3 ], [ %i.r, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i5, ptr nonnull readonly align 1 %i.m, i64 %i.o, i1 false), !noalias !8694
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit9"

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  switch i64 %.sroa.0.0, label %bb.i [
    i64 -9223372036854775808, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit"
    i64 0, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit"
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8695
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit9": ; preds = %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4", %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit"
  %.sroa.5.0 = phi ptr [ %.sroa.10.0.i.i.i.i5, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4" ], [ %i.m, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit" ]
  %.sroa.010.0 = phi i64 [ %i.o, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4" ], [ -9223372036854775808, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit" ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i16, ptr %i.u, align 8, !range !54, !noundef !32
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.9.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.010.0, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.o, ptr %.sroa.7.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.v, ptr %i.x, align 8
  ret void

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit": ; preds = %bb.i, %bb.h, %bb.h
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$actix_web..request..HttpRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17ha526acb091b7795bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !8714 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = load ptr, ptr %0, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 160 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !32, !noundef !32 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.x = load i64, ptr %i.w, align 8, !noundef !32 ; 6 uses
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !range !46, !noundef !32
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ac = load i16, ptr %i.ab, align 8, !noundef !32 ; 3 uses
  %i.ad = icmp eq i16 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !32 ; 8 uses
  br i1 %i.ad, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i16 %i.ac to i64                   ; 5 uses
  %i.ah = icmp eq i16 %i.ac, 0
  br i1 %i.ah, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ugt i64 %i.x, %i.ag
  br i1 %.not.i.i, label %bb.f, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.ai = icmp ne i64 %i.x, %i.ag
  %.not.i = icmp eq ptr %i.af, null
  %or.cond.i = or i1 %.not.i, %i.ai
  br i1 %or.cond.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !8715, !noundef !32
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i": ; preds = %bb.d
  %.not.old.i = icmp eq ptr %i.af, null
  br i1 %.not.old.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, !prof !59

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.f, %.split.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %i.x, i64 noundef 0, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread: ; preds = %.split.i.i, %bb.f
  %.sroa.7.0.i.ph = phi i64 [ %i.ag, %bb.f ], [ %i.x, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %..sroa.7.0.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %spec.select = select i1 %i.y, ptr @313, ptr %i.af
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.sroa.7.0.i.ph, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %..sroa.7.0.i, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ]
  %.sroa.010.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.af, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %spec.select, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ @313, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0) ]
  store ptr %.sroa.010.0, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.5.0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.u, ptr %i.p, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN59_$LT$http..version..Version$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02b52591cf5a3b0E", ptr %.sroa.413.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.v, ptr %i.an, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE", ptr %.sroa.417.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.ao, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.421.0..sroa_idx, align 8
  %.val71 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val72 = load ptr, ptr %i.ap, align 8, !nonnull !32, !noundef !32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8716
  store ptr @457, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !8716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.aq, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %i.ar = load ptr, ptr %i.s, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = load i16, ptr %i.as, align 8, !noundef !32 ; 2 uses
  %i.au = icmp eq i16 %i.at, -1
  br i1 %i.au, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nuw i16 %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !32 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.az = load i64, ptr %i.ay, align 8, !noundef !32 ; 7 uses
  %i.ba = zext i16 %i.av to i64                   ; 8 uses
  %.not.i.i73 = icmp ugt i64 %i.az, %i.ba
  br i1 %.not.i.i73, label %bb.i, label %.split.i.i74

.split.i.i74:                                     ; preds = %bb.h
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !8717, !noundef !32
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.i.i74
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az, i64 noundef %i.ba, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #52
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !8718, !noundef !32
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az, i64 noundef %i.ba, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #52
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84: ; preds = %bb.k
  %i.bi = sub nuw i64 %i.az, %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  store ptr %i.bj, ptr %i.n, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.bi, ptr %i.bk, align 8
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc3dc7805ca26f4E", ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8719
  store ptr @459, ptr %i.d, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %.sroa.7107.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10109.0..sroa_idx, align 8
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.bl, label %bb.o, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, %.split.i.i74, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !32 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 192153584101141163
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.bn, 0
  br i1 %i.bp, label %.split148, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89: ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.bq, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4fbcd4caac5c802E", ptr %.sroa.441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8720
  store ptr @461, ptr %i.c, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.7113.0..sroa_idx, align 8
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8114.0..sroa_idx, align 8
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10115.0..sroa_idx, align 8
  %i.br = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.br, label %bb.o, label %.split148

.split148:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89, %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.val72, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !32, !noalias !8721, !nonnull !32
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 11), !noalias !8721, !inline_history !0
  br i1 %i.bu, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.split148
  %i.bv = load ptr, ptr %i.s, align 8, !nonnull !32, !noundef !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  call void @_ZN10actix_http6header3map9HeaderMap4iter17h86d524def649d7afE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  %i.bx = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) ; 2 uses
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 2 uses
  %.not60151 = icmp eq ptr %i.by, null
  br i1 %.not60151, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %i.ca = phi ptr [ %i.by, %.lr.ph ], [ %i.cj, %bb.q ] ; 3 uses
  %i.cb = phi { ptr, ptr } [ %i.bx, %.lr.ph ], [ %i.ci, %bb.q ]
  %i.cc = extractvalue { ptr, ptr } %i.cb, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ca, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  store ptr %i.cc, ptr %i.h, align 8
  %i.cd = load ptr, ptr %i.ca, align 8, !noundef !32
  %.not61 = icmp eq ptr %i.cd, null
  br i1 %.not61, label %bb.p, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99

.sink.split:                                      ; preds = %bb.q, %bb.m, %bb.r
  %.sroa.0.0.ph = phi i1 [ true, %bb.r ], [ false, %bb.m ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.split148
  %.sroa.0.0 = phi i1 [ true, %.split148 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit84 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit89 ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit99: ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h836cc3088c9fac37E", ptr %.sroa.445.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.bz, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f6f2233bda9d4f9E", ptr %.sroa.457.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8722
  store ptr @467, ptr %i.b, align 8
  store i64 3, ptr %.sroa.5130.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.7131.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8132.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@"_ZN71_$LT$actix_web..config..AppConfig$u20$as$u20$core..default..Default$GT$7default17h93a25c4e4213ae11E":bb.a
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.j, align 8
  store i64 14, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %.sroa.6.0..sroa_idx4, align 8
  ret void

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit", %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 14, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8750
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..error..ReadlinesError$u20$as$u20$core..fmt..Display$GT$3fmt17h96e4e5c583938b77E"(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !8759 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !8760, !noundef !32 ; 3 uses
  %i.e = icmp ne i8 %i.d, 12
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -11
  %i.g = icmp samesign ugt i8 %i.d, 10
  %narrow = select i1 %i.g, i8 %i.f, i8 1
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !32, !noundef !32
  %.val9 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !32, !noalias !8761, !nonnull !32
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @489, i64 noundef 14), !noalias !8761, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb5969a472c302adE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val7 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.l, align 8, !nonnull !32, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8762
  store ptr @491, ptr %i.a, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.728.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.829.0..sroa_idx, align 8
  %.sroa.1030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1030.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.n, align 8, !nonnull !32, !noundef !32
  %.val5 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !32, !noalias !8763, !nonnull !32
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @492, i64 noundef 19), !noalias !8763, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !32, !noundef !32
  %.val = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !32, !noalias !8764, !nonnull !32
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @493, i64 noundef 18), !noalias !8764, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15
  %.sroa.0.0.in = phi i1 [ %i.u, %bb.e ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15 ], [ %i.q, %bb.d ], [ %i.k, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..info..MissingPeerAddr$u20$as$u20$core..fmt..Display$GT$3fmt17h0af240cc2b9cf366E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !8767 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !32, !noundef !32
  %.val = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !32, !noalias !8768, !nonnull !32
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @494, i64 noundef 20), !noalias !8768, !inline_history !0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$actix_web..service..ServiceRequest$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e0be984b6d729c3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !8785 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !32, !noundef !32 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.w = load i64, ptr %i.v, align 8, !noundef !32 ; 6 uses
  %i.x = icmp eq i64 %i.w, 0                      ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !46, !noundef !32
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ab = load i16, ptr %i.aa, align 8, !noundef !32 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !32 ; 8 uses
  br i1 %i.ac, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = zext i16 %i.ab to i64                   ; 5 uses
  %i.ag = icmp eq i16 %i.ab, 0
  br i1 %i.ag, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ugt i64 %i.w, %i.af
  br i1 %.not.i.i, label %bb.f, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.ah = icmp ne i64 %i.w, %i.af
  %.not.i = icmp eq ptr %i.ae, null
  %or.cond.i = or i1 %.not.i, %i.ah
  br i1 %or.cond.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !8786, !noundef !32
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i": ; preds = %bb.d
  %.not.old.i = icmp eq ptr %i.ae, null
  br i1 %.not.old.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, !prof !59

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.f, %.split.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.w, i64 noundef 0, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread: ; preds = %.split.i.i, %bb.f
  %.sroa.7.0.i.ph = phi i64 [ %i.af, %bb.f ], [ %i.w, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %..sroa.7.0.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %spec.select = select i1 %i.x, ptr @313, ptr %i.ae
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.sroa.7.0.i.ph, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %..sroa.7.0.i, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ]
  %.sroa.09.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.ae, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %spec.select, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ @313, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0) ]
  store ptr %.sroa.09.0, ptr %i.o, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.5.0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN59_$LT$http..version..Version$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02b52591cf5a3b0E", ptr %.sroa.412.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.u, ptr %i.am, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE", ptr %.sroa.416.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.an, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.420.0..sroa_idx, align 8
  %.val59 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.ao, align 8, !nonnull !32, !noundef !32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8787
  store ptr @496, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ap, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %i.aq = load ptr, ptr %i.r, align 8, !nonnull !32, !noundef !32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i16, ptr %i.ar, align 8, !noundef !32 ; 2 uses
  %i.at = icmp eq i16 %i.as, -1
  br i1 %i.at, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add nuw i16 %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !32 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !32 ; 7 uses
  %i.az = zext i16 %i.au to i64                   ; 8 uses
  %.not.i.i61 = icmp ugt i64 %i.ay, %i.az
  br i1 %.not.i.i61, label %bb.i, label %.split.i.i62

.split.i.i62:                                     ; preds = %bb.h
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !8788, !noundef !32
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.i.i62
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #52
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !8789, !noundef !32
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #52
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72: ; preds = %bb.k
  %i.bh = sub nuw i64 %i.ay, %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  store ptr %i.bi, ptr %i.l, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.bh, ptr %i.bj, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc3dc7805ca26f4E", ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8790
  store ptr @459, ptr %i.c, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.790.0..sroa_idx, align 8
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.891.0..sroa_idx, align 8
  %.sroa.1092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1092.0..sroa_idx, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !8790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.bk, label %bb.n, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, %.split.i.i62, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !32 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 192153584101141163
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.split125, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77: ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bp, ptr %i.j, align 8
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4fbcd4caac5c802E", ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8791
  store ptr @461, ptr %i.b, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.595.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.796.0..sroa_idx, align 8
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1098.0..sroa_idx, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !8791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bq, label %bb.n, label %.split125

.split125:                                        ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77, %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %.val60, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !32, !noalias !8792, !nonnull !32
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 11), !noalias !8792, !inline_history !0
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split125
  %i.bu = load ptr, ptr %i.r, align 8, !nonnull !32, !noundef !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  call void @_ZN10actix_http6header3map9HeaderMap4iter17h86d524def649d7afE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  %i.bw = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %.not51127 = icmp eq ptr %i.bx, null
  br i1 %.not51127, label %.sink.split, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph: ; preds = %bb.m
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph, %bb.o
  %i.bz = phi ptr [ %i.bx, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph ], [ %i.ce, %bb.o ]
  %i.ca = phi { ptr, ptr } [ %i.bw, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87.lr.ph ], [ %i.cd, %bb.o ]
  %i.cb = extractvalue { ptr, ptr } %i.ca, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bz, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  store ptr %i.cb, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h836cc3088c9fac37E", ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.by, align 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f6f2233bda9d4f9E", ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8793
  store ptr @467, ptr %i.a, align 8
  store i64 3, ptr %.sroa.5107.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.7108.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8109.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10110.0..sroa_idx, align 8
  %i.cc = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8793 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.cc, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.o, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87, %bb.m
  %.sroa.0.0.ph = phi i1 [ false, %bb.m ], [ %i.cc, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87 ], [ %i.cc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %.split125
  %.sroa.0.0 = phi i1 [ true, %.split125 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit77 ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87
  %i.cd = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h) ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0      ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN84_$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$5check17h246fa170f6f97877E":bb.a
  br i1 %i.ln, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit"

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83": ; preds = %bb.cc, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lo = ptrtoint ptr %i.ik to i64
  %i.lp = ptrtoint ptr %i.ix to i64
  %i.lq = sub nuw i64 %i.lo, %i.lp
  %i.lr = udiv exact i64 %i.lq, 96
  call void @llvm.experimental.noalias.scope.decl(metadata !9564)
  %i.ls = icmp eq ptr %i.ik, %i.ix
  br i1 %i.ls, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94", label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83", %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93"
  %.sroa.0.07.i.i.i.i86 = phi i64 [ %i.lu, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93" ], [ 0, %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83" ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [96 x i8], ptr %i.ix, i64 %.sroa.0.07.i.i.i.i86 ; 5 uses
  %i.lu = add nuw i64 %.sroa.0.07.i.i.i.i86, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9565)
  call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !9567)
  %i.lw = load i8, ptr %i.lv, align 8, !range !38, !alias.scope !9568, !noalias !9569, !noundef !32
  %i.lx = icmp eq i8 %i.lw, 0
  br i1 %i.lx, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89", label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !9570)
  %.val.i.i.i.i.i.i.i.i87 = load i64, ptr %i.ly, align 8, !alias.scope !9571, !noalias !9569 ; 2 uses
  %i.lz = icmp eq i64 %.val.i.i.i.i.i.i.i.i87, 0
  br i1 %i.lz, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %.val1.i.i.i.i.i.i.i.i88 = load ptr, ptr %i.ma, align 8, !alias.scope !9571, !noalias !9569, !nonnull !32, !noundef !32
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i88, i64 noundef %.val.i.i.i.i.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9572
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89": ; preds = %bb.ce, %bb.cd, %.lr.ph.i.i.i.i85
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %.val.i.i.i.i.i.i90 = load i64, ptr %i.mb, align 8, !range !31, !alias.scope !9573, !noalias !9569, !noundef !32 ; 3 uses
  %i.mc = icmp ne i64 %.val.i.i.i.i.i.i90, -9223372036854775807
  call void @llvm.assume(i1 %i.mc)
  %or.cond.i4.i.i.i.i.i.i91 = icmp slt i64 %.val.i.i.i.i.i.i90, 1
  br i1 %or.cond.i4.i.i.i.i.i.i91, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %.val1.i.i.i.i.i.i92 = load ptr, ptr %i.md, align 8, !alias.scope !9573, !noalias !9569, !nonnull !32, !noundef !32
  %i.me = shl nuw i64 %.val.i.i.i.i.i.i90, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i92, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9574
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93": ; preds = %bb.cf, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"
  %i.mf = icmp eq i64 %i.lu, %i.lr
  br i1 %i.mf, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94", label %.lr.ph.i.i.i.i85

"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93", %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83"
  %i.mg = icmp eq i64 %.sroa.0.0.copyload1112.i, 0
  br i1 %i.mg, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95", label %bb.cg

bb.cg:                                            ; preds = %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94"
  %i.mh = mul nuw i64 %.sroa.0.0.copyload1112.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4110.0.copyload, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9569
  br label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95": ; preds = %bb.cg, %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bh

bb.ch:                                            ; preds = %.invoke382
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN84_$LT$actix_web..http..header..range..ByteRangeSpec$u20$as$u20$core..fmt..Display$GT$3fmt17h04da0a893025e5b5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !9581 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !49, !noundef !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.k, label %default.unreachable43 [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30
  ]

default.unreachable43:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = load i64, ptr %i.l, align 8, !noundef !32
  store i64 %i.m, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !32
  store i64 %i.o, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.411.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.p, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val19 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.q, align 8, !nonnull !32, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9582
  store ptr @564, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val19, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val20, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = load i64, ptr %i.l, align 8, !noundef !32
  store i64 %i.s, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val17 = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18 = load ptr, ptr %i.t, align 8, !nonnull !32, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9583
  store ptr @564, ptr %i.b, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.739.0..sroa_idx, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.840.0..sroa_idx, align 8
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1041.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val18, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !9583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = load i64, ptr %i.l, align 8, !noundef !32
  store i64 %i.v, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !32, !noundef !32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.w, align 8, !nonnull !32, !noundef !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9584
  store ptr @565, ptr %i.a, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1035.0..sroa_idx, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val16, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25 ], [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$actix_web..http..header..range..Range$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h7bc4caf3f17ac530E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9637 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [72 x i8], align 8                ; 17 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i64 [ 0, %bb.a ], [ %i.s, %bb.d ]    ; 5 uses
  %i.g = sub nuw i64 %2, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = icmp ult i64 %i.g, 16
  br i1 %i.i, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %2, %i.f
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.05.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !9638, !noalias !9639, !noundef !32
  %i.l = icmp eq i8 %i.k, 61
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.n = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 61, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g), !noalias !9640 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.loopexit

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.p, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.r = add i64 %i.f, 1
  %i.s = add i64 %i.r, %.sroa.4.0.i27.i.i         ; 6 uses
  %.not21.i.i = icmp ugt i64 %i.s, %2
  %i.t = add i64 %.sroa.4.0.i27.i.i, %i.f         ; 11 uses
  %or.cond.i.not.i = icmp ult i64 %i.t, %2
  br i1 %or.cond.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %lhsc.i = load i8, ptr %i.u, align 1, !alias.scope !9641
  %i.v = icmp eq i8 %lhsc.i, 61
  br i1 %i.v, label %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit", label %bb.d

"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit": ; preds = %bb.e
  %i.w = sub nuw i64 %2, %i.s                     ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %.not50 = icmp eq i64 %i.t, 5
  br i1 %.not50, label %bb.f, label %bb.g

.loopexit:                                        ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %.preheader.i.i.i, %bb.c
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 5 to ptr), ptr %.sroa.239.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit": ; preds = %.thread, %bb.m, %bb.q, %bb.r, %bb.s, %.loopexit
  ret void

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit"
  %i.y = load i32, ptr %1, align 1
  %i.z = xor i32 %i.y, 1702132066
  %i.aa = getelementptr i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %i.ac, 115
  %i.ae = or i32 %i.z, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.thread114

bb.g:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit"
  %.not51 = icmp eq i64 %2, %i.s
  br i1 %.not51, label %bb.q, label %bb.n

.thread114:                                       ; preds = %bb.f
  %.not51115 = icmp eq i64 %2, %i.s
  br i1 %.not51115, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9642
  store i64 0, ptr %i.e, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.x, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.w, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.w, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 44, ptr %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.8.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 44, ptr %.sroa.513.sroa.8.0..sroa.513.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !9643, !noalias !9644
  %.sroa.513.sroa.9.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 1, ptr %.sroa.513.sroa.9.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9643, !noalias !9644
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1, !alias.scope !9643, !noalias !9644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9646
  call fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08f36fc67bfb4e28E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !9647
  %i.ai = load i64, ptr %i.c, align 8, !range !51, !noalias !9646, !noundef !32
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 3
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9642
  %.sroa.3.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.3.0..sroa_idx113, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !9648
  %i.aj = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #46, !noalias !9648 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #52, !noalias !9649
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i.i": ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9649
  store i64 4, ptr %i.d, align 8, !noalias !9646
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9646
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !9650
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9653
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08f36fc67bfb4e28E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i.i, !noalias !9649

.noexc.i.i.i.i.i:                                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i.i"
  %i.al = load i64, ptr %i.a, align 8, !range !51, !noalias !9654, !noundef !32
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.al, 3
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i, %.noexc7.i.i.i.i.i
  %i.am = phi ptr [ %i.ar, %.noexc7.i.i.i.i.i ], [ %i.aj, %.noexc.i.i.i.i.i ]
  %i.an = phi i64 [ %i.as, %.noexc7.i.i.i.i.i ], [ 4, %.noexc.i.i.i.i.i ] ; 3 uses
  %i.ao = phi i64 [ %i.au, %.noexc7.i.i.i.i.i ], [ 1, %.noexc.i.i.i.i.i ] ; 5 uses
  %i.ap = icmp samesign ult i64 %i.ao, 384307168202282326
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, %i.an
  br i1 %i.aq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f3dc2ce3e83a14bE.exit.i.i.i.i.i.i.i", label %bb.k

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f3dc2ce3e83a14bE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.an, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !9649

.noexc6.i.i.i.i.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f3dc2ce3e83a14bE.exit.i.i.i.i.i.i.i"
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !47, !alias.scope !9655, !noalias !9646
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9655, !noalias !9646
  br label %bb.k

bb.k:                                             ; preds = %.noexc6.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc6.i.i.i.i.i ] ; 2 uses
  %i.as = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !9656
  %i.au = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9655, !noalias !9646
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08f36fc67bfb4e28E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !9649

.noexc7.i.i.i.i.i:                                ; preds = %bb.k
  %i.av = load i64, ptr %i.a, align 8, !range !51, !noalias !9654, !noundef !32
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.av, 3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104, label %.lr.ph.i.i.i.i.i.i.i

_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104: ; preds = %.noexc7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9646
  %.sroa.065.0.copyload66106 = load i64, ptr %i.d, align 8, !noalias !9657
  %.sroa.7.0.copyload68107 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9642
  %3 = icmp samesign ult i64 %i.ao, 384307168202282325
  tail call void @llvm.assume(i1 %3)
  br label %bb.m

.loopexit.split-lp.thread.i.i.i.i.i:              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp2.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2f3dc2ce3e83a14bE.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !9646 ; 2 uses
  %i.aw = icmp eq i64 %.val.pre.i.i.i.i.i, 0
  br i1 %i.aw, label %common.resume, label %.loopexit.split-lp.i._crit_edge.i.i.i.i

.loopexit.split-lp.i._crit_edge.i.i.i.i:          ; preds = %.loopexit.split-lp.i.i.i.i.i
  %.val5.i.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9646
  %i.ax = mul nuw i64 %.val.pre.i.i.i.i.i, 24
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i._crit_edge.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i.i
  %.val5.i.i.i.i.i = phi ptr [ %i.aj, %.loopexit.split-lp.thread.i.i.i.i.i ], [ %.val5.i.pre.i.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i.i ]
  %lpad.phi9.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2.i.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i.i ]
  %.val8.i.i.i.i.i = phi i64 [ 96, %.loopexit.split-lp.thread.i.i.i.i.i ], [ %i.ax, %.loopexit.split-lp.i._crit_edge.i.i.i.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9649
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.i.i.i.i.i, %bb.l, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.t ], [ %lpad.phi9.i.i.i.i.i, %bb.l ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit: ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9642
  br label %bb.m

bb.m:                                             ; preds = %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104
  %.sroa.7.0.copyload68110 = phi ptr [ %.sroa.7.0.copyload68107, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104 ], [ %i.aj, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit ]
  %.sroa.065.0.copyload66109 = phi i64 [ %.sroa.065.0.copyload66106, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104 ], [ 4, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit ]
  %.sroa.9.0.copyload70108 = phi i64 [ %i.au, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit.thread104 ], [ 1, %_ZN9actix_web4http6header5range20from_comma_delimited17h5ff79a7cec7bd004E.exit ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.065.0.copyload66109, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.copyload68110, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.copyload70108, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.n:                                             ; preds = %bb.g
  %.not52 = icmp eq i64 %i.t, 0
  br i1 %.not52, label %bb.r, label %.split49

.split49:                                         ; preds = %bb.n
  %i.ay = icmp slt i64 %i.t, 0
  br i1 %i.ay, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %.thread114, %.split49
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !9658
  %i.az = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 1) #46, !noalias !9658 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %.split49
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %.split49 ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !9659
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %1, i64 %i.t, i1 false), !noalias !9660
  %i.bb = icmp slt i64 %i.w, 0
  br i1 %i.bb, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i58, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i58: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !9661
  %i.bc = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.w, i64 noundef range(i64 1, 9) 1) #46, !noalias !9661 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i58, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"
  %.sroa.4.0.ph.i.i62 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i58 ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i62, i64 %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.thread114, %bb.g
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.315.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.r:                                             ; preds = %bb.n
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.318.0..sroa_idx, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i58
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.x, i64 %i.w, i1 false), !noalias !9662
  store i64 %i.t, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.684.sroa.4.0..sroa.684.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bc, ptr %.sroa.684.sroa.4.0..sroa.684.0..sroa_idx.sroa_idx, align 8
  %.sroa.684.sroa.5.0..sroa.684.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.w, ptr %.sroa.684.sroa.5.0..sroa.684.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$actix_web..http..header..range..ByteRangeSpec$GT$$GT$17hcebb8693d5869c6aE.exit"

bb.t:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9663
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN84_$LT$actix_web..middleware..logger..CustomResponseFn$u20$as$u20$core..fmt..Debug$GT$3fmt17h403768c8c6df8ef9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !9664 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @566, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$bytestring..ByteString$u20$as$u20$actix_web..response..responder..Responder$GT$10respond_to17ha6af81429550bd5aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 !guid !9665 {
bb.a:
  tail call void @"_ZN141_$LT$actix_http..responses..response..Response$LT$bytestring..ByteString$GT$$u20$as$u20$core..convert..From$LT$bytestring..ByteString$GT$$GT$4from17hccb58c22ea43d301E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$actix_web..test..test_request..TestRequest$u20$as$u20$core..default..Default$GT$7default17h8034258347f3dfecE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([784 x i8]) align 8 captures(none) dereferenceable(784) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9754 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [152 x i8], align 8               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [88 x i8], align 8                ; 15 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 18 uses
  %i.n = alloca [32 x i8], align 8                ; 14 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [96 x i8], align 8                ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 13 uses
  %i.r = alloca [112 x i8], align 8               ; 5 uses
  %i.s = alloca [144 x i8], align 8               ; 9 uses
  %i.t = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [120 x i8], align 8           ; 6 uses
  %i.u = alloca [232 x i8], align 8               ; 12 uses
  %i.v = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @"_ZN72_$LT$actix_http..test..TestRequest$u20$as$u20$core..default..Default$GT$7default17h4ee6dc4e672c685fE"(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !noalias !9755
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.w, align 8, !noalias !9755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9755
  invoke void @"_ZN63_$LT$$RF$str$u20$as$u20$actix_router..pattern..IntoPatterns$GT$8patterns17h4a7ad9cf50e75d68E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9755
  %i.x = load i64, ptr %i.n, align 8, !range !45, !noalias !9755, !noundef !32
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !9755, !noundef !32 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 384307168202282326
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !9755, !nonnull !32, !noundef !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noalias !9755, !noundef !32
  invoke void @_ZN12actix_router8resource11ResourceDef5parse17hef6aa61ffcaaf4caE(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.az unwind label %bb.i, !noalias !9755

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h47588ffae37f2c10E.exit": ; preds = %bb.ax, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i", %bb.au, %bb.i
  %.pn42.i = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn39.i, %bb.au ], [ %.pn39.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i" ], [ %.pn39.i, %bb.ax ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9756)
  %i.ah = load i64, ptr %i.n, align 8, !range !45, !alias.scope !9756, !noalias !9755, !noundef !32
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h47588ffae37f2c10E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !9757), !noalias !9755
  %.val.i.i57 = load i64, ptr %i.aj, align 8, !alias.scope !9758, !noalias !9755 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i57, 0
  br i1 %i.ak, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i58 = load ptr, ptr %i.al, align 8, !alias.scope !9758, !noalias !9755, !nonnull !32, !noundef !32
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i58, i64 noundef %.val.i.i57, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9759
  br label %.body

bb.f:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h47588ffae37f2c10E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !9760), !noalias !9755
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.i1.i = load ptr, ptr %i.am, align 8, !alias.scope !9761, !noalias !9755, !nonnull !32, !noundef !32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val1.i2.i = load i64, ptr %i.an, align 8, !alias.scope !9761, !noalias !9755, !noundef !32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9762), !noalias !9755
  %i.ao = icmp eq i64 %.val1.i2.i, 0
  br i1 %i.ao, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fd7c263584d4973E.exit.i.i", label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i" ], [ 0, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aq = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9763), !noalias !9755
  %.val.i.i.i.i.i56 = load i64, ptr %i.ap, align 8, !alias.scope !9764, !noalias !9765 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i.i.i56, 0
  br i1 %i.ar, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i55
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !9764, !noalias !9765, !nonnull !32, !noundef !32
end_hunk_2
begin_hunk_3_@_ZN9actix_web10middleware6logger10FormatText14render_request17h6a46da09ebe6894cE:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.hu = load i64, ptr %i.ht, align 8, !range !37, !noundef !32
  %.not92 = icmp eq i64 %i.hu, -9223372036854775808
  br i1 %.not92, label %bb.bx, label %bb.bv

bb.bb:                                            ; preds = %bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.hv, align 8, !nonnull !32, !noundef !32
  %i.hw = tail call fastcc { ptr, ptr } @_ZN9actix_web7request11HttpRequest15connection_info17h6a3bd2f7ae585ecfE(ptr nonnull %.val) ; 2 uses
  %i.hx = extractvalue { ptr, ptr } %i.hw, 0      ; 6 uses
  %i.hy = extractvalue { ptr, ptr } %i.hw, 1      ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %i.ia = load i64, ptr %i.hz, align 8, !range !37, !alias.scope !10935, !noundef !32
  %.not.i = icmp eq i64 %i.ia, -9223372036854775808
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 88
  br label %bb.cf

bb.bd:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.ie = load i64, ptr %i.id, align 8, !range !37, !alias.scope !10935, !noundef !32
  %.not3.i = icmp eq i64 %i.ie, -9223372036854775808
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  br i1 %.not3.i, label %bb.ch, label %bb.cf

bb.be:                                            ; preds = %bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !nonnull !32, !noundef !32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 160
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !32, !noundef !32 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  %i.im = load i64, ptr %i.il, align 8, !noundef !32 ; 6 uses
  %i.in = icmp eq i64 %i.im, 0                    ; 2 uses
  br i1 %i.in, label %bb.cn, label %bb.co

bb.bf:                                            ; preds = %bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !32, !noundef !32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 160
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !32, !noundef !32
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 160
  %i.iu = tail call fastcc noundef align 8 ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h3d926cb83ed4f654E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.it, ptr noundef nonnull readonly align 8 %i.io) ; 2 uses
  %.not.i.i111 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i111, label %bb.cw, label %bb.cv

bb.bg:                                            ; preds = %bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !noundef !32 ; 2 uses
  %.not = icmp eq ptr %i.iw, null
  br i1 %.not, label %bb.dg, label %bb.df

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store ptr %i.ix, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.iy = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %i.iy, label %bb.bh, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit

bb.bh:                                            ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread
  %i.iz = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ja = load i8, ptr %i.iz, align 8, !range !46, !noundef !32
  %.not99 = icmp eq i8 %i.ja, 0
  br i1 %.not99, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit

bb.bi:                                            ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.am, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.jc = load ptr, ptr %i.jb, align 8, !noundef !32 ; 6 uses
  %i.jd = zext i16 %i.z to i64                    ; 5 uses
  %i.je = icmp eq i16 %i.z, 0
  br i1 %i.je, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i113 = icmp samesign ugt i64 %i.af, %i.jd
  br i1 %.not.i.i113, label %bb.bk, label %.split.i.i114

.split.i.i114:                                    ; preds = %bb.bj
  %i.jf = icmp ne i64 %i.af, %i.jd
  %.not.i115 = icmp eq ptr %i.jc, null
  %or.cond.i = or i1 %.not.i115, %i.jf
  br i1 %or.cond.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !10936, !noundef !32
  %i.ji = icmp sgt i8 %i.jh, -65
  br i1 %i.ji, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i": ; preds = %bb.bi
  %.not.old.i = icmp eq ptr %i.jc, null
  br i1 %.not.old.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317, !prof !59

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.bk, %.split.i.i114
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jc, i64 noundef %i.af, i64 noundef 0, i64 noundef %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread: ; preds = %.split.i.i114, %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jc) ]
  br label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit: ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, %bb.bh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !32, !noundef !32
  %..sroa.7.0.i = tail call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  %spec.select = select i1 %i.iy, ptr @313, ptr %i.jk
  br label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317: ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i", %bb.bh
  %.sroa.550.0 = phi i64 [ 0, %bb.bh ], [ %i.jd, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %..sroa.7.0.i, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ]
  %.sroa.049.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bh ], [ %i.jc, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread ], [ %spec.select, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit ], [ @313, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0) ]
  store ptr %.sroa.049.0, ptr %i.q, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.550.0, ptr %i.jl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.jn = load i8, ptr %i.jm, align 8, !range !63, !noundef !32
  store i8 %i.jn, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.r, ptr %i.o, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h306b9a4ca094f8fbE", ptr %.sroa.453.0..sroa_idx, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.jo, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.457.0..sroa_idx, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.jp, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @"_ZN59_$LT$http..version..Version$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02b52591cf5a3b0E", ptr %.sroa.461.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10937
  store ptr @625, ptr %i.b, align 8, !noalias !10938
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !10938
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.o, ptr %.sroa.5188.0..sroa_idx, align 8, !noalias !10938
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 3, ptr %.sroa.6189.0..sroa_idx, align 8, !noalias !10938
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10938
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit131, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit.thread317
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.bs unwind label %bb.br

bb.bm:                                            ; preds = %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.am, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.jq = zext i16 %i.z to i64                    ; 5 uses
  %i.jr = icmp eq i16 %i.z, 0
  br i1 %i.jr, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not.i.i116 = icmp ugt i64 %i.af, %i.jq
  br i1 %.not.i.i116, label %bb.bo, label %.split.i.i117

.split.i.i117:                                    ; preds = %bb.bn
  %i.js = icmp ne i64 %i.af, %i.jq
  %.not.i118 = icmp eq ptr %i.ad, null
  %or.cond.i119 = or i1 %.not.i118, %i.js
  br i1 %or.cond.i119, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i123", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread, !prof !60

bb.bo:                                            ; preds = %bb.bn
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.jq
  %i.ju = load i8, ptr %i.jt, align 1, !alias.scope !10939, !noundef !32
  %i.jv = icmp sgt i8 %i.ju, -65
  br i1 %i.jv, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i123"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124": ; preds = %bb.bm
  %.not.old.i125 = icmp eq ptr %i.ad, null
  br i1 %.not.old.i125, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i123", label %bb.bp, !prof !59

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i123": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124", %bb.bo, %.split.i.i117
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef 0, i64 noundef %i.jq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread: ; preds = %.split.i.i117, %bb.bo
  %.sroa.7.0.i120.ph = phi i64 [ %i.jq, %bb.bo ], [ %i.af, %.split.i.i117 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124"
  %.sroa.062.0 = phi ptr [ @313, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124" ], [ %i.ad, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread ] ; 2 uses
  %.sroa.563.0 = phi i64 [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i124" ], [ %.sroa.7.0.i120.ph, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit126.thread ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.062.0) ]
  store ptr %.sroa.062.0, ptr %i.l, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.563.0, ptr %i.jw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br i1 %.not.i.i, label %bb.bq, label %.split.i.i128

bb.bq:                                            ; preds = %bb.bp
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !10940, !noundef !32
  %i.jz = icmp sgt i8 %i.jy, -65
  br i1 %i.jz, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit131, label %.split.i.i128

.split.i.i128:                                    ; preds = %bb.bp, %bb.bq
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.ag, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #52
  unreachable

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit131: ; preds = %bb.bq
  %i.ka = sub nuw i64 %i.af, %i.ag
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store ptr %i.kb, ptr %i.k, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ka, ptr %i.kc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ke = load i8, ptr %i.kd, align 8, !range !63, !noundef !32
  store i8 %i.ke, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h306b9a4ca094f8fbE", ptr %.sroa.473.0..sroa_idx, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.kf, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.477.0..sroa_idx, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.k, ptr %i.kg, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.481.0..sroa_idx, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.j, ptr %i.kh, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @"_ZN59_$LT$http..version..Version$u20$as$u20$core..fmt..Debug$GT$3fmt17hd02b52591cf5a3b0E", ptr %.sroa.485.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10941
  store ptr @627, ptr %i.a, align 8, !noalias !10942
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.4191.0..sroa_idx, align 8, !noalias !10942
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %.sroa.5192.0..sroa_idx, align 8, !noalias !10942
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %.sroa.6193.0..sroa_idx, align 8, !noalias !10942
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7194.0..sroa_idx, align 8, !noalias !10942
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !10943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  br label %bb.bl

bb.br:                                            ; preds = %bb.bl
  %i.ki = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %common.resume

bb.bs:                                            ; preds = %bb.bl
  store i64 0, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %bb.b

bb.bt:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8416a7704b39e88aE.exit"
  %i.kj = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hl, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.hg, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  br label %common.resume

bb.bu:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8416a7704b39e88aE.exit"
  store i64 0, ptr %0, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.i, ptr %.sroa.511.0..sroa_idx12, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hl, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx12.sroa_idx, align 8
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.hg, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx12.sroa_idx, align 8
  br label %bb.b

bb.bv:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.kl = load ptr, ptr %i.kk, align 8, !nonnull !32, !noundef !32
  %i.km = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.kn = load i64, ptr %i.km, align 8, !noundef !32 ; 7 uses
  %i.ko = icmp slt i64 %i.kn, 0
  br i1 %i.ko, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.bv
  %i.kp = icmp eq i64 %i.kn, 0
  br i1 %i.kp, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10944
  %i.kq = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.kn, i64 noundef range(i64 1, 9) 1) #46, !noalias !10944 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %.invoke, label %bb.bz

bb.bx:                                            ; preds = %bb.ba
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10945
  %i.ks = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, 9) 1) #46, !noalias !10945 ; 3 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %.invoke, label %bb.ca

.invoke:                                          ; preds = %bb.bx, %bb.bv, %bb.bw
  %i.ku = phi i64 [ 0, %bb.bv ], [ 1, %bb.bw ], [ 1, %bb.bx ]
  %i.kv = phi i64 [ %i.kn, %bb.bv ], [ %i.kn, %bb.bw ], [ 1, %bb.bx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ku, i64 %i.kv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.cont unwind label %bb.by

.cont:                                            ; preds = %.invoke
  unreachable

bb.by:                                            ; preds = %.invoke
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.kx = load i64, ptr %i.hs, align 8, !noundef !32
  %i.ky = add i64 %i.kx, -1
  store i64 %i.ky, ptr %i.hs, align 8
  br label %common.resume

bb.bz:                                            ; preds = %bb.bw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.kq, %bb.bw ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.kl, i64 %i.kn, i1 false), !noalias !10946
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  store i8 45, ptr %i.ks, align 1, !noalias !10947
  br label %bb.cc

bb.cb:                                            ; preds = %bb.cc
  %i.kz = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx373 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.5.0..sroa_idx373, align 8
  %.sroa.6376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6370.0, ptr %.sroa.6376.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx379 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.7.0..sroa_idx379, align 8
  br label %common.resume

bb.cc:                                            ; preds = %bb.bz, %bb.ca
  %.sroa.8.0 = phi i64 [ 1, %bb.ca ], [ %i.kn, %bb.bz ] ; 4 uses
  %.sroa.6370.0 = phi ptr [ %i.ks, %bb.ca ], [ %.sroa.10.0.i.i, %bb.bz ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.la = load i64, ptr %i.hs, align 8, !noundef !32
  %i.lb = add i64 %i.la, -1
  store i64 %i.lb, ptr %i.hs, align 8
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.cd unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cc
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.5.0..sroa_idx374, align 8
  %.sroa.6376.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6370.0, ptr %.sroa.6376.0..sroa_idx377, align 8
  %.sroa.7.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.7.0..sroa_idx380, align 8
  br label %bb.b

bb.ce:                                            ; preds = %.invoke459
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.ld = load i64, ptr %i.hy, align 8, !noundef !32
  %i.le = add i64 %i.ld, -1
  store i64 %i.le, ptr %i.hy, align 8
  br label %common.resume

bb.cf:                                            ; preds = %bb.bc, %bb.bd
  %.sroa.3.0.i109.ph.in = phi ptr [ %i.ig, %bb.bd ], [ %i.ic, %bb.bc ]
  %.sroa.0.0.i110.ph.in = phi ptr [ %i.if, %bb.bd ], [ %i.ib, %bb.bc ]
  %.sroa.0.0.i110.ph = load ptr, ptr %.sroa.0.0.i110.ph.in, align 8, !alias.scope !10935, !nonnull !32
  %.sroa.3.0.i109.ph = load i64, ptr %.sroa.3.0.i109.ph.in, align 8, !alias.scope !10935 ; 7 uses
  %i.lf = icmp slt i64 %.sroa.3.0.i109.ph, 0
  br i1 %i.lf, label %.invoke459, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i139, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i139: ; preds = %bb.cf
  %i.lg = icmp eq i64 %.sroa.3.0.i109.ph, 0
  br i1 %i.lg, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i139
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10948
  %i.lh = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i109.ph, i64 noundef range(i64 1, 9) 1) #46, !noalias !10948 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %.invoke459, label %bb.ci

bb.ch:                                            ; preds = %bb.bd
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10949
  %i.lj = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, 9) 1) #46, !noalias !10949 ; 3 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %.invoke459, label %bb.cj

.invoke459:                                       ; preds = %bb.ch, %bb.cf, %bb.cg
  %i.ll = phi i64 [ 0, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.ch ]
  %i.lm = phi i64 [ %.sroa.3.0.i109.ph, %bb.cf ], [ %.sroa.3.0.i109.ph, %bb.cg ], [ 1, %bb.ch ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ll, i64 %i.lm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.cont460 unwind label %bb.ce

.cont460:                                         ; preds = %.invoke459
  unreachable

bb.ci:                                            ; preds = %bb.cg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i139
  %.sroa.10.0.i.i140 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i139 ], [ %i.lh, %bb.cg ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i140, ptr nonnull readonly align 1 %.sroa.0.0.i110.ph, i64 %.sroa.3.0.i109.ph, i1 false), !noalias !10950
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  store i8 45, ptr %i.lj, align 1, !noalias !10951
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cl
  %i.ln = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.5391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8387.0, ptr %.sroa.5391.0..sroa_idx, align 8
  %.sroa.6394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6386.0, ptr %.sroa.6394.0..sroa_idx, align 8
  %.sroa.7397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8387.0, ptr %.sroa.7397.0..sroa_idx, align 8
  br label %common.resume

bb.cl:                                            ; preds = %bb.ci, %bb.cj
  %.sroa.8387.0 = phi i64 [ 1, %bb.cj ], [ %.sroa.3.0.i109.ph, %bb.ci ] ; 4 uses
  %.sroa.6386.0 = phi ptr [ %i.lj, %bb.cj ], [ %.sroa.10.0.i.i140, %bb.ci ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.lo = load i64, ptr %i.hy, align 8, !noundef !32
  %i.lp = add i64 %i.lo, -1
  store i64 %i.lp, ptr %i.hy, align 8
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.cm unwind label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  store i64 0, ptr %0, align 8
  %.sroa.5391.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8387.0, ptr %.sroa.5391.0..sroa_idx392, align 8
  %.sroa.6394.0..sroa_idx395 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6386.0, ptr %.sroa.6394.0..sroa_idx395, align 8
  %.sroa.7397.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8387.0, ptr %.sroa.7397.0..sroa_idx398, align 8
  br label %bb.b

bb.cn:                                            ; preds = %bb.be
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.lr = load i8, ptr %i.lq, align 8, !range !46, !noundef !32
  %.not89 = icmp eq i8 %i.lr, 0
  br i1 %.not89, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit169", label %bb.co

bb.co:                                            ; preds = %bb.be, %bb.cn
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  %i.lt = load i16, ptr %i.ls, align 8, !noundef !32 ; 3 uses
  %i.lu = icmp eq i16 %i.lt, -1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ik, i64 104
  %i.lw = load ptr, ptr %i.lv, align 8, !noundef !32 ; 8 uses
  br i1 %i.lu, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lx = zext i16 %i.lt to i64                   ; 5 uses
  %i.ly = icmp eq i16 %i.lt, 0
  br i1 %i.ly, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not.i.i153 = icmp ugt i64 %i.im, %i.lx
  br i1 %.not.i.i153, label %bb.cr, label %.split.i.i154

.split.i.i154:                                    ; preds = %bb.cq
  %i.lz = icmp ne i64 %i.im, %i.lx
  %.not.i155 = icmp eq ptr %i.lw, null
  %or.cond.i156 = or i1 %.not.i155, %i.lz
  br i1 %or.cond.i156, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i160", label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread, !prof !60

bb.cr:                                            ; preds = %bb.cq
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lx
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !10952, !noundef !32
  %i.mc = icmp sgt i8 %i.mb, -65
  br i1 %i.mc, label %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i160"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161": ; preds = %bb.cp
  %.not.old.i162 = icmp eq ptr %i.lw, null
  br i1 %.not.old.i162, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i160", label %.thread355, !prof !59

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.thread.i160": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161", %bb.cr, %.split.i.i154
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lw, i64 noundef %i.im, i64 noundef 0, i64 noundef %i.lx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #52
  unreachable

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread: ; preds = %.split.i.i154, %bb.cr
  %.sroa.7.0.i157.ph = phi i64 [ %i.lx, %bb.cr ], [ %i.im, %.split.i.i154 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  br label %.thread355

_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163: ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  %..sroa.7.0.i158 = tail call i64 @llvm.umax.i64(i64 %i.im, i64 1) ; 3 uses
  %spec.select363 = select i1 %i.in, ptr @313, ptr %i.lw
  %i.md = icmp slt i64 %..sroa.7.0.i158, 0
  br i1 %i.md, label %bb.cs, label %.thread355.a, !prof !34

.thread355:                                       ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161", %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread
  %..sroa.7.0.i158343.ph = phi i64 [ %.sroa.7.0.i157.ph, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread ], [ 1, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161" ]
  %.ph = phi ptr [ %i.lw, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163.thread ], [ @313, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h824a7d82d6dba62aE.exit.i161" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.ph) ]
  br label %.thread355.a

.thread355.a:                                     ; preds = %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163, %.thread355
  %.sroa.041.0353.ph = phi ptr [ %.ph, %.thread355 ], [ %spec.select363, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163 ]
  %.sroa.542.0351.ph = phi i64 [ %..sroa.7.0.i158343.ph, %.thread355 ], [ %..sroa.7.0.i158, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163 ] ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10953
  %i.me = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.542.0351.ph, i64 noundef range(i64 1, 9) 1) #46, !noalias !10953 ; 2 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %bb.cs, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit169"

bb.cs:                                            ; preds = %.thread355.a, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163
  %.sroa.542.0352 = phi i64 [ %.sroa.542.0351.ph, %.thread355.a ], [ %..sroa.7.0.i158, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163 ]
  %.sroa.4.0.ph.i.i168 = phi i64 [ 1, %.thread355.a ], [ 0, %_ZN4http3uri4path12PathAndQuery4path17h6a57330954aa7242E.exit163 ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i168, i64 %.sroa.542.0352, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !10954
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit169": ; preds = %bb.cn, %.thread355.a
  %.sroa.542.0351362 = phi i64 [ %.sroa.542.0351.ph, %.thread355.a ], [ 0, %bb.cn ] ; 5 uses
  %.sroa.041.0353360 = phi ptr [ %.sroa.041.0353.ph, %.thread355.a ], [ inttoptr (i64 1 to ptr), %bb.cn ]
  %.sroa.10.0.i.i165 = phi ptr [ %i.me, %.thread355.a ], [ inttoptr (i64 1 to ptr), %bb.cn ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i165, ptr nonnull readonly align 1 %.sroa.041.0353360, i64 %.sroa.542.0351362, i1 false), !noalias !10955
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit169"
  %i.mg = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.542.0351362, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i165, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.542.0351362, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %common.resume

bb.cu:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit169"
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.542.0351362, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i165, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.542.0351362, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  br label %bb.b

bb.cv:                                            ; preds = %bb.bf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.mi = tail call noundef nonnull align 8 ptr @_ZN10actix_http6header3map5Value5first17h93c1a60b16efcf56E(ptr noundef nonnull align 8 %i.mh), !noalias !10956 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !noundef !32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !noundef !32
  call void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mk, i64 noundef %i.mm)
  %i.mn = load i64, ptr %i.h, align 8, !range !37, !noundef !32 ; 2 uses
  %.not88 = icmp eq i64 %i.mn, -9223372036854775808
  %i.mo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8            ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.mr = load i64, ptr %i.mq, align 8            ; 7 uses
  br i1 %.not88, label %bb.cy, label %bb.db

bb.cw:                                            ; preds = %bb.bf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10957
  %i.ms = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, 9) 1) #46, !noalias !10957 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.cx, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175"

bb.cx:                                            ; preds = %bb.cw
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !10958
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175": ; preds = %bb.cw
  store i8 45, ptr %i.ms, align 1, !noalias !10959
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cv
  %i.mu = icmp slt i64 %i.mr, 0
  br i1 %i.mu, label %bb.da, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i176, !prof !33

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i176: ; preds = %bb.cy
  %i.mv = icmp eq i64 %i.mr, 0
  br i1 %i.mv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181", label %bb.cz

bb.cz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i176
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10960
  %i.mw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mr, i64 noundef range(i64 1, 9) 1) #46, !noalias !10960 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %bb.da, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181"

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.4.0.ph.i.i180 = phi i64 [ 1, %bb.cz ], [ 0, %bb.cy ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i180, i64 %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !10961
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i176, %bb.cz
  %.sroa.10.0.i.i177 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i176 ], [ %i.mw, %bb.cz ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i177, ptr nonnull readonly align 1 %i.mp, i64 %i.mr, i1 false), !noalias !10962
  br label %bb.db

bb.db:                                            ; preds = %bb.cv, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181"
  %.sroa.6239.0 = phi ptr [ %.sroa.10.0.i.i177, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181" ], [ %i.mp, %bb.cv ]
  %.sroa.0236.0 = phi i64 [ %i.mr, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit181" ], [ %i.mn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175"
  %.sroa.7244.1 = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175" ], [ %i.mr, %bb.db ] ; 2 uses
  %.sroa.6239.1 = phi ptr [ %i.ms, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175" ], [ %.sroa.6239.0, %bb.db ] ; 2 uses
  %.sroa.0236.1 = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit175" ], [ %.sroa.0236.0, %bb.db ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.de unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.my = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  store i64 %.sroa.0236.1, ptr %i.io, align 8
  %.sroa.519.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6239.1, ptr %.sroa.519.sroa.5.0..sroa_idx, align 8
  %.sroa.519.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7244.1, ptr %.sroa.519.sroa.6.0..sroa_idx, align 8
  br label %common.resume

bb.de:                                            ; preds = %bb.dc
  store i64 0, ptr %0, align 8
  store i64 %.sroa.0236.1, ptr %i.io, align 8
  %.sroa.519.sroa.5.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6239.1, ptr %.sroa.519.sroa.5.0..sroa_idx253, align 8
  %.sroa.519.sroa.6.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7244.1, ptr %.sroa.519.sroa.6.0..sroa_idx255, align 8
  br label %bb.b

bb.df:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val108 = load ptr, ptr %i.mz, align 8, !nonnull !32, !align !43, !noundef !32 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val108, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !range !48, !invariant.load !32, !noalias !10963
  %i.nc = add i64 %i.nb, -1
  %i.nd = and i64 %i.nc, -16
  %i.ne = getelementptr i8, ptr %i.iw, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %.val108, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !invariant.load !32, !noalias !10963, !nonnull !32
  call void %i.nh(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef align 1 %i.nf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !inline_history !10846
  %.sroa.532.sroa.0.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.532.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.532.sroa.5.0.copyload = load ptr, ptr %.sroa.532.sroa.5.0..sroa_idx, align 8
  %.sroa.532.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.532.sroa.6.0.copyload = load i64, ptr %.sroa.532.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.di

bb.dg:                                            ; preds = %bb.bg
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10964
  %i.ni = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, 9) 1) #46, !noalias !10964 ; 3 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.dh, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187"

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !10965
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187": ; preds = %bb.dg
  store i8 45, ptr %i.ni, align 1, !noalias !10966
  br label %bb.di

bb.di:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187", %bb.df
  %.sroa.532.sroa.0.0 = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187" ], [ %.sroa.532.sroa.0.0.copyload, %bb.df ] ; 2 uses
  %.sroa.532.sroa.5.0 = phi ptr [ %i.ni, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187" ], [ %.sroa.532.sroa.5.0.copyload, %bb.df ] ; 2 uses
  %.sroa.532.sroa.6.0 = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit187" ], [ %.sroa.532.sroa.6.0.copyload, %bb.df ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$actix_web..middleware..logger..FormatText$GT$17hdf8051cec7b0e376E"(ptr noalias noundef align 8 dereferenceable(48) %0)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nk = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  store i64 %.sroa.532.sroa.0.0, ptr %i.iv, align 8
  %.sroa.535.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.532.sroa.5.0, ptr %.sroa.535.sroa.5.0..sroa_idx, align 8
  %.sroa.535.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.532.sroa.6.0, ptr %.sroa.535.sroa.6.0..sroa_idx, align 8
  br label %common.resume

bb.dk:                                            ; preds = %bb.di
  store i64 0, ptr %0, align 8
  store i64 %.sroa.532.sroa.0.0, ptr %i.iv, align 8
  %.sroa.535.sroa.5.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.532.sroa.5.0, ptr %.sroa.535.sroa.5.0..sroa_idx297, align 8
  %.sroa.535.sroa.6.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.532.sroa.6.0, ptr %.sroa.535.sroa.6.0..sroa_idx299, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web10middleware6logger10FormatText15render_response17hfce08b6fd185e1f2E(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11010 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
end_hunk_3
