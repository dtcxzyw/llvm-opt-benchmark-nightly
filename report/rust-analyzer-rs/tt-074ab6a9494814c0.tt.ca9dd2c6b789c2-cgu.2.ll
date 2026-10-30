Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tt-074ab6a9494814c0.tt.ca9dd2c6b789c2-cgu.2?download=true
inline.NumInlined: 252
inline.NumDeleted: 107
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEEB1d_:bb.a
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1i_13SpanStorage96EEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1i_13SpanStorage96EEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecjEECs4dcH4YgJDq_2tt.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecjEECs4dcH4YgJDq_2tt.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentEBD_(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4dcH4YgJDq_2tt(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralEBD_(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4dcH4YgJDq_2tt(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4dcH4YgJDq_2tt(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4dcH4YgJDq_2tt(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit

_RNvXs3_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 19 uses
  %i.d = icmp eq i64 %.val1, 0                    ; 3 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EEBH_.exit.i, label %.lr.ph37

bb.c:                                             ; preds = %.lr.ph37
  %i.e = icmp eq i64 %i.g, %.val1
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EEBH_.exit.i, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i36 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i.i36 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i36, 1      ; 4 uses
  %.val8.i.i = load i8, ptr %i.f, align 8, !range !9, !alias.scope !25, !noundef !5
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !25
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage96EEBG_(i8 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.c unwind label %bb.e, !noalias !25

bb.d:                                             ; preds = %.lr.ph39
  %i.i = add i64 %.sroa.0.1.i.i38, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %.val1
  br i1 %i.j, label %.body.i, label %.lr.ph39

bb.e:                                             ; preds = %.lr.ph37
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %.val1
  br i1 %i.l, label %.body.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i38 = phi i64 [ %i.i, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i.i38 ; 2 uses
  %.val.i.i = load i8, ptr %i.m, align 8, !range !9, !alias.scope !25, !noundef !5
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val7.i.i = load ptr, ptr %i.n, align 8, !alias.scope !25
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage96EEBG_(i8 %.val.i.i, ptr %.val7.i.i) #16
          to label %bb.d unwind label %bb.f, !noalias !25

bb.f:                                             ; preds = %.lr.ph39
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !25
  unreachable

common.resume:                                    ; preds = %.body.i19, %.body.i12, %.body.i
  %.sink = phi i64 [ %i.ar, %.body.i19 ], [ %i.ad, %.body.i12 ], [ %i.p, %.body.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.am, %.body.i19 ], [ %i.y, %.body.i12 ], [ %i.k, %.body.i ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %.sink, i64 noundef 8) #18
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.d, %bb.e
  %i.p = shl nuw nsw i64 %.val1, 5
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EEBH_.exit.i: ; preds = %bb.c, %bb.b
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EEBH_.exit.i
  %i.r = shl nuw nsw i64 %.val1, 5
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit.sink.split

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_.exit.i, label %.lr.ph33

bb.i:                                             ; preds = %.lr.ph33
  %i.s = icmp eq i64 %i.u, %.val1
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_.exit.i, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i632 = phi i64 [ %i.u, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.0.i.i632 ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.0.0.i.i632, 1     ; 4 uses
  %.val8.i.i7 = load i8, ptr %i.t, align 8, !range !9, !alias.scope !26, !noundef !5
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val9.i.i8 = load ptr, ptr %i.v, align 8, !alias.scope !26
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage32EEBG_(i8 %.val8.i.i7, ptr %.val9.i.i8)
          to label %bb.i unwind label %bb.k, !noalias !26

bb.j:                                             ; preds = %.lr.ph35
  %i.w = add i64 %.sroa.0.1.i.i934, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %.val1
  br i1 %i.x, label %.body.i12, label %.lr.ph35

bb.k:                                             ; preds = %.lr.ph33
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.u, %.val1
  br i1 %i.z, label %.body.i12, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i934 = phi i64 [ %i.w, %bb.j ], [ %i.u, %bb.k ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i934 ; 2 uses
  %.val.i.i10 = load i8, ptr %i.aa, align 8, !range !9, !alias.scope !26, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val7.i.i11 = load ptr, ptr %i.ab, align 8, !alias.scope !26
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage32EEBG_(i8 %.val.i.i10, ptr %.val7.i.i11) #16
          to label %bb.j unwind label %bb.l, !noalias !26

bb.l:                                             ; preds = %.lr.ph35
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !26
  unreachable

.body.i12:                                        ; preds = %bb.j, %bb.k
  %i.ad = shl nuw nsw i64 %.val1, 4
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_.exit.i: ; preds = %bb.i, %bb.h
  %i.ae = icmp eq i64 %.val1, 0
  br i1 %i.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_.exit.i
  %i.af = shl nuw nsw i64 %.val1, 4
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit.sink.split

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_.exit.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.ag = icmp eq i64 %i.ai, %.val1
  br i1 %i.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i.i1329 = phi i64 [ %i.ai, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i1329 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.0.0.i.i1329, 1   ; 4 uses
  %.val8.i.i14 = load i8, ptr %i.ah, align 8, !range !9, !alias.scope !27, !noundef !5
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val9.i.i15 = load ptr, ptr %i.aj, align 8, !alias.scope !27
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage64EEBG_(i8 %.val8.i.i14, ptr %.val9.i.i15)
          to label %bb.o unwind label %bb.q, !noalias !27

bb.p:                                             ; preds = %.lr.ph31
  %i.ak = add i64 %.sroa.0.1.i.i1630, 1           ; 2 uses
  %i.al = icmp eq i64 %i.ak, %.val1
  br i1 %i.al, label %.body.i19, label %.lr.ph31

bb.q:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = icmp eq i64 %i.ai, %.val1
  br i1 %i.an, label %.body.i19, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.q, %bb.p
  %.sroa.0.1.i.i1630 = phi i64 [ %i.ak, %bb.p ], [ %i.ai, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i1630 ; 2 uses
  %.val.i.i17 = load i8, ptr %i.ao, align 8, !range !9, !alias.scope !27, !noundef !5
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %.val7.i.i18 = load ptr, ptr %i.ap, align 8, !alias.scope !27
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage64EEBG_(i8 %.val.i.i17, ptr %.val7.i.i18) #16
          to label %bb.p unwind label %bb.r, !noalias !27

bb.r:                                             ; preds = %.lr.ph31
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !27
  unreachable

.body.i19:                                        ; preds = %bb.p, %bb.q
  %i.ar = mul nuw nsw i64 %.val1, 24
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_.exit.i: ; preds = %bb.o, %bb.n
  %i.as = icmp eq i64 %.val1, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_.exit.i
  %i.at = mul nuw nsw i64 %.val1, 24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.s
  %.sink26 = phi i64 [ %i.at, %bb.s ], [ %i.af, %bb.m ], [ %i.r, %bb.g ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %.sink26, i64 noundef 8) #18
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEEB1g_.exit.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EEBH_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage17TopSubtreeBuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs4dcH4YgJDq_2tt.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage21TopSubtreeBuilderReprEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #16
          to label %bb.f unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs4dcH4YgJDq_2tt.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage21TopSubtreeBuilderReprEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body, %.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1k_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #16
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs4dcH4YgJDq_2tt.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecjEECs4dcH4YgJDq_2tt.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs4dcH4YgJDq_2tt.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEEEB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i) #16
          to label %common.resume unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs4dcH4YgJDq_2tt.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1k_.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs4dcH4YgJDq_2tt.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.m, %bb.j ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3set8IndexSetNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1k_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECs4dcH4YgJDq_2tt.exit.i.i.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
  ret void

bb.m:                                             ; preds = %bb.f, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage21TopSubtreeBuilderReprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ], [ %i.g, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage96EEEB1d_.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage32EEEB1d_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1b_13SpanStorage32EEEB1d_.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree30set_top_subtree_delimiter_span:bb.a
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage32EBa_.exit, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !86
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !86
  unreachable

_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage32EBa_.exit: ; preds = %bb.c
  %i.o = sub i32 %i.c, %i.a
  %i.p = shl i32 %i.a, 12
  %i.q = shl i32 %i.o, 4
  %i.r = or i32 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.r, ptr %i.s, align 8, !alias.scope !85
  %i.t = sub i32 %i.g, %i.e
  %i.u = shl i32 %i.e, 12
  %i.v = shl i32 %i.t, 4
  %i.w = or i32 %i.u, %i.v
  %i.x = or disjoint i32 %i.w, 1
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.j, align 8, !range !9, !alias.scope !87, !noundef !5
  %i.z = icmp eq i8 %i.y, 3
  br i1 %i.z, label %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage64EBa_.exit, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !88
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !88
  unreachable

_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage64EBa_.exit: ; preds = %bb.g
  %i.aa = sub i32 %i.c, %i.a
  %i.ab = shl i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.a, ptr %i.ac, align 8, !alias.scope !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.ab, ptr %i.ad, align 4, !alias.scope !87
  %i.ae = sub i32 %i.g, %i.e
  %i.af = shl i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.e, ptr %i.ah, align 8, !alias.scope !87
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %i.j, align 8, !range !9, !alias.scope !89, !noundef !5
  %i.aj = icmp eq i8 %i.ai, 3
  br i1 %i.aj, label %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage96EBa_.exit, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !90
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !90
  unreachable

_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage96EBa_.exit: ; preds = %bb.k
  %i.ak = sub i32 %i.c, %i.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.a, ptr %i.al, align 8, !alias.scope !89
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !89
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !89
  %i.am = sub i32 %i.g, %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.e, ptr %i.an, align 4, !alias.scope !89
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.am, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !89
  br label %bb.n

bb.n:                                             ; preds = %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage96EBa_.exit, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage64EBa_.exit, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage32EBa_.exit
  %.sink9 = phi i64 [ 28, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage96EBa_.exit ], [ 20, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage64EBa_.exit ], [ 12, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage32EBa_.exit ]
  %.sink = phi i32 [ 1, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage96EBa_.exit ], [ %i.ag, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage64EBa_.exit ], [ %i.x, %_RINvNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB8_10TopSubtree30set_top_subtree_delimiter_span5do_itNtB8_13SpanStorage32EBa_.exit ]
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink9
  store i32 %.sink, ptr %.sroa.53.0..sroa_idx.i, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 4, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load <2 x i32>, ptr %i.au, align 4
  store <2 x i32> %i.av, ptr %i.ar, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.at, ptr %.sroa.5.0..sroa_idx, align 4
  %.not7 = icmp eq i64 %i.ap, 1
  br i1 %.not7, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ba = load <2 x i32>, ptr %i.ay, align 4
  store <2 x i32> %i.ba, ptr %i.az, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  store i32 %i.ax, ptr %.sroa.53.0..sroa_idx, align 4
  ret void

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree4iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.b = load i64, ptr %1, align 8, !range !8, !alias.scope !95, !noundef !5
  %.sroa.4.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.i = load ptr, ptr %.sroa.4.0.in.i, align 8, !alias.scope !95, !nonnull !5, !noundef !5
  %.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.i = load i64, ptr %.sroa.7.0.in.i, align 8, !alias.scope !95, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !95, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !95, !noundef !5
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !94
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !94
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.7.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !94
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !94
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.f, ptr %.sroa.73.0..sroa_idx.i, align 8, !alias.scope !94
  call void @_RNvMs6_Cs4dcH4YgJDq_2ttNtB5_11SubtreeView4iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree5empty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %1, align 4, !noundef !5   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  %.sroa.9.4.insert.ext = zext i32 %i.f to i64
  %.sroa.9.4.insert.shift = shl nuw i64 %.sroa.9.4.insert.ext, 32
  %i.i = inttoptr i64 %.sroa.9.4.insert.shift to ptr ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !98
  %i.j = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 24, 33) 32, i64 noundef range(i64 4, 9) 8) #18, !noalias !98 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxAINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96Ej1_E3newBK_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #19
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage96EEBG_(i8 3, ptr %i.i)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxAINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96Ej1_E3newBK_.exit: ; preds = %bb.a
  %i.n = sub i32 %i.h, %i.f
  %i.o = sub i32 %i.d, %i.b
  store i8 3, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.620.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.b, ptr %.sroa.7.0..sroa_idx21, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.o, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.n, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 1, ptr %.sroa.13.0..sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.q, align 8
  store i64 2, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load <6 x i32>, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load <2 x i32>, ptr %i.t, align 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.v = tail call noundef align 4 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 24, 33) 24, i64 noundef range(i64 4, 9) 4) #18 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.g, !prof !7

bb.e:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxAINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96Ej1_E3newBK_.exit
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 24) #19
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxAINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96Ej1_E3newBK_.exit
  %i.y = shufflevector <6 x i32> %i.s, <6 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i32> %i.y, ptr %i.v, align 4
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i32> %i.u, ptr %.sroa.725.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree9set_token(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 8 uses
  %i.c = alloca [20 x i8], align 4                ; 8 uses
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 6 uses
  %i.m = icmp ult i64 %1, %i.h                    ; 3 uses
  switch i64 %i.d, label %default.unreachable44 [
    i64 0, label %bb.b
    i64 1, label %bb.ab
    i64 2, label %bb.bd
  ]

default.unreachable44:                            ; preds = %bb.bt, %bb.ar, %bb.p, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %1 ; 21 uses
  %i.o = load i8, ptr %i.n, align 8, !range !9, !alias.scope !120, !noundef !5 ; 4 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.g, label %bb.h, !prof !123

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, 576460752303423488) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %bb.f unwind label %bb.e, !noalias !124

bb.e:                                             ; preds = %bb.o, %bb.i, %bb.g, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre.i = load i32, ptr %2, align 8, !range !6, !alias.scope !122
  switch i32 %.pre.i, label %common.resume [
    i32 0, label %bb.z
    i32 2, label %bb.aa
  ]

bb.f:                                             ; preds = %bb.o, %bb.g, %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.f unwind label %bb.e, !noalias !124

bb.h:                                             ; preds = %bb.c
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %.sroa.0.0.i, align 4, !alias.scope !120, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = icmp samesign ugt i64 %i.l, %i.t
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef range(i64 0, 768614336404564651) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20
          to label %.noexc.i unwind label %bb.e, !noalias !124

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = lshr i32 %i.r, 12                        ; 3 uses
  %i.w = lshr i32 %i.r, 4
  %i.x = and i32 %i.w, 255
  %i.y = add nuw nsw i32 %i.x, %i.v               ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.t ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !127, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !127, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !127, !noundef !5 ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !alias.scope !125, !noalias !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.y, ptr %i.af, align 4, !alias.scope !125, !noalias !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.aa, ptr %i.ag, align 4, !alias.scope !125, !noalias !124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ac, ptr %i.ah, align 4, !alias.scope !125, !noalias !124
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ae, ptr %i.ai, align 4, !alias.scope !125, !noalias !124
  %i.aj = load i32, ptr %2, align 8, !range !6, !alias.scope !122, !noundef !5 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  %..i = select i1 %i.ak, i64 8, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %..i ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !alias.scope !122, !noundef !5
  %i.an = icmp eq i32 %i.am, %i.v
  br i1 %i.an, label %bb.k, label %bb.o, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !122, !noundef !5
  %i.aq = icmp eq i32 %i.ap, %i.y
  br i1 %i.aq, label %bb.l, label %bb.o, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !122, !noundef !5
  %i.at = icmp eq i32 %i.as, %i.aa
  br i1 %i.at, label %bb.m, label %bb.o, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !122, !noundef !5
  %i.aw = icmp eq i32 %i.av, %i.ac
  br i1 %i.aw, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !alias.scope !122, !noundef !5
  %i.az = icmp eq i32 %i.ay, %i.ae
  br i1 %i.az, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtCsdovh4xi6v3I_4span4SpanBM_ECs4dcH4YgJDq_2tt(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c, ptr noundef nonnull @5, ptr nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19
          to label %bb.f unwind label %bb.e, !noalias !128

bb.p:                                             ; preds = %bb.n
  switch i32 %i.aj, label %default.unreachable44 [
end_hunk_1
