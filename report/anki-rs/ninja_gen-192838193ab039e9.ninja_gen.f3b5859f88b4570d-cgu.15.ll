Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.15?download=true
inline.NumInlined: 108
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4core5slice4sort6shared5pivot11median3_rec17h6b6ae2097566c4d5E:bb.a
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !3
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !3
  %i.r = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.val17, i64 noundef %.sroa.0.0.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.04.0.val19, i64 noundef %.sroa.04.0.val20) ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.val14 = load i64, ptr %i.o, align 8, !noundef !3
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 16 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.t, align 8, !noundef !3
  %i.u = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16)
  %i.v = xor i8 %i.u, %i.r
  %i.w = icmp slt i8 %i.v, 0
  br i1 %i.w, label %_ZN4core5slice4sort6shared5pivot7median317h128dbc00df71471fE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %.sroa.04.0.val12 = load i64, ptr %i.q, align 8, !noundef !3
  %.sroa.08.0.val = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %.sroa.08.0.val13 = load i64, ptr %i.t, align 8, !noundef !3
  %i.x = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13)
  %i.y = xor i8 %i.x, %i.r
  %i.z = icmp slt i8 %i.y, 0
  %..i = select i1 %i.z, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h128dbc00df71471fE.exit

_ZN4core5slice4sort6shared5pivot7median317h128dbc00df71471fE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7b5afb3059a92563E(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %4) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7b5afb3059a92563E(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 1 %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7b5afb3059a92563E(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 1 %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7b5afb3059a92563E(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 1 %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.n = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0.val14) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.n, 2
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %i.n to i1
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 32
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !21, !noalias !22, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 40
  %.val3.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !21, !noalias !22, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 32
  %.val4.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !22, !noalias !21, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 40
  %.val5.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !22, !noalias !21, !noundef !3
  %i.t = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val3.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i)
  %i.u = icmp slt i8 %i.t, 0
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi i1 [ %i.o, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.v = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.08.0.val12) ; 2 uses
  %.not.i.i.i15 = icmp eq i8 %i.v, 2
  br i1 %.not.i.i.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit
  %i.w = trunc nuw i8 %i.v to i1
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21

bb.g:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 32
  %.val.i.i.i17 = load ptr, ptr %i.x, align 8, !alias.scope !23, !noalias !24, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 40
  %.val3.i.i.i18 = load i64, ptr %i.y, align 8, !alias.scope !23, !noalias !24, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 32
  %.val4.i.i.i19 = load ptr, ptr %i.z, align 8, !alias.scope !24, !noalias !23, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 40
  %.val5.i.i.i20 = load i64, ptr %i.aa, align 8, !alias.scope !24, !noalias !23, !noundef !3
  %i.ab = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i17, i64 noundef %.val3.i.i.i18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i19, i64 noundef %.val5.i.i.i20)
  %i.ac = icmp slt i8 %i.ab, 0
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i16 = phi i1 [ %i.w, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i16
  br i1 %i.ad, label %_ZN4core5slice4sort6shared5pivot7median317ha3dbd650e5e0568cE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ae = tail call noundef range(i8 0, 3) i8 @_ZN4core3cmp21default_chaining_impl17h07522c035a6566a3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.08.0.val) ; 2 uses
  %.not.i.i.i22 = icmp eq i8 %i.ae, 2
  br i1 %.not.i.i.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = trunc nuw i8 %i.ae to i1
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit28

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val, i64 32
  %.val.i.i.i24 = load ptr, ptr %i.ag, align 8, !alias.scope !25, !noalias !26, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val, i64 40
  %.val3.i.i.i25 = load i64, ptr %i.ah, align 8, !alias.scope !25, !noalias !26, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 32
  %.val4.i.i.i26 = load ptr, ptr %i.ai, align 8, !alias.scope !26, !noalias !25, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 40
  %.val5.i.i.i27 = load i64, ptr %i.aj, align 8, !alias.scope !26, !noalias !25, !noundef !3
  %i.ak = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i24, i64 noundef %.val3.i.i.i25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i26, i64 noundef %.val5.i.i.i27)
  %i.al = icmp slt i8 %i.ak, 0
  br label %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit28

_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit28: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i23 = phi i1 [ %i.af, %bb.i ], [ %i.al, %bb.j ]
  %i.am = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i23
  %..i = select i1 %i.am, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_ZN4core5slice4sort6shared5pivot7median317ha3dbd650e5e0568cE.exit

_ZN4core5slice4sort6shared5pivot7median317ha3dbd650e5e0568cE.exit: ; preds = %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit28
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit21 ], [ %..i, %_ZN4core3ops8function5FnMut8call_mut17h1d748221bf22b50aE.exit28 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h4126761b39f53a30E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ci, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.t = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !33
  %i.u = icmp sgt i8 %i.t, -1                     ; 2 uses
  %.not39.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.u, label %.preheader28.i, label %.preheader.i

.preheader28.i:                                   ; preds = %bb.k
  br i1 %.not39.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i", label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not39.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.preheader28.i, %bb.l
  %.sroa.01.0.i30.i.a = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader28.i ] ; 3 uses
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i30.i.a ; 4 uses
  %7 = getelementptr i8, ptr %6, i64 8
  %.val10.i = load ptr, ptr %7, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %8 = getelementptr i8, ptr %6, i64 16
  %.val11.i = load i64, ptr %8, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.v = getelementptr i8, ptr %6, i64 -16
  %.val12.i.a = load ptr, ptr %i.v, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %6, i64 -8
  %.val13.i = load i64, ptr %i.w, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.x = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val12.i.a, i64 noundef %.val13.i), !noalias !33
  %i.y = icmp slt i8 %i.x, 0
  br i1 %i.y, label %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i64 %.sroa.01.0.i30.i.a, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i, label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i33.i.a = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %9 = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i33.i.a ; 4 uses
  %10 = getelementptr i8, ptr %9, i64 8
  %.val.i = load ptr, ptr %10, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %11 = getelementptr i8, ptr %9, i64 16
  %.val7.i = load i64, ptr %11, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.aa = getelementptr i8, ptr %9, i64 -16
  %.val8.i.a = load ptr, ptr %i.aa, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %i.ab = getelementptr i8, ptr %9, i64 -8
  %.val9.i = load i64, ptr %i.ab, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.ac = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h016d9fa549d7cf95E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.a, i64 noundef %.val9.i), !noalias !33
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i

bb.m:                                             ; preds = %.lr.ph34.i
  %i.ae = add nuw i64 %.sroa.01.1.i33.i.a, 1      ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.ae, %i.m
  br i1 %exitcond42.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i, label %.lr.ph34.i

_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i: ; preds = %bb.m, %.lr.ph34.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i30.i.a, %.lr.ph.i ], [ %.sroa.01.1.i33.i.a, %.lr.ph34.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.af = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.af)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h1b2141ed0c29da66E.exit.i
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not16.i.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i = or i1 %i.u, %.not16.i.i.i
  br i1 %or.cond.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i", label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i18.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.01.0)
  %i.ah = shl i64 %.sroa.0.0.i18.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i19.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i19.i, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i19.i, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i, %.preheader28.i, %bb.n, %bb.j
  %.sroa.0.0.i25.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader28.i ], [ %.sroa.0.0.i515862.i, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i ]
  %i.ak = shl i64 %.sroa.0.0.i25.i, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.am = phi i64 [ %i.ag, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i515862.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i515862.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.015.i.i.i = phi i64 [ %i.as, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.015.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.015.i.i.i
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17ha750dd30d8e3a83fE(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 3)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i unwind label %bb.q, !noalias !32

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #15, !noalias !32
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h394129176ac4c8f1E.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = add nuw nsw i64 %.sroa.0.015.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice4sort6stable5drift10create_run17h9d541a248d625095E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9354259ff75f680eE.exit.i" ], [ %i.aj, %bb.p ], [ %i.ah, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.av = sub i64 %factor, %i.at
  %i.aw = add i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit
  %.sroa.02.138 = phi i64 [ %i.bc, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bc = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.137 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.137
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl i64 %i.bl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef %i.bj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h4a07ef6b86726049E(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, -1) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %i.bj, ptr noalias noundef nonnull align 1 %5)
  %i.bz = shl i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17he370692ac76e849bE.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.w ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cl, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd051d0fe8ed535ddE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h8322d313862672a3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
end_hunk_0
