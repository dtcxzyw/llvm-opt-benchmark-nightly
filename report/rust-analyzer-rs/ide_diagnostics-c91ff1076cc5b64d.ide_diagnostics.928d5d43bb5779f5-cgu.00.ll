Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.00?download=true
inline.NumInlined: 2826
inline.NumDeleted: 1639
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs8Xq8PKFYOms_3hir4TypeINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtBE_11term_search4expr4ExprEEECscA5P7HRgTCP_15ide_diagnostics:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %.sroa.0.0.i.i1
  %i.i = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #26
          to label %bb.b unwind label %bb.d, !noalias !896, !inline_history !118

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
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #27
          to label %bb.c unwind label %bb.e, !noalias !896, !inline_history !118

bb.e:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !896, !inline_history !118
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.f, !inline_history !119

bb.f:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !inline_history !119
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !inline_history !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir5FieldEECscA5P7HRgTCP_15ide_diagnostics(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir9AssocItemEECscA5P7HRgTCP_15ide_diagnostics(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = ptrtoint ptr %.0.val to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull %i.e)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load atomic i64, ptr %i.h acquire, align 8
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #23
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2k_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtBc_6option8IntoIterB1n_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_INtB4K_6OptionB1n_EE0EECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !902
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !902
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !902
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !902
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = zext i1 %i.b to i64                      ; 3 uses
  br i1 %i.b, label %bb.c, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.thr_comm.i, %bb.f ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENCINvNtNtB1D_14syntax_factory12constructors14iterator_inputB1x_INtB1c_6OptionB1x_EE0EECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.e

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !908, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !range !86, !alias.scope !908, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i, !prof !61

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.f, i64 noundef range(i64 1, 0) %i.c, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.e

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENCINvNtNtB1r_14syntax_factory12constructors14iterator_inputB1l_INtB10_6OptionB1l_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callTB1l_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1t_11syntax_node12RustLanguageEENCINvNvNtB3F_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1l_EIB6W_B4J_EEB4E_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtBc_6option8IntoIterB1D_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_INtB4E_6OptionB1D_EE0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !905, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !noalias !905
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #23
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtBc_6option8IntoIterB1D_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_INtB4E_6OptionB1D_EE0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENCINvNtNtB1D_14syntax_factory12constructors14iterator_inputB1x_INtB1c_6OptionB1x_EE0EECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2k_EE9from_iterINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1n_Kj1_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_AB1n_B5g_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !915
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !915
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !915
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !915
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !921, !noalias !918, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !921, !noalias !918, !noundef !4 ; 3 uses
  %i.d = sub nuw i64 %.val3.i, %.val.i            ; 3 uses
  %.not.i = icmp eq i64 %.val3.i, %.val.i
  br i1 %.not.i, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i, label %bb.c

bb.b:                                             ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %lpad.thr_comm.i, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2w_E0EECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.e, !noalias !921

_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !923, !noalias !921, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !range !86, !alias.scope !923, !noalias !921, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i, !prof !61

bb.d:                                             ; preds = %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.e, !noalias !921

_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.d, %_RNvXsj_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBF_E14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i, %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENCINvNtNtB1x_14syntax_factory12constructors14iterator_inputB1r_AB1r_B2k_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callTB1r_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1z_11syntax_node12RustLanguageEENCINvNvNtB3F_7collect14default_extend18unchecked_extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1r_EIB6W_B4J_EEB4E_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5a_E0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEj1_NtB4_11PartialDrop12partial_dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %.val.i, i64 noundef %.val3.i)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIB17_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1L_11syntax_node12RustLanguageEEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterB1D_Kj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B5a_E0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEIBQ_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1u_11syntax_node12RustLanguageEEEINtB5_6ExtendTB1m_B2j_EE14extend_reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprKj1_ENCINvNtNtB1J_14syntax_factory12constructors14iterator_inputB1D_AB1D_B2w_E0EECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEIBR_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1v_11syntax_node12RustLanguageEEEINtB6_12FromIteratorTB1n_B2k_EE9from_iterINtNtNtBa_8adapters3map3MapINtB1t_11AstChildrenB1n_ENCINvNtNtB1t_14syntax_factory12constructors14iterator_inputB1n_B4H_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !930
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !930
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !930
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !930
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !930
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtENCINvNtNtB10_14syntax_factory12constructors14iterator_inputB1E_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3h_8for_each4callTB1E_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB12_11syntax_node12RustLanguageEENCINvNvNtB3l_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1E_EIB6r_B4p_EEB4k_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RNvXNvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEIB15_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1J_11syntax_node12RustLanguageEEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtB1H_11AstChildrenB1B_ENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B4z_E0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEIBD_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1h_11syntax_node12RustLanguageEEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1c_9generated5nodes4StmtENCINvNtNtB1c_14syntax_factory12constructors14iterator_inputB1Q_B19_E0EECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.c

_RNvXNvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEIB15_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1J_11syntax_node12RustLanguageEEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtB1H_11AstChildrenB1B_ENCINvNtNtB1H_14syntax_factory12constructors14iterator_inputB1B_B4z_E0EE6extendCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1c_9generated5nodes4StmtENCINvNtNtB1c_14syntax_factory12constructors14iterator_inputB1Q_B19_E0EECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2p_4util11SharedValueuEEEEEE16into_boxed_sliceCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !86, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 128, i64 noundef 128)
end_hunk_0
