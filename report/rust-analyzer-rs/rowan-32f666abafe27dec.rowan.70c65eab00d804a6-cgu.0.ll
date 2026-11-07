Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rowan-32f666abafe27dec.rowan.70c65eab00d804a6-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 127
begin_hunk_0_@_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken21next_sibling_or_token:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call fastcc { i64, ptr } @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData21next_sibling_or_token(ptr noundef nonnull align 8 %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken21prev_sibling_or_token(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 !guid !269 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call fastcc { i64, ptr } @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData21prev_sibling_or_token(ptr noundef nonnull align 8 %i.a)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken3new(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !guid !270 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !7, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call fastcc noundef nonnull ptr @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData3new(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i64 noundef 1, ptr noundef %0, i1 noundef zeroext %i.c) #22
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken6detach(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 !guid !271 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !7, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs9GitHPCrz2Q_5rowan6cursor11SyntaxTokenNtB6_7Display3fmtBA_, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData6detach(ptr noundef nonnull align 8 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !272 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef ptr @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode11first_child(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !6
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !6
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2: ; preds = %bb.d, %bb.e
  ret ptr %i.b

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !273 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke { i64, ptr } @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20first_child_or_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !6
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !6
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit2: ; preds = %bb.d, %bb.e
  ret { i64, ptr } %i.b

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsm_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8Preorder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !274 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.g, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i32, ptr %i.a, align 4, !noundef !6
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsm_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8Preorder7do_skip(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !275 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  store i64 2, ptr %0, align 8
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtB12_6cursor10SyntaxNodeEEEB12_.exit, label %1

1:                                                ; preds = %bb.a
  %2 = trunc nuw i64 %i.a to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br i1 %2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtB12_6cursor10SyntaxNodeEEEB12_.exit, label %bb.b

bb.b:                                             ; preds = %1
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val11.i = load ptr, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %.not.i.i = icmp eq ptr %.val11.i, null
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val11.i, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !6 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.g, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !noundef !6
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i unwind label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.m = add nuw i32 %i.f, 1
  store i32 %i.m, ptr %i.e, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !noundef !6
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtB12_6cursor10SyntaxNodeEEEB12_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.c) #16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtB12_6cursor10SyntaxNodeEEEB12_.exit

bb.i:                                             ; preds = %bb.b
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventNtNtB12_6cursor10SyntaxNodeEEEB12_.exit: ; preds = %bb.h, %bb.g, %1, %bb.a
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ %.val11.i, %bb.h ], [ %.val11.i, %bb.g ], [ %i.c, %1 ]
  %.sroa.0.0 = phi i64 [ 2, %bb.a ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %1 ]
  store i64 %.sroa.0.0, ptr %0, align 8
  store ptr %.sroa.6.0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !276 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 4
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.53.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.g, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i32, ptr %i.a, align 4, !noundef !6
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens7do_skip(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !280 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 7 uses
  store i64 2, ptr %i.a, align 8
  switch i64 %.sroa.0.0.copyload, label %.fold.split [
    i64 2, label %bb.m
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %i.b = trunc nuw i64 %.sroa.5.sroa.0.0.copyload to i1
  %i.c = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload, i64 16
  %.val7.i = load ptr, ptr %i.c, align 8, !noalias !281, !noundef !6 ; 5 uses
  %.not.i.i = icmp eq ptr %.val7.i, null          ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !281, !noundef !6 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.invoke.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %i.d, align 4, !noalias !281
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !281, !noundef !6 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.invoke.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 4, !noalias !281
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i

.invoke.i:                                        ; preds = %bb.g, %bb.d
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #19
          to label %.cont.i unwind label %bb.i, !noalias !281

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.j, %.invoke.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !noalias !281, !noundef !6
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !noalias !281
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i.i: ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.sroa.4.0.copyload) #16
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.i unwind label %bb.l, !noalias !281

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i: ; preds = %bb.h, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !noalias !281, !noundef !6
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !noalias !281
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i, label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.sroa.4.0.copyload) #16, !noalias !281
  br label %bb.m

bb.j:                                             ; preds = %bb.f, %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
          to label %bb.k unwind label %bb.i, !noalias !281

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17, !noalias !281
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i.i, %bb.i
  resume { ptr, i32 } %i.l

.fold.split:                                      ; preds = %bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.fold.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i
  %.sroa.57.sroa.4.0 = phi ptr [ undef, %bb.a ], [ %.val7.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i ], [ %.val7.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i ], [ %.sroa.5.sroa.4.0.copyload, %.fold.split ]
  %.sroa.57.sroa.0.0 = phi i64 [ undef, %bb.a ], [ 0, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i ], [ %.sroa.5.sroa.0.0.copyload, %.fold.split ]
  %.sroa.03.0 = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ 1, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.i ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeEBF_.exit.sink.split.i12.i ], [ 1, %.fold.split ]
  store i64 %.sroa.03.0, ptr %i.a, align 8
  store i64 %.sroa.57.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.57.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !290 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.e = phi ptr [ %i.ag, %bb.j ], [ %i.d, %bb.a ] ; 5 uses
  %.sroa.0.020 = phi ptr [ %i.e, %bb.j ], [ %0, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 60
  %i.g = load i8, ptr %i.f, align 4, !range !7, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.i, label %bb.h, !prof !8

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %bb.j ] ; 5 uses
  %i.i = load i64, ptr %.sroa.0.0.lcssa, align 8, !range !9, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
end_hunk_0
