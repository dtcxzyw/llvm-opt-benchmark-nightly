Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.10?download=true
inline.NumInlined: 6560
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_delete__:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.val17, i64 1072
  invoke void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit unwind label %bb.ai

bb.f:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8 ; 5 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.213.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.010.0.copyload, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = load ptr, ptr %i.n, align 8, !noundef !4
  %.not = icmp eq ptr %i.aa, null
  %. = select i1 %.not, ptr null, ptr %i.n
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %., ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 9, ptr noundef nonnull @_RNvYNCNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtBa_14PyMergeBuilder32___pymethod_when_matched_delete__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ag

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.experimental.noalias.scope.decl(metadata !9848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 736 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !9848, !noalias !9851 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 744 ; 2 uses
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !9848, !noalias !9851
  %.not.i = icmp eq i64 %.sroa.5.0.copyload.i, 3
  br i1 %.not.i, label %bb.v, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %i.g, ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.010.0.copyload, i64 736, i1 false), !noalias !9851
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.g, i64 736 ; 2 uses
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 16, !noalias !9854
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 744 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, i64 248, i1 false), !noalias !9851
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !noalias !9855
  call void @llvm.experimental.noalias.scope.decl(metadata !9856)
  call void @llvm.experimental.noalias.scope.decl(metadata !9859)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9861
  store i64 38, ptr %i.e, align 16, !noalias !9861
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9863
  invoke fastcc void @_RINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13DeleteBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc.i.i unwind label %bb.n, !noalias !9855

.noexc.i.i:                                       ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !9868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9863
  br label %bb.o

.body.i.i:                                        ; preds = %bb.s, %bb.p, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.af, %bb.n ], [ %i.ap, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.g) #51
          to label %.body unwind label %bb.u, !noalias !9869

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.o:                                             ; preds = %.noexc.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !9861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9861
  %i.ag = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @147)
          to label %bb.q unwind label %bb.p, !noalias !9861 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.d) #51
          to label %.body.i.i unwind label %bb.u, !noalias !9861

bb.q:                                             ; preds = %bb.o
  %i.ai = extractvalue { i64, i64 } %i.ag, 0
  %i.aj = extractvalue { i64, i64 } %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.08.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !9861
  %.sroa.08.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.08.112..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @149, i64 32, i1 false), !noalias !9861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.08.i.i, i64 144, i1 false), !noalias !9861
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i64 %i.ai, ptr %.sroa.412.0..sroa_idx.i.i, align 16, !noalias !9861
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 %i.aj, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !9861
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 1, ptr %.sroa.614.0..sroa_idx.i.i, align 16, !noalias !9861
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 664 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 680 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !9870, !noalias !9873, !noundef !4 ; 3 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !124, !alias.scope !9870, !noalias !9873, !noundef !4
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.x unwind label %bb.s, !noalias !9873

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.c) #51
          to label %.body.i.i unwind label %bb.t, !noalias !9869

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9869
  unreachable

bb.u:                                             ; preds = %bb.p, %.body.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9869
  unreachable

bb.v:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @339) #50
          to label %bb.w unwind label %bb.z, !noalias !9854

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 672
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !9870, !noalias !9873, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [176 x i8], ptr %i.at, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.au, ptr noundef nonnull align 16 dereferenceable(176) %i.c, i64 176, i1 false), !noalias !9869
  %i.av = add i64 %i.am, 1
  store i64 %i.av, ptr %i.al, align 8, !alias.scope !9870, !noalias !9873
  %.sroa.634.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx1.i, align 16, !alias.scope !9875, !noalias !9876 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9854
  %i.aw = icmp eq i64 %.sroa.634.0.copyload.i, 3
  br i1 %i.aw, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !9854
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ax, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.ab unwind label %bb.d

bb.z:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #51
          to label %.body unwind label %bb.aa, !noalias !9855

bb.aa:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9855
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bb, i64 56, i1 false), !alias.scope !9877
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, i64 248, i1 false), !noalias !9851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.010.0.copyload, ptr noundef nonnull align 16 dereferenceable(736) %i.g, i64 736, i1 false), !noalias !9851
  store i64 %.sroa.634.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !9848, !noalias !9851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !9881)
  call void @llvm.experimental.noalias.scope.decl(metadata !9882)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #44, !noalias !9877
  store ptr @_Py_NoneStruct, ptr %i.bc, align 8, !alias.scope !9881, !noalias !9882
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %storemerge.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ab ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !9881, !noalias !9882
  %.val16 = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.bd = icmp eq ptr %.val16, null
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %.val16, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.be), !noalias !9883
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ag:                                            ; preds = %bb.j, %bb.g
  %.val = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp eq ptr %.val, null
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.bg), !noalias !9886
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.ai:                                            ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [160 x i8], align 16              ; 4 uses
  %i.e = alloca [160 x i8], align 16              ; 4 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [160 x i8], align 16              ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.01.i.i = alloca [160 x i8], align 16     ; 5 uses
  %i.m = alloca [176 x i8], align 16              ; 6 uses
  %i.n = alloca [160 x i8], align 16              ; 5 uses
  %.sroa.0.i.i = alloca [144 x i8], align 16      ; 5 uses
  %i.o = alloca [160 x i8], align 16              ; 11 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  %i.q = alloca [56 x i8], align 8                ; 4 uses
  %i.r = alloca [96 x i8], align 16               ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [992 x i8], align 16              ; 12 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.510 = alloca [56 x i8], align 8          ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [64 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 8 uses
  %i.aa = alloca [64 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @354, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.ab, i64 noundef 2)
  %i.ad = load i64, ptr %i.aa, align 8, !range !10, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 1, ptr %0, align 8
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr null, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument23extract_pyclass_ref_mutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEB1g_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef align 8 dereferenceable(8) %i.z)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.az, %bb.at, %bb.am, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %eh.lpad-body.i, %bb.at ], [ %eh.lpad-body.i, %bb.am ], [ %i.ci, %bb.az ]
  %.val25 = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ah = icmp eq ptr %.val25, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 1072
  invoke void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit unwind label %bb.ba

bb.e:                                             ; preds = %bb.m, %bb.h, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.y, align 8, !range !10, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.015.0.copyload = load ptr, ptr %i.am, align 8 ; 5 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.516.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.0.copyload, ptr %i.an, align 8
  store i64 1, ptr %0, align 8
  br label %bb.bb

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB20_EKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 7)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.w, align 8, !range !10, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !noundef !4
  %.not21 = icmp eq ptr %i.at, null
  %.23 = select i1 %.not21, ptr null, ptr %i.as
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.23, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 9, ptr noundef nonnull @_RNvYNCNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtBa_14PyMergeBuilder32___pymethod_when_matched_update__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.l unwind label %bb.az

bb.l:                                             ; preds = %bb.k
  %i.au = load i64, ptr %i.v, align 8, !range !10, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_update__:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9913
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9913
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.w unwind label %bb.v, !noalias !9913

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.0.3.i.i.i = phi i8 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac, !noalias !9913

bb.w:                                             ; preds = %bb.u
  %i.bk = load i64, ptr %i.j, align 8, !range !11, !noalias !9913, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.f, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !9916
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder6updateNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.g, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ab unwind label %bb.v, !noalias !9913

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9913
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i unwind label %bb.s, !noalias !9913

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9913
  %i.bl = load i64, ptr %i.p, align 8, !range !11, !alias.scope !9910, !noalias !9917, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not4.i.i.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !9916
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.aa unwind label %bb.s, !noalias !9917

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.o, ptr noundef nonnull align 16 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !9916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9913
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.o, ptr noundef nonnull align 16 dereferenceable(160) %i.g, i64 160, i1 false), !noalias !9916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9913
  br label %bb.u

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9918
  unreachable

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bn = load i64, ptr %i.p, align 8, !range !11, !alias.scope !9910, !noalias !9917, !noundef !4
  %i.bo = icmp ne i64 %i.bn, -9223372036854775808
  %or.cond.i.i.i = select i1 %i.bo, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.af, label %.body8.i.i

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.o) #51
          to label %bb.ad unwind label %bb.ac, !noalias !9916

bb.af:                                            ; preds = %bb.ad
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #51
          to label %.body8.i.i unwind label %bb.ac, !noalias !9918

bb.ag:                                            ; preds = %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.n, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.01.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !9904
  %.sroa.01.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !9904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.01.i.i, i64 160, i1 false), !noalias !9904
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i, align 16, !noalias !9904
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 664 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 680 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !9919, !noalias !9922, !noundef !4 ; 3 uses
  %i.bs = load i64, ptr %i.bp, align 8, !range !124, !alias.scope !9919, !noalias !9922, !noundef !4
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.ap unwind label %bb.ai, !noalias !9922

bb.ai:                                            ; preds = %bb.ah
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.m) #51
          to label %.body8.i.i unwind label %bb.aj, !noalias !9924

bb.aj:                                            ; preds = %bb.ai
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9924
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.ai, %bb.af, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.ai ], [ %i.bb, %.body.i.i ], [ %.pn.i.i.i, %bb.af ], [ %.pn.i.i.i, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.t) #51
          to label %bb.am unwind label %bb.ak, !noalias !9924

.body.i.i:                                        ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs9_NtCs7p2uQeJxui2_9deltalake5mergeNtBO_14PyMergeBuilder19when_matched_update0EBQ_(ptr noalias noundef align 8 dereferenceable(72) %i.p) #51
          to label %.body8.i.i unwind label %bb.ak, !noalias !9904

bb.ak:                                            ; preds = %.body.i.i, %.body8.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9924
  unreachable

bb.al:                                            ; preds = %bb.n
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #50
          to label %bb.ao unwind label %bb.an, !noalias !9896

bb.am:                                            ; preds = %bb.an, %.body8.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.an ], [ %.pn.i.i, %.body8.i.i ] ; 2 uses
  br i1 %.not.i, label %bb.ar, label %.body

bb.an:                                            ; preds = %bb.aq, %bb.al
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.ah, %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 672
  %i.bz = load ptr, ptr %i.by, align 16, !alias.scope !9919, !noalias !9922, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw [176 x i8], ptr %i.bz, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.ca, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !noalias !9924
  %i.cb = add i64 %i.br, 1
  store i64 %i.cb, ptr %i.bq, align 8, !alias.scope !9919, !noalias !9922
  %.sroa.636.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx1.i, align 16, !alias.scope !9925, !noalias !9926 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cc = icmp eq i64 %.sroa.636.0.copyload.i, 3
  br i1 %i.cc, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !9896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9896
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.r)
          to label %bb.au unwind label %bb.an, !noalias !9896

bb.ar:                                            ; preds = %bb.am
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #51
          to label %bb.at unwind label %bb.as, !noalias !9898

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9927
  unreachable

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body unwind label %bb.as, !noalias !9927

bb.au:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, i64 248, i1 false), !noalias !9892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.015.0.copyload, ptr noundef nonnull align 16 dereferenceable(736) %i.t, i64 736, i1 false), !noalias !9892
  store i64 %.sroa.636.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !9889, !noalias !9892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !9928)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #44, !noalias !9931
  store ptr @_Py_NoneStruct, ptr %i.cf, align 8, !alias.scope !9928, !noalias !9933
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %storemerge.i = phi i64 [ 0, %bb.av ], [ 1, %bb.au ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !9928, !noalias !9933
  %.val24 = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.cg = icmp eq ptr %.val24, null
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ch = getelementptr inbounds nuw i8, ptr %.val24, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.ch), !noalias !9934
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bb

bb.az:                                            ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.d
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %.val = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ck = icmp eq ptr %.val, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.cl), !noalias !9937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder33___pymethod_get_get_arrow_schema__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9940
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !9947
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i.i, !prof !649

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT)
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !range !10, !noalias !9940
  %i.h = trunc nuw i64 %.pre.i.i.i to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.h, label %.noexc14, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !4558

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8, !noalias !9940
  br label %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

.noexc14:                                         ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 14) #50
  unreachable

_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.a
  %i.j = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.k = load ptr, ptr %i.j, align 8, !noalias !9940, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9940
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !9940, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i

_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i: ; preds = %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.n = call noundef i32 @PyType_IsSubtype(ptr noundef %i.m, ptr noundef nonnull %i.k) #44, !noalias !9940
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %.noexc15, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i

.noexc15:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9950
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !9950
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @157, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !9950
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 14, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9950
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9950
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9950
  br label %bb.b

_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i: ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i, %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.q = call noundef zeroext i1 @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.p)
  br i1 %i.q, label %.noexc17, label %bb.c

.noexc17:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXsk_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r)
  br label %bb.b

bb.b:                                             ; preds = %.noexc17, %.noexc15
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0.copyload, ptr %i.t, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB1Y_.exit18

bb.c:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.x = load ptr, ptr %i.w, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !9951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9951
  invoke void @_RNvXs9_NtCs3gECBqE52CY_10pyo3_arrow6schemaNtB5_8PySchemaNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.x)
          to label %.noexc19 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB1Y_.exit

.noexc19:                                         ; preds = %bb.d
  %i.aa = load i64, ptr %i.a, align 8, !range !10, !noalias !9951, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ac, align 8, !noalias !9951
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.noexc19
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, i64 48, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %.noexc19, %bb.e
  %.sink.i = phi i64 [ 1, %bb.e ], [ 0, %.noexc19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9951
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.ad, align 8, !alias.scope !9951
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !9951
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !9954 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB1Y_.exit18

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB1Y_.exit18: ; preds = %bb.b, %bb.g
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB1Y_.exit: ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !9957 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder36___pymethod_when_not_matched_insert__:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.h, ptr noundef nonnull align 16 dereferenceable(160) %i.q, i64 160, i1 false), !noalias !9988
  %i.bx = load i64, ptr %i.h, align 16, !range !76, !alias.scope !10010, !noalias !10015, !noundef !4
  switch i64 %i.bx, label %bb.ai [
    i64 38, label %bb.ao
    i64 37, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.h)
          to label %bb.ao unwind label %bb.am, !noalias !10015

bb.aj:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i7.i.i.i unwind label %bb.ak, !noalias !10015

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body.i.i.i.i unwind label %bb.al, !noalias !10015

bb.al:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10015
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i7.i.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.ao unwind label %bb.am, !noalias !10015

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i7.i.i.i, %bb.ai
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.am, %bb.ak
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cb, %bb.am ], [ %i.bz, %bb.ak ]
  store i64 37, ptr %i.h, align 16, !alias.scope !10018, !noalias !10015
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 24, i1 false), !noalias !9984
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13InsertBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.h) #51
          to label %.body8.i.i.i unwind label %bb.an, !noalias !10015

bb.an:                                            ; preds = %.body.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10015
  unreachable

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i7.i.i.i, %bb.ai, %bb.ah
  store i64 37, ptr %i.h, align 16, !alias.scope !10018, !noalias !10015
  %.sroa.55.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 24, i1 false), !noalias !9984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.q, ptr noundef nonnull align 16 dereferenceable(160) %i.h, i64 160, i1 false), !noalias !9988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9987
  br label %bb.au

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.q, ptr noundef nonnull align 16 dereferenceable(160) %i.i, i64 160, i1 false), !noalias !9988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9987
  br label %bb.u

bb.aq:                                            ; preds = %bb.at, %bb.as, %.body.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10019
  unreachable

bb.ar:                                            ; preds = %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.ce = load i64, ptr %i.r, align 8, !range !11, !alias.scope !9981, !noalias !9984, !noundef !4
  %i.cf = icmp ne i64 %i.ce, -9223372036854775808
  %or.cond.i.i.i = select i1 %i.cf, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.at, label %.body8.i.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13InsertBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.q) #51
          to label %bb.ar unwind label %bb.aq, !noalias !9988

bb.at:                                            ; preds = %bb.ar
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r) #51
          to label %.body8.i.i unwind label %bb.aq, !noalias !10019

bb.au:                                            ; preds = %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.p, ptr noundef nonnull align 16 dereferenceable(160) %i.q, i64 160, i1 false), !noalias !9975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9975
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.01.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !9975
  %.sroa.01.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !9975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.o, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.01.i.i, i64 160, i1 false), !noalias !9975
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  store i8 3, ptr %.sroa.43.0..sroa_idx.i.i, align 16, !noalias !9975
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 688 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 704 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 16, !alias.scope !10020, !noalias !10023, !noundef !4 ; 3 uses
  %i.cj = load i64, ptr %i.cg, align 16, !range !124, !alias.scope !10020, !noalias !10023, !noundef !4
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.bd unwind label %bb.aw, !noalias !10023

bb.aw:                                            ; preds = %bb.av
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.o) #51
          to label %.body8.i.i unwind label %bb.ax, !noalias !10025

bb.ax:                                            ; preds = %bb.aw
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10025
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.aw, %bb.at, %bb.ar
  %.pn.i.i = phi { ptr, i32 } [ %i.cl, %bb.aw ], [ %i.bd, %.body.i.i ], [ %.pn.i.i.i, %bb.at ], [ %.pn.i.i.i, %bb.ar ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.v) #51
          to label %bb.ba unwind label %bb.ay, !noalias !10025

.body.i.i:                                        ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs9_NtCs7p2uQeJxui2_9deltalake5mergeNtBO_14PyMergeBuilder23when_not_matched_insert0EBQ_(ptr noalias noundef align 8 dereferenceable(72) %i.r) #51
          to label %.body8.i.i unwind label %bb.ay, !noalias !9975

bb.ay:                                            ; preds = %.body.i.i, %.body8.i.i
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10025
  unreachable

bb.az:                                            ; preds = %bb.n
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341) #50
          to label %bb.bc unwind label %bb.bb, !noalias !9967

bb.ba:                                            ; preds = %bb.bb, %.body8.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.bb ], [ %.pn.i.i, %.body8.i.i ] ; 2 uses
  br i1 %.not.i, label %bb.bf, label %.body

bb.bb:                                            ; preds = %bb.be, %bb.az
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  unreachable

bb.bd:                                            ; preds = %bb.av, %bb.au
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 696
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !10020, !noalias !10023, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw [176 x i8], ptr %i.cq, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.cr, ptr noundef nonnull align 16 dereferenceable(176) %i.o, i64 176, i1 false), !noalias !10025
  %i.cs = add i64 %i.ci, 1
  store i64 %i.cs, ptr %i.ch, align 16, !alias.scope !10020, !noalias !10023
  %.sroa.636.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx1.i, align 16, !alias.scope !10026, !noalias !10027 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ct = icmp eq i64 %.sroa.636.0.copyload.i, 3
  br i1 %i.ct, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.t, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !9967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9967
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.s, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.t)
          to label %bb.bi unwind label %bb.bb, !noalias !9967

bb.bf:                                            ; preds = %bb.ba
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #51
          to label %bb.bh unwind label %bb.bg, !noalias !9969

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10028
  unreachable

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.body unwind label %bb.bg, !noalias !10028

bb.bi:                                            ; preds = %bb.be
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, i64 248, i1 false), !noalias !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.015.0.copyload, ptr noundef nonnull align 16 dereferenceable(736) %i.v, i64 736, i1 false), !noalias !9963
  store i64 %.sroa.636.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !9960, !noalias !9963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !10029)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #44, !noalias !10032
  store ptr @_Py_NoneStruct, ptr %i.cw, align 8, !alias.scope !10029, !noalias !10034
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %storemerge.i = phi i64 [ 0, %bb.bj ], [ 1, %bb.bi ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10029, !noalias !10034
  %.val24 = load ptr, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.cx = icmp eq ptr %.val24, null
  br i1 %i.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cy = getelementptr inbounds nuw i8, ptr %.val24, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.cy), !noalias !10035
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bp

bb.bn:                                            ; preds = %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.d
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %.val = load ptr, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.db = icmp eq ptr %.val, null
  br i1 %i.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.dc), !noalias !10038
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_delete__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.08.i.i = alloca [144 x i8], align 16     ; 5 uses
  %i.c = alloca [176 x i8], align 16              ; 8 uses
  %i.d = alloca [112 x i8], align 16              ; 5 uses
  %i.e = alloca [112 x i8], align 16              ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 4 uses
  %i.g = alloca [992 x i8], align 16              ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 8 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @358, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.n, i64 noundef 1)
  %i.p = load i64, ptr %i.m, align 8, !range !10, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument23extract_pyclass_ref_mutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEB1g_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef align 8 dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.y, %bb.h, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.z, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn.i.i, %.body.i.i ], [ %i.ay, %bb.z ]
  %.val17 = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.u = icmp eq ptr %.val17, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %.val17, i64 1072
  invoke void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit unwind label %bb.ai

bb.f:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.j, align 8, !range !10, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8 ; 5 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.213.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.010.0.copyload, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = load ptr, ptr %i.n, align 8, !noundef !4
  %.not = icmp eq ptr %i.aa, null
  %. = select i1 %.not, ptr null, ptr %i.n
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %., ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 9, ptr noundef nonnull @_RNvYNCNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtBa_14PyMergeBuilder46___pymethod_when_not_matched_by_source_delete__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ag

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.experimental.noalias.scope.decl(metadata !10041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 736 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !10041, !noalias !10044 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 744 ; 2 uses
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !10041, !noalias !10044
  %.not.i = icmp eq i64 %.sroa.5.0.copyload.i, 3
  br i1 %.not.i, label %bb.v, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %i.g, ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.010.0.copyload, i64 736, i1 false), !noalias !10044
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.g, i64 736 ; 2 uses
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 16, !noalias !10047
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 744 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, i64 248, i1 false), !noalias !10044
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !noalias !10048
  call void @llvm.experimental.noalias.scope.decl(metadata !10049)
  call void @llvm.experimental.noalias.scope.decl(metadata !10052)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10054
  store i64 38, ptr %i.e, align 16, !noalias !10054
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10056
  invoke fastcc void @_RINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13DeleteBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc.i.i unwind label %bb.n, !noalias !10048

.noexc.i.i:                                       ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !10061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10056
  br label %bb.o

.body.i.i:                                        ; preds = %bb.s, %bb.p, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.af, %bb.n ], [ %i.ap, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.g) #51
          to label %.body unwind label %bb.u, !noalias !10062

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.o:                                             ; preds = %.noexc.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !10054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10054
  %i.ag = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @147)
          to label %bb.q unwind label %bb.p, !noalias !10054 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.d) #51
          to label %.body.i.i unwind label %bb.u, !noalias !10054

bb.q:                                             ; preds = %bb.o
  %i.ai = extractvalue { i64, i64 } %i.ag, 0
  %i.aj = extractvalue { i64, i64 } %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.08.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !10054
  %.sroa.08.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.08.112..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @149, i64 32, i1 false), !noalias !10054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.08.i.i, i64 144, i1 false), !noalias !10054
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i64 %i.ai, ptr %.sroa.412.0..sroa_idx.i.i, align 16, !noalias !10054
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 %i.aj, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !10054
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i8 1, ptr %.sroa.614.0..sroa_idx.i.i, align 16, !noalias !10054
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 712 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 728 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !10063, !noalias !10066, !noundef !4 ; 3 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !124, !alias.scope !10063, !noalias !10066, !noundef !4
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.x unwind label %bb.s, !noalias !10066

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.c) #51
          to label %.body.i.i unwind label %bb.t, !noalias !10062

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10062
  unreachable

bb.u:                                             ; preds = %bb.p, %.body.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10062
  unreachable

bb.v:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #50
          to label %bb.w unwind label %bb.z, !noalias !10047

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 720
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !10063, !noalias !10066, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [176 x i8], ptr %i.at, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.au, ptr noundef nonnull align 16 dereferenceable(176) %i.c, i64 176, i1 false), !noalias !10062
  %i.av = add i64 %i.am, 1
  store i64 %i.av, ptr %i.al, align 8, !alias.scope !10063, !noalias !10066
  %.sroa.634.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx1.i, align 16, !alias.scope !10068, !noalias !10069 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10047
  %i.aw = icmp eq i64 %.sroa.634.0.copyload.i, 3
  br i1 %i.aw, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !10047
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ax, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.ab unwind label %bb.d

bb.z:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #51
          to label %.body unwind label %bb.aa, !noalias !10048

bb.aa:                                            ; preds = %bb.z
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10048
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bb, i64 56, i1 false), !alias.scope !10070
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, i64 248, i1 false), !noalias !10044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.010.0.copyload, ptr noundef nonnull align 16 dereferenceable(736) %i.g, i64 736, i1 false), !noalias !10044
  store i64 %.sroa.634.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !10041, !noalias !10044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  call void @llvm.experimental.noalias.scope.decl(metadata !10075)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #44, !noalias !10070
  store ptr @_Py_NoneStruct, ptr %i.bc, align 8, !alias.scope !10074, !noalias !10075
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %storemerge.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ab ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10074, !noalias !10075
  %.val16 = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.bd = icmp eq ptr %.val16, null
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %.val16, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.be), !noalias !10076
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ag:                                            ; preds = %bb.j, %bb.g
  %.val = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp eq ptr %.val, null
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.bg), !noalias !10079
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit20: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.ai:                                            ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [160 x i8], align 16              ; 4 uses
  %i.e = alloca [160 x i8], align 16              ; 4 uses
  %i.f = alloca [160 x i8], align 16              ; 4 uses
  %i.g = alloca [160 x i8], align 16              ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.01.i.i = alloca [160 x i8], align 16     ; 5 uses
  %i.m = alloca [176 x i8], align 16              ; 6 uses
  %i.n = alloca [160 x i8], align 16              ; 5 uses
  %.sroa.0.i.i = alloca [144 x i8], align 16      ; 5 uses
  %i.o = alloca [160 x i8], align 16              ; 11 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  %i.q = alloca [56 x i8], align 8                ; 4 uses
  %i.r = alloca [96 x i8], align 16               ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [992 x i8], align 16              ; 12 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.510 = alloca [56 x i8], align 8          ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.56 = alloca [56 x i8], align 8           ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [64 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 8 uses
  %i.aa = alloca [64 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @360, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.ab, i64 noundef 2)
  %i.ad = load i64, ptr %i.aa, align 8, !range !10, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 1, ptr %0, align 8
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr null, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument23extract_pyclass_ref_mutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEB1g_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef align 8 dereferenceable(8) %i.z)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.az, %bb.at, %bb.am, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %eh.lpad-body.i, %bb.at ], [ %eh.lpad-body.i, %bb.am ], [ %i.ci, %bb.az ]
  %.val25 = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ah = icmp eq ptr %.val25, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 1072
  invoke void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit unwind label %bb.ba

bb.e:                                             ; preds = %bb.m, %bb.h, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.y, align 8, !range !10, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.015.0.copyload = load ptr, ptr %i.am, align 8 ; 5 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.516.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.0.copyload, ptr %i.an, align 8
  store i64 1, ptr %0, align 8
  br label %bb.bb

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB20_EKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 7)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.w, align 8, !range !10, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !noundef !4
  %.not21 = icmp eq ptr %i.at, null
  %.23 = select i1 %.not21, ptr null, ptr %i.as
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.23, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 9, ptr noundef nonnull @_RNvYNCNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtBa_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.l unwind label %bb.az

bb.l:                                             ; preds = %bb.k
  %i.au = load i64, ptr %i.v, align 8, !range !10, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.n:                                             ; preds = %bb.l
end_hunk_2
begin_hunk_3_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !10106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10106
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.w unwind label %bb.v, !noalias !10106

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.0.3.i.i.i = phi i8 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac, !noalias !10106

bb.w:                                             ; preds = %bb.u
  %i.bk = load i64, ptr %i.j, align 8, !range !11, !noalias !10106, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.f, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !10109
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder6updateNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.g, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ab unwind label %bb.v, !noalias !10106

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10106
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i unwind label %bb.s, !noalias !10106

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10106
  %i.bl = load i64, ptr %i.p, align 8, !range !11, !alias.scope !10103, !noalias !10110, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not4.i.i.i, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.d, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !10109
  invoke fastcc void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB6_13UpdateBuilder9predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.aa unwind label %bb.s, !noalias !10110

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.o, ptr noundef nonnull align 16 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10106
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.o, ptr noundef nonnull align 16 dereferenceable(160) %i.g, i64 160, i1 false), !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10106
  br label %bb.u

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10111
  unreachable

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bn = load i64, ptr %i.p, align 8, !range !11, !alias.scope !10103, !noalias !10110, !noundef !4
  %i.bo = icmp ne i64 %i.bn, -9223372036854775808
  %or.cond.i.i.i = select i1 %i.bo, i1 %.sroa.02.0.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.af, label %.body8.i.i

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.o) #51
          to label %bb.ad unwind label %bb.ac, !noalias !10109

bb.af:                                            ; preds = %bb.ad
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #51
          to label %.body8.i.i unwind label %bb.ac, !noalias !10111

bb.ag:                                            ; preds = %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit6.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.n, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.01.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !10097
  %.sroa.01.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !10097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.01.i.i, i64 160, i1 false), !noalias !10097
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i, align 16, !noalias !10097
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 712 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 728 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !10112, !noalias !10115, !noundef !4 ; 3 uses
  %i.bs = load i64, ptr %i.bp, align 8, !range !124, !alias.scope !10112, !noalias !10115, !noundef !4
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.ap unwind label %bb.ai, !noalias !10115

bb.ai:                                            ; preds = %bb.ah
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(176) %i.m) #51
          to label %.body8.i.i unwind label %bb.aj, !noalias !10117

bb.aj:                                            ; preds = %bb.ai
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10117
  unreachable

.body8.i.i:                                       ; preds = %.body.i.i, %bb.ai, %bb.af, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.ai ], [ %i.bb, %.body.i.i ], [ %.pn.i.i.i, %bb.af ], [ %.pn.i.i.i, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge12MergeBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(992) %i.t) #51
          to label %bb.am unwind label %bb.ak, !noalias !10117

.body.i.i:                                        ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs9_NtCs7p2uQeJxui2_9deltalake5mergeNtBO_14PyMergeBuilder33when_not_matched_by_source_update0EBQ_(ptr noalias noundef align 8 dereferenceable(72) %i.p) #51
          to label %.body8.i.i unwind label %bb.ak, !noalias !10097

bb.ak:                                            ; preds = %.body.i.i, %.body8.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10117
  unreachable

bb.al:                                            ; preds = %bb.n
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #50
          to label %bb.ao unwind label %bb.an, !noalias !10089

bb.am:                                            ; preds = %bb.an, %.body8.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.an ], [ %.pn.i.i, %.body8.i.i ] ; 2 uses
  br i1 %.not.i, label %bb.ar, label %.body

bb.an:                                            ; preds = %bb.aq, %bb.al
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.ah, %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 720
  %i.bz = load ptr, ptr %i.by, align 16, !alias.scope !10112, !noalias !10115, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw [176 x i8], ptr %i.bz, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.ca, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !noalias !10117
  %i.cb = add i64 %i.br, 1
  store i64 %i.cb, ptr %i.bq, align 8, !alias.scope !10112, !noalias !10115
  %.sroa.636.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx1.i, align 16, !alias.scope !10118, !noalias !10119 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cc = icmp eq i64 %.sroa.636.0.copyload.i, 3
  br i1 %i.cc, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !10089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10089
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.r)
          to label %bb.au unwind label %bb.an, !noalias !10089

bb.ar:                                            ; preds = %bb.am
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #51
          to label %bb.at unwind label %bb.as, !noalias !10091

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10120
  unreachable

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body unwind label %bb.as, !noalias !10120

bb.au:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.0..sroa_idx3.i, i64 248, i1 false), !noalias !10085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %.sroa.015.0.copyload, ptr noundef nonnull align 16 dereferenceable(736) %i.t, i64 736, i1 false), !noalias !10085
  store i64 %.sroa.636.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !10082, !noalias !10085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !10121)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #44, !noalias !10124
  store ptr @_Py_NoneStruct, ptr %i.cf, align 8, !alias.scope !10121, !noalias !10126
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %storemerge.i = phi i64 [ 0, %bb.av ], [ 1, %bb.au ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10121, !noalias !10126
  %.val24 = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.cg = icmp eq ptr %.val24, null
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ch = getelementptr inbounds nuw i8, ptr %.val24, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.ch), !noalias !10127
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bb

bb.az:                                            ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.d
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %.val = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ck = icmp eq ptr %.val, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.cl), !noalias !10130
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5queryNtB5_14PyQueryBuilder20___pymethod_execute__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [64 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @366, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.n, i64 noundef 1)
  %i.o = load i64, ptr %i.m, align 8, !range !10, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10133
  %i.s = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !10140
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i, !prof !649

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.c
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noundef nonnull align 8 @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT)
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !range !10, !noalias !10133
  %i.u = trunc nuw i64 %.pre.i.i.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.u, label %.noexc35, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !4558

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.v, align 8, !noalias !10133
  br label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

.noexc35:                                         ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 14) #50
  unreachable

_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.c
  %i.w = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.c ]
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10133, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10133
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !10133, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i: ; preds = %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.aa = call noundef i32 @PyType_IsSubtype(ptr noundef %i.z, ptr noundef nonnull %i.x) #44, !noalias !10133
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.noexc36, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i

.noexc36:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10143
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !10143
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @158, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !10143
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 14, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10143
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !10143
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10143
  br label %.thread

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i: ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i, %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = call noundef zeroext i1 @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.ac)
  br i1 %i.ad, label %.noexc38, label %bb.d

.noexc38:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXsk_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae)
  br label %.thread

.thread:                                          ; preds = %.noexc36, %.noexc38
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.018.0.copyload = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.018.0.copyload, ptr %i.ag, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.221.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

bb.d:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentReKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 3)
          to label %bb.e unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.k, align 8, !range !10, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.025.0.copyload = load ptr, ptr %i.al, align 8 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10147
  store ptr %i.ah, ptr %i.d, align 8, !noalias !10147
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.025.0.copyload, ptr %i.am, align 8, !noalias !10147
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.526.0.copyload, ptr %i.an, align 8, !noalias !10147
  invoke void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIBS_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBW_6marker4SendEL_EENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMs9_NtB5U_5queryNtB6K_14PyQueryBuilder7execute0EB5U_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %.noexc42 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

.noexc42:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10147
  %i.ao = load i64, ptr %i.e, align 16, !range !5745, !noalias !10147, !noundef !4 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10398
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.m, !noalias !10401, !inline_history !10402

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #51
          to label %bb.j unwind label %bb.n, !noalias !10401, !inline_history !10402

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10401, !inline_history !10402
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %.pn.i.i, %bb.j ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 64, i64 noundef 8) #44, !noalias !10388
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !86, !alias.scope !10403, !noalias !10401, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !10404
  %.sroa.08.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !10404
  %.sroa.08.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !10404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08, i64 56, i1 false), !noalias !10405
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i8 %i.ad, ptr %.sroa.69.0..sroa_idx, align 8, !noalias !10405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ae, align 8
  store i8 3, ptr %0, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.af, align 8
  %i.ag = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr %.val) #57
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i8 4, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1L_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1247, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10406, !inline_history !10409 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !10406, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noundef %i.f)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.e, !noalias !10406, !inline_history !10409

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.e
  %.sink = phi ptr [ %i.s, %bb.i ], [ %i.k, %bb.g ], [ %i.f, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.m, %bb.g ], [ %i.h, %bb.e ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 56, i64 noundef 8) #44, !noalias !4
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  store i64 3, ptr %0, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10410)
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10410, !inline_history !10409 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !10410, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noundef %i.k)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit2 unwind label %bb.g, !noalias !10410, !inline_history !10409

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit2: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.p, align 8
  store i64 %i.a, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10413)
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10413, !inline_history !10409 ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8, !alias.scope !10413, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noundef %i.s)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit4 unwind label %bb.i, !noalias !10413, !inline_history !10409

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit4: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.v, align 8
  store i64 5, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit4, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit2, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.0.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.b = alloca [2696 x i8], align 8              ; 4 uses
  %i.c = alloca [1400 x i8], align 8              ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %1, align 8, !range !3239, !noundef !4
  switch i8 %i.f, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10416)
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10416, !inline_history !10419 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !10416, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.i, ptr noundef %i.h)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.c, !noalias !10416, !inline_history !10419

common.resume:                                    ; preds = %bb.w, %bb.u, %bb.g, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.o, %bb.e ], [ %i.v, %bb.g ], [ %eh.lpad-body.i, %bb.u ], [ %i.au, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 2432, i64 noundef 8) #44, !noalias !10416
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8
  store i8 0, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  %i.m = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10420, !inline_history !10423 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !10420, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10424
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.n) #57
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.e, !noalias !10420, !inline_history !10427

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 1400, i64 noundef 8) #44, !noalias !10420, !inline_history !10423
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !noalias !10424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10424
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.q, align 2, !range !163, !noundef !4
  %.val1 = load i8, ptr %i.r, align 1, !range !188, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10428)
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10428, !inline_history !10431 ; 4 uses
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !10428, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10432
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.u) #57
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.g, !noalias !10428, !inline_history !10435

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 2696, i64 noundef 8) #44, !noalias !10428, !inline_history !10431
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.t, ptr noundef nonnull align 8 dereferenceable(2696) %i.b, i64 2696, i1 false), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10432
  store ptr %i.t, ptr %i.e, align 8
  %i.x = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10439)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !86, !alias.scope !10439, !noalias !10436, !noundef !4
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.aa, ptr %i.ab, align 8, !alias.scope !10436, !noalias !10439
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ad) #57
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.af) #57
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ah) #57
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aj) #57
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.al, align 8           ; 4 uses
  %i.am = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10441)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10444)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !10447
  %i.an = load i64, ptr %.val2, align 8, !range !11, !alias.scope !10449, !noalias !10450, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %.sroa.0.i.i, align 8, !noalias !10447
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !10449, !noalias !10450, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10447
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.r unwind label %bb.q, !noalias !10450

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i) #51
          to label %bb.u unwind label %bb.s, !noalias !10450

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !10447
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !10441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10447
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10450
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.aq, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 48, i64 noundef 8) #44
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !10441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !10447
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10441
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !10441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.at, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.e) #51
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.ay, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10451, !noalias !10454, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10454, !noalias !10451, !noundef !4
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !10454, !noalias !10451, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !10451, !noalias !10454, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !10456, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !10456, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !10456
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10460)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10457, !noalias !10460, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10460, !noalias !10457, !nonnull !4, !noundef !4 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10465)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10462, !noalias !10467, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10465, !noalias !10468, !noundef !4
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !10465, !noalias !10468, !nonnull !4, !noundef !4
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !10462, !noalias !10467, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !10469, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10469, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !10469
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !10470
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10457, !noalias !10460, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10460, !noalias !10457, !noundef !4
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10460, !noalias !10457, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10457, !noalias !10460, !nonnull !4, !noundef !4
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !10470
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !10457, !noalias !10460, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !10460, !noalias !10457, !noundef !4
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10460, !noalias !10457, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10457, !noalias !10460, !nonnull !4, !noundef !4
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !10470
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1R_NtCs4tdlwR1I4n2_7parquet5basicNtB6_11LogicalTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10471, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775807
  %i.d = icmp ugt i64 %i.a, -9223372036854775808
  %i.e = select i1 %i.d, i64 %i.c, i64 16         ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !10471, !noundef !4 ; 4 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775791
  tail call void @llvm.assume(i1 %i.g)
end_hunk_4
begin_hunk_5_@_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session17table_options_mut
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session17table_options_mut(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(1680) %0) unnamed_addr #2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session19aggregate_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1680) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @671, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session6config(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1680) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1416
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13328
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13331

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !13328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13328
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 328, i64 noundef 8) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2688 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13332
  invoke fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13335

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.b, ptr noundef nonnull align 8 dereferenceable(2688) %i.a, i64 2688, i1 false), !noalias !13332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13332
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 2688, i64 noundef 8) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13336
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13339

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !13336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13336
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13340
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.0.val)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13340
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.d unwind label %bb.c, !noalias !13346

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %bb.i unwind label %bb.f, !noalias !13346

bb.c:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13340
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.h unwind label %bb.e, !noalias !13346

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.b) #51
          to label %bb.b unwind label %bb.f, !noalias !13346

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !13346
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !13347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13347
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !13347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.e

bb.i:                                             ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn.i.i, %bb.b ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 144, i64 noundef 8) #44
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13349
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13352

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !13349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13349
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [328 x i8], align 8               ; 4 uses
  %i.e = alloca [328 x i8], align 8               ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.g = alloca [424 x i8], align 8               ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.01 = alloca [336 x i8], align 8          ; 9 uses
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13353)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  %.val.i = load i8, ptr %i.k, align 1, !range !86, !alias.scope !13353, !noalias !13356, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1145
  %i.m = load i8, ptr %i.l, align 1, !range !147, !alias.scope !13353, !noalias !13356, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01), !noalias !13358
  %i.n = load i64, ptr %i.j, align 8, !range !347, !alias.scope !13353, !noalias !13356, !noundef !4
  %.not5.i = icmp eq i64 %i.n, 69
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13359)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.p = load i8, ptr %i.o, align 8, !range !86, !alias.scope !13362, !noalias !13363, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13365
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.j) #57
          to label %.noexc unwind label %bb.z, !inline_history !13366

.noexc:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 329
  %i.r = load i8, ptr %i.q, align 1, !range !239, !alias.scope !13362, !noalias !13363, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(328) %i.d, i64 328, i1 false), !noalias !13358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13365
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 328
  store i8 %i.p, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !13358
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 329
  store i8 %i.r, ptr %.sroa.54.0..sroa_idx, align 1, !noalias !13358
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 69, ptr %.sroa.01, align 8, !noalias !13358
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13358
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1088 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !1050, !alias.scope !13353, !noalias !13356, !noundef !4
  %.not6.i = icmp eq i64 %i.t, -9223372036854775787
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13370)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1136
  %i.v = load i8, ptr %i.u, align 8, !range !86, !alias.scope !13372, !noalias !13373, !noundef !4
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s) #57
          to label %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.i, !noalias !13356, !inline_history !13366

_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.v, ptr %i.w, align 8, !alias.scope !13367, !noalias !13374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !13358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13358
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775787, ptr %i.h, align 8, !noalias !13358
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13358
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 664 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !range !127, !alias.scope !13353, !noalias !13356, !noundef !4
  %.not7.i = icmp eq i64 %i.y, 70
  br i1 %.not7.i, label %bb.r, label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.body.i, %bb.t, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.i ] ; 2 uses
  %i.z = load i64, ptr %.sroa.01, align 8, !range !347, !alias.scope !13375, !noalias !13358, !noundef !4
  %i.aa = icmp eq i64 %i.z, 69
  br i1 %i.aa, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(336) %.sroa.01)
          to label %bb.ab unwind label %bb.y, !noalias !13356, !inline_history !13378

bb.i:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13382
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac) #57
          to label %.noexc14.i unwind label %bb.u, !noalias !13356, !inline_history !13384

.noexc14.i:                                       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13382
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1040
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.m unwind label %bb.l, !noalias !13385, !inline_history !13384

bb.k:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %i.ae, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.c) #51
          to label %.body.i unwind label %bb.q, !noalias !13385, !inline_history !13384

bb.l:                                             ; preds = %.noexc14.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %.noexc14.i
  %i.af = load i64, ptr %i.x, align 8, !range !347, !alias.scope !13386, !noalias !13385, !noundef !4
  %.not.i12.i = icmp eq i64 %i.af, 69
  br i1 %.not.i12.i, label %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13382
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.x)
          to label %bb.p unwind label %bb.o, !noalias !13385, !inline_history !13384

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.b) #51
          to label %bb.k unwind label %bb.q, !noalias !13385, !inline_history !13384

bb.p:                                             ; preds = %bb.n
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !13382
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13382
  br label %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.o, %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !13385, !inline_history !13384
  unreachable

_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.p, %bb.m
  %.sroa.0.0.i13.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.p ], [ 69, %bb.m ]
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !13358
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !13358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13382
  store i64 %.sroa.0.0.i13.i, ptr %i.g, align 8, !noalias !13358
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, i64 320, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  store i64 70, ptr %i.g, align 8, !noalias !13358
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 336 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !347, !alias.scope !13353, !noalias !13356, !noundef !4
  %.not8.i = icmp eq i64 %i.aj, 69
  br i1 %.not8.i, label %bb.aa, label %bb.v

.body.i:                                          ; preds = %bb.u, %bb.k, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.am, %bb.u ], [ %.pn.i.i, %bb.k ] ; 2 uses
  %i.ak = load i64, ptr %i.h, align 8, !range !1050, !alias.scope !13387, !noalias !13358, !noundef !4
  %i.al = icmp eq i64 %i.ak, -9223372036854775787
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.t

bb.t:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.y, !noalias !13356, !inline_history !13366

bb.u:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13358
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai)
          to label %bb.x unwind label %bb.w, !noalias !13356, !inline_history !13366

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17TableSampleBucketEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(424) %i.g) #51
          to label %.body.i unwind label %bb.y, !noalias !13356, !inline_history !13366

bb.x:                                             ; preds = %bb.v
  %.sroa.01.0.copyload2.i = load i64, ptr %i.e, align 8, !noalias !13358
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13358
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !13356, !inline_history !13366
  unreachable

bb.z:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s, %bb.x
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.x ], [ 69, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.i, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.01, i64 336, i1 false), !noalias !4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(424) %i.g, i64 424, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01), !noalias !13358
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  store i64 %.sroa.01.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13390
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1144
  store i8 %.val.i, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13390
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1145
  store i8 %i.m, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !13390
  ret ptr %i.i

bb.ab:                                            ; preds = %bb.z, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.pn.pn.i, %bb.h ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 1152, i64 noundef 8) #44
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13393
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13396

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.b, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !noalias !13393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13393
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1400, i64 noundef 8) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2696 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13397
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13400

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.b, ptr noundef nonnull align 8 dereferenceable(2696) %i.a, i64 2696, i1 false), !noalias !13397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13397
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 2696, i64 noundef 8) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13401
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c) #57
          to label %bb.b unwind label %bb.c, !inline_history !13404

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !13401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13401
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #44
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_11ConstraintsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @673, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @425, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @672)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsd_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !1161, !noundef !4 ; 68 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.d
    i64 4, label %bb.d
    i64 5, label %bb.d
    i64 6, label %bb.d
    i64 7, label %bb.d
    i64 8, label %bb.d
    i64 9, label %bb.d
    i64 10, label %bb.d
    i64 11, label %bb.d
    i64 12, label %bb.d
    i64 13, label %bb.d
    i64 14, label %bb.d
    i64 15, label %bb.d
    i64 16, label %bb.d
    i64 17, label %bb.d
    i64 18, label %bb.d
    i64 19, label %bb.d
    i64 20, label %bb.d
    i64 21, label %bb.d
    i64 22, label %bb.d
    i64 23, label %bb.b
    i64 24, label %bb.d
    i64 25, label %bb.d
    i64 26, label %bb.d
    i64 27, label %bb.d
    i64 28, label %bb.d
    i64 29, label %bb.d
    i64 30, label %bb.d
    i64 31, label %bb.d
    i64 32, label %bb.d
    i64 33, label %bb.d
    i64 34, label %bb.d
    i64 35, label %bb.d
    i64 36, label %bb.d
    i64 37, label %bb.d
    i64 38, label %bb.d
    i64 39, label %bb.d
    i64 40, label %bb.d
    i64 41, label %bb.d
    i64 42, label %bb.d
    i64 43, label %bb.d
    i64 44, label %bb.d
    i64 45, label %bb.d
    i64 46, label %bb.d
    i64 47, label %bb.d
    i64 48, label %bb.d
    i64 49, label %bb.d
    i64 50, label %bb.c
    i64 51, label %bb.d
    i64 52, label %bb.d
    i64 53, label %bb.d
    i64 54, label %bb.d
    i64 55, label %bb.d
    i64 56, label %bb.d
    i64 57, label %bb.d
    i64 58, label %bb.d
    i64 59, label %bb.d
    i64 60, label %bb.d
    i64 61, label %bb.d
    i64 62, label %bb.d
    i64 63, label %bb.d
    i64 64, label %bb.d
    i64 65, label %bb.d
    i64 66, label %bb.d
    i64 67, label %bb.d
    i64 68, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.sink = phi i64 [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ 50, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ 23, %bb.b ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsbvkFyIu7lgC_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsgbCypRs12E4_4pyo36pycell5impl_INtB5_13PyClassObjectNtCs7p2uQeJxui2_9deltalake13PyTransactionEINtB5_19PyClassObjectLayoutB10_E10tp_deallocB12_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake13PyTransactionEBI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_5
