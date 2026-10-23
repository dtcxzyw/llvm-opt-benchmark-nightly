Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syn-f27044607922c45d.syn.c23b03cfc97b9eca-cgu.12?download=true
inline.NumInlined: 215
inline.NumDeleted: 25
begin_hunk_0_@_RNvMs_NtCsgFSQ9XOTBNe_3syn3litNtB4_10LitByteStr5token:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgFSQ9XOTBNe_3syn3litNtB4_10LitByteStr5value(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1610612768, ptr %i.g, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @158, ptr %i.h, align 8
  %i.i = invoke zeroext i1 @_RNvXsJ_Cs1K5DUQUZc67_11proc_macro2NtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 8 %i.f, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.b) #20
          to label %common.resume unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs1K5DUQUZc67_11proc_macro2(i1 zeroext %i.i, ptr nonnull @159, i64 55, ptr nonnull align 8 @161)
          to label %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn.exit unwind label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = invoke { ptr, i64 } @_RNvXsx_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefCsgFSQ9XOTBNe_3syn(ptr nonnull align 8 %i.e)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn.exit
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  invoke fastcc void @_RNvNtNtCsgFSQ9XOTBNe_3syn3lit5value18parse_lit_byte_str(ptr noalias align 8 %i.c, ptr %i.m, i64 %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @46) #19
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.3.0.copyload, ptr %i.p, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.d)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.g, %_RNvXsB_NtCsbSS6DM8SDEO_5alloc6stringNtCs1K5DUQUZc67_11proc_macro27LiteralNtB5_8ToString9to_stringCsgFSQ9XOTBNe_3syn.exit, %bb.e, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.e) #20
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.e)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvMs_NtCsgFSQ9XOTBNe_3syn3litNtB4_10LitByteStr6suffix(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgFSQ9XOTBNe_3syn3litNtB4_10LitByteStr8set_span(ptr nofree readonly align 8 captures(none) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvMsG_Cs1K5DUQUZc67_11proc_macro2NtB5_7Literal8set_span(ptr align 8 %i.a, i32 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit10LitByteStr() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvNtCsgFSQ9XOTBNe_3syn3lit3Lit(ptr nofree readnone sret([24 x i8]) align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit6LitInt() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit6LitStr() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { i32, i1 } @_RNvNtCsgFSQ9XOTBNe_3syn3lit7LitBool() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit7LitByte() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit7LitCStr() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit7LitChar() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCsgFSQ9XOTBNe_3syn3lit8LitFloat() unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvNtCsgFSQ9XOTBNe_3syn8lifetime8Lifetime(ptr nofree readnone sret([32 x i8]) align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgFSQ9XOTBNe_3syn3lit5value13parse_lit_int(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %.not78 = icmp eq i64 %2, 0
  br i1 %.not78, label %.thread339, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit: ; preds = %bb.a
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp eq i8 %i.j, 45                      ; 2 uses
  br i1 %i.k, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit
  %i.l = tail call { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %1, i64 %2, i64 1, ptr nonnull align 8 @49) #18 ; 2 uses
  %3 = extractvalue { ptr, i64 } %i.l, 0
  %i.m = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.not79 = icmp eq i64 %i.m, 0
  br i1 %.not79, label %.thread339, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread
  %.sroa.0.0325 = phi ptr [ %3, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread ], [ %1, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit ] ; 4 uses
  %.sroa.20.0324 = phi i64 [ %i.m, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread ], [ %2, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit ] ; 2 uses
  %4 = load i8, ptr %.sroa.0.0325, align 1        ; 2 uses
  %5 = icmp ugt i64 %.sroa.20.0324, 1
  br i1 %5, label %bb.b, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit51

bb.b:                                             ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0325, i64 1
  %i.o = load i8, ptr %i.n, align 1
  br label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit51

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit51: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49, %bb.b
  %.sroa.20.0318330 = phi i64 [ %.sroa.20.0324, %bb.b ], [ 1, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49 ] ; 2 uses
  %.sroa.0.0.i50 = phi i8 [ %i.o, %bb.b ], [ 0, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit49 ]
  %i.p = icmp eq i8 %4, 48
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit51
  switch i8 %.sroa.0.0.i50, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread [
    i8 120, label %.thread
    i8 111, label %bb.e
    i8 98, label %bb.f
  ]

bb.d:                                             ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit51
  %i.q = add i8 %4, -48
  %or.cond = icmp ult i8 %i.q, 10
  br i1 %or.cond, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread, label %.thread339

bb.e:                                             ; preds = %bb.c
  br label %.thread

bb.f:                                             ; preds = %bb.c
  br label %.thread

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread: ; preds = %bb.c, %bb.d
  call void @_RNvMNtCsgFSQ9XOTBNe_3syn6bigintNtB2_6BigInt3new(ptr nonnull sret([24 x i8]) align 8 %i.i)
  br label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader

.thread:                                          ; preds = %bb.c, %bb.f, %bb.e
  %.sink450 = phi ptr [ @52, %bb.f ], [ @51, %bb.e ], [ @50, %bb.c ]
  %i.r = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.c ]
  %.sroa.029.0 = phi i8 [ 2, %bb.f ], [ 8, %bb.e ], [ 16, %bb.c ] ; 3 uses
  %i.s = tail call { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.0325, i64 %.sroa.20.0318330, i64 2, ptr nonnull align 8 %.sink450) #18 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1        ; 3 uses
  call void @_RNvMNtCsgFSQ9XOTBNe_3syn6bigintNtB2_6BigInt3new(ptr nonnull sret([24 x i8]) align 8 %i.i)
  %.not80154162 = icmp eq i64 %i.t, 0
  br i1 %.not80154162, label %.thread70.thread.thread360, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph: ; preds = %.thread
  %i.u = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  br i1 %i.r, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph
  %i.v = phi i1 [ true, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread ], [ false, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ] ; 3 uses
  %.sroa.029.0348356 = phi i8 [ 10, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread ], [ %.sroa.029.0, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ] ; 2 uses
  %.sroa.20.1349355 = phi i64 [ %.sroa.20.0318330, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread ], [ %i.t, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ]
  %.sroa.0.1350354 = phi ptr [ %.sroa.0.0325, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph.thread ], [ %i.u, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ]
  br label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph, %.outer86.us
  %.sroa.0.2.ph165.us = phi ptr [ %i.ag, %.outer86.us ], [ %i.u, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ]
  %.sroa.20.2.ph164.us = phi i64 [ %i.ah, %.outer86.us ], [ %i.t, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ]
  %.sroa.036.0.ph163.us = phi i8 [ 1, %.outer86.us ], [ 0, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.lr.ph ] ; 5 uses
  br label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us: ; preds = %bb.k, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us
  %.sroa.0.2156.us = phi ptr [ %.sroa.0.2.ph165.us, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us ], [ %i.ab, %bb.k ] ; 7 uses
  %.sroa.20.2155.us = phi i64 [ %.sroa.20.2.ph164.us, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us ], [ %i.ac, %bb.k ] ; 6 uses
  %i.w = load i8, ptr %.sroa.0.2156.us, align 1   ; 6 uses
  %i.x = add i8 %i.w, -48                         ; 2 uses
  %or.cond1.us = icmp ult i8 %i.x, 10
  br i1 %or.cond1.us, label %.loopexit87.us, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us
  %i.y = add i8 %i.w, -97
  %or.cond2.us = icmp ult i8 %i.y, 6
  br i1 %or.cond2.us, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i8 %i.w, -65
  %or.cond3.us = icmp ult i8 %i.z, 6
  br i1 %or.cond3.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.w, label %.thread70 [
    i8 95, label %bb.j
    i8 46, label %.split.us
    i8 101, label %.loopexit81
    i8 69, label %.loopexit82
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.2156.us, i64 %.sroa.20.2155.us, i64 1, ptr nonnull align 8 @53)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %.not80.us = icmp eq i64 %i.ac, 0
  br i1 %.not80.us, label %.thread70.thread, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us

bb.l:                                             ; preds = %bb.h
  %i.ad = add nsw i8 %i.w, -55
  br label %.loopexit87.us

bb.m:                                             ; preds = %bb.g
  %i.ae = add nsw i8 %i.w, -87
  br label %.loopexit87.us

.loopexit87.us:                                   ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us, %bb.m, %bb.l
  %.sroa.037.0.us = phi i8 [ %i.ad, %bb.l ], [ %i.ae, %bb.m ], [ %i.x, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.us ] ; 2 uses
  %.not.us = icmp ult i8 %.sroa.037.0.us, %.sroa.029.0
  br i1 %.not.us, label %bb.n, label %.thread70.thread.thread360

bb.n:                                             ; preds = %.loopexit87.us
  invoke void @_RNvXs0_NtCsgFSQ9XOTBNe_3syn6bigintNtB5_6BigIntINtNtNtCshzWfHUSfYae_4core3ops5arith9MulAssignhE10mul_assign(ptr nonnull align 8 %i.i, i8 %.sroa.029.0)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs_NtCsgFSQ9XOTBNe_3syn6bigintNtB4_6BigIntINtNtNtCshzWfHUSfYae_4core3ops5arith9AddAssignhE10add_assign(ptr nonnull align 8 %i.i, i8 %.sroa.037.0.us)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.af = invoke { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.2156.us, i64 %.sroa.20.2155.us, i64 1, ptr nonnull align 8 @57)
          to label %.outer86.us unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.outer86.us:                                      ; preds = %bb.p
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %.not80154.us = icmp eq i64 %i.ah, 0
  br i1 %.not80154.us, label %.thread72, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.us

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader, %.outer86
  %.sroa.0.2.ph165 = phi ptr [ %i.bw, %.outer86 ], [ %.sroa.0.1350354, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader ]
  %.sroa.20.2.ph164 = phi i64 [ %i.bx, %.outer86 ], [ %.sroa.20.1349355, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader ]
  %.sroa.036.0.ph163 = phi i8 [ 1, %.outer86 ], [ 0, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph.preheader ] ; 5 uses
  br label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53

.thread339:                                       ; preds = %bb.a, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit.thread, %bb.d
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.ak, %.thread70.thread.thread360, %.thread339
  ret void

.thread73:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap, %bb.at
  %.pn46 = phi { ptr, i32 } [ %i.bn, %bb.ap ], [ %i.bu, %bb.at ], [ %lpad.loopexit.split-lp597, %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6bigint6BigIntEBF_(ptr nonnull align 8 %i.i) #20
          to label %bb.ax unwind label %bb.as

_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53: ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph, %bb.t
  %.sroa.0.2156 = phi ptr [ %.sroa.0.2.ph165, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph ], [ %i.am, %bb.t ] ; 7 uses
  %.sroa.20.2155 = phi i64 [ %.sroa.20.2.ph164, %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53.lr.ph ], [ %i.an, %bb.t ] ; 6 uses
  %i.ai = load i8, ptr %.sroa.0.2156, align 1     ; 2 uses
  %i.aj = add i8 %i.ai, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.aj, 10
  br i1 %or.cond1, label %.loopexit87, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53
  switch i8 %i.ai, label %.thread70 [
    i8 46, label %.split.us
    i8 95, label %bb.s
    i8 101, label %.loopexit81
    i8 69, label %.loopexit82
  ]

bb.s:                                             ; preds = %bb.r
  %i.ak = invoke { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.2156, i64 %.sroa.20.2155, i64 1, ptr nonnull align 8 @53)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.split.us:                                        ; preds = %bb.i, %bb.r
  %i.al = phi i1 [ %i.v, %bb.r ], [ false, %bb.i ]
  %.us-phi171 = phi i8 [ %.sroa.036.0.ph163, %bb.r ], [ %.sroa.036.0.ph163.us, %bb.i ]
  %.us-phi172 = phi i64 [ %.sroa.20.2155, %bb.r ], [ %.sroa.20.2155.us, %bb.i ]
  %.us-phi173 = phi ptr [ %.sroa.0.2156, %bb.r ], [ %.sroa.0.2156.us, %bb.i ]
  br i1 %i.al, label %.thread70.thread.thread360, label %.thread70

bb.t:                                             ; preds = %bb.s
  %i.am = extractvalue { ptr, i64 } %i.ak, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %.not80 = icmp eq i64 %i.an, 0
  br i1 %.not80, label %.thread70.thread, label %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53

.thread70.thread.thread360:                       ; preds = %.loopexit87.us, %.loopexit87, %bb.aa, %bb.aa, %.split.us, %.thread70, %.thread70.thread, %.thread, %bb.ag, %bb.ab
  store ptr null, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn6bigint6BigIntEBF_(ptr nonnull align 8 %i.i)
  br label %bb.q

.loopexit87:                                      ; preds = %_RINvNtNtCsgFSQ9XOTBNe_3syn3lit5value4byteeEB6_.exit53
  %.not = icmp ult i8 %i.aj, %.sroa.029.0348356
  br i1 %.not, label %bb.au, label %.thread70.thread.thread360

.thread70:                                        ; preds = %bb.i, %bb.r, %.split.us, %bb.ag, %bb.ae, %bb.ab, %.loopexit82, %.loopexit81
  %.sroa.036.0.ph150 = phi i8 [ %.sroa.036.0.ph163, %bb.r ], [ %.us-phi171, %.split.us ], [ %.sroa.036.0.ph151, %bb.ag ], [ %.sroa.036.0.ph151, %bb.ae ], [ %.sroa.036.0.ph151, %bb.ab ], [ %.sroa.036.0.ph152, %.loopexit82 ], [ %.sroa.036.0.ph153, %.loopexit81 ], [ %.sroa.036.0.ph163.us, %bb.i ]
  %.sroa.20.2124 = phi i64 [ %.sroa.20.2155, %bb.r ], [ %.us-phi172, %.split.us ], [ %.sroa.20.2119, %bb.ag ], [ %.sroa.20.2119, %bb.ae ], [ %.sroa.20.2119, %bb.ab ], [ %.sroa.20.2121, %.loopexit82 ], [ %.sroa.20.2120, %.loopexit81 ], [ %.sroa.20.2155.us, %bb.i ] ; 2 uses
  %.sroa.0.2109 = phi ptr [ %.sroa.0.2156, %bb.r ], [ %.us-phi173, %.split.us ], [ %.sroa.0.2104, %bb.ag ], [ %.sroa.0.2104, %bb.ae ], [ %.sroa.0.2104, %bb.ab ], [ %.sroa.0.2106, %.loopexit82 ], [ %.sroa.0.2105, %.loopexit81 ], [ %.sroa.0.2156.us, %bb.i ] ; 2 uses
  %i.ao = trunc nuw i8 %.sroa.036.0.ph150 to i1
  br i1 %i.ao, label %bb.ah, label %.thread70.thread.thread360

.thread70.thread:                                 ; preds = %bb.k, %bb.t
  %.sroa.036.0.ph.lcssa149 = phi i8 [ %.sroa.036.0.ph163, %bb.t ], [ %.sroa.036.0.ph163.us, %bb.k ]
  %.sroa.0.2.lcssa = phi ptr [ %i.am, %bb.t ], [ %i.ab, %bb.k ]
  %i.ap = trunc nuw i8 %.sroa.036.0.ph.lcssa149 to i1
  br i1 %i.ap, label %.thread72, label %.thread70.thread.thread360

.loopexit81:                                      ; preds = %bb.i, %bb.r
  %i.aq = phi i1 [ %i.v, %bb.r ], [ false, %bb.i ]
  %.sroa.036.0.ph153 = phi i8 [ %.sroa.036.0.ph163, %bb.r ], [ %.sroa.036.0.ph163.us, %bb.i ] ; 2 uses
  %.sroa.20.2120 = phi i64 [ %.sroa.20.2155, %bb.r ], [ %.sroa.20.2155.us, %bb.i ] ; 2 uses
  %.sroa.0.2105 = phi ptr [ %.sroa.0.2156, %bb.r ], [ %.sroa.0.2156.us, %bb.i ] ; 2 uses
  br i1 %i.aq, label %bb.u, label %.thread70

.loopexit82:                                      ; preds = %bb.i, %bb.r
  %i.ar = phi i1 [ %i.v, %bb.r ], [ false, %bb.i ]
  %.sroa.036.0.ph152 = phi i8 [ %.sroa.036.0.ph163, %bb.r ], [ %.sroa.036.0.ph163.us, %bb.i ] ; 2 uses
  %.sroa.20.2121 = phi i64 [ %.sroa.20.2155, %bb.r ], [ %.sroa.20.2155.us, %bb.i ] ; 2 uses
  %.sroa.0.2106 = phi ptr [ %.sroa.0.2156, %bb.r ], [ %.sroa.0.2156.us, %bb.i ] ; 2 uses
  br i1 %i.ar, label %bb.u, label %.thread70

bb.u:                                             ; preds = %.loopexit82, %.loopexit81
  %.sroa.036.0.ph151 = phi i8 [ %.sroa.036.0.ph152, %.loopexit82 ], [ %.sroa.036.0.ph153, %.loopexit81 ] ; 3 uses
  %.sroa.20.2119 = phi i64 [ %.sroa.20.2121, %.loopexit82 ], [ %.sroa.20.2120, %.loopexit81 ] ; 5 uses
  %.sroa.0.2104 = phi ptr [ %.sroa.0.2106, %.loopexit82 ], [ %.sroa.0.2105, %.loopexit81 ] ; 5 uses
  %i.as = invoke { ptr, i64 } @_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.2104, i64 %.sroa.20.2119, i64 1, ptr nonnull align 8 @54)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  invoke void @_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5BytesNtNtNtNtB8_4iter6traits8iterator8Iterator9enumerateCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr %i.at, ptr %i.av)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateNtNtNtB8_3str4iter5BytesENtB2_12IntoIterator9into_iterCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.x
  %.sroa.039.0.ph = phi i1 [ true, %bb.ac ], [ false, %bb.x ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.outer, %bb.aa
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.ay = load i64, ptr %i.e, align 8
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.aa, label %bb.ab

end_hunk_0
