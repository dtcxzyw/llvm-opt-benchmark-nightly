inline.NumInlined: 2100
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_E21reserve_one_uncheckedBM_:bb.a
  br i1 %i.i, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_E6insertBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !801, !noalias !804, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !801, !noalias !804, !nonnull !5
  %.sink10.i = select i1 %i.b, ptr %i.d, ptr %i.c
  %.sink9.idx.i = select i1 %i.b, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  %i.e = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, %.sink.i
  br i1 %i.f, label %bb.c, label %bb.d, !prof !6

bb.b:                                             ; preds = %bb.g, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %2) #34
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.h = phi i64 [ %.pre, %bb.e ], [ %i.e, %bb.a ] ; 4 uses
  %.sroa.05.0 = phi ptr [ %i.k, %bb.e ], [ %.sink9.i, %bb.a ]
  %.sroa.04.0 = phi ptr [ %i.j, %bb.e ], [ %.sink10.i, %bb.a ]
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.g, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.k, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %.sroa.04.0, i64 %1 ; 3 uses
  %i.m = icmp ult i64 %1, %i.h
  br i1 %i.m, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #32
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.n = add i64 %i.h, 1
  store i64 %i.n, ptr %.sroa.05.0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  ret void

bb.i:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = sub nuw i64 %i.h, %1
  %i.q = mul nuw nsw i64 %i.p, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !806, !noalias !809, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 72                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 128102389400760775
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit, !prof !792

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit
  %i.j = mul i64 %.sink.i, 72                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45, !prof !792

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #38 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #38 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 72                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 128102389400760775
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit, !prof !792

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !811
  store i64 0, ptr %i.a, align 8, !noalias !811
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !811
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !811
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCslLuZgPVt6hg_3ide11inlay_hints18InlayHintLabelPartEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !814, !noalias !817, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !814, !noalias !817, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !814, !noalias !817 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !819
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit50.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !819
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !819 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !819 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !819
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !819
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !819
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !819
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !823
  store i64 0, ptr %i.a, align 8, !noalias !823
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !823
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !823
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !819
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !826, !noalias !829, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !826, !noalias !829, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !826, !noalias !829 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !831
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !831
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !831 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !831 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !831
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !831
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !831
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !831
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !834
  store i64 0, ptr %i.a, align 8, !noalias !834
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !834
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !834
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !831
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !837, !noalias !840, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !837, !noalias !840, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !837, !noalias !840 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !842
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 4                          ; 4 uses
  %1 = icmp ult i64 %i.k, 1152921504606846975
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 4                      ; 2 uses
  %3 = icmp ult i64 %i.c, 1152921504606846976
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond59.i = and i1 %3, %i.q
  br i1 %or.cond59.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !842
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !842 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !842 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !842
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !842
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !842
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !842
  %4 = shl i64 %.sink.i.i, 4                      ; 3 uses
  %5 = icmp ult i64 %i.c, 1152921504606846976
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !845
  store i64 0, ptr %i.a, align 8, !noalias !845
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !845
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !845
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !842
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variantj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !848, !noalias !851, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !848, !noalias !851, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !848, !noalias !851 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !853
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit50.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !853
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !853 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !853 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !853
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !853
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !853
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !853
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !856
  store i64 0, ptr %i.a, align 8, !noalias !856
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !856
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !856
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !853
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !859, !noalias !862, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !859, !noalias !862, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !859, !noalias !862 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !864
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit50.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !864
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !864 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !864 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !864
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !864
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !864
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !864
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !867
  store i64 0, ptr %i.a, align 8, !noalias !867
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !867
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !867
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !864
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatj1_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !870, !noalias !873, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !870, !noalias !873, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !870, !noalias !873 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !875
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond65.i = and i1 %3, %i.q
  br i1 %or.cond65.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit50.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !875
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #38, !noalias !875 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit50.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #38, !noalias !875 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !875
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !875
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !875
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !875
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !878
  store i64 0, ptr %i.a, align 8, !noalias !878
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !878
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !878
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !875
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit50.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8IdentPatECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecARej3_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !881, !noalias !884, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !881, !noalias !884, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !881, !noalias !884 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !886
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl i64 %i.m, 4                          ; 4 uses
  %1 = icmp ult i64 %.sroa.02.0, 1152921504606846975
  %i.q = icmp ult i64 %i.p, 9223372036854775801
  %or.cond.i = and i1 %1, %i.q
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit.i, label %bb.p, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit.i
  %2 = shl i64 %.sink.i.i, 4                      ; 2 uses
  %3 = icmp ult i64 %i.c, 1152921504606846976
  %i.r = icmp ult i64 %2, 9223372036854775801
  %or.cond60.i = and i1 %3, %i.r
  br i1 %or.cond60.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit45.i, label %bb.p, !prof !822

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !886
  %i.s = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #38, !noalias !886 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit45.i: ; preds = %bb.i
  %i.u = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.p) #38, !noalias !886 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !886
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !886
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !886
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !886
  %4 = shl i64 %.sink.i.i, 4                      ; 3 uses
  %5 = icmp ult i64 %i.c, 1152921504606846976
  %i.y = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.y
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateReECslLuZgPVt6hg_3ide.exit.i, label %bb.n, !prof !822

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !889
  store i64 0, ptr %i.a, align 8, !noalias !889
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !889
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !889
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateReECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #38, !noalias !886
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayReECslLuZgPVt6hg_3ide.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateReECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !892, !noalias !895, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !892, !noalias !895
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !897, !noalias !900, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 4                            ; 6 uses
  %2 = icmp ult i64 %1, 1152921504606846976
  %i.k = icmp ult i64 %i.j, 9223372036854775801
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit, label %bb.m, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit
  %3 = shl i64 %.sink.i, 4                        ; 3 uses
  %4 = icmp ult i64 %i.c, 1152921504606846976
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond60 = and i1 %4, %i.l
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45, label %bb.m, !prof !822

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 4                        ; 3 uses
  %6 = icmp ult i64 %i.c, 1152921504606846976
  %i.s = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit, label %bb.l, !prof !822

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !902
  store i64 0, ptr %i.a, align 8, !noalias !902
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !902
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !902
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span7hygiene13SyntaxContextEECslLuZgPVt6hg_3ide.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !905, !noalias !908, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !905, !noalias !908
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBN_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !910, !noalias !913, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit, !prof !792

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit
  %i.k = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45, !prof !792

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #38 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #38 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw nsw i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit, !prof !792

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !915
  store i64 0, ptr %i.a, align 8, !noalias !915
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !915
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !915
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBG_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1j_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtBI_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherB1l_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEECslLuZgPVt6hg_3ide.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !918, !noalias !921, !noundef !5 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !918, !noalias !921, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !918, !noalias !921 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 3 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.n = icmp ult i64 %i.c, 65                    ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 64) ; 5 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33, !noalias !923
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 64
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = icmp sgt i64 %i.m, -1
  br i1 %i.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit.i, label %bb.p

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit.i
  %i.q = icmp sgt i64 %.sink.i.i, -1
  br i1 %i.q, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit47.i, label %bb.p

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !923
  %i.r = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef 1) #38, !noalias !923 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit47.i: ; preds = %bb.i
  %i.t = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %.sink.i.i, i64 noundef 1, i64 noundef %i.m) #38, !noalias !923 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit47.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit47.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !923
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !923
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !923
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.c, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !923
  %i.v = icmp sgt i64 %.sink.i.i, -1
  br i1 %i.v, label %_RINvCsjpcu9PwIgok_8smallvec10deallocatehECslLuZgPVt6hg_3ide.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !926
  store i64 0, ptr %i.a, align 8, !noalias !926
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.w, align 8, !noalias !926
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !926
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocatehECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %.sink.i.i, i64 noundef 1) #38, !noalias !923
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayhECslLuZgPVt6hg_3ide.exit47.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 1, i64 noundef %i.m) #32
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocatehECslLuZgPVt6hg_3ide.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E17try_reserve_exactCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !929, !noalias !932, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %1                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !934, !noalias !937, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !934, !noalias !937
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 16, !alias.scope !939, !noalias !942, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 4                            ; 6 uses
  %2 = icmp ult i64 %1, 1152921504606846976
  %i.k = icmp ult i64 %i.j, 9223372036854775793
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit, label %bb.m, !prof !822

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit
  %3 = shl i64 %.sink.i, 4                        ; 3 uses
  %4 = icmp ult i64 %i.c, 1152921504606846976
  %i.l = icmp ult i64 %3, 9223372036854775793
  %or.cond60 = and i1 %4, %i.l
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45, label %bb.m, !prof !822

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.m = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 16) #38 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45: ; preds = %bb.g
  %i.o = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 16, i64 noundef %i.j) #38 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 16
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 16 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 16
  %5 = shl i64 %.sink.i, 4                        ; 3 uses
  %6 = icmp ult i64 %i.c, 1152921504606846976
  %i.s = icmp ult i64 %5, 9223372036854775793
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECslLuZgPVt6hg_3ide.exit, label %bb.l, !prof !822

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !944
  store i64 0, ptr %i.a, align 8, !noalias !944
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !944
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33, !noalias !944
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateoECslLuZgPVt6hg_3ide.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 16) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECslLuZgPVt6hg_3ide.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECslLuZgPVt6hg_3ide.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateoECslLuZgPVt6hg_3ide.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 16, %bb.h ], [ -1, %bb.e ], [ 16, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayoECslLuZgPVt6hg_3ide.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsf_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6resizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1, i128 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !947, !noalias !950, !noundef !5 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !947, !noalias !950
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 4 uses
  %i.f = icmp ugt i64 %1, %.sink10.i
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %.sink10.i
  br i1 %i.g, label %.lr.ph.preheader.i, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.sink9.i.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 %1, ptr %.sink9.i.i, align 8, !alias.scope !952
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %.sink10.i               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %.sink.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.i = sub i64 %.sink.i.i.i, %.sink10.i
  %.not.i.i = icmp ult i64 %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %1, 2
  %i.k = add i64 %1, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = lshr i64 -1, %i.l
  %.sroa.010.0.i.i = select i1 %i.j, i64 0, i64 %i.m ; 2 uses
  %i.n = icmp eq i64 %.sroa.010.0.i.i, -1
  br i1 %i.n, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.thread.i, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.i, !prof !6

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.d
  %i.o = add nuw i64 %.sroa.010.0.i.i, 1
  %i.p = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0, i64 noundef %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 -1, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit_crit_edge.i
    i64 0, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.thread.i
  ], !prof !958

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit_crit_edge.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.i
  %.pre.i = load i64, ptr %i.a, align 16, !alias.scope !959, !noalias !962 ; 2 uses
  %.pre57.i = tail call i64 @llvm.umax.i64(i64 %.pre.i, i64 2)
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.i
  %i.r = extractvalue { i64, i64 } %i.p, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.q, i64 noundef %i.r) #32, !noalias !955
  unreachable

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.thread.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit.i, %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #33, !noalias !955
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit_crit_edge.i, %bb.c
  %.sink.i.pre-phi.i = phi i64 [ %.pre57.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit_crit_edge.i ], [ %.sink.i.i.i, %bb.c ] ; 3 uses
  %i.s = phi i64 [ %.pre.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E11try_reserveCslLuZgPVt6hg_3ide.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit_crit_edge.i ], [ %i.b, %bb.c ]
  %i.t = icmp ugt i64 %i.s, 2                     ; 2 uses
  %i.u = load ptr, ptr %0, align 16, !alias.scope !959, !noalias !962, !nonnull !5
  %.sink10.i.i = select i1 %i.t, ptr %i.u, ptr %0
  %.sink9.i.i2 = select i1 %i.t, ptr %i.d, ptr %i.a ; 3 uses
  %i.v = load i64, ptr %.sink9.i.i2, align 8, !alias.scope !955, !noundef !5 ; 3 uses
  %i.w = icmp ult i64 %i.v, %.sink.i.pre-phi.i
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i
  %.sroa.7.0.lcssa.i = phi i64 [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i ], [ %.sink.i.pre-phi.i, %bb.g ]
  %.sroa.6.0.lcssa.i = phi i64 [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i ], [ %i.al, %bb.g ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i, ptr %.sink9.i.i2, align 8, !alias.scope !955
  %i.x = icmp eq i64 %.sroa.6.0.lcssa.i, 0
  br i1 %i.x, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i, %bb.g
  %.sroa.6.050.i = phi i64 [ %i.al, %bb.g ], [ %i.h, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i ] ; 2 uses
  %.sroa.7.049.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECslLuZgPVt6hg_3ide.exit.i ] ; 3 uses
  %i.y = icmp eq i64 %.sroa.6.050.i, 0
  br i1 %i.y, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i, label %bb.g

.lr.ph54.i:                                       ; preds = %._crit_edge.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i
  %.sroa.430.052.i = phi i64 [ %i.z, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ]
  %i.z = add i64 %.sroa.430.052.i, -1             ; 2 uses
  %i.aa = load i64, ptr %i.a, align 16, !alias.scope !964, !noalias !969, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 2                   ; 2 uses
  %i.ac = load ptr, ptr %0, align 16, !alias.scope !964, !noalias !969, !nonnull !5
  %.sink10.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %0
  %.sink9.i.i.i = select i1 %i.ab, ptr %i.d, ptr %i.a ; 2 uses
  %.sink.i.i12.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ad = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !971, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.sink.i.i12.i
  br i1 %i.ae, label %bb.f, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, !prof !6

bb.f:                                             ; preds = %.lr.ph54.i
  tail call void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %0)
  %i.af = load ptr, ptr %0, align 16, !alias.scope !971, !nonnull !5, !noundef !5
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !971
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.f, %.lr.ph54.i
  %i.ag = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ad, %.lr.ph54.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.d, %bb.f ], [ %.sink9.i.i.i, %.lr.ph54.i ] ; 2 uses
  %.sroa.0.0.i13.i = phi ptr [ %i.af, %bb.f ], [ %.sink10.i.i.i, %.lr.ph54.i ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i13.i, i64 %i.ag
  store i128 %2, ptr %i.ah, align 16
  %i.ai = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !971, !noundef !5
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %.sroa.01.0.i.i, align 8, !alias.scope !971
  %i.ak = icmp eq i64 %i.z, 0
  br i1 %i.ak, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit, label %.lr.ph54.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = add i64 %.sroa.6.050.i, -1              ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.7.049.i
  store i128 %2, ptr %i.am, align 16
  %i.an = add i64 %.sroa.7.049.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %.sink.i.pre-phi.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %.lr.ph.i
  store i64 %.sroa.7.049.i, ptr %.sink9.i.i2, align 8, !alias.scope !955
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8truncateCslLuZgPVt6hg_3ide.exit: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB4_4TakeINtNtNtB8_7sources6repeat6RepeatoEENtNtNtB8_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i, %._crit_edge.i, %.lr.ph.preheader.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE9next_backCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !41, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !41, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE9next_backCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #37 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !972, !noalias !975, !noundef !5 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !972, !noalias !975 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not24.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond25.i = or i1 %i.p, %.not24.i
  br i1 %or.cond25.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !972, !noalias !975, !noundef !5 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !972, !noalias !975, !noundef !5
  %i.ab = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !977 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
end_hunk_0
