Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-07d84de1723433fa.proc_macro2.144e76dcd5768f45-cgu.2?download=true
inline.NumInlined: 49
inline.NumDeleted: 12
begin_hunk_0_@_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultcNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectE5is_okBM_
define zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultcNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectE5is_okBM_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp ne i32 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs1K5DUQUZc67_11proc_macro2(i1 zeroext %0, i8 returned %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @20, ptr align 8 %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i8 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs1K5DUQUZc67_11proc_macro2(i1 zeroext %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @21, ptr align 8 %3) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectE5is_okBM_(ptr nofree readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = and i8 %i.a, 1
  %i.c = icmp eq i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMNtNtCshzWfHUSfYae_4core3str5errorNtB2_9Utf8Error11valid_up_toCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_RNvMNtNtCshzWfHUSfYae_4core3str5errorNtB2_9Utf8Error9error_lenCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc11is_assignedCs1K5DUQUZc67_11proc_macro2(i32 range(i32 33, 0) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 888
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 262142
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 917505
  %i.d = add i32 %0, -917536
  %or.cond2 = icmp ult i32 %i.d, 96
  %or.cond = or i1 %i.c, %or.cond2
  %i.e = add i32 %0, -917760
  %or.cond3 = icmp ult i32 %i.e, 240
  %or.cond6 = or i1 %or.cond3, %or.cond
  %i.f = add i32 %0, -983040
  %or.cond4 = icmp ult i32 %i.f, 65534
  %or.cond7 = or i1 %or.cond4, %or.cond6
  br i1 %or.cond7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %0, -1048576
  %spec.select = icmp ult i32 %i.g, 65534
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.c ], [ %i.i, %bb.f ], [ true, %bb.a ], [ %spec.select, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.f:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data13cn_planes_0_311lookup_slow(i32 %0) #32
  %i.i = xor i1 %i.h, true
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc12escape_debugCs1K5DUQUZc67_11proc_macro2(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  switch i32 %1, label %bb.b [
    i32 34, label %bb.h
    i32 39, label %bb.i
    i32 92, label %bb.c
    i32 10, label %bb.d
    i32 9, label %bb.e
    i32 13, label %bb.f
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -32
  %or.cond.i = icmp ult i32 %i.b, 95
  %i.c = and i32 %1, -2
  %switch.i = icmp eq i32 %i.c, 65438
  %or.cond106.i = or i1 %or.cond.i, %switch.i
  br i1 %or.cond106.i, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.063.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 92, ptr %.sroa.063.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.063.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.063.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.d:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.052.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 110, ptr %.sroa.052.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.052.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.052.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.e:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.041.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 116, ptr %.sroa.041.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.041.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.041.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.f:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.030.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 114, ptr %.sroa.030.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.030.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.030.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.g:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.019.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 48, ptr %.sroa.019.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.019.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.019.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.h:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.074.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 34, ptr %.sroa.074.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.074.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.074.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.i:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !9
  %.sroa.085.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 39, ptr %.sroa.085.sroa.2.0..sroa_idx.i, align 1, !alias.scope !9
  %.sroa.085.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.085.sroa.3.0..sroa_idx.i, align 2, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.j:                                             ; preds = %bb.b
  store i32 %1, ptr %0, align 4, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.k:                                             ; preds = %bb.b
  %i.d = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.f = add <4 x i32> %i.e, <i32 0, i32 -127, i32 -57344, i32 -983040>
  %i.g = icmp ult <4 x i32> %i.f, <i32 32, i32 33, i32 6400, i32 65534>
  %2 = add i32 %1, -1048576
  %or.cond5.i = icmp ult i32 %2, 65534
  %i.h = bitcast <4 x i1> %i.g to i4
  %3 = icmp ne i4 %i.h, 0
  %op.rdx = or i1 %3, %or.cond5.i
  br i1 %op.rdx, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = icmp ult i32 %1, 133
  br i1 %i.i, label %.thread110.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.j = tail call fastcc zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2(i32 %1) #31, !noalias !9
  br i1 %i.j, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.k = icmp ugt i32 %1, 767
  br i1 %i.k, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.l = icmp ugt i32 %1, 172
  br i1 %i.l, label %bb.q, label %.thread110.i

bb.p:                                             ; preds = %bb.n
  %i.m = tail call zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data15grapheme_extend11lookup_slow(i32 %1) #32, !noalias !9
  br i1 %i.m, label %bb.t, label %bb.o

.thread110.i:                                     ; preds = %bb.r, %bb.o, %bb.l
  %i.n = tail call fastcc zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc11is_assignedCs1K5DUQUZc67_11proc_macro2(i32 %1) #31, !noalias !9
  br i1 %i.n, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.o = tail call zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data28default_ignorable_code_point11lookup_slow(i32 %1) #32, !noalias !9
  br i1 %i.o, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.p = tail call zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data2cf11lookup_slow(i32 %1) #32, !noalias !9
  br i1 %i.p, label %bb.t, label %.thread110.i

bb.s:                                             ; preds = %.thread110.i
  store i32 %1, ptr %0, align 4, !alias.scope !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

bb.t:                                             ; preds = %bb.r, %bb.q, %.thread110.i, %bb.p, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  %i.q = or i32 %1, 1
  %i.r = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = lshr i32 %i.r, 2
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = add nsw i64 %i.t, -2                     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 3, i1 false), !noalias !9
  %i.v = lshr i32 %1, 20
  %i.w = and i32 %i.v, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.z, ptr %i.aa, align 1, !noalias !9
  %i.ab = lshr i32 %1, 16
  %i.ac = and i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.af, ptr %i.ag, align 1, !noalias !9
  %i.ah = lshr i32 %1, 12
  %i.ai = and i32 %i.ah, 15
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.al, ptr %i.am, align 1, !noalias !9
  %i.an = lshr i32 %1, 8
  %i.ao = and i32 %i.an, 15
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ar, ptr %i.as, align 1, !noalias !9
  %i.at = lshr i32 %1, 4
  %i.au = and i32 %i.at, 15
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ax, ptr %i.ay, align 1, !noalias !9
  %i.az = and i32 %1, 15
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bc, ptr %i.bd, align 1, !noalias !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 125, ptr %i.be, align 1, !noalias !9
  %i.bf = icmp ult i64 %i.u, 10
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core6escape14escape_unicodeKja_ECs1K5DUQUZc67_11proc_macro2.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 %i.u, i64 10, ptr nonnull align 8 @3) #28, !noalias !9
  unreachable

_RINvNtCshzWfHUSfYae_4core6escape14escape_unicodeKja_ECs1K5DUQUZc67_11proc_macro2.exit.i: ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 92, ptr %i.bg, align 1, !noalias !9
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.t    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  store i8 117, ptr %i.bi, align 1, !noalias !9
  store i8 123, ptr %i.bh, align 1, !noalias !9
  %i.bj = trunc nuw nsw i64 %i.u to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) %i.a, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  br label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit

_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc16escape_debug_extCs1K5DUQUZc67_11proc_macro2.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.s, %_RINvNtCshzWfHUSfYae_4core6escape14escape_unicodeKja_ECs1K5DUQUZc67_11proc_macro2.exit.i
  %.sink112.i = phi i8 [ %i.bj, %_RINvNtCshzWfHUSfYae_4core6escape14escape_unicodeKja_ECs1K5DUQUZc67_11proc_macro2.exit.i ], [ -128, %bb.s ], [ -128, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sink.i = phi i8 [ 10, %_RINvNtCshzWfHUSfYae_4core6escape14escape_unicodeKja_ECs1K5DUQUZc67_11proc_macro2.exit.i ], [ -127, %bb.s ], [ -127, %bb.j ], [ 2, %bb.i ], [ 2, %bb.h ], [ 2, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ]
  %.sroa.2103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sink112.i, ptr %.sroa.2103.0..sroa_idx.i, align 4, !alias.scope !9
  %.sroa.3104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sink.i, ptr %.sroa.3104.0..sroa_idx.i, align 1, !alias.scope !9
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc13is_whitespaceCs1K5DUQUZc67_11proc_macro2(i32 %0) unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 133
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i32 %0, 8
  switch i32 %i.c, label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit [
    i32 0, label %bb.f
    i32 22, label %bb.d
    i32 32, label %bb.g
    i32 48, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %0, 5760
  %i.e = zext i1 %i.d to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %0, 12288
  %i.g = zext i1 %i.f to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit

bb.f:                                             ; preds = %bb.c
  %i.h = and i32 %0, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit

bb.g:                                             ; preds = %bb.c
  %i.l = and i32 %0, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = lshr i8 %i.o, 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit

_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.g, %bb.e ], [ %i.k, %bb.f ], [ %i.e, %bb.d ], [ %i.p, %bb.g ], [ 0, %bb.c ]
  %i.q = trunc i8 %.sroa.0.0.i to i1
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit
  %.sroa.0.0 = phi i1 [ %i.q, %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCs1K5DUQUZc67_11proc_macro2.exit ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc14is_ascii_digitCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = add i32 %i.a, -48
  %.sroa.0.0 = icmp ult i32 %i.b, 10
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 1, 5) i64 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc8len_utf8Cs1K5DUQUZc67_11proc_macro2(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8Cs1K5DUQUZc67_11proc_macro2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8Cs1K5DUQUZc67_11proc_macro2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 65536
  %..i = select i1 %i.c, i64 3, i64 4
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8Cs1K5DUQUZc67_11proc_macro2.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8Cs1K5DUQUZc67_11proc_macro2.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 65536) i64 @_RNvMs0_NtNtCshzWfHUSfYae_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCs1K5DUQUZc67_11proc_macro2(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load <16 x i8>, ptr %0, align 16
  %i.b = icmp slt <16 x i8> %i.a, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = zext i16 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNvMs16_NtNtCshzWfHUSfYae_4core4sync6atomicINtB6_6AtomicjE4loadCs1K5DUQUZc67_11proc_macro2(ptr nofree align 8 captures(none) %0, i8 %1) unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %_RINvNtNtCshzWfHUSfYae_4core4sync6atomic11atomic_loadjECs1K5DUQUZc67_11proc_macro2.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @4, ptr nonnull inttoptr (i64 81 to ptr), ptr nonnull align 8 @6) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 8
end_hunk_0
