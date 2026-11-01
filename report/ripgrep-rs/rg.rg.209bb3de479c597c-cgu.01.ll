Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.01?download=true
inline.NumInlined: 1394
inline.NumDeleted: 608
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc0anycpf6TS_6ignore5types9SelectionNtBI_11FileTypeDefEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg:bb.a
  %.sroa.515.i = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.716.i = alloca [48 x i8], align 8        ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14471
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14472
  %i.i = load ptr, ptr %i.h, align 8, !dbg !14472, !nonnull !640, !noundef !640 ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !dbg !14473, !noundef !640 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14459), !dbg !14474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14475, !noalias !14461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14476, !noalias !14461
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 115292150460684698) %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80), !dbg !14476, !noalias !14461
  %i.k = load i64, ptr %i.e, align 8, !dbg !14476, !range !756, !noalias !14461, !noundef !640
  %i.l = trunc nuw i64 %i.k to i1, !dbg !14477
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14478
  %i.n = load i64, ptr %i.m, align 8, !dbg !14478, !range !800, !noalias !14461, !noundef !640 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14478 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, !dbg !14477, !prof !655

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !dbg !14479, !noalias !14461
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27, !dbg !14480, !noalias !14461
  unreachable, !dbg !14480

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !dbg !14481, !noalias !14461, !nonnull !640, !noundef !640 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n, !dbg !14482
  tail call void @llvm.assume(i1 %i.r), !dbg !14483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14484, !noalias !14461
  store i64 %i.n, ptr %i.f, align 8, !dbg !14485, !noalias !14461
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14485
  store ptr %i.q, ptr %i.s, align 8, !dbg !14485, !noalias !14461
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14485 ; 2 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.j, !dbg !14486
  %i.v = icmp eq i64 %i.n, 0, !dbg !14487
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsc0anycpf6TS_6ignore5types9SelectionNtBN_11FileTypeDefENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i, !dbg !14487

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.013.039.i = phi ptr [ %i.y, %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i ], [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ] ; 5 uses
  %.sroa.7.038.i = phi i64 [ %i.z, %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ] ; 3 uses
  %.sroa.10.037.i = phi i64 [ %i.w, %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i ], [ %i.n, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ]
  %i.w = add i64 %.sroa.10.037.i, -1, !dbg !14488 ; 2 uses
  %i.x = icmp eq ptr %.sroa.013.039.i, %i.u, !dbg !14489
  br i1 %i.x, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsc0anycpf6TS_6ignore5types9SelectionNtBN_11FileTypeDefENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !14490

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i, i64 80, !dbg !14491
  %i.z = add nuw nsw i64 %.sroa.7.038.i, 1, !dbg !14492
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i), !dbg !14493
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i), !dbg !14493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14463), !dbg !14494
  %i.aa = load i64, ptr %.sroa.013.039.i, align 8, !dbg !14495, !range !756, !alias.scope !14464, !noundef !640
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !14495
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i, i64 8, !dbg !14496 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i, i64 32, !dbg !14496 ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e, !dbg !14495

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14497, !noalias !14466
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !14497, !noalias !14467

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14498, !noalias !14466
  invoke fastcc void @_RNvXs7_NtCsc0anycpf6TS_6ignore5typesNtB5_11FileTypeDefNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.j unwind label %bb.i, !dbg !14498, !noalias !14468

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14499, !noalias !14466
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc12.i unwind label %.loopexit.i, !dbg !14499, !noalias !14467

.noexc12.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14500, !noalias !14466
  invoke fastcc void @_RNvXs7_NtCsc0anycpf6TS_6ignore5typesNtB5_11FileTypeDefNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.g unwind label %bb.f, !dbg !14500, !noalias !14468

bb.f:                                             ; preds = %.noexc12.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.h, !dbg !14501, !noalias !14468

bb.g:                                             ; preds = %.noexc12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !14502, !noalias !14469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.716.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !14502, !noalias !14469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14503, !noalias !14466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14503, !noalias !14466
  br label %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i, !dbg !14504

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !14495, !noalias !14468
  unreachable, !dbg !14495

bb.i:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.h, !dbg !14505, !noalias !14468

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !14506, !noalias !14469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.716.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !14506, !noalias !14469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14507, !noalias !14466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14507, !noalias !14466
  br label %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i, !dbg !14504

_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.j, %bb.g
  %.sroa.014.0.i = phi i64 [ 1, %bb.j ], [ 0, %bb.g ], !dbg !14495
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %.sroa.7.038.i, !dbg !14508 ; 3 uses
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !14509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.i, i64 24, i1 false), !dbg !14510, !noalias !14467
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !14509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.525.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.716.i, i64 48, i1 false), !dbg !14510, !noalias !14467
  store i64 %.sroa.014.0.i, ptr %i.ah, align 8, !dbg !14509, !noalias !14467
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i), !dbg !14511
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i), !dbg !14511
  %i.ai = icmp eq i64 %i.w, 0, !dbg !14487
  br i1 %i.ai, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsc0anycpf6TS_6ignore5types9SelectionNtBN_11FileTypeDefENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i, !dbg !14487

bb.k:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !14512, !noalias !14467
  unreachable, !dbg !14512

bb.l:                                             ; preds = %bb.i, %bb.f, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ae, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.038.i, ptr %i.t, align 8, !dbg !14513, !noalias !14461
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc0anycpf6TS_6ignore5types9SelectionNtB1b_11FileTypeDefEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %bb.m unwind label %bb.k, !dbg !14514, !noalias !14467

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !14512

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsc0anycpf6TS_6ignore5types9SelectionNtBN_11FileTypeDefENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %.lr.ph.i, %_RNvXse_NtCsc0anycpf6TS_6ignore5typesINtB5_9SelectionNtB5_11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i
  store i64 %i.j, ptr %i.t, align 8, !dbg !14515, !noalias !14461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !14516, !noalias !14459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14514, !noalias !14461
  ret void, !dbg !14517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7LWxN68iDgu_12grep_matcher5MatchENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !14518 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14562
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14563
  %i.d = load ptr, ptr %i.c, align 8, !dbg !14563, !nonnull !640, !noundef !640
  %i.e = load i64, ptr %i.b, align 8, !dbg !14564, !noundef !640 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14559), !dbg !14565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14566, !noalias !14561
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !14566, !noalias !14561
  %i.f = load i64, ptr %i.a, align 8, !dbg !14566, !range !756, !noalias !14561, !noundef !640
  %i.g = trunc nuw i64 %i.f to i1, !dbg !14567
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14568
  %i.i = load i64, ptr %i.h, align 8, !dbg !14568, !range !800, !noalias !14561, !noundef !640 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14568 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, !dbg !14567, !prof !655

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !14569, !noalias !14561
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !dbg !14570, !noalias !14561
  unreachable, !dbg !14570

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !14571, !noalias !14561, !nonnull !640, !noundef !640 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !14572
  tail call void @llvm.assume(i1 %i.m), !dbg !14573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14574, !noalias !14561
  store i64 %i.i, ptr %0, align 8, !dbg !14575, !alias.scope !14559
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14575
  store ptr %i.l, ptr %i.n, align 8, !dbg !14575, !alias.scope !14559
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14575 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !14575, !alias.scope !14559
  %.not.i = icmp eq i64 %i.e, 0, !dbg !14576
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs7LWxN68iDgu_12grep_matcher5MatchNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !14576

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i
  %i.p = shl nuw nsw i64 %i.e, 4, !dbg !14577
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !dbg !14577, !noalias !14559
  store i64 %i.e, ptr %i.o, align 8, !dbg !14578, !alias.scope !14559
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs7LWxN68iDgu_12grep_matcher5MatchNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !14579

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs7LWxN68iDgu_12grep_matcher5MatchNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, %bb.c
  ret void, !dbg !14580
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14581 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 16               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14891
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14892
  %i.l = load ptr, ptr %i.k, align 8, !dbg !14892, !nonnull !640, !noundef !640 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !dbg !14893, !noundef !640 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14829), !dbg !14894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14895, !noalias !14831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14896, !noalias !14831
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 144115188075855872) %i.m, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !dbg !14896, !noalias !14831
  %i.n = load i64, ptr %i.g, align 8, !dbg !14896, !range !756, !noalias !14831, !noundef !640
  %i.o = trunc nuw i64 %i.n to i1, !dbg !14897
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14898
  %i.q = load i64, ptr %i.p, align 8, !dbg !14898, !range !800, !noalias !14831, !noundef !640 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14898 ; 2 uses
  br i1 %i.o, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, !dbg !14897, !prof !655

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.r, align 8, !dbg !14899, !noalias !14831
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #27, !dbg !14900, !noalias !14832
  unreachable, !dbg !14900

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %i.r, align 8, !dbg !14901, !noalias !14831, !nonnull !640, !noundef !640 ; 2 uses
  %i.u = icmp ule i64 %i.m, %i.q, !dbg !14902
  tail call void @llvm.assume(i1 %i.u), !dbg !14903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14904, !noalias !14831
  store i64 %i.q, ptr %i.i, align 8, !dbg !14905, !noalias !14831
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14905
  store ptr %i.t, ptr %i.v, align 8, !dbg !14905, !noalias !14831
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14905 ; 3 uses
  store i64 0, ptr %i.w, align 8, !dbg !14905, !noalias !14831
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m, !dbg !14906
  %i.y = icmp eq i64 %i.q, 0, !dbg !14907
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i, !dbg !14907

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %.sroa.723.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.c, !dbg !14907

bb.c:                                             ; preds = %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.016.069.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.an, %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 21 uses
  %.sroa.7.068.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.067.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.al, %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.al = add i64 %.sroa.10.067.i, -1, !dbg !14908 ; 2 uses
  %i.am = icmp eq ptr %.sroa.016.069.i, %i.x, !dbg !14909
  br i1 %i.am, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %bb.d, !dbg !14910

.loopexit.i:                                      ; preds = %.invoke, %bb.t, %bb.s
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 64, !dbg !14911
  %i.ao = add nuw nsw i64 %.sroa.7.068.i, 1, !dbg !14912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14913, !noalias !14831
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14834), !dbg !14914
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14835), !dbg !14914
  %i.ap = load i64, ptr %.sroa.016.069.i, align 8, !dbg !14915, !range !784, !alias.scope !14836, !noundef !640 ; 2 uses
  switch i64 %i.ap, label %default.unreachable [
    i64 0, label %.invoke
    i64 1, label %.invoke
    i64 2, label %.invoke
    i64 3, label %bb.e
    i64 4, label %bb.l
    i64 5, label %bb.s
    i64 6, label %bb.t
  ], !dbg !14915

default.unreachable:                              ; preds = %bb.d
  unreachable

.invoke:                                          ; preds = %bb.d, %bb.d, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 8, !dbg !14916
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBL_jEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs8XVSHBVmna6_7globset3fnv6HasherEENtNtB1u_5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit.i, !dbg !14916, !noalias !14832

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14840), !dbg !14917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14918, !noalias !14841
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 32, !dbg !14919 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !14919, !alias.scope !14847, !nonnull !640, !noundef !640 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !14920, !noalias !14848
  %i.au = icmp slt i64 %i.at, 0, !dbg !14921
  br i1 %i.au, label %bb.i, label %bb.f, !dbg !14921

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 48, !dbg !14922
  %i.aw = load i8, ptr %i.av, align 8, !dbg !14922, !range !14851, !alias.scope !14847, !noundef !640
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 49, !dbg !14923
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !14923, !range !14851, !alias.scope !14847, !noundef !640
  %2 = load <2 x ptr>, ptr %i.ar, align 8, !dbg !14924, !alias.scope !14847
  store <2 x ptr> %2, ptr %i.f, align 16, !dbg !14925, !noalias !14841
  store i8 %i.aw, ptr %i.ah, align 16, !dbg !14925, !noalias !14841
  store i8 %i.ay, ptr %i.ai, align 1, !dbg !14925, !noalias !14841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14857), !dbg !14926
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 24, !dbg !14927
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 16, !dbg !14928
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !14928, !alias.scope !14858, !nonnull !640, !noundef !640
  %i.bc = load i64, ptr %i.az, align 8, !dbg !14929, !alias.scope !14858, !noundef !640 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14930, !noalias !14859
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 1152921504606846976) %i.bc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp, !dbg !14930, !noalias !14848

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.bd = load i64, ptr %i.e, align 8, !dbg !14930, !range !756, !noalias !14859, !noundef !640
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !14931
  %i.bf = load i64, ptr %i.aj, align 8, !dbg !14932, !range !800, !noalias !14859, !noundef !640 ; 3 uses
  br i1 %i.be, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, !dbg !14931, !prof !655

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.bg = load i64, ptr %i.ak, align 8, !dbg !14933, !noalias !14859
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bg) #27
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp, !dbg !14934, !noalias !14848

.noexc1.i.i.i:                                    ; preds = %bb.g
  unreachable, !dbg !14934

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.bh = load ptr, ptr %i.ak, align 8, !dbg !14935, !noalias !14859, !nonnull !640, !noundef !640 ; 2 uses
  %i.bi = icmp ule i64 %i.bc, %i.bf, !dbg !14936
  tail call void @llvm.assume(i1 %i.bi), !dbg !14937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14938, !noalias !14859
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0, !dbg !14939
  br i1 %.not.i.i.i.i.i, label %_RNvXsF_Cs8XVSHBVmna6_7globsetNtB5_14PrefixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.h, !dbg !14939

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i
  %i.bj = shl nuw nsw i64 %i.bc, 3, !dbg !14940
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull readonly align 8 %i.bb, i64 %i.bj, i1 false), !dbg !14940, !noalias !14860
  br label %_RNvXsF_Cs8XVSHBVmna6_7globsetNtB5_14PrefixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, !dbg !14941

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !14942
  unreachable, !dbg !14942

.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.g
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = atomicrmw add ptr %i.as, i64 -1 release, align 8, !dbg !14943, !noalias !14861
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !14944
  br i1 %i.bl, label %bb.j, label %bb.z, !dbg !14944

bb.j:                                             ; preds = %.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp
  fence acquire, !dbg !14945
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25
          to label %bb.z unwind label %bb.k, !dbg !14946, !noalias !14848

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !14947, !noalias !14848
  unreachable, !dbg !14947

_RNvXsF_Cs8XVSHBVmna6_7globsetNtB5_14PrefixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 56, !dbg !14948
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !14948, !alias.scope !14847, !noundef !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !14947, !noalias !14862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14949, !noalias !14841
  store i64 %i.bf, ptr %i.ac, align 8, !dbg !14950, !alias.scope !14834, !noalias !14831
  store ptr %i.bh, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !dbg !14950, !alias.scope !14834, !noalias !14831
  store i64 %i.bc, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !dbg !14950, !alias.scope !14834, !noalias !14831
  store i64 %i.bo, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !dbg !14950, !alias.scope !14834, !noalias !14831
  br label %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, !dbg !14951

bb.l:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14863), !dbg !14952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14953, !noalias !14864
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 32, !dbg !14954 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !14954, !alias.scope !14866, !nonnull !640, !noundef !640 ; 2 uses
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !dbg !14955, !noalias !14867
  %i.bs = icmp slt i64 %i.br, 0, !dbg !14956
  br i1 %i.bs, label %bb.p, label %bb.m, !dbg !14956

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 48, !dbg !14957
  %i.bu = load i8, ptr %i.bt, align 8, !dbg !14957, !range !14851, !alias.scope !14866, !noundef !640
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 49, !dbg !14958
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !14958, !range !14851, !alias.scope !14866, !noundef !640
  %3 = load <2 x ptr>, ptr %i.bp, align 8, !dbg !14959, !alias.scope !14866
  store <2 x ptr> %3, ptr %i.d, align 16, !dbg !14960, !noalias !14864
  store i8 %i.bu, ptr %i.ad, align 16, !dbg !14960, !noalias !14864
  store i8 %i.bw, ptr %i.ae, align 1, !dbg !14960, !noalias !14864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14870), !dbg !14961
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 24, !dbg !14962
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 16, !dbg !14963
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !14963, !alias.scope !14871, !nonnull !640, !noundef !640
  %i.ca = load i64, ptr %i.bx, align 8, !dbg !14964, !alias.scope !14871, !noundef !640 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14965, !noalias !14872
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.ca, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i2.i.i unwind label %.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp, !dbg !14965, !noalias !14867

.noexc.i2.i.i:                                    ; preds = %bb.m
  %i.cb = load i64, ptr %i.c, align 8, !dbg !14965, !range !756, !noalias !14872, !noundef !640
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !14966
  %i.cd = load i64, ptr %i.af, align 8, !dbg !14967, !range !800, !noalias !14872, !noundef !640 ; 3 uses
  br i1 %i.cc, label %bb.n, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i3.i.i, !dbg !14966, !prof !655

bb.n:                                             ; preds = %.noexc.i2.i.i
  %i.ce = load i64, ptr %i.ag, align 8, !dbg !14968, !noalias !14872
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cd, i64 %i.ce) #27
          to label %.noexc1.i7.i.i unwind label %.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp, !dbg !14969, !noalias !14867

.noexc1.i7.i.i:                                   ; preds = %bb.n
  unreachable, !dbg !14969

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i3.i.i: ; preds = %.noexc.i2.i.i
  %i.cf = load ptr, ptr %i.ag, align 8, !dbg !14970, !noalias !14872, !nonnull !640, !noundef !640 ; 2 uses
  %i.cg = icmp ule i64 %i.ca, %i.cd, !dbg !14971
  tail call void @llvm.assume(i1 %i.cg), !dbg !14972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14973, !noalias !14872
  %.not.i.i.i4.i.i = icmp eq i64 %i.ca, 0, !dbg !14974
  br i1 %.not.i.i.i4.i.i, label %_RNvXsH_Cs8XVSHBVmna6_7globsetNtB5_14SuffixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.o, !dbg !14974

bb.o:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i3.i.i
  %i.ch = shl nuw nsw i64 %i.ca, 3, !dbg !14975
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr nonnull readonly align 8 %i.bz, i64 %i.ch, i1 false), !dbg !14975, !noalias !14873
  br label %_RNvXsH_Cs8XVSHBVmna6_7globsetNtB5_14SuffixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, !dbg !14976

bb.p:                                             ; preds = %bb.l
  tail call void @llvm.trap(), !dbg !14977
  unreachable, !dbg !14977

.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !dbg !14978, !noalias !14874
  %i.cj = icmp eq i64 %i.ci, 1, !dbg !14979
  br i1 %i.cj, label %bb.q, label %bb.z, !dbg !14979

bb.q:                                             ; preds = %.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp
  fence acquire, !dbg !14980
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %bb.z unwind label %bb.r, !dbg !14981, !noalias !14867

bb.r:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !14982, !noalias !14867
  unreachable, !dbg !14982

_RNvXsH_Cs8XVSHBVmna6_7globsetNtB5_14SuffixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.o, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i3.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 56, !dbg !14983
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !14983, !alias.scope !14866, !noundef !640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !14982, !noalias !14862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14984, !noalias !14864
  store i64 %i.cd, ptr %i.ac, align 8, !dbg !14985, !alias.scope !14834, !noalias !14831
  store ptr %i.cf, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !dbg !14985, !alias.scope !14834, !noalias !14831
  store i64 %i.ca, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !dbg !14985, !alias.scope !14834, !noalias !14831
  store i64 %i.cm, ptr %.sroa.718.0..sroa_idx.i.i, align 8, !dbg !14985, !alias.scope !14834, !noalias !14831
  br label %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, !dbg !14951

bb.s:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 8, !dbg !14986
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBL_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs8XVSHBVmna6_7globset3fnv6HasherEENtNtB2n_5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
          to label %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit.i, !dbg !14987, !noalias !14832

bb.t:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14881), !dbg !14988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14989, !noalias !14882
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 32, !dbg !14989
  %i.cp = invoke { ptr, ptr } @_RNvXs3_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5RegexNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.co)
          to label %.noexc15.i unwind label %.loopexit.i, !dbg !14989, !noalias !14832 ; 2 uses

.noexc15.i:                                       ; preds = %bb.t
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0, !dbg !14989 ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1, !dbg !14989 ; 2 uses
  store ptr %i.cq, ptr %i.b, align 8, !dbg !14989, !noalias !14882
  store ptr %i.cr, ptr %i.z, align 8, !dbg !14989, !noalias !14882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14884), !dbg !14990
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 24, !dbg !14991
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 16, !dbg !14992
  %i.cu = load ptr, ptr %i.ct, align 8, !dbg !14992, !alias.scope !14885, !nonnull !640, !noundef !640
  %i.cv = load i64, ptr %i.cs, align 8, !dbg !14993, !alias.scope !14885, !noundef !640 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14994, !noalias !14886
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.cv, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i8.i.i unwind label %.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp, !dbg !14994, !noalias !14887

.noexc.i8.i.i:                                    ; preds = %.noexc15.i
  %i.cw = load i64, ptr %i.a, align 8, !dbg !14994, !range !756, !noalias !14886, !noundef !640
  %i.cx = trunc nuw i64 %i.cw to i1, !dbg !14995
  %i.cy = load i64, ptr %i.aa, align 8, !dbg !14996, !range !800, !noalias !14886, !noundef !640 ; 3 uses
  br i1 %i.cx, label %bb.u, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i9.i.i, !dbg !14995, !prof !655

bb.u:                                             ; preds = %.noexc.i8.i.i
  %i.cz = load i64, ptr %i.ab, align 8, !dbg !14997, !noalias !14886
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cy, i64 %i.cz) #27
          to label %.noexc1.i13.i.i unwind label %.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp, !dbg !14998, !noalias !14887

.noexc1.i13.i.i:                                  ; preds = %bb.u
  unreachable, !dbg !14998

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i9.i.i: ; preds = %.noexc.i8.i.i
  %i.da = load ptr, ptr %i.ab, align 8, !dbg !14999, !noalias !14886, !nonnull !640, !noundef !640 ; 2 uses
  %i.db = icmp ule i64 %i.cv, %i.cy, !dbg !15000
  tail call void @llvm.assume(i1 %i.db), !dbg !15001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15002, !noalias !14886
  %.not.i.i.i10.i.i = icmp eq i64 %i.cv, 0, !dbg !15003
  br i1 %.not.i.i.i10.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i.i.i, label %bb.v, !dbg !15003

bb.v:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i9.i.i
  %i.dc = shl nuw nsw i64 %i.cv, 3, !dbg !15004
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull readonly align 8 %i.cu, i64 %i.dc, i1 false), !dbg !15004, !noalias !14888
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !15005

.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc15.i, %bb.u
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #28
          to label %bb.z unwind label %bb.x, !dbg !15006, !noalias !14887

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.v, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i9.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.016.069.i, i64 48, !dbg !15007
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !15007, !alias.scope !14889, !nonnull !640, !noundef !640 ; 2 uses
  %i.df = atomicrmw add ptr %i.de, i64 1 monotonic, align 8, !dbg !15008, !noalias !14887
  %i.dg = icmp slt i64 %i.df, 0, !dbg !15009
  br i1 %i.dg, label %bb.w, label %_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, !dbg !15009

bb.w:                                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i.i.i
  tail call void @llvm.trap(), !dbg !15010
  unreachable, !dbg !15010

bb.x:                                             ; preds = %.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !15011, !noalias !14887
  unreachable, !dbg !15011

_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15006, !noalias !14882
  store i64 %i.cy, ptr %i.ac, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  store ptr %i.da, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  store i64 %i.cv, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  store ptr %i.cq, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  store ptr %i.cr, ptr %.sroa.723.0..sroa_idx.i.i, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  store ptr %i.de, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !15012, !alias.scope !14834, !noalias !14831
  br label %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, !dbg !14951

_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %.invoke, %_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.s, %_RNvXsH_Cs8XVSHBVmna6_7globsetNtB5_14SuffixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %_RNvXsF_Cs8XVSHBVmna6_7globsetNtB5_14PrefixStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  store i64 %i.ap, ptr %i.h, align 8, !dbg !14915, !alias.scope !14834, !noalias !14831
  %i.di = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %.sroa.7.068.i, !dbg !15013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !dbg !15014, !noalias !14832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15015, !noalias !14831
  %i.dj = icmp eq i64 %i.al, 0, !dbg !14907
  br i1 %i.dj, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !14907

bb.y:                                             ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !15016, !noalias !14832
  unreachable, !dbg !15016

bb.z:                                             ; preds = %.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp, %bb.q, %.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp, %bb.j, %.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp107, %.loopexit.split-lp23.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp28.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp111, %.loopexit.split-lp33.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp111, %bb.j ], [ %lpad.loopexit.split-lp, %bb.q ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.068.i, ptr %i.w, align 8, !dbg !15017, !noalias !14831
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %bb.aa unwind label %bb.y, !dbg !15018, !noalias !14832

bb.aa:                                            ; preds = %bb.z
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !15016

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %_RNvXsx_Cs8XVSHBVmna6_7globsetNtB5_20GlobSetMatchStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i
  store i64 %i.m, ptr %i.w, align 8, !dbg !15019, !noalias !14831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !15020, !noalias !14829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15018, !noalias !14831
  ret void, !dbg !15021
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15022 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15104
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15105
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15105, !nonnull !640, !noundef !640 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !15106, !noundef !640 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15107, !noalias !15098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15108, !noalias !15098
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 192153584101141163) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !dbg !15108, !noalias !15098
  %i.h = load i64, ptr %i.a, align 8, !dbg !15108, !range !756, !noalias !15098, !noundef !640
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15109
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15110
  %i.k = load i64, ptr %i.j, align 8, !dbg !15110, !range !800, !noalias !15098, !noundef !640 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15110 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, !dbg !15109, !prof !655

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15111, !noalias !15098
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !dbg !15112, !noalias !15098
  unreachable, !dbg !15112

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15113, !noalias !15098, !nonnull !640, !noundef !640 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15114
  tail call void @llvm.assume(i1 %i.o), !dbg !15115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15116, !noalias !15098
  store i64 %i.k, ptr %i.c, align 8, !dbg !15117, !noalias !15098
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15117
  store ptr %i.n, ptr %i.p, align 8, !dbg !15117, !noalias !15098
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15117 ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g, !dbg !15118
  %i.s = icmp eq i64 %i.k, 0, !dbg !15119
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i, !dbg !15119

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1, !dbg !15120 ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r, !dbg !15121
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !15122

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15123, !noalias !15098
  invoke fastcc void @_RNvXs7_NtCsc0anycpf6TS_6ignore5typesNtB5_11FileTypeDefNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !15124, !noalias !15101

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !15125
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 48, !dbg !15126
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.7.022.i, !dbg !15127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !15128, !noalias !15101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15129, !noalias !15098
  %i.y = icmp eq i64 %i.t, 0, !dbg !15119
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i, !dbg !15119

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !15130, !noalias !15101
  unreachable, !dbg !15130

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !dbg !15131, !noalias !15098
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.g unwind label %bb.e, !dbg !15132, !noalias !15101

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !15130

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!14722 = distinct !DILocation(line: 865, column: 5, scope: !14701, inlinedAt: !14702)
!14723 = distinct !DILocation(line: 3879, column: 26, scope: !590, inlinedAt: !14722)
!14724 = distinct !DILocation(line: 2124, column: 18, scope: !589, inlinedAt: !14723)
!14725 = distinct !DILocation(line: 315, column: 20, scope: !588, inlinedAt: !14724)
!14726 = distinct !DILocation(line: 3880, column: 26, scope: !597, inlinedAt: !14722)
!14727 = distinct !DILocation(line: 3854, column: 14, scope: !596, inlinedAt: !14726)
!14728 = distinct !DILocation(line: 1864, column: 76, scope: !595, inlinedAt: !14727)
!14729 = distinct !DILocation(line: 1968, column: 18, scope: !594, inlinedAt: !14728)
!14730 = distinct !DILocation(line: 296, column: 20, scope: !593, inlinedAt: !14729)
!14731 = distinct !DILocation(line: 606, column: 14, scope: !592, inlinedAt: !14730)
!14732 = distinct !{!14732, !14720, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg: argument 0"}
!14733 = distinct !{!14733, i1 true, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg"}
!14734 = distinct !{!14734, !14733, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 1"}
!14735 = distinct !{!14735, !14733, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 0"}
!14736 = distinct !DILocation(line: 3880, column: 9, scope: !597, inlinedAt: !14722)
!14737 = distinct !DILocation(line: 400, column: 16, scope: !602, inlinedAt: !14736)
!14738 = distinct !DILocation(line: 448, column: 29, scope: !601, inlinedAt: !14737)
!14739 = distinct !DILocation(line: 969, column: 20, scope: !599, inlinedAt: !14738)
!14740 = distinct !DILocation(line: 177, column: 20, scope: !598, inlinedAt: !14739)
!14741 = distinct !DILocation(line: 439, column: 50, scope: !416, inlinedAt: !14740)
!14742 = distinct !DILocation(line: 439, column: 21, scope: !416, inlinedAt: !14740)
!14743 = distinct !DILocation(line: 454, column: 36, scope: !603, inlinedAt: !14737)
!14744 = distinct !DILocation(line: 1236, column: 18, scope: !605, inlinedAt: !14743)
!14745 = distinct !{!14745, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AhoCorasickECs2NzvFoTxuAy_2rg"}
!14746 = distinct !{!14746, !14745, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AhoCorasickECs2NzvFoTxuAy_2rg: argument 0"}
!14747 = distinct !{!14747, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_EECs2NzvFoTxuAy_2rg"}
!14748 = distinct !{!14748, !14747, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_EECs2NzvFoTxuAy_2rg: argument 0"}
!14749 = distinct !{!14749, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!14750 = distinct !{!14750, !14749, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsc6gcpwOxuoT_12aho_corasick11ahocorasick11AcAutomatonEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!14751 = distinct !DILocation(line: 862, column: 14, scope: !14701, inlinedAt: !14702)
!14752 = distinct !DILocation(line: 848, column: 1, scope: !313, inlinedAt: !14751)
!14753 = distinct !DILocation(line: 848, column: 1, scope: !314, inlinedAt: !14752)
!14754 = distinct !DILocation(line: 2927, column: 32, scope: !315, inlinedAt: !14753)
!14755 = distinct !DILocation(line: 3258, column: 26, scope: !317, inlinedAt: !14754)
!14756 = distinct !DILocation(line: 69, column: 9, scope: !315, inlinedAt: !14753)
!14757 = distinct !DISubprogram(name: "clone<alloc::vec::Vec<u8, alloc::alloc::Global>, alloc::vec::Vec<(usize, regex_automata::meta::regex::Regex), alloc::alloc::Global>, core::hash::BuildHasherDefault<globset::fnv::Hasher>, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB13_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs8XVSHBVmna6_7globset3fnv6HasherEENtNtB2G_5clone5Clone5cloneCs2NzvFoTxuAy_2rg", scope: !14879, file: !14875, line: 1437, type: !641, scopeLine: 1437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14758 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsJ_Cs8XVSHBVmna6_7globsetNtB5_25RequiredExtensionStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !14880, file: !14837, line: 907, type: !641, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14759 = distinct !DILexicalBlock(scope: !14635, file: !14837, line: 653, column: 10)
!14760 = distinct !DILocation(line: 660, column: 23, scope: !14759, inlinedAt: !14636)
!14761 = distinct !DILocation(line: 907, column: 10, scope: !14758, inlinedAt: !14760)
!14762 = distinct !{!14762, i1 true, !"_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!14763 = distinct !{!14763, !14762, !"_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!14764 = distinct !DILexicalBlock(scope: !14635, file: !14837, line: 653, column: 10)
!14765 = distinct !{!14765, !14762, !"_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!14766 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsL_Cs8XVSHBVmna6_7globsetNtB5_16RegexSetStrategyNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !14883, file: !14837, line: 963, type: !641, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14767 = distinct !DILocation(line: 661, column: 11, scope: !14764, inlinedAt: !14636)
!14768 = distinct !{!14768, i1 true, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg"}
!14769 = distinct !{!14769, !14768, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg: argument 1"}
!14770 = distinct !DILocation(line: 966, column: 5, scope: !14766, inlinedAt: !14767)
!14771 = distinct !DILocation(line: 3879, column: 26, scope: !590, inlinedAt: !14770)
!14772 = distinct !DILocation(line: 2124, column: 18, scope: !589, inlinedAt: !14771)
!14773 = distinct !DILocation(line: 315, column: 20, scope: !588, inlinedAt: !14772)
!14774 = distinct !DILocation(line: 3880, column: 26, scope: !597, inlinedAt: !14770)
!14775 = distinct !DILocation(line: 3854, column: 14, scope: !596, inlinedAt: !14774)
!14776 = distinct !DILocation(line: 1864, column: 76, scope: !595, inlinedAt: !14775)
!14777 = distinct !DILocation(line: 1968, column: 18, scope: !594, inlinedAt: !14776)
!14778 = distinct !DILocation(line: 296, column: 20, scope: !593, inlinedAt: !14777)
!14779 = distinct !DILocation(line: 606, column: 14, scope: !592, inlinedAt: !14778)
!14780 = distinct !{!14780, !14768, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg: argument 0"}
!14781 = distinct !{!14781, i1 true, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg"}
!14782 = distinct !{!14782, !14781, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 1"}
!14783 = distinct !{!14783, !14781, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 0"}
!14784 = distinct !DILocation(line: 3880, column: 9, scope: !597, inlinedAt: !14770)
!14785 = distinct !DILocation(line: 400, column: 16, scope: !602, inlinedAt: !14784)
!14786 = distinct !DILocation(line: 448, column: 29, scope: !601, inlinedAt: !14785)
!14787 = distinct !DILocation(line: 969, column: 20, scope: !599, inlinedAt: !14786)
!14788 = distinct !DILocation(line: 177, column: 20, scope: !598, inlinedAt: !14787)
!14789 = distinct !DILocation(line: 439, column: 50, scope: !416, inlinedAt: !14788)
!14790 = distinct !DILocation(line: 439, column: 21, scope: !416, inlinedAt: !14788)
!14791 = distinct !DILocation(line: 454, column: 36, scope: !603, inlinedAt: !14785)
!14792 = distinct !DILocation(line: 1236, column: 18, scope: !605, inlinedAt: !14791)
!14793 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<regex_automata::util::pool::Pool<regex_automata::util::search::PatternSet, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::util::search::PatternSet> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtB1B_6search10PatternSetINtNtBY_5boxed3BoxDINtNtNtB9_3ops8function2FnuEp6OutputB2m_NtNtNtB9_5panic11unwind_safe13RefUnwindSafeNtNtB9_6marker4SendNtB4t_4SyncNtB3M_10UnwindSafeEL_EEEE6as_refCs2NzvFoTxuAy_2rg", scope: !690, file: !688, line: 450, type: !641, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14794 = distinct !DISubprogram(name: "inner<regex_automata::util::pool::Pool<regex_automata::util::search::PatternSet, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::util::search::PatternSet> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtBL_6search10PatternSetINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1w_NtNtNtB2m_5panic11unwind_safe13RefUnwindSafeNtNtB2m_6marker4SendNtB3T_4SyncNtB3b_10UnwindSafeEL_EEE5innerCs2NzvFoTxuAy_2rg", scope: !695, file: !692, line: 2186, type: !641, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14795 = distinct !DISubprogram(name: "clone<regex_automata::util::pool::Pool<regex_automata::util::search::PatternSet, alloc::boxed::Box<(dyn core::ops::function::Fn<(), Output=regex_automata::util::search::PatternSet> + core::marker::Send + core::marker::Sync + core::panic::unwind_safe::RefUnwindSafe + core::panic::unwind_safe::UnwindSafe), alloc::alloc::Global>>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtBL_6search10PatternSetINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1w_NtNtNtB2m_5panic11unwind_safe13RefUnwindSafeNtNtB2m_6marker4SendNtB3T_4SyncNtB3b_10UnwindSafeEL_EEENtNtB2m_5clone5Clone5cloneCs2NzvFoTxuAy_2rg", scope: !923, file: !692, line: 2464, type: !641, scopeLine: 2464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14796 = distinct !DILocation(line: 975, column: 5, scope: !14766, inlinedAt: !14767)
!14797 = distinct !DILocation(line: 2476, column: 29, scope: !14795, inlinedAt: !14796)
!14798 = distinct !DILocation(line: 2192, column: 27, scope: !14794, inlinedAt: !14797)
!14799 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic10atomic_addjjECs2NzvFoTxuAy_2rg", scope: !775, file: !773, line: 4032, type: !641, scopeLine: 4032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14800 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !776, file: !773, line: 3223, type: !641, scopeLine: 3223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14801 = distinct !DILocation(line: 2476, column: 44, scope: !14795, inlinedAt: !14796)
!14802 = distinct !DILocation(line: 3225, column: 26, scope: !14800, inlinedAt: !14801)
!14803 = distinct !DILexicalBlock(scope: !14795, file: !692, line: 2476, column: 9)
!14804 = distinct !DISubprogram(name: "new<globset::GlobSetMatchStrategy>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE3newCs2NzvFoTxuAy_2rg", scope: !967, file: !965, line: 78, type: !641, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14805 = distinct !DISubprogram(name: "new<globset::GlobSetMatchStrategy>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem13manually_dropINtB2_12ManuallyDropNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE3newCs2NzvFoTxuAy_2rg", scope: !970, file: !968, line: 182, type: !641, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14806 = distinct !DISubprogram(name: "new<globset::GlobSetMatchStrategy>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE3newCs2NzvFoTxuAy_2rg", scope: !973, file: !971, line: 406, type: !641, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14807 = distinct !DISubprogram(name: "write<globset::GlobSetMatchStrategy>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE5writeCs2NzvFoTxuAy_2rg", scope: !973, file: !971, line: 574, type: !641, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14808 = distinct !DILocation(line: 432, column: 30, scope: !14631, inlinedAt: !14597)
!14809 = distinct !DILocation(line: 575, column: 17, scope: !14807, inlinedAt: !14808)
!14810 = distinct !DILocation(line: 407, column: 30, scope: !14806, inlinedAt: !14809)
!14811 = distinct !DILocation(line: 183, column: 31, scope: !14890, inlinedAt: !14810)
!14812 = distinct !DISubprogram(name: "set_len<globset::GlobSetMatchStrategy, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE7set_lenCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2216, type: !641, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14813 = distinct !DISubprogram(name: "drop<globset::GlobSetMatchStrategy, alloc::alloc::Global>", linkageName: "_RNvXNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtB5_10ConvertVec6to_vecINtB2_9DropGuardNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtNtBa_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !975, file: !797, line: 417, type: !646, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14814 = distinct !DISubprogram(name: "drop_glue<alloc::slice::{impl#0}::to_vec_in::{impl#0}::to_vec::DropGuard<globset::GlobSetMatchStrategy, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyNtNtBM_5alloc6GlobalEECs2NzvFoTxuAy_2rg", scope: !645, file: !643, line: 848, type: !646, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14815 = distinct !DILocation(line: 441, column: 13, scope: !14610, inlinedAt: !14597)
!14816 = distinct !DILocation(line: 848, column: 1, scope: !14814, inlinedAt: !14815)
!14817 = distinct !DILocation(line: 421, column: 38, scope: !14813, inlinedAt: !14816)
!14818 = distinct !DISubprogram(name: "set_len<globset::GlobSetMatchStrategy, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyE7set_lenCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2216, type: !641, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!14819 = distinct !DILocation(line: 438, column: 25, scope: !14612, inlinedAt: !14597)
!14820 = !DILocation(line: 3879, column: 26, scope: !14581)
!14821 = !DILocation(line: 2124, column: 18, scope: !14583, inlinedAt: !14820)
!14822 = !DILocation(line: 315, column: 20, scope: !14584, inlinedAt: !14821)
!14823 = !DILocation(line: 3880, column: 26, scope: !14586)
!14824 = !DILocation(line: 3854, column: 14, scope: !14587, inlinedAt: !14823)
!14825 = !DILocation(line: 1864, column: 76, scope: !14588, inlinedAt: !14824)
!14826 = !DILocation(line: 1968, column: 18, scope: !14589, inlinedAt: !14825)
!14827 = !DILocation(line: 296, column: 20, scope: !14590, inlinedAt: !14826)
!14828 = !DILocation(line: 606, column: 14, scope: !14591, inlinedAt: !14827)
!14829 = !{!14593}
!14830 = !DILocation(line: 3880, column: 9, scope: !14586)
!14831 = !{!14595, !14593}
!14832 = !{!14595}
!14833 = !DILexicalBlockFile(scope: !14617, file: !797, discriminator: 2)
!14834 = !{!14633}
!14835 = !{!14634}
!14836 = !{!14634, !14593}
!14837 = !DIFile(filename: "crates/globset/src/lib.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "2166cfe03b7fc334e16b1bf269e8ee17")
!14838 = !DINamespace(name: "globset", scope: null)
!14839 = !DINamespace(name: "{impl#35}", scope: !14838)
!14840 = !{!14638}
!14841 = !{!14640, !14638, !14633, !14634, !14595, !14593}
!14842 = !DINamespace(name: "{impl#43}", scope: !14838)
!14843 = !DIFile(filename: "src/ahocorasick.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aho-corasick-1.1.4", checksumkind: CSK_MD5, checksum: "fac4da1753c3c76693505fd539e70754")
!14844 = !DINamespace(name: "aho_corasick", scope: null)
!14845 = !DINamespace(name: "ahocorasick", scope: !14844)
!14846 = !DINamespace(name: "{impl#12}", scope: !14845)
!14847 = !{!14638, !14634, !14593}
!14848 = !{!14640, !14638, !14633, !14634, !14595}
!14849 = !DINamespace(name: "{impl#20}", scope: !14845)
!14850 = !DILexicalBlockFile(scope: !14646, file: !14843, discriminator: 2)
!14851 = !{i8 0, i8 3}
!14852 = !DIFile(filename: "src/util/search.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/aho-corasick-1.1.4", checksumkind: CSK_MD5, checksum: "dfcbd191469a74b5043702bc7a0be8a6")
!14853 = !DINamespace(name: "util", scope: !14844)
!14854 = !DINamespace(name: "search", scope: !14853)
!14855 = !DINamespace(name: "{impl#48}", scope: !14854)
!14856 = !DILexicalBlockFile(scope: !14646, file: !14843, discriminator: 4)
!14857 = !{!14661}
!14858 = !{!14661, !14638, !14634, !14593}
!14859 = !{!14675, !14674, !14672, !14661, !14640, !14638, !14633, !14634, !14595, !14593}
!14860 = !{!14675, !14672, !14661, !14640, !14638, !14633, !14634, !14595}
!14861 = !{!14690, !14688, !14686, !14640, !14638, !14633, !14634, !14595}
!14862 = !{!14634, !14595, !14593}
!14863 = !{!14698}
!14864 = !{!14700, !14698, !14633, !14634, !14595, !14593}
!14865 = !DINamespace(name: "{impl#45}", scope: !14838)
!14866 = !{!14698, !14634, !14593}
!14867 = !{!14700, !14698, !14633, !14634, !14595}
!14868 = !DILexicalBlockFile(scope: !14706, file: !14843, discriminator: 2)
!14869 = !DILexicalBlockFile(scope: !14706, file: !14843, discriminator: 4)
!14870 = !{!14721}
!14871 = !{!14721, !14698, !14634, !14593}
!14872 = !{!14735, !14734, !14732, !14721, !14700, !14698, !14633, !14634, !14595, !14593}
!14873 = !{!14735, !14732, !14721, !14700, !14698, !14633, !14634, !14595}
!14874 = !{!14750, !14748, !14746, !14700, !14698, !14633, !14634, !14595}
!14875 = !DIFile(filename: "library/std/src/collections/hash/map.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "d4f7064e1665cc12868cd7e6d4cc95c1")
!14876 = !DINamespace(name: "collections", scope: !727)
!14877 = !DINamespace(name: "hash", scope: !14876)
!14878 = !DINamespace(name: "map", scope: !14877)
!14879 = !DINamespace(name: "{impl#5}", scope: !14878)
!14880 = !DINamespace(name: "{impl#47}", scope: !14838)
!14881 = !{!14763}
!14882 = !{!14765, !14763, !14633, !14634, !14595, !14593}
!14883 = !DINamespace(name: "{impl#49}", scope: !14838)
!14884 = !{!14769}
!14885 = !{!14769, !14763, !14634, !14593}
!14886 = !{!14783, !14782, !14780, !14769, !14765, !14763, !14633, !14634, !14595, !14593}
!14887 = !{!14765, !14633, !14595}
!14888 = !{!14783, !14780, !14769, !14765, !14633, !14595}
!14889 = !{!14763, !14634, !14593}
!14890 = !DILexicalBlockFile(scope: !14805, file: !968, discriminator: 2)
!14891 = !DILocation(line: 621, column: 9, scope: !14582, inlinedAt: !14822)
!14892 = !DILocation(line: 611, column: 9, scope: !14585, inlinedAt: !14828)
!14893 = !DILocation(line: 1864, column: 86, scope: !14588, inlinedAt: !14824)
!14894 = !DILocation(line: 400, column: 16, scope: !14594, inlinedAt: !14830)
!14895 = !DILocation(line: 425, column: 21, scope: !14596, inlinedAt: !14597)
!14896 = !DILocation(line: 435, column: 15, scope: !413, inlinedAt: !14602)
!14897 = !DILocation(line: 435, column: 9, scope: !413, inlinedAt: !14602)
!14898 = !DILocation(line: 0, scope: !413, inlinedAt: !14602)
!14899 = !DILocation(line: 443, column: 17, scope: !413, inlinedAt: !14602)
!14900 = !DILocation(line: 443, column: 25, scope: !414, inlinedAt: !14602)
!14901 = !DILocation(line: 436, column: 16, scope: !413, inlinedAt: !14602)
!14902 = !DILocation(line: 764, column: 9, scope: !415, inlinedAt: !14603)
!14903 = !DILocation(line: 210, column: 9, scope: !417, inlinedAt: !14604)
!14904 = !DILocation(line: 444, column: 9, scope: !413, inlinedAt: !14602)
!14905 = !DILocation(line: 969, column: 9, scope: !14599, inlinedAt: !14600)
!14906 = !DILocation(line: 971, column: 18, scope: !14605, inlinedAt: !14615)
!14907 = !DILocation(line: 37, column: 12, scope: !14616, inlinedAt: !14618)
!14908 = !DILocation(line: 38, column: 13, scope: !14616, inlinedAt: !14618)
!14909 = !DILocation(line: 1663, column: 9, scope: !14619, inlinedAt: !14626)
!14910 = !DILocation(line: 180, column: 28, scope: !14622, inlinedAt: !14625)
!14911 = !DILocation(line: 627, column: 28, scope: !14627, inlinedAt: !14628)
!14912 = !DILocation(line: 82, column: 9, scope: !14630, inlinedAt: !14624)
!14913 = !DILocation(line: 432, column: 36, scope: !14631, inlinedAt: !14597)
!14914 = !DILocation(line: 432, column: 38, scope: !14631, inlinedAt: !14597)
!14915 = !DILocation(line: 653, column: 10, scope: !14635, inlinedAt: !14636)
!14916 = !DILocation(line: 0, scope: !14635, inlinedAt: !14636)
!14917 = !DILocation(line: 658, column: 12, scope: !14639, inlinedAt: !14636)
!14918 = !DILocation(line: 819, column: 5, scope: !14641, inlinedAt: !14642)
!14919 = !DILocation(line: 454, column: 20, scope: !14643, inlinedAt: !14650)
!14920 = !DILocation(line: 4036, column: 24, scope: !14651, inlinedAt: !14654)
!14921 = !DILocation(line: 2493, column: 12, scope: !14655, inlinedAt: !14648)
!14922 = !DILocation(line: 2626, column: 10, scope: !14656, inlinedAt: !14657)
!14923 = !DILocation(line: 1132, column: 10, scope: !14658, inlinedAt: !14659)
!14924 = !DILocation(line: 2497, column: 38, scope: !14655, inlinedAt: !14648)
!14925 = !DILocation(line: 176, column: 10, scope: !14646, inlinedAt: !14647)
!14926 = !DILocation(line: 820, column: 5, scope: !14641, inlinedAt: !14642)
!14927 = !DILocation(line: 621, column: 9, scope: !587, inlinedAt: !14665)
!14928 = !DILocation(line: 611, column: 9, scope: !591, inlinedAt: !14671)
!14929 = !DILocation(line: 1864, column: 86, scope: !595, inlinedAt: !14667)
!14930 = !DILocation(line: 435, column: 15, scope: !413, inlinedAt: !14680)
!14931 = !DILocation(line: 435, column: 9, scope: !413, inlinedAt: !14680)
!14932 = !DILocation(line: 0, scope: !413, inlinedAt: !14680)
!14933 = !DILocation(line: 443, column: 17, scope: !413, inlinedAt: !14680)
!14934 = !DILocation(line: 443, column: 25, scope: !414, inlinedAt: !14680)
!14935 = !DILocation(line: 436, column: 16, scope: !413, inlinedAt: !14680)
!14936 = !DILocation(line: 764, column: 9, scope: !415, inlinedAt: !14681)
!14937 = !DILocation(line: 210, column: 9, scope: !417, inlinedAt: !14682)
!14938 = !DILocation(line: 444, column: 9, scope: !413, inlinedAt: !14680)
!14939 = !DILocation(line: 452, column: 20, scope: !603, inlinedAt: !14677)
!14940 = !DILocation(line: 574, column: 14, scope: !604, inlinedAt: !14684)
!14941 = !DILocation(line: 452, column: 17, scope: !603, inlinedAt: !14677)
!14942 = !DILocation(line: 2494, column: 13, scope: !14655, inlinedAt: !14648)
!14943 = !DILocation(line: 4056, column: 24, scope: !316, inlinedAt: !14695)
!14944 = !DILocation(line: 2927, column: 12, scope: !315, inlinedAt: !14693)
!14945 = !DILocation(line: 4500, column: 24, scope: !217, inlinedAt: !14696)
!14946 = !DILocation(line: 2970, column: 18, scope: !315, inlinedAt: !14693)
!14947 = !DILocation(line: 817, column: 10, scope: !14641, inlinedAt: !14642)
!14948 = !DILocation(line: 821, column: 5, scope: !14641, inlinedAt: !14642)
!14949 = !DILocation(line: 817, column: 14, scope: !14641, inlinedAt: !14642)
!14950 = !DILocation(line: 653, column: 10, scope: !14639, inlinedAt: !14636)
!14951 = !DILocation(line: 653, column: 14, scope: !14635, inlinedAt: !14636)
!14952 = !DILocation(line: 659, column: 12, scope: !14699, inlinedAt: !14636)
!14953 = !DILocation(line: 864, column: 5, scope: !14701, inlinedAt: !14702)
!14954 = !DILocation(line: 454, column: 20, scope: !14703, inlinedAt: !14710)
!14955 = !DILocation(line: 4036, column: 24, scope: !14711, inlinedAt: !14714)
!14956 = !DILocation(line: 2493, column: 12, scope: !14715, inlinedAt: !14708)
!14957 = !DILocation(line: 2626, column: 10, scope: !14716, inlinedAt: !14717)
!14958 = !DILocation(line: 1132, column: 10, scope: !14718, inlinedAt: !14719)
!14959 = !DILocation(line: 2497, column: 38, scope: !14715, inlinedAt: !14708)
!14960 = !DILocation(line: 176, column: 10, scope: !14706, inlinedAt: !14707)
!14961 = !DILocation(line: 865, column: 5, scope: !14701, inlinedAt: !14702)
!14962 = !DILocation(line: 621, column: 9, scope: !587, inlinedAt: !14725)
!14963 = !DILocation(line: 611, column: 9, scope: !591, inlinedAt: !14731)
!14964 = !DILocation(line: 1864, column: 86, scope: !595, inlinedAt: !14727)
!14965 = !DILocation(line: 435, column: 15, scope: !413, inlinedAt: !14740)
!14966 = !DILocation(line: 435, column: 9, scope: !413, inlinedAt: !14740)
!14967 = !DILocation(line: 0, scope: !413, inlinedAt: !14740)
!14968 = !DILocation(line: 443, column: 17, scope: !413, inlinedAt: !14740)
!14969 = !DILocation(line: 443, column: 25, scope: !414, inlinedAt: !14740)
!14970 = !DILocation(line: 436, column: 16, scope: !413, inlinedAt: !14740)
!14971 = !DILocation(line: 764, column: 9, scope: !415, inlinedAt: !14741)
!14972 = !DILocation(line: 210, column: 9, scope: !417, inlinedAt: !14742)
!14973 = !DILocation(line: 444, column: 9, scope: !413, inlinedAt: !14740)
!14974 = !DILocation(line: 452, column: 20, scope: !603, inlinedAt: !14737)
!14975 = !DILocation(line: 574, column: 14, scope: !604, inlinedAt: !14744)
!14976 = !DILocation(line: 452, column: 17, scope: !603, inlinedAt: !14737)
!14977 = !DILocation(line: 2494, column: 13, scope: !14715, inlinedAt: !14708)
!14978 = !DILocation(line: 4056, column: 24, scope: !316, inlinedAt: !14755)
!14979 = !DILocation(line: 2927, column: 12, scope: !315, inlinedAt: !14753)
!14980 = !DILocation(line: 4500, column: 24, scope: !217, inlinedAt: !14756)
!14981 = !DILocation(line: 2970, column: 18, scope: !315, inlinedAt: !14753)
!14982 = !DILocation(line: 862, column: 10, scope: !14701, inlinedAt: !14702)
!14983 = !DILocation(line: 866, column: 5, scope: !14701, inlinedAt: !14702)
!14984 = !DILocation(line: 862, column: 14, scope: !14701, inlinedAt: !14702)
!14985 = !DILocation(line: 653, column: 10, scope: !14699, inlinedAt: !14636)
!14986 = !DILocation(line: 1438, column: 22, scope: !14757, inlinedAt: !14761)
!14987 = !DILocation(line: 1438, column: 32, scope: !14757, inlinedAt: !14761)
!14988 = !DILocation(line: 661, column: 11, scope: !14764, inlinedAt: !14636)
!14989 = !DILocation(line: 965, column: 5, scope: !14766, inlinedAt: !14767)
!14990 = !DILocation(line: 966, column: 5, scope: !14766, inlinedAt: !14767)
!14991 = !DILocation(line: 621, column: 9, scope: !587, inlinedAt: !14773)
!14992 = !DILocation(line: 611, column: 9, scope: !591, inlinedAt: !14779)
!14993 = !DILocation(line: 1864, column: 86, scope: !595, inlinedAt: !14775)
!14994 = !DILocation(line: 435, column: 15, scope: !413, inlinedAt: !14788)
!14995 = !DILocation(line: 435, column: 9, scope: !413, inlinedAt: !14788)
!14996 = !DILocation(line: 0, scope: !413, inlinedAt: !14788)
!14997 = !DILocation(line: 443, column: 17, scope: !413, inlinedAt: !14788)
!14998 = !DILocation(line: 443, column: 25, scope: !414, inlinedAt: !14788)
!14999 = !DILocation(line: 436, column: 16, scope: !413, inlinedAt: !14788)
!15000 = !DILocation(line: 764, column: 9, scope: !415, inlinedAt: !14789)
!15001 = !DILocation(line: 210, column: 9, scope: !417, inlinedAt: !14790)
!15002 = !DILocation(line: 444, column: 9, scope: !413, inlinedAt: !14788)
!15003 = !DILocation(line: 452, column: 20, scope: !603, inlinedAt: !14785)
!15004 = !DILocation(line: 574, column: 14, scope: !604, inlinedAt: !14792)
!15005 = !DILocation(line: 452, column: 17, scope: !603, inlinedAt: !14785)
!15006 = !DILocation(line: 963, column: 14, scope: !14766, inlinedAt: !14767)
!15007 = !DILocation(line: 454, column: 20, scope: !14793, inlinedAt: !14798)
!15008 = !DILocation(line: 4036, column: 24, scope: !14799, inlinedAt: !14802)
!15009 = !DILocation(line: 2493, column: 12, scope: !14803, inlinedAt: !14796)
!15010 = !DILocation(line: 2494, column: 13, scope: !14803, inlinedAt: !14796)
!15011 = !DILocation(line: 963, column: 10, scope: !14766, inlinedAt: !14767)
!15012 = !DILocation(line: 653, column: 10, scope: !14764, inlinedAt: !14636)
!15013 = !DILocation(line: 432, column: 21, scope: !14631, inlinedAt: !14597)
!15014 = !DILocation(line: 82, column: 9, scope: !14804, inlinedAt: !14811)
!15015 = !DILocation(line: 432, column: 45, scope: !14631, inlinedAt: !14597)
!15016 = !DILocation(line: 410, column: 13, scope: !14596, inlinedAt: !14597)
!15017 = !DILocation(line: 2223, column: 9, scope: !14812, inlinedAt: !14817)
!15018 = !DILocation(line: 441, column: 13, scope: !14596, inlinedAt: !14597)
!15019 = !DILocation(line: 2223, column: 9, scope: !14818, inlinedAt: !14819)
!15020 = !DILocation(line: 440, column: 17, scope: !14612, inlinedAt: !14597)
!15021 = !DILocation(line: 3881, column: 6, scope: !14581)
!15022 = distinct !DISubprogram(name: "clone<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg", scope: !958, file: !657, line: 3878, type: !641, scopeLine: 3878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15023 = distinct !DISubprogram(name: "allocator<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner9allocatorCs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 620, type: !641, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15024 = distinct !DISubprogram(name: "allocator<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE9allocatorCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2123, type: !641, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15025 = distinct !DISubprogram(name: "allocator<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE9allocatorCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 314, type: !641, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15026 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, ignore::types::FileTypeDef>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefECs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 610, type: !641, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15027 = distinct !DILexicalBlock(scope: !15022, file: !657, line: 3879, column: 9)
!15028 = distinct !DISubprogram(name: "deref<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !707, file: !657, line: 3853, type: !641, scopeLine: 3853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15029 = distinct !DISubprogram(name: "as_slice<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE8as_sliceCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 1847, type: !641, scopeLine: 1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15030 = distinct !DISubprogram(name: "as_ptr<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE6as_ptrCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 1965, type: !641, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15031 = distinct !DISubprogram(name: "ptr<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3ptrCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 295, type: !641, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15032 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, ignore::types::FileTypeDef>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefECs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 605, type: !641, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15033 = distinct !{!15033, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg"}
!15034 = distinct !{!15034, !15033, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 1"}
!15035 = distinct !{!15035, !15033, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 0"}
!15036 = distinct !DISubprogram(name: "to_vec<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !957, file: !797, line: 410, type: !641, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15037 = distinct !DISubprogram(name: "to_vec_in<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCsc0anycpf6TS_6ignore5types11FileTypeDef9to_vec_inNtNtB5_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !834, file: !797, line: 396, type: !641, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15038 = distinct !DILocation(line: 400, column: 16, scope: !15037, inlinedAt: !15099)
!15039 = distinct !DISubprogram(name: "with_capacity_in<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 175, type: !641, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15040 = distinct !DISubprogram(name: "with_capacity_in<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 968, type: !641, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15041 = distinct !DILocation(line: 425, column: 31, scope: !15036, inlinedAt: !15038)
!15042 = distinct !DILocation(line: 969, column: 20, scope: !15040, inlinedAt: !15041)
!15043 = distinct !DILocation(line: 177, column: 20, scope: !15039, inlinedAt: !15042)
!15044 = distinct !DILocation(line: 439, column: 50, scope: !416, inlinedAt: !15043)
!15045 = distinct !DILocation(line: 439, column: 21, scope: !416, inlinedAt: !15043)
!15046 = distinct !DISubprogram(name: "add<ignore::types::FileTypeDef>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtCsc0anycpf6TS_6ignore5types11FileTypeDef3addCs2NzvFoTxuAy_2rg", scope: !666, file: !664, line: 937, type: !641, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15047 = distinct !DISubprogram(name: "new<ignore::types::FileTypeDef>", linkageName: "_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3newCs2NzvFoTxuAy_2rg", scope: !683, file: !681, line: 94, type: !641, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15048 = distinct !DILexicalBlock(scope: !15047, file: !681, line: 95, column: 9)
!15049 = distinct !DILexicalBlock(scope: !15048, file: !681, line: 96, column: 9)
!15050 = distinct !DISubprogram(name: "iter<ignore::types::FileTypeDef>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsc0anycpf6TS_6ignore5types11FileTypeDef4iterCs2NzvFoTxuAy_2rg", scope: !680, file: !678, line: 1039, type: !641, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15051 = distinct !DILexicalBlock(scope: !15036, file: !797, line: 425, column: 17)
!15052 = distinct !DILexicalBlock(scope: !15051, file: !797, line: 426, column: 17)
!15053 = distinct !DILexicalBlock(scope: !15052, file: !797, line: 427, column: 17)
!15054 = distinct !DILocation(line: 430, column: 33, scope: !15053, inlinedAt: !15038)
!15055 = distinct !DILocation(line: 1040, column: 9, scope: !15050, inlinedAt: !15054)
!15056 = distinct !DILocation(line: 100, column: 78, scope: !15049, inlinedAt: !15055)
!15057 = distinct !DISubprogram(name: "next<core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<ignore::types::FileTypeDef>>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefEEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !961, file: !959, line: 36, type: !641, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15058 = distinct !DILexicalBlock(scope: !15053, file: !797, line: 430, column: 17)
!15059 = distinct !DILocation(line: 430, column: 31, scope: !15100, inlinedAt: !15038)
!15060 = distinct !DISubprogram(name: "eq<ignore::types::FileTypeDef>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefENtNtB9_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !708, file: !688, line: 1662, type: !641, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15061 = distinct !DISubprogram(name: "next<ignore::types::FileTypeDef>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !710, file: !709, line: 157, type: !641, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15062 = distinct !DILexicalBlock(scope: !15061, file: !709, line: 161, column: 17)
!15063 = distinct !DILexicalBlock(scope: !15062, file: !709, line: 162, column: 17)
!15064 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<ignore::types::FileTypeDef>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !964, file: !962, line: 79, type: !641, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15065 = distinct !DILocation(line: 39, column: 23, scope: !15057, inlinedAt: !15059)
!15066 = distinct !DILocation(line: 80, column: 27, scope: !15064, inlinedAt: !15065)
!15067 = distinct !DILocation(line: 180, column: 28, scope: !15063, inlinedAt: !15066)
!15068 = distinct !DILexicalBlock(scope: !15058, file: !797, line: 430, column: 17)
!15069 = distinct !DILexicalBlock(scope: !15064, file: !962, line: 80, column: 9)
!15070 = distinct !DILexicalBlock(scope: !15069, file: !962, line: 81, column: 9)
!15071 = distinct !DISubprogram(name: "add<ignore::types::FileTypeDef>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3addCs2NzvFoTxuAy_2rg", scope: !690, file: !688, line: 619, type: !641, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15072 = distinct !DILocation(line: 185, column: 40, scope: !15063, inlinedAt: !15066)
!15073 = distinct !DISubprogram(name: "new<ignore::types::FileTypeDef>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3newCs2NzvFoTxuAy_2rg", scope: !967, file: !965, line: 78, type: !641, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15074 = distinct !DISubprogram(name: "new<ignore::types::FileTypeDef>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem13manually_dropINtB2_12ManuallyDropNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3newCs2NzvFoTxuAy_2rg", scope: !970, file: !968, line: 182, type: !641, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15075 = distinct !DISubprogram(name: "new<ignore::types::FileTypeDef>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE3newCs2NzvFoTxuAy_2rg", scope: !973, file: !971, line: 406, type: !641, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15076 = distinct !DISubprogram(name: "write<ignore::types::FileTypeDef>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE5writeCs2NzvFoTxuAy_2rg", scope: !973, file: !971, line: 574, type: !641, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15077 = distinct !DILocation(line: 432, column: 30, scope: !15068, inlinedAt: !15038)
!15078 = distinct !DILocation(line: 575, column: 17, scope: !15076, inlinedAt: !15077)
!15079 = distinct !DILocation(line: 407, column: 30, scope: !15075, inlinedAt: !15078)
!15080 = distinct !DILocation(line: 183, column: 31, scope: !15102, inlinedAt: !15079)
!15081 = distinct !DISubprogram(name: "set_len<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE7set_lenCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2216, type: !641, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15082 = distinct !DISubprogram(name: "drop<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvXNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtB5_10ConvertVec6to_vecINtB2_9DropGuardNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtNtBa_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !975, file: !797, line: 417, type: !646, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15083 = distinct !DISubprogram(name: "drop_glue<alloc::slice::{impl#0}::to_vec_in::{impl#0}::to_vec::DropGuard<ignore::types::FileTypeDef, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefNtNtBM_5alloc6GlobalEECs2NzvFoTxuAy_2rg", scope: !645, file: !643, line: 848, type: !646, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15084 = distinct !DILocation(line: 441, column: 13, scope: !15051, inlinedAt: !15038)
!15085 = distinct !DILocation(line: 848, column: 1, scope: !15083, inlinedAt: !15084)
!15086 = distinct !DILocation(line: 421, column: 38, scope: !15082, inlinedAt: !15085)
!15087 = distinct !DISubprogram(name: "set_len<ignore::types::FileTypeDef, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore5types11FileTypeDefE7set_lenCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2216, type: !641, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15088 = distinct !DILocation(line: 438, column: 25, scope: !15053, inlinedAt: !15038)
!15089 = !DILocation(line: 3879, column: 26, scope: !15022)
!15090 = !DILocation(line: 2124, column: 18, scope: !15024, inlinedAt: !15089)
!15091 = !DILocation(line: 315, column: 20, scope: !15025, inlinedAt: !15090)
!15092 = !DILocation(line: 3880, column: 26, scope: !15027)
!15093 = !DILocation(line: 3854, column: 14, scope: !15028, inlinedAt: !15092)
!15094 = !DILocation(line: 1864, column: 76, scope: !15029, inlinedAt: !15093)
!15095 = !DILocation(line: 1968, column: 18, scope: !15030, inlinedAt: !15094)
!15096 = !DILocation(line: 296, column: 20, scope: !15031, inlinedAt: !15095)
!15097 = !DILocation(line: 606, column: 14, scope: !15032, inlinedAt: !15096)
!15098 = !{!15035, !15034}
!15099 = !DILocation(line: 3880, column: 9, scope: !15027)
!15100 = !DILexicalBlockFile(scope: !15058, file: !797, discriminator: 2)
!15101 = !{!15035}
!15102 = !DILexicalBlockFile(scope: !15074, file: !968, discriminator: 2)
!15103 = !{!15034}
!15104 = !DILocation(line: 621, column: 9, scope: !15023, inlinedAt: !15091)
!15105 = !DILocation(line: 611, column: 9, scope: !15026, inlinedAt: !15097)
!15106 = !DILocation(line: 1864, column: 86, scope: !15029, inlinedAt: !15093)
!15107 = !DILocation(line: 425, column: 21, scope: !15036, inlinedAt: !15038)
!15108 = !DILocation(line: 435, column: 15, scope: !413, inlinedAt: !15043)
!15109 = !DILocation(line: 435, column: 9, scope: !413, inlinedAt: !15043)
!15110 = !DILocation(line: 0, scope: !413, inlinedAt: !15043)
!15111 = !DILocation(line: 443, column: 17, scope: !413, inlinedAt: !15043)
!15112 = !DILocation(line: 443, column: 25, scope: !414, inlinedAt: !15043)
!15113 = !DILocation(line: 436, column: 16, scope: !413, inlinedAt: !15043)
!15114 = !DILocation(line: 764, column: 9, scope: !415, inlinedAt: !15044)
!15115 = !DILocation(line: 210, column: 9, scope: !417, inlinedAt: !15045)
!15116 = !DILocation(line: 444, column: 9, scope: !413, inlinedAt: !15043)
!15117 = !DILocation(line: 969, column: 9, scope: !15040, inlinedAt: !15041)
!15118 = !DILocation(line: 971, column: 18, scope: !15046, inlinedAt: !15056)
!15119 = !DILocation(line: 37, column: 12, scope: !15057, inlinedAt: !15059)
!15120 = !DILocation(line: 38, column: 13, scope: !15057, inlinedAt: !15059)
!15121 = !DILocation(line: 1663, column: 9, scope: !15060, inlinedAt: !15067)
!15122 = !DILocation(line: 180, column: 28, scope: !15063, inlinedAt: !15066)
!15123 = !DILocation(line: 432, column: 36, scope: !15068, inlinedAt: !15038)
!15124 = !DILocation(line: 432, column: 38, scope: !15068, inlinedAt: !15038)
!15125 = !DILocation(line: 82, column: 9, scope: !15070, inlinedAt: !15065)
!15126 = !DILocation(line: 627, column: 28, scope: !15071, inlinedAt: !15072)
!15127 = !DILocation(line: 432, column: 21, scope: !15068, inlinedAt: !15038)
!15128 = !DILocation(line: 82, column: 9, scope: !15073, inlinedAt: !15080)
!15129 = !DILocation(line: 432, column: 45, scope: !15068, inlinedAt: !15038)
!15130 = !DILocation(line: 410, column: 13, scope: !15036, inlinedAt: !15038)
!15131 = !DILocation(line: 2223, column: 9, scope: !15081, inlinedAt: !15086)
!15132 = !DILocation(line: 441, column: 13, scope: !15036, inlinedAt: !15038)
!15133 = !DILocation(line: 2223, column: 9, scope: !15087, inlinedAt: !15088)
!15134 = !DILocation(line: 440, column: 17, scope: !15053, inlinedAt: !15038)
!15135 = !DILocation(line: 3881, column: 6, scope: !15022)
!15136 = distinct !DISubprogram(name: "clone<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg", scope: !958, file: !657, line: 3878, type: !641, scopeLine: 3878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15137 = distinct !DISubprogram(name: "allocator<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner9allocatorCs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 620, type: !641, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15138 = distinct !DISubprogram(name: "allocator<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE9allocatorCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 2123, type: !641, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15139 = distinct !DISubprogram(name: "allocator<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE9allocatorCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 314, type: !641, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15140 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, ignore::gitignore::Glob>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCsc0anycpf6TS_6ignore9gitignore4GlobECs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 610, type: !641, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15141 = distinct !DILexicalBlock(scope: !15136, file: !657, line: 3879, column: 9)
!15142 = distinct !DISubprogram(name: "deref<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !707, file: !657, line: 3853, type: !641, scopeLine: 3853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15143 = distinct !DISubprogram(name: "as_slice<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE8as_sliceCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 1847, type: !641, scopeLine: 1847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15144 = distinct !DISubprogram(name: "as_ptr<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE6as_ptrCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 1965, type: !641, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15145 = distinct !DISubprogram(name: "ptr<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE3ptrCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 295, type: !641, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15146 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, ignore::gitignore::Glob>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCsc0anycpf6TS_6ignore9gitignore4GlobECs2NzvFoTxuAy_2rg", scope: !662, file: !660, line: 605, type: !641, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15147 = distinct !{!15147, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore9gitignore4GlobNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg"}
!15148 = distinct !{!15148, !15147, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore9gitignore4GlobNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 1"}
!15149 = distinct !DISubprogram(name: "to_vec_in<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCsc0anycpf6TS_6ignore9gitignore4Glob9to_vec_inNtNtB5_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !834, file: !797, line: 396, type: !641, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15150 = distinct !{!15150, !15147, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore9gitignore4GlobNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg: argument 0"}
!15151 = distinct !DISubprogram(name: "to_vec<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsc0anycpf6TS_6ignore9gitignore4GlobNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !957, file: !797, line: 410, type: !641, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15152 = distinct !DILocation(line: 400, column: 16, scope: !15149, inlinedAt: !15261)
!15153 = distinct !DISubprogram(name: "with_capacity_in<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !663, file: !660, line: 175, type: !641, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15154 = distinct !DISubprogram(name: "with_capacity_in<ignore::gitignore::Glob, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !659, file: !657, line: 968, type: !641, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !640)
!15155 = distinct !DILocation(line: 425, column: 31, scope: !15151, inlinedAt: !15152)
!15156 = distinct !DILocation(line: 969, column: 20, scope: !15154, inlinedAt: !15155)
!15157 = distinct !DILocation(line: 177, column: 20, scope: !15153, inlinedAt: !15156)
!15158 = distinct !DILocation(line: 439, column: 50, scope: !416, inlinedAt: !15157)
!15159 = distinct !DILocation(line: 439, column: 21, scope: !416, inlinedAt: !15157)
end_hunk_1
