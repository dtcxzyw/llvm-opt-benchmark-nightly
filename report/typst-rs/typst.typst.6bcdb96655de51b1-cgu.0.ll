Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs9fPPV5zPXBl_5typst:bb.a
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52198)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52203)
  store i64 0, ptr %i.b, align 8, !alias.scope !52206, !noalias !52208
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !52206, !noalias !52208
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !52209, !noalias !52198
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !52210

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !52201
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !52211, !noalias !52216, !noundef !8 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !52211, !noalias !52216 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !52219, !noalias !52201 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !52198, !noalias !52210, !nonnull !8
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !52198, !noalias !52210 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52221)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !52198
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !52201
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !52198
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !52198, !noalias !52210
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52221)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !52201
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.n
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.s = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.f, !noalias !52201

bb.e:                                             ; preds = %.lr.ph7
  %i.t = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.n
  br i1 %i.u, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.n
  br i1 %i.w, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.x) #62
          to label %bb.e unwind label %bb.g, !noalias !52201

bb.g:                                             ; preds = %.lr.ph7
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !52222
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !52201
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #62
          to label %.body unwind label %bb.h, !noalias !52201

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs9fPPV5zPXBl_5typst(ptr nonnull %.val, i64 %.val3) #62
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52201
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.ac = load i64, ptr %i.d, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %bb.c, label %bb.d

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.loopexit9.i.i, %bb.g, %.lr.ph.split.us.i.i, %bb.w, %bb.d, %bb.a, %bb.y, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %.sroa.014.5.i, %bb.w ], [ 1, %bb.a ], [ %i.u, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit ], [ %i.ea, %bb.y ], [ 0, %bb.g ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.loopexit9.i.i ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, %3
  br i1 %i.h, label %bb.y, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %1, 33
  br i1 %i.i, label %bb.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %.val = load i8, ptr %0, align 1, !noundef !8   ; 2 uses
  %i.j = icmp samesign ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit9.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.5.0.i.i = phi i64 [ %i.m, %bb.g ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ]
  %i.o = icmp ult i64 %.sroa.5.0.i.i, %3
  tail call void @llvm.assume(i1 %i.o)
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.sroa.04.011.i.i = phi i64 [ %i.s, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.04.011.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !52237, !noundef !8
  %i.r = icmp eq i8 %i.q, %.val
  br i1 %i.r, label %.loopexit9.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i64 %.sroa.04.011.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %3
  br i1 %exitcond.not.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit: ; preds = %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #60
  %i.t = load i64, ptr %i.c, align 8, !range !47, !noundef !8
  %i.u = trunc nuw nsw i64 %i.t to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52245)
  %i.v = load i8, ptr %0, align 1, !alias.scope !52242, !noalias !52245, !noundef !8 ; 3 uses
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %1, 2
  br i1 %i.x, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %4 = icmp ult i64 %i.y, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i
  %i.z = icmp ult i64 %i.y, %i.ab
  br i1 %i.z, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.aa = phi i64 [ %i.ab, %bb.k ], [ %1, %bb.j ]
  %i.ab = add nsw i64 %i.aa, -1                   ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #65, !noalias !52247
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !52242, !noalias !52255, !noundef !8 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ae, %i.v
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9fPPV5zPXBl_5typst.exit.i.i
  %i.af = add nuw nsw i64 %1, 15
  %i.ag = icmp ult i64 %3, %i.af
  br i1 %i.ag, label %.lr.ph.split.us.i.i, label %bb.n

.thread.i:                                        ; preds = %bb.i
  %i.ah = icmp ult i64 %3, 17
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i
  %i.ai = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !52242, !noalias !52245
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

.lr.ph.split.us.i.i:                              ; preds = %bb.m, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !52256, !noalias !52257
  %i.am = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.am, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.an, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !52256, !noalias !52257
  %i.ao = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ao, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9fPPV5zPXBl_5typst.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.an, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.ap, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.ap = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ap
  br i1 %.not27.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.o:                                             ; preds = %bb.n, %.thread92.i
  %i.aq = phi i8 [ %.pre.i, %.thread92.i ], [ %i.ae, %bb.n ]
  %i.ar = phi <16 x i8> [ %i.aj, %.thread92.i ], [ %i.al, %bb.n ] ; 6 uses
  %storemerge9194.i = phi i64 [ 1, %.thread92.i ], [ %i.ab, %bb.n ] ; 6 uses
  %i.as = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52256
  store ptr %2, ptr %i.a, align 8, !noalias !52256
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.av, align 8, !noalias !52256
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.au, ptr %i.aw, align 8, !noalias !52256
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.w, ptr %i.ax, align 8, !noalias !52256
  %i.ay = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ay, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %bb.o
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i, %bb.s ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.cu, %bb.s ] ; 2 uses
  %i.az = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ba = add i64 %.sroa.06.0.lcssa.i, %i.az
  %i.bb = icmp uge i64 %i.ba, %3
  %i.bc = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond3104.i, label %._crit_edge.i, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i = phi i64 [ %i.cu, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !52245, !noalias !52261
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !52245, !noalias !52261
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ar
  %i.bg = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.at
  %i.bh = and <16 x i1> %i.bf, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bj, align 1, !alias.scope !52245, !noalias !52261
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !52245, !noalias !52261
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ar
  %i.bm = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.at
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bp, align 1, !alias.scope !52245, !noalias !52261
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !52245, !noalias !52261
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ar
  %i.bs = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.at
  %i.bt = and <16 x i1> %i.br, %i.bs
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !52245, !noalias !52261
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !52245, !noalias !52261
  %i.bx = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ar
  %i.by = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.at
  %i.bz = and <16 x i1> %i.bx, %i.by
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %i.cb = icmp eq i16 %i.bi, 0
  br i1 %i.cb, label %.preheader95.1.i, label %bb.t

.preheader95.1.i:                                 ; preds = %bb.t, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cz, %bb.t ] ; 3 uses
  %i.cc = icmp eq i16 %i.bo, 0
  br i1 %i.cc, label %.preheader95.2.i, label %bb.p

bb.p:                                             ; preds = %.preheader95.1.i
  %i.cd = or disjoint i64 %.sroa.06.0102.i, 16
  %i.ce = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cf = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cd, i16 noundef %i.bo, i1 noundef zeroext %i.ce) #60
  %i.cg = zext i1 %i.cf to i8
  %i.ch = or i8 %.sroa.014.2.i, %i.cg
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.p, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.ch, %bb.p ] ; 3 uses
  %i.ci = icmp eq i16 %i.bu, 0
  br i1 %i.ci, label %.preheader95.3.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.2.i
  %i.cj = or disjoint i64 %.sroa.06.0102.i, 32
  %i.ck = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cl = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cj, i16 noundef %i.bu, i1 noundef zeroext %i.ck) #60
  %i.cm = zext i1 %i.cl to i8
  %i.cn = or i8 %.sroa.014.2.1.i, %i.cm
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.q, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.cn, %bb.q ] ; 3 uses
  %i.co = icmp eq i16 %i.ca, 0
  br i1 %i.co, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader95.3.i
  %i.cp = or disjoint i64 %.sroa.06.0102.i, 48
  %i.cq = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cr = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cp, i16 noundef %i.ca, i1 noundef zeroext %i.cq) #60
  %i.cs = zext i1 %i.cr to i8
  %i.ct = or i8 %.sroa.014.2.2.i, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.ct, %bb.r ] ; 2 uses
  %i.cu = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.cv = add i64 %i.cu, %i.ay
  %i.cw = icmp uge i64 %i.cv, %3
  %i.cx = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.bi, i1 noundef zeroext false) #60
  %i.cz = zext i1 %i.cy to i8
  br label %.preheader95.1.i

._crit_edge.i:                                    ; preds = %bb.u, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.u ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bc, %.preheader.i ], [ %i.dt, %bb.u ]
  %i.da = sub nuw i64 %3, %i.w
  %i.db = add i64 %i.da, -16                      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.dc, align 1, !alias.scope !52245, !noalias !52264
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.dd, align 1, !alias.scope !52245, !noalias !52264
  %i.de = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ar
  %i.df = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.at
  %i.dg = and <16 x i1> %i.de, %i.df
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.w, label %bb.x

.lr.ph106.i:                                      ; preds = %.preheader.i, %bb.u
  %.sroa.06.1105.i = phi i64 [ %i.dq, %bb.u ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !52245, !noalias !52267
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %storemerge9194.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !52245, !noalias !52267
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ar
  %i.dm = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.at
  %i.dn = and <16 x i1> %i.dl, %i.dm
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %i.dp = icmp eq i16 %i.do, 0
  br i1 %i.dp, label %bb.u, label %bb.v
end_hunk_0
