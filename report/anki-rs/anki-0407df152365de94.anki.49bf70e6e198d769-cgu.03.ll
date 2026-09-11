Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4anki5stats5today13studied_today17h93ee677618069069E:bb.a
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv float %2, 6.000000e+01              ; 2 uses
  %.not21 = icmp eq i32 %1, 0
  br i1 %.not21, label %bb.e, label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = uitofp i32 %1 to float
  %i.m = fdiv float %2, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.n, %bb.d
  %.sroa.014.0 = phi ptr [ @141, %bb.n ], [ @141, %bb.b ], [ @140, %bb.d ], [ @140, %bb.c ]
  %.sroa.01.1 = phi float [ %i.aj, %bb.n ], [ 0.000000e+00, %bb.b ], [ %i.m, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.0.0 = phi float [ %i.k, %bb.n ], [ %i.k, %bb.b ], [ %2, %bb.d ], [ %2, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !741
  store i64 0, ptr %i.g, align 8, !noalias !741
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !744
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef range(i64 4, 8) 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.k, !noalias !741

.noexc.i:                                         ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !range !15, !noalias !744, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !9, !noalias !744, !noundef !7 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %.noexc.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !744
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.q, i64 %i.s) #33
          to label %.noexc7.i unwind label %bb.k, !noalias !741

.noexc7.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !744, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = icmp ugt i64 %i.q, 6
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.014.0, i64 range(i64 4, 8) 7, i1 false), !noalias !745
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !746, !noalias !747
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !746, !noalias !747
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 7, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !746, !noalias !747
  invoke void @_ZN13fluent_bundle4args10FluentArgs3set17h7470d4e5f20f3495E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1097, i64 noundef 4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.k, !noalias !741

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !741
  %i.v = fmul float %.sroa.01.1, 1.000000e+02
  %i.w = call float @llvm.round.f32(float %i.v)
  %i.x = fdiv float %i.w, 1.000000e+02
  %i.y = fpext float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store double %i.y, ptr %i.z, align 8, !alias.scope !748, !noalias !741
  store i64 0, ptr %i.e, align 8, !alias.scope !748, !noalias !741
  %.sroa.5.0..sroa_idx.i.i8.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i8.i, align 8, !alias.scope !748, !noalias !741
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !748, !noalias !741
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !748, !noalias !741
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !748, !noalias !741
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 -9223372036854775808, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !alias.scope !748, !noalias !741
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !748, !noalias !741
  invoke void @_ZN13fluent_bundle4args10FluentArgs3set17h0573648f1ee82ce1E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1098, i64 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.e)
          to label %bb.i unwind label %bb.k, !noalias !741

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !741
  %i.aa = fmul float %.sroa.0.0, 1.000000e+02
  %i.ab = call float @llvm.round.f32(float %i.aa)
  %i.ac = fdiv float %i.ab, 1.000000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store double %i.ad, ptr %i.ae, align 8, !alias.scope !749, !noalias !741
  store i64 0, ptr %i.d, align 8, !alias.scope !749, !noalias !741
  %.sroa.5.0..sroa_idx.i.i9.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i9.i, align 8, !alias.scope !749, !noalias !741
  %.sroa.7.0..sroa_idx.i.i10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i10.i, align 8, !alias.scope !749, !noalias !741
  %.sroa.9.0..sroa_idx.i.i11.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i11.i, align 8, !alias.scope !749, !noalias !741
  %.sroa.11.0..sroa_idx.i.i12.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i12.i, align 8, !alias.scope !749, !noalias !741
  %.sroa.13.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -9223372036854775808, ptr %.sroa.13.0..sroa_idx.i.i13.i, align 8, !alias.scope !749, !noalias !741
  %.sroa.14.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.14.0..sroa_idx.i.i14.i, align 8, !alias.scope !749, !noalias !741
  invoke void @_ZN13fluent_bundle4args10FluentArgs3set17h0573648f1ee82ce1E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1099, i64 noundef 6, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.d)
          to label %bb.j unwind label %bb.k, !noalias !741

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !741
  %i.af = uitofp i32 %1 to double
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.af, ptr %i.ag, align 8, !alias.scope !750, !noalias !741
  store i64 0, ptr %i.c, align 8, !alias.scope !750, !noalias !741
  %.sroa.5.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i18.i, align 8, !alias.scope !750, !noalias !741
  %.sroa.7.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i19.i, align 8, !alias.scope !750, !noalias !741
  %.sroa.9.0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i20.i, align 8, !alias.scope !750, !noalias !741
  %.sroa.11.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i21.i, align 8, !alias.scope !750, !noalias !741
  %.sroa.13.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -9223372036854775808, ptr %.sroa.13.0..sroa_idx.i.i22.i, align 8, !alias.scope !750, !noalias !741
  %.sroa.14.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.14.0..sroa_idx.i.i23.i, align 8, !alias.scope !750, !noalias !741
  invoke void @_ZN13fluent_bundle4args10FluentArgs3set17h0573648f1ee82ce1E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @199, i64 noundef 5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.c)
          to label %"_ZN9anki_i18n9generated33_$LT$impl$u20$anki_i18n..I18n$GT$24statistics_studied_today17h85b1c9463dc045f7E.exit" unwind label %bb.k, !noalias !741

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$fluent_bundle..args..FluentArgs$GT$17hc4c90ad7427144d2E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #31
          to label %bb.m unwind label %bb.l, !noalias !741

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !741
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.i

"_ZN9anki_i18n9generated33_$LT$impl$u20$anki_i18n..I18n$GT$24statistics_studied_today17h85b1c9463dc045f7E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !741
  call void @"_ZN9anki_i18n13I18n$LT$P$GT$9translate17hcb5691e7652668b4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1100, i64 noundef 24, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !741
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.n:                                             ; preds = %bb.b
  %i.ai = uitofp i32 %1 to float
  %i.aj = fdiv float %2, %i.ai
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_ZN4anki5stats6graphs5eases6median17hdf846dcc17c349d7E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !757
  store ptr %i.a, ptr %i.b, align 8, !noalias !758
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit.thread", label %bb.c, !prof !18

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !757
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %1, 21
  br i1 %i.e, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice4sort6stable14driftsort_main17h4b5b656f98c53022E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 1, 0) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit"

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h2c14caf2fcb4ab91E(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 1, 0) %1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !757
  %i.f = lshr i64 %1, 1                           ; 3 uses
  %i.g = and i64 %1, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.i, %bb.j
  %.sroa.0.0 = phi float [ %i.o, %bb.j ], [ %i.l, %bb.i ], [ 0.000000e+00, %bb.a ]
  ret float %.sroa.0.0

bb.g:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit"
  %i.i = add nsw i64 %i.f, -1                     ; 3 uses
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.i, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #33
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %2 = load float, ptr %i.k, align 4, !noundef !7
  %3 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %4 = load float, ptr %3, align 4, !noundef !7
  %5 = fadd float %2, %4
  %i.l = fmul float %5, 5.000000e-01
  br label %bb.f

bb.j:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit.thread", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit"
  %i.m = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit.thread" ], [ %i.f, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17hbaa79434593f4d59E.exit" ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !noundef !7
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN4anki6config11ConfigEntry5boxed17h8517d0e373ca95f5E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i32 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !15, !noalias !764, !noundef !7
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !noalias !764, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.g, align 8, !noalias !764
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.f, i64 %i.h) #33
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %i.g, align 8, !noalias !764, !nonnull !7, !noundef !7 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 %1, i1 false), !noalias !765
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %4, ptr %i.m, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !766
  %i.n = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 1, 513) 64, i64 noundef range(i64 1, 129) 8) #34, !noalias !766 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.g, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc3 unwind label %bb.e

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$anki..config..ConfigEntry$GT$17hb2069ccb4fef952eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #31
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.p, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9

bb.h:                                             ; preds = %bb.a, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #31
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki6config4deck13DeckConfigKey8for_deck17h6b49f2ed7a6b6cc0E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef range(i8 0, 3) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4anki6config4deck13DeckConfigKey8for_deck17h6b49f2ed7a6b6cc0E, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = zext nneg i8 %1 to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4anki6config4deck13DeckConfigKey8for_deck17h6b49f2ed7a6b6cc0E.452, i64 %i.f
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8, !noalias !777
  store ptr %switch.load3, ptr %i.c, align 8, !noalias !777
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %switch.ext, ptr %i.g, align 8, !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !777
  store ptr %i.d, ptr %i.b, align 8, !noalias !777
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN58_$LT$anki..decks..DeckId$u20$as$u20$core..fmt..Display$GT$3fmt17h2ed664db73e86c5dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !777
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.h, align 8, !noalias !777
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !778
  store ptr @149, ptr %i.a, align 8, !noalias !779
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !779
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !779
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !779
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !779
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki6config4deck18build_aux_deck_key17hb84c1d133ce57823E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN58_$LT$anki..decks..DeckId$u20$as$u20$core..fmt..Display$GT$3fmt17h2ed664db73e86c5dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !788
  store ptr @149, ptr %i.a, align 8, !noalias !789
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !789
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !789
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !789
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !789
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki6config8notetype17NotetypeConfigKey12for_notetype17h8910ecf95083543dE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8, !noalias !801
  store ptr @150, ptr %i.c, align 8, !noalias !801
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 8, ptr %i.e, align 8, !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !801
  store ptr %i.d, ptr %i.b, align 8, !noalias !801
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN65_$LT$anki..notetype..NotetypeId$u20$as$u20$core..fmt..Display$GT$3fmt17hf25470e613af1ac3E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !801
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.f, align 8, !noalias !801
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !801
end_hunk_0
begin_hunk_1_@"_ZN94_$LT$rusqlite..row..Rows$u20$as$u20$fallible_streaming_iterator..FallibleStreamingIterator$GT$7advance17hd4cf90d0ff1f2d2dE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9575
  %i.aa = load ptr, ptr %i.g, align 8, !noalias !9575, !nonnull !7, !align !11, !noundef !7 ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !9576, !noundef !7 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1071) #33
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = add nuw nsw i64 %i.ab, 1
  store i64 %i.ad, ptr %i.aa, align 8, !noalias !9576
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !9576, !noundef !7
  invoke void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef %i.af, i32 noundef %i.y)
          to label %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2 unwind label %bb.m, !noalias !9575

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i64, ptr %i.aa, align 8, !noalias !9576, !noundef !7
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !9576
  br label %.body

_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2: ; preds = %bb.l
  %i.aj = load i64, ptr %i.aa, align 8, !noalias !9576, !noundef !7
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.aa, align 8, !noalias !9576
  %i.al = load i64, ptr %i.c, align 8, !range !30, !alias.scope !9577, !noalias !9578, !noundef !7
  %.not.i.i3 = icmp eq i64 %i.al, -9223372036854775783
  br i1 %.not.i.i3, label %bb.n, label %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit, !prof !16

bb.n:                                             ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @728, i64 noundef 46, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @727, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1077) #33
          to label %.noexc5 unwind label %bb.w

.noexc5:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9580)
  store ptr null, ptr %1, align 8, !alias.scope !9580, !noalias !9579
  %i.am = load ptr, ptr %i.h, align 8, !noalias !9581, !noundef !7
  %i.an = tail call noundef i32 @sqlite3_reset(ptr noundef %i.am) #34, !noalias !9581 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 -9223372036854775783, ptr %0, align 8, !alias.scope !9579, !noalias !9580
  br label %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9581
  %i.ap = load ptr, ptr %i.g, align 8, !noalias !9581, !nonnull !7, !align !11, !noundef !7 ; 6 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !9582, !noundef !7 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 9223372036854775807
  br i1 %i.ar, label %bb.s, label %bb.r, !prof !18

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1071) #33, !noalias !9582
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = add nuw nsw i64 %i.aq, 1
  store i64 %i.as, ptr %i.ap, align 8, !noalias !9582
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !9582, !noundef !7
  invoke void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %i.au, i32 noundef %i.an)
          to label %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i7 unwind label %bb.t, !noalias !9581

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i7: ; preds = %bb.s
  %i.aw = load i64, ptr %i.ap, align 8, !noalias !9582, !noundef !7
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.ap, align 8, !noalias !9582
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  %i.ay = load i64, ptr %i.b, align 8, !range !30, !alias.scope !9583, !noalias !9584, !noundef !7
  %.not.i.i8 = icmp eq i64 %i.ay, -9223372036854775783
  br i1 %.not.i.i8, label %bb.u, label %"_ZN4core6result19Result$LT$T$C$E$GT$10unwrap_err17had272eff270f58b5E.exit.i9", !prof !16

bb.u:                                             ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i7
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @728, i64 noundef 46, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @727, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1077) #33, !noalias !9585
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$10unwrap_err17had272eff270f58b5E.exit.i9": ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !9580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9581
  br label %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10

_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10: ; preds = %bb.p, %"_ZN4core6result19Result$LT$T$C$E$GT$10unwrap_err17had272eff270f58b5E.exit.i9"
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.az, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.g, ptr %i.ba, align 8
  store i64 -9223372036854775783, ptr %0, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.x, %bb.n, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.w ], [ %i.ag, %bb.m ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #31
          to label %common.resume unwind label %bb.z

_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit: ; preds = %_ZN8rusqlite10Connection13decode_result17he36ab9393ae7cce7E.exit.i2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !9573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9575
  %.pr = load i64, ptr %i.e, align 8, !alias.scope !9586
  %i.bc = icmp eq i64 %.pr, -9223372036854775783
  br i1 %i.bc, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit", label %bb.x

bb.x:                                             ; preds = %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit" unwind label %bb.w

"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit": ; preds = %bb.i, %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.y:                                             ; preds = %_ZN8rusqlite3row4Rows5reset17h2dac4ffe4e045939E.exit10, %bb.v, %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$rusqlite..error..Error$GT$$GT$17h032eef31844fc0e7E.exit", %bb.h
  ret void

bb.z:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17he47ebbb5cbf21d56E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9610
  call void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @680, i64 noundef 23, i64 noundef 3), !noalias !9611
  %i.e = load i8, ptr %i.b, align 8, !range !36, !noalias !9610, !noundef !7 ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !9610, !nonnull !7, !align !11, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9610
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.519.sroa.0.0.copyload.i = load i8, ptr %.sroa.519.0..sroa_idx.i, align 1, !noalias !9610
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.620.0.copyload.i = load ptr, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !9610 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9610
  %i.i = trunc nuw i8 %i.e to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1064) #33, !noalias !9612
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.620.0.copyload.i) ]
  %i.j = icmp eq i8 %.sroa.519.sroa.0.0.copyload.i, 1
  br i1 %i.j, label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9612, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9612
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.val9.i.i.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9612 ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.c, align 8, !noalias !9612, !noundef !7 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9613
  call void @llvm.experimental.noalias.scope.decl(metadata !9614)
  %i.k = icmp ugt i16 %.val.i.i.i.i, 9999
  br i1 %i.k, label %.thread.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %.lhs.trunc.i.i.i.i.i.i.i.i = urem i16 %.val.i.i.i.i, 10000 ; 2 uses
  %i.l = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.m = shl nuw nsw i16 %i.l, 1
  %i.n = zext nneg i16 %i.m to i64
  %i.o = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i, 100
  %i.p = shl nuw nsw i16 %i.o, 1
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @734, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = load i16, ptr %i.r, align 1, !noalias !9615
  store i16 %i.t, ptr %i.s, align 1, !alias.scope !9614, !noalias !9613
  %i.u = getelementptr inbounds nuw i8, ptr @734, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.w = load i16, ptr %i.u, align 1, !noalias !9615
  store i16 %i.w, ptr %i.v, align 1, !alias.scope !9614, !noalias !9613
  %2 = udiv i16 %.val.i.i.i.i, 10000
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i.i
  %i.x = icmp samesign ugt i16 %.val.i.i.i.i, 99
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.y = urem i16 %.val.i.i.i.i, 100
  %i.z = shl nuw nsw i16 %i.y, 1
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = udiv i16 %.val.i.i.i.i, 100
  %i.ac = getelementptr inbounds nuw i8, ptr @734, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ae = load i16, ptr %i.ac, align 1, !noalias !9615
  store i16 %i.ae, ptr %i.ad, align 1, !alias.scope !9614, !noalias !9613
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i.i.i = phi i64 [ 3, %bb.g ], [ 5, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.in.i.i.i.i.i.i.i.i = phi i16 [ %i.ab, %bb.g ], [ %.val.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.af = icmp samesign ult i16 %.sroa.0.2.in.i.i.i.i.i.i.i.i, 10
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = shl nuw nsw i16 %.sroa.0.2.in.i.i.i.i.i.i.i.i, 1
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add nsw i64 %.sroa.09.1.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr @734, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.al = load i16, ptr %i.aj, align 1, !noalias !9615
  store i16 %i.al, ptr %i.ak, align 1, !alias.scope !9614, !noalias !9613
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i

bb.j:                                             ; preds = %bb.h, %.thread.i.i.i.i.i.i.i.i
  %.sroa.0.236.i.i.i.i.i.i.i.i = phi i16 [ %2, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.in.i.i.i.i.i.i.i.i, %bb.h ]
  %.sroa.09.135.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.09.1.i.i.i.i.i.i.i.i, %bb.h ]
  %i.am = add nsw i64 %.sroa.09.135.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.an = trunc nuw nsw i16 %.sroa.0.236.i.i.i.i.i.i.i.i to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  %i.ap = or disjoint i8 %i.an, 48
  store i8 %i.ap, ptr %i.ao, align 1, !alias.scope !9614, !noalias !9613
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i

_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i: ; preds = %bb.j, %bb.i
  %.sroa.09.2.i.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %i.aq = sub nuw nsw i64 5, %.sroa.09.2.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.2.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %i.aq), !noalias !9612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9613
  %.val.i.i27.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9616, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i27.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9616
  %.val.i.i.i29.i = load i8, ptr %i.d, align 2, !range !36, !noalias !9617, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.620.0.copyload.i, i64 8 ; 3 uses
  switch i8 %.val.i.i.i29.i, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

default.unreachable:                              ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  unreachable

bb.k:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.at = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 3), !noalias !9616 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

bb.l:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.au = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 3), !noalias !9616 ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

bb.m:                                             ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h9091f7b0f86bf41fE.exit.i.i28.i
  %i.av = call noundef ptr @_ZN10serde_json3ser18format_escaped_str17hca26d9af7340272aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull align 1 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 4), !noalias !9616 ; 2 uses
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i4.i.i.i.i.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", !prof !18

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  %.sink.i.i.i.i.i = phi ptr [ %i.au, %bb.l ], [ %i.at, %bb.k ], [ %i.av, %bb.m ]
  %i.aw = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %.sink.i.i.i.i.i), !noalias !9616
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  %.val.i.i30.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9618, !nonnull !7, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i30.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 1), !noalias !9618
  %i.ax = call noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17hc3cb97f29914ca49E(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.620.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0), !noalias !9618 ; 2 uses
  %.not24.i = icmp eq ptr %i.ax, null
  br i1 %.not24.i, label %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i", label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i": ; preds = %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i"
  %.val.i.i31.i = load ptr, ptr %.sroa.620.0.copyload.i, align 8, !noalias !9619, !nonnull !7, !align !11, !noundef !7
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i31.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 1), !noalias !9619
  br label %"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit"

"_ZN96_$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$9serialize1_170_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$serde_core..ser..Serialize$GT$..serialize..Inner$GT$9serialize17hc971df3cb0654b18E.exit": ; preds = %bb.b, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i", %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i", %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i"
  %.sroa.0.0.i = phi ptr [ null, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$3end17hea5199d78d68b87aE.exit.i" ], [ %i.h, %bb.b ], [ %i.aw, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17hd49bf16b541e2ea4E.exit.i" ], [ %i.ax, %"_ZN96_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeTupleStruct$GT$15serialize_field17h856998bedf2b94d4E.exit.i" ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN96_$LT$rand..distr..uniform..int..UniformUsize$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17h1e1eff1c0a091543E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 4294967295
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %1 to i32                      ; 2 uses
  %i.e = trunc nuw i64 %2 to i32                  ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit.thread"

bb.e:                                             ; preds = %bb.d
  %i.g = sub nuw i64 %2, %1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 336 ; 3 uses
  %i.j = load i64, ptr %i.i, align 16, !noalias !7, !noundef !7 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 63
  br i1 %i.k, label %bb.f, label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.l, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.h), !noalias !9656
  br label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i

_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i: ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ %i.j, %bb.e ], [ 0, %bb.f ]    ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !9657, !noalias !9656, !noundef !7
  %i.p = add nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.p, ptr %i.i, align 16, !alias.scope !9657, !noalias !9656
  %i.q = zext i32 %i.o to i64
  %i.r = mul nuw i64 %i.g, %i.q                   ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 %i.d, %i.e
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit"

bb.g:                                             ; preds = %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit14.i.i
  %i.w = icmp eq i64 %i.m, 63
  br i1 %i.w, label %bb.h, label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.x, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.h), !noalias !9658
  br label %_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i

_ZN4rand3rng3Rng6random17hdda41ce35fde6830E.exit15.i.i: ; preds = %bb.h, %bb.g
  %i.y = phi i64 [ %i.p, %bb.g ], [ 0, %bb.h ]    ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !9659, !noalias !9658, !noundef !7
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %i.i, align 16, !alias.scope !9659, !noalias !9658
  %i.ac = zext i32 %i.aa to i64
  %i.ad = mul nuw i64 %i.g, %i.ac
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = xor i32 %i.t, -1
  %.not11.i.i = icmp ult i32 %i.ag, %i.af
  %i.ah = zext i1 %.not11.i.i to i64
  %i.ai = add nuw nsw i64 %i.s, %i.ah
  br label %"_ZN105_$LT$rand..distr..uniform..int..UniformInt$LT$u32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$13sample_single17hcf314eb01c2d39ddE.exit"

bb.i:                                             ; preds = %bb.c
  %i.aj = sub nuw i64 %2, %1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 336 ; 7 uses
  %i.am = load i64, ptr %i.al, align 16, !noalias !9660, !noundef !7 ; 4 uses
  %i.an = icmp ult i64 %i.am, 63
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i10.i.i = icmp eq i64 %i.am, 63
  br i1 %.not.i.i.i10.i.i, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ao = add nuw nsw i64 %i.am, 2                ; 2 uses
  store i64 %i.ao, ptr %i.al, align 16, !alias.scope !9661, !noalias !9662
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !9663, !noalias !9662
  br label %_ZN4rand3rng3Rng6random17h7769193f77ea40b2E.exit12.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !9661, !noalias !9662, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  tail call void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.at, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ak), !noalias !9662
  store i64 1, ptr %i.al, align 16, !alias.scope !9664, !noalias !9662
end_hunk_1
begin_hunk_2_@"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hf2370b125b17cd75E"

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite5error17decode_result_raw17h16c71faa3c40e349E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_get_autocommit(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite15path_to_cstring17h67ef4b71b1162b77E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite16inner_connection15InnerConnection15open_with_flags17h1687a9c9ddfb9422E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32, ptr noalias noundef readonly align 1 captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite16inner_connection15InnerConnection7prepare17h16e38a923d6e3a1bE(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @sqlite3_changes64(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_reset(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN66_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h94ba27fe14c27ed5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql11push_pragma17h5287309cb7568bc0E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance), i64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql15push_equal_sign17h281c6e13e7b0e016E(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite6pragma3Sql10push_value17h567b852418ae7880E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9collation61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$16create_collation17h1b689b8dad5f7d14E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h02583cff8909d59fE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h9bb11e8085487383E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h7ae6e4fdd504b580E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h60d4c839f060ee25E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h8674a788fea79599E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h981c27b082c3b3a7E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h366ad2c030c6e99dE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17hbb9d480bc1b59411E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17ha70ab4e18ef145e5E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h189e5956569ae132E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function17h6f5259ca5a846ca4E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_null(ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite14str_for_sqlite17hf802f4fc33c0fbeeE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN8rusqlite12len_as_c_int17h708253270090b143E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_zeroblob(ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN8rusqlite5error22error_from_sqlite_code17h4a12a03333ead4f4E(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @"_ZN53_$LT$$RF$str$u20$as$u20$rusqlite..bind..BindIndex$GT$3idx17hdba0167476a9e00fE"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_step(ptr noundef) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @sqlite3_finalize(ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h0a4e3d8d9a1e00e9E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN80_$LT$serde_tuple..Serializer$LT$S$GT$$u20$as$u20$serde_core..ser..Serializer$GT$22serialize_tuple_struct17h81aed87170cb3130E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h3a4201d07d0407d5E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(344)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E"(ptr noalias noundef align 8 dereferenceable(312)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h1ab37c61650c0065E"(ptr noalias noundef align 8 dereferenceable(344), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE"(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E"(ptr noalias noundef align 8 dereferenceable(80), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13fluent_bundle4args10FluentArgs3set17h7470d4e5f20f3495E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN13fluent_bundle4args10FluentArgs3set17h0573648f1ee82ce1E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hd625c996df861460E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h04b5638c27ac8fe8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN9hashbrown3raw13RawTableInner13drop_elements17hc735e450521d0f4eE(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9c2d07455947b27dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i64 noundef, i1 noundef zeroext) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef align 16 dereferenceable(64), ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E"}
!1 = distinct !{!1, !0, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E: argument 0"}
!2 = distinct !{!2, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E"}
!3 = distinct !{!3, !2, !"_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$$RF$T$GT$5clone17h1a40e6a57e5a9dd5E: argument 0"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!7 = !{}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{i8 0, i8 2}
!11 = !{i64 8}
!12 = !{i8 0, i8 6}
!13 = !{i32 0, i32 2}
!14 = !{i16 0, i16 2}
!15 = !{i64 0, i64 2}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i8 0, i8 4}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{i64 0, i64 3}
!20 = !{i64 0, i64 -9223372036854775806}
!21 = !{i64 4}
!22 = !{i64 1}
!23 = !{i64 2}
!24 = !{i8 0, i8 8}
!25 = !{i64 1, i64 0}
!26 = !{i64 0, i64 4}
!27 = !{i8 0, i8 5}
!28 = !{i64 0, i64 -9223372036854775772}
!29 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!30 = !{i64 0, i64 -9223372036854775782}
!31 = !{i8 -3, i8 5}
!32 = !{i64 0, i64 5}
!33 = !{i32 0, i32 3}
!34 = !{i8 1, i8 3}
!35 = !{i8 0, i8 7}
!36 = !{i8 0, i8 3}
!37 = !{i64 0, i64 25}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{i32 1, i32 0}
!40 = !{i64 0, i64 -9223372036854775773}
!41 = !{i64 0, i64 -9223372036854775803}
!42 = !{i64 0, i64 -9223372036854775794}
!43 = !{i64 0, i64 -9223372036854775802}
!44 = !{i64 0, i64 -9223372036854775783}
!45 = !{i64 0, i64 8}
!46 = !{i8 0, i8 57}
!47 = !{!1}
!48 = !{!3}
!49 = !{i32 0, i32 1114112}
!50 = !{!"branch_weights", i32 2146410443, i32 1073205}
!51 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!52 = distinct !{!52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE"}
!53 = distinct !{!53, !52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE: argument 1"}
!54 = distinct !{!54, !52, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hffdb914e61722edcE: argument 0"}
!55 = !{!54, !53}
!56 = distinct !{!56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E"}
!57 = distinct !{!57, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E: argument 1"}
!58 = distinct !{!58, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a9607195f14d3d9E: argument 0"}
!59 = !{!58, !57}
!60 = distinct !{!60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE"}
!61 = distinct !{!61, !60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE: argument 1"}
!62 = distinct !{!62, !60, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf390562e52bb91cbE: argument 0"}
!63 = !{!62, !61}
!64 = distinct !{!64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE"}
!65 = distinct !{!65, !64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE: argument 0"}
!66 = distinct !{!66, !64, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hed98287e00e564cbE: argument 1"}
!67 = !{!65}
!68 = !{!66}
!69 = distinct !{!69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f5f968eaca386c3E"}
!70 = distinct !{!70, !69, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5f5f968eaca386c3E: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E"}
!73 = distinct !{!73, !72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E: argument 0"}
!74 = distinct !{!74, !72, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h5193aab1212a71c9E: argument 1"}
!75 = distinct !{!75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E"}
!76 = distinct !{!76, !75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E: argument 0"}
!77 = distinct !{!77, !75, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hc0d048768bf77e92E: argument 1"}
!78 = distinct !{!78, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE"}
!79 = distinct !{!79, !78, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE: argument 0"}
!80 = distinct !{!80, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hacc8c6d7d867960bE"}
!81 = distinct !{!81, !80, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hacc8c6d7d867960bE: argument 0"}
!82 = !{!73}
!83 = !{!74}
!84 = !{!73, !74}
!85 = !{!76}
!86 = !{!76, !77, !73, !74}
!87 = !{!76, !73}
!88 = !{!77, !74}
!89 = !{!79, !74}
!90 = !{!81, !73}
!91 = distinct !{!91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E"}
!92 = distinct !{!92, !91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E: argument 0"}
!93 = distinct !{!93, !91, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hf2501272eb262f21E: argument 1"}
!94 = distinct !{!94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E"}
!95 = distinct !{!95, !94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E: argument 0"}
!96 = distinct !{!96, !94, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17ha3e873f4a6df3a52E: argument 1"}
!97 = distinct !{!97, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h2594badcbf904a96E"}
!98 = distinct !{!98, !97, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h2594badcbf904a96E: argument 0"}
!99 = !{!92}
!100 = !{!93}
!101 = !{!92, !93}
!102 = !{!95}
!103 = !{!95, !96, !92, !93}
!104 = !{!95, !92}
!105 = !{!96, !93}
!106 = !{!98, !92}
!107 = distinct !{!107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E"}
!108 = distinct !{!108, !107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E: argument 0"}
!109 = distinct !{!109, !107, !"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h547fcde17c7bbdc1E: argument 1"}
!110 = distinct !{!110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E"}
!111 = distinct !{!111, !110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E: argument 0"}
!112 = distinct !{!112, !110, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hcf022d9db1d63000E: argument 1"}
!113 = distinct !{!113, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE"}
!114 = distinct !{!114, !113, !"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$7discard17h85a34cdbc9c163beE: argument 0"}
!115 = distinct !{!115, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17he4f3e18ad1f1be71E"}
!116 = distinct !{!116, !115, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17he4f3e18ad1f1be71E: argument 0"}
!117 = !{!108}
!118 = !{!109}
!119 = !{!108, !109}
!120 = !{!111}
!121 = !{!111, !112, !108, !109}
!122 = !{!111, !108}
!123 = !{!112, !109}
!124 = !{!114, !109}
!125 = !{!116, !108}
!126 = distinct !{!126, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h22e4eb37dcd44e1eE"}
!127 = distinct !{!127, !126, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h22e4eb37dcd44e1eE: argument 0"}
!128 = distinct !{!128, !126, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h22e4eb37dcd44e1eE: argument 1"}
!129 = distinct !{!129, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h128a5dd0b8d8267aE"}
!130 = distinct !{!130, !129, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h128a5dd0b8d8267aE: argument 0"}
!131 = distinct !{!131, !129, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h128a5dd0b8d8267aE: argument 1"}
!132 = distinct !{!132, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hf3c3cd0f9605b2f8E"}
!133 = distinct !{!133, !132, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17hf3c3cd0f9605b2f8E: argument 0"}
!134 = !{!127}
!135 = !{!128}
!136 = !{!127, !128}
!137 = !{!130, !127}
!138 = !{!131, !128}
!139 = !{!133, !127}
!140 = distinct !{!140, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h7d21cc27ee0533ddE"}
!141 = distinct !{!141, !140, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h7d21cc27ee0533ddE: argument 0"}
!142 = distinct !{!142, !140, !"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17h7d21cc27ee0533ddE: argument 1"}
!143 = distinct !{!143, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h632d19fa2df713a9E"}
!144 = distinct !{!144, !143, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h632d19fa2df713a9E: argument 0"}
!145 = distinct !{!145, !143, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h632d19fa2df713a9E: argument 1"}
!146 = distinct !{!146, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h8edce5bc68e26fa4E"}
!147 = distinct !{!147, !146, !"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_none17h8edce5bc68e26fa4E: argument 0"}
!148 = !{!141}
!149 = !{!142}
!150 = !{!141, !142}
!151 = !{!144}
!152 = !{!144, !145, !141, !142}
end_hunk_2
