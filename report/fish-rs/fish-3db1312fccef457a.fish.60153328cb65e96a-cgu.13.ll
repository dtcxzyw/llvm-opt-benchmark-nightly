Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2009
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 30
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs1_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15BinarySemaphore4wait:bb.a
bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 8)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @130, ptr noundef nonnull inttoptr (i64 7 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #54
  unreachable

.loopexit:                                        ; preds = %bb.c, %bb.i
  ret void

bb.f:                                             ; preds = %bb.j, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCse7JGOylGlDZ_3nix6unistd4readRNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1)
  %i.n = load i32, ptr %i.a, align 8, !range !19, !noundef !11
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.i, align 4, !range !41, !noundef !11
  %trunc = trunc nuw i32 %i.p to i8
  switch i8 %trunc, label %bb.k [
    i8 4, label %bb.j
    i8 11, label %bb.j
  ]

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.h, align 8, !noundef !11
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.k:                                             ; preds = %bb.g
  call void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 4)
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @130, ptr noundef nonnull inttoptr (i64 7 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 33, 4295030031) i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte(i8 noundef %0) unnamed_addr #2 {
bb.a:
  switch i8 %0, label %bb.b [
    i8 13, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread
    i8 9, label %.fold.split.i.i
    i8 32, label %.fold.split3.i.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef align 4 ptr @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_terminal_mode_on_startup() ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

.fold.split.i.i:                                  ; preds = %bb.a
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread

.fold.split3.i.i:                                 ; preds = %bb.a
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.c = load i8, ptr %i.b, align 1, !noundef !11
  %i.d = icmp eq i8 %0, %i.c
  br i1 %i.d, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i8 %0, label %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i [
    i8 127, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread
    i8 27, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread

_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i: ; preds = %bb.d
  %i.e = icmp ult i8 %0, 32
  br i1 %i.e, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i
  %i.f = icmp eq i8 %0, 0
  br i1 %i.f, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i8 %0, 27
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = or disjoint i8 %0, 64
  %i.i = zext nneg i8 %i.h to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.j = or disjoint i8 %0, 96
  %i.k = zext nneg i8 %i.j to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread

_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread: ; preds = %bb.i, %bb.f, %bb.h, %bb.e, %bb.a, %bb.d, %.fold.split.i.i, %bb.c, %.fold.split3.i.i
  %.sroa.4.0.i.ph = phi i64 [ 0, %.fold.split3.i.i ], [ 0, %bb.c ], [ 0, %.fold.split.i.i ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ], [ 4294967296, %bb.h ], [ 4294967296, %bb.f ], [ 4294967296, %bb.i ]
  %.sroa.0.0.i.ph = phi i64 [ 62734, %.fold.split3.i.i ], [ 62720, %bb.c ], [ 62733, %.fold.split.i.i ], [ 62721, %bb.d ], [ 62723, %bb.a ], [ 62722, %bb.e ], [ %i.i, %bb.h ], [ 62734, %bb.f ], [ %i.k, %bb.i ]
  %i.l = or disjoint i64 %.sroa.0.0.i.ph, %.sroa.4.0.i.ph
  br label %bb.k

bb.j:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i
  %i.m = zext i8 %0 to i64
  br label %bb.k

bb.k:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread, %bb.j
  %i.n = phi i64 [ %i.m, %bb.j ], [ %i.l, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread ]
  ret i64 %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 33, 4295030031) i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_char(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 255
  %i.b = trunc nuw i32 %0 to i8                   ; 5 uses
  %.sroa.04.0.insert.ext = zext nneg i32 %0 to i64 ; 2 uses
  br i1 %i.a, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResulthNtNtB5_4char16TryFromCharErrorE6map_orNtNtCs8frGy5WneL6_4fish3key3KeyNvMs1_B1n_B1l_16from_single_byteEB1p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.c [
    i8 13, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
    i8 9, label %.fold.split.i.i.i.i.i
    i8 32, label %.fold.split3.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef align 4 ptr @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_terminal_mode_on_startup() ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

.fold.split.i.i.i.i.i:                            ; preds = %bb.b
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

.fold.split3.i.i.i.i.i:                           ; preds = %bb.b
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.e = load i8, ptr %i.d, align 1, !noundef !11
  %i.f = icmp eq i8 %i.e, %i.b
  br i1 %i.f, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i8 %i.b, label %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i [
    i8 127, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
    i8 27, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i: ; preds = %bb.e
  %i.g = icmp samesign ult i32 %0, 32
  br i1 %i.g, label %bb.g, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResulthNtNtB5_4char16TryFromCharErrorE6map_orNtNtCs8frGy5WneL6_4fish3key3KeyNvMs1_B1n_B1l_16from_single_byteEB1p_.exit

bb.g:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = icmp samesign ult i32 %0, 27
  br i1 %i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = or disjoint i8 %i.b, 64
  %i.k = zext nneg i8 %i.j to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.l = or disjoint i8 %i.b, 96
  %i.m = zext nneg i8 %i.l to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %.fold.split3.i.i.i.i.i, %.fold.split.i.i.i.i.i, %bb.b
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ 0, %.fold.split3.i.i.i.i.i ], [ 0, %bb.d ], [ 0, %.fold.split.i.i.i.i.i ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ 4294967296, %bb.i ], [ 4294967296, %bb.g ], [ 4294967296, %bb.j ]
  %.sroa.0.0.i.ph.i.i.i = phi i64 [ 62734, %.fold.split3.i.i.i.i.i ], [ 62720, %bb.d ], [ 62733, %.fold.split.i.i.i.i.i ], [ 62721, %bb.e ], [ 62723, %bb.b ], [ 62722, %bb.f ], [ %i.k, %bb.i ], [ 62734, %bb.g ], [ %i.m, %bb.j ]
  %i.n = or disjoint i64 %.sroa.0.0.i.ph.i.i.i, %.sroa.4.0.i.ph.i.i.i
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResulthNtNtB5_4char16TryFromCharErrorE6map_orNtNtCs8frGy5WneL6_4fish3key3KeyNvMs1_B1n_B1l_16from_single_byteEB1p_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResulthNtNtB5_4char16TryFromCharErrorE6map_orNtNtCs8frGy5WneL6_4fish3key3KeyNvMs1_B1n_B1l_16from_single_byteEB1p_.exit: ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i, %bb.a, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
  %.sroa.07.0.i = phi i64 [ %.sroa.04.0.insert.ext, %bb.a ], [ %i.n, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i ], [ %.sroa.04.0.insert.ext, %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i ]
  ret i64 %.sroa.07.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1661, !nonnull !11, !align !30, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1661, !noundef !11 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8
  %.promoted33 = load i64, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.f, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5118.0..sroa_idx.i.promoted = load i8, ptr %.sroa.5118.0..sroa_idx.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.av, %bb.a
  %i.l = phi i8 [ %i.ee, %bb.av ], [ %.sroa.5118.0..sroa_idx.i.promoted, %bb.a ] ; 17 uses
  %i.m = phi i64 [ %i.ef, %bb.av ], [ %.promoted33, %bb.a ] ; 17 uses
  %i.n = phi i64 [ %i.eg, %bb.av ], [ %.promoted, %bb.a ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.o = icmp ult i64 %i.f, %i.n
  br i1 %i.o, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %i.f, %i.n                   ; 4 uses
  %.idx150.i = shl nuw nsw i64 %i.n, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx150.i ; 13 uses
  %.not.i = icmp eq i64 %i.f, %i.n
  br i1 %.not.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.q, align 4, !range !31, !noalias !1662, !noundef !11 ; 7 uses
  %i.s = add nsw i32 %i.r, -48
  %or.cond129.i = icmp ult i32 %i.s, 10
  %i.t = icmp eq i32 %i.r, 46
  %or.cond149.i = or i1 %i.t, %or.cond129.i
  br i1 %or.cond149.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1662
  store i64 0, ptr %i.b, align 8, !noalias !1662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1662
  call void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1662
  %i.u = load i8, ptr %i.a, align 8, !range !13, !noalias !1662, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.an, label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.w = and i32 %i.r, 2097119
  %i.x = add nsw i32 %i.w, -65
  %or.cond130.i = icmp ult i32 %i.x, 26
  br i1 %or.cond130.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i32 %i.r, 170
  br i1 %i.y, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef %i.r) #47, !noalias !1662
  %.pre177.i = load i32, ptr %i.q, align 4, !range !31, !noalias !1662 ; 2 uses
  br i1 %i.z, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %i.aa = phi i32 [ %i.r, %bb.f ], [ %.pre177.i, %bb.h ]
  %i.ab = icmp ne i32 %i.aa, 120
  %.not126.i = icmp eq i64 %i.p, 1
  %or.cond135.i = or i1 %.not126.i, %i.ab
  br i1 %or.cond135.i, label %.lr.ph.i.i.preheader, label %bb.l

.lr.ph.i.i.preheader:                             ; preds = %bb.n, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit, %bb.m, %._crit_edge.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i
  %.sroa.02.09.i.i = phi i64 [ %i.ak, %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ac = phi ptr [ %i.ad, %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.val.i.i = load i32, ptr %i.ac, align 4, !range !31, !noalias !1663, !noundef !11 ; 5 uses
  %i.ae = and i32 %.val.i.i, 2097119
  %i.af = add nsw i32 %i.ae, -65
  %or.cond4.i.i.i = icmp ult i32 %i.af, 26
  br i1 %or.cond4.i.i.i, label %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ag = icmp samesign ult i32 %.val.i.i, 170
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef %.val.i.i) #47, !noalias !1663
  br i1 %i.ah, label %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i, label %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread7.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %.val.i.i, -58
  %or.cond3.old.i.i.i = icmp ult i32 %i.ai, -10
  %i.aj = icmp ne i32 %.val.i.i, 95
  %or.cond.i.i = and i1 %i.aj, %or.cond3.old.i.i.i
  br i1 %or.cond.i.i, label %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread7.i.i, label %_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i

_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.02.09.i.i, 1
  %i.al = icmp eq ptr %i.ad, %i.i
  br i1 %i.al, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_.exit.i, label %.lr.ph.i.i

_RNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB7_5State9get_token0B9_.exit.thread7.i.i: ; preds = %bb.k, %bb.j
  %i.am = icmp ult i64 %.sroa.02.09.i.i, %i.p
  call void @llvm.assume(i1 %i.am)
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_.exit.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !31, !noalias !1662, !noundef !11 ; 7 uses
  switch i32 %i.ao, label %bb.m [
    i32 32, label %.thread.i.a
    i32 13, label %.thread.i.a
    i32 12, label %.thread.i.a
    i32 11, label %.thread.i.a
    i32 10, label %.thread.i.a
    i32 9, label %.thread.i.a
  ]

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i32 %i.ao, 133
  br i1 %i.ap, label %.lr.ph.i.i.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = lshr i32 %i.ao, 8
  switch i32 %i.aq, label %.lr.ph.i.i.preheader [
    i32 0, label %bb.q
    i32 22, label %bb.o
    i32 32, label %bb.r
    i32 48, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i32 %i.ao, 5760
  %i.as = zext i1 %i.ar to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.p:                                             ; preds = %bb.n
  %i.at = icmp eq i32 %i.ao, 12288
  %i.au = zext i1 %i.at to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.q:                                             ; preds = %bb.n
  %i.av = and i32 %i.ao, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !1662, !noundef !11
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

bb.r:                                             ; preds = %bb.n
  %i.az = and i32 %i.ao, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1662, !noundef !11
  %i.bd = lshr i8 %i.bc, 1
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit

_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.sroa.0.0.i = phi i8 [ %i.au, %bb.p ], [ %i.ay, %bb.q ], [ %i.as, %bb.o ], [ %i.bd, %bb.r ]
  %i.be = trunc i8 %.sroa.0.0.i to i1
  br i1 %i.be, label %.thread.i.a, label %.lr.ph.i.i.preheader

bb.s:                                             ; preds = %bb.h, %bb.g
  %i.bf = phi i32 [ %.pre177.i, %bb.h ], [ %i.r, %bb.g ]
  switch i32 %i.bf, label %bb.t [
    i32 43, label %bb.ac
    i32 45, label %bb.u
    i32 120, label %.thread.i.a
    i32 42, label %.thread.i.a
    i32 47, label %bb.v
    i32 94, label %bb.w
    i32 37, label %bb.x
    i32 40, label %bb.y
    i32 41, label %bb.z
    i32 44, label %bb.aa
    i32 32, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
    i32 9, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
    i32 10, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
    i32 13, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
    i32 61, label %bb.ab
    i32 62, label %bb.ab
    i32 60, label %bb.ab
    i32 38, label %bb.ab
    i32 124, label %bb.ab
    i32 33, label %bb.ab
  ]

bb.t:                                             ; preds = %bb.s
  store i64 4, ptr %0, align 8, !alias.scope !1661
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !1661
  store i64 0, ptr %.sroa.4117.0..sroa_idx.i, align 8, !alias.scope !1661
  store i8 4, ptr %.sroa.5118.0..sroa_idx.i, align 8, !alias.scope !1661
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  br label %bb.ac

.thread.i.a:                                      ; preds = %bb.s, %bb.s, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  br label %bb.ac

bb.v:                                             ; preds = %bb.s
  br label %bb.ac

bb.w:                                             ; preds = %bb.s
  br label %bb.ac

bb.x:                                             ; preds = %bb.s
  br label %bb.ac

bb.y:                                             ; preds = %bb.s
  br label %bb.ac

bb.z:                                             ; preds = %bb.s
  br label %bb.ac

bb.aa:                                            ; preds = %bb.s
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  store i64 4, ptr %0, align 8, !alias.scope !1661
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !1661
  store i64 0, ptr %.sroa.4117.0..sroa_idx.i, align 8, !alias.scope !1661
  store i8 6, ptr %.sroa.5118.0..sroa_idx.i, align 8, !alias.scope !1661
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.thread.i.a, %bb.u, %bb.t, %bb.s
  %i.bg = phi i8 [ 4, %bb.t ], [ 6, %bb.ab ], [ %i.l, %bb.u ], [ %i.l, %.thread.i.a ], [ %i.l, %bb.v ], [ %i.l, %bb.w ], [ %i.l, %bb.x ], [ %i.l, %bb.y ], [ %i.l, %bb.z ], [ %i.l, %bb.aa ], [ %i.l, %bb.s ]
  %i.bh = phi i64 [ 4, %bb.t ], [ 4, %bb.ab ], [ %i.m, %bb.u ], [ %i.m, %.thread.i.a ], [ %i.m, %bb.v ], [ %i.m, %bb.w ], [ %i.m, %bb.x ], [ %i.m, %bb.y ], [ %i.m, %bb.z ], [ %i.m, %bb.aa ], [ %i.m, %bb.s ]
end_hunk_0
begin_hunk_1_@_RNvNtCs8frGy5WneL6_4fish6common19reformat_for_screen:.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val68 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  %.val69 = load i64, ptr %i.k, align 8, !noundef !11 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef range(i64 0, 4611686018427387904) %.val69)
          to label %.noexc89 unwind label %bb.v

.noexc89:                                         ; preds = %bb.w
  %i.bv = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2116, !noundef !11 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 2305843009213693952
  call void @llvm.assume(i1 %i.bw)
  %.not.i.i87 = icmp eq i64 %.val69, 0
  br i1 %.not.i.i87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc89
  %i.bx = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2116, !nonnull !11, !noundef !11
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  %i.bz = shl nuw nsw i64 %.val69, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr nonnull readonly align 4 %.val68, i64 %i.bz, i1 false)
  %.pre.i.i88 = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2116
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc89
  %i.ca = phi i64 [ %.pre.i.i88, %bb.x ], [ %i.bv, %.noexc89 ]
  %i.cb = add i64 %i.ca, %.val69
  store i64 %i.cb, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2116
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc80, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.ad
  %.sroa.011.2 = phi i64 [ %.sroa.011.0122, %bb.ad ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %i.bg, %.noexc80 ]
  %.sroa.0.2 = phi i64 [ %i.cg, %bb.ad ], [ %.sroa.0.1121, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ], [ %.sroa.0.1111, %.noexc80 ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.0.2, %2
  br i1 %i.ce, label %.preheader95, label %._crit_edge

bb.ac:                                            ; preds = %.loopexit.split-lp102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.ad:                                            ; preds = %.loopexit, %bb.d
  %i.cg = add nuw i64 %.sroa.0.0123, 1
  br label %bb.ab

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %.pn66
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common19valid_var_name_char(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef %0)
  %i.b = icmp eq i32 %0, 95
  %.sroa.0.0 = or i1 %i.b, %i.a
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish6common23get_omitted_newline_str() unnamed_addr #19 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNtCs8frGy5WneL6_4fish6common19OMITTED_NEWLINE_STR monotonic, align 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish6common23init_special_chars_once() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !48, !noundef !11
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit, label %bb.c

_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i
  %i.e = tail call noundef zeroext i1 @_RNvCs5UXtnEuoeIl_11fish_common18is_console_session() ; 2 uses
  %. = select i1 %i.e, ptr @259, ptr @257
  %.3 = select i1 %i.e, i32 42, i32 9679
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit
  %.sink2 = phi ptr [ @261, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i ], [ %., %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit ]
  %.sink = phi i32 [ 8226, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i ], [ %.3, %_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux.exit ]
  store atomic ptr %.sink2, ptr @_RNvNtCs8frGy5WneL6_4fish6common19OMITTED_NEWLINE_STR monotonic, align 8
  store atomic i32 %.sink, ptr @_RNvCs5UXtnEuoeIl_11fish_common21OBFUSCATION_READ_CHAR monotonic, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common26has_working_tty_timestamps() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !48, !noundef !11
  %i.e = icmp ne i8 %i.d, 1
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux(i8 noundef range(i8 0, 3) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child() ; 0 uses
  %i.b = load atomic i32, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_(ptr noundef nonnull align 4 @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit: ; preds = %bb.a, %bb.b
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux6RESULT, i64 4), align 4, !range !48, !noundef !11 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit
  %i.e = icmp eq i8 %0, 0
  %i.f = icmp eq i8 %i.d, %0
  %spec.select = or i1 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit
  %.sroa.0.0 = phi i1 [ false, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE15get_or_try_initNCINvB2_11get_or_initNCNvB1x_30is_windows_subsystem_for_linux0E0zEB1z_.exit ], [ %spec.select, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac(double noundef %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, f0x43F0000000000000
  br i1 %i.b, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 4 uses
  switch i64 %i.c, label %.lr.ph [
    i64 0, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit
    i64 1, label %.preheader.i._crit_edge
  ]

.preheader.i:                                     ; preds = %.lr.ph
  %i.d = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.e = add nuw i64 %i.f, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %i.c
  br i1 %exitcond.not.i, label %.preheader.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.preheader.i
  %.sroa.01.0.i8 = phi i64 [ %i.d, %.preheader.i ], [ 1, %bb.c ]
  %i.f = phi i64 [ %i.e, %.preheader.i ], [ 1, %bb.c ] ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i8, i64 %i.f) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %bb.c
  %.sroa.01.0.i.lcssa = phi i64 [ %i.c, %bb.c ], [ %i.d, %.preheader.i ]
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.lcssa, i64 %i.c) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %1 = extractvalue { i64, i1 } %i.i, 0
  %2 = uitofp i64 %1 to double
  %3 = select i1 %i.j, double +inf, double %2
  br label %_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit

_RINvXsc_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldyNCNvNtCs8frGy5WneL6_4fish8tinyexpr3fac0INtNtBa_6option6OptionyEEB29_.exit: ; preds = %.lr.ph, %bb.c, %.preheader.i._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ +inf, %bb.b ], [ +qnan, %bb.a ], [ 1.000000e+00, %bb.c ], [ %3, %.preheader.i._crit_edge ], [ +inf, %.lr.ph ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr(double noundef %0, double noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  %i.c = fcmp olt double %1, 0.000000e+00
  %or.cond = or i1 %i.b, %i.c
  %i.d = fcmp olt double %0, %1
  %or.cond1 = or i1 %i.d, %or.cond
  br i1 %or.cond1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ogt double %0, f0x43F0000000000000
  %i.f = fcmp ogt double %1, f0x43F0000000000000
  %or.cond2 = or i1 %i.e, %i.f
  br i1 %or.cond2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.g
  %.sroa.03.0 = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28 = icmp eq i64 %.sroa.03.0, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0
  %i.m = sub nuw i64 %i.g, %.sroa.03.0            ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #54
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.sroa.07.030 = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph ]
  %.sroa.0.01829 = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829, 1
  %i.p = add i64 %.sroa.0.01829, %i.m             ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.f, %._crit_edge.loopexit, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ %i.r, %._crit_edge.loopexit ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  ret double %.sroa.0.0

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.l, !prof !15

bb.k:                                             ; preds = %.lr.ph.split
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829            ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.01829, %.sroa.03.0
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr3npr(double noundef %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 0.000000e+00
  %i.c = fcmp olt double %1, 0.000000e+00
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = fcmp olt double %0, %1
  %or.cond1.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond1.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ogt double %0, f0x43F0000000000000
  %i.f = fcmp ogt double %1, f0x43F0000000000000
  %or.cond2.i = or i1 %i.e, %i.f
  br i1 %or.cond2.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %0) ; 5 uses
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  %i.i = lshr i64 %i.g, 1
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, %i.h
  br i1 %i.k, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.03.0.i = phi i64 [ %i.n, %bb.g ], [ %i.h, %bb.d ] ; 4 uses
  %.not.i28.i = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %.not.i28.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = icmp ult i64 %i.g, %.sroa.03.0.i
  %i.m = sub nuw i64 %i.g, %.sroa.03.0.i          ; 2 uses
  br i1 %i.l, label %bb.i, label %.lr.ph.split.i

bb.g:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.g, %i.h
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #54
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %.sroa.07.030.i = phi i64 [ %i.v, %bb.l ], [ 1, %.lr.ph.i ]
  %.sroa.0.01829.i = phi i64 [ %i.o, %bb.l ], [ 1, %.lr.ph.i ] ; 4 uses
  %i.o = add i64 %.sroa.0.01829.i, 1
  %i.p = add i64 %.sroa.0.01829.i, %i.m           ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.k, label %bb.j

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.r = uitofp i64 %i.v to double
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.030.i, i64 %i.p) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, label %bb.l, !prof !15

bb.k:                                             ; preds = %.lr.ph.split.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #54
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = udiv i64 %i.u, %.sroa.0.01829.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.01829.i, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.split.i

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit:      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.f, %._crit_edge.loopexit.i
  %.sroa.0.0.i = phi double [ %i.r, %._crit_edge.loopexit.i ], [ +inf, %bb.a ], [ +qnan, %bb.b ], [ +inf, %bb.c ], [ 1.000000e+00, %bb.f ], [ +inf, %bb.j ]
  %i.w = fcmp olt double %1, 0.000000e+00
  br i1 %i.w, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.m

bb.m:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit
  %i.x = fcmp ogt double %1, f0x43F0000000000000
  br i1 %i.x, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f64(double %1) ; 4 uses
  switch i64 %i.y, label %.lr.ph [
    i64 0, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit
    i64 1, label %.preheader.i.i._crit_edge
  ]

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.z = extractvalue { i64, i1 } %i.ac, 0        ; 2 uses
  %i.aa = add nuw i64 %i.ab, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.y
  br i1 %exitcond.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.preheader.i.i
  %.sroa.01.0.i.i13 = phi i64 [ %i.z, %.preheader.i.i ], [ 1, %bb.n ]
  %i.ab = phi i64 [ %i.aa, %.preheader.i.i ], [ 1, %bb.n ] ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i13, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit, label %.preheader.i.i

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %bb.n
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.y, %bb.n ], [ %i.z, %.preheader.i.i ]
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.01.0.i.i.lcssa, i64 %i.y) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %2 = extractvalue { i64, i1 } %i.ae, 0
  %3 = uitofp i64 %2 to double
  %4 = select i1 %i.af, double +inf, double %3
  br label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit

_RNvNtCs8frGy5WneL6_4fish8tinyexpr3fac.exit:      ; preds = %.lr.ph, %bb.n, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit, %bb.m, %.preheader.i.i._crit_edge
  %.sroa.0.0.i1 = phi double [ +inf, %bb.m ], [ +qnan, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr3ncr.exit ], [ 1.000000e+00, %bb.n ], [ %4, %.preheader.i.i._crit_edge ], [ +inf, %.lr.ph ]
  %i.ag = fmul double %.sroa.0.0.i, %.sroa.0.0.i1
  ret double %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ], [ -inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp ogt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %bb.f, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ -inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7maximum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal noundef double @_RNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.h, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi double [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ], [ +inf, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val.i = load double, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %i.c = fcmp uno double %.sroa.02.0.i, 0.000000e+00
  br i1 %i.c, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = fcmp uno double %.val.i, 0.000000e+00
  br i1 %i.d, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.sroa.02.0.i, %.val.i
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp olt double %.sroa.02.0.i, %.val.i
  %spec.store.select.i.i = select i1 %i.f, double %.sroa.02.0.i, double %.val.i
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = bitcast double %.sroa.02.0.i to i64
  %.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.i.i, label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i

_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %spec.store.select.i.i, %bb.d ], [ %.val.i, %bb.b ], [ %.sroa.02.0.i, %bb.f ], [ %.val.i, %bb.e ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0EB1J_.exit: ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i, %bb.a
  %.sroa.0.0.i = phi double [ +inf, %bb.a ], [ %.sroa.0.0.i.i, %_RNCNvNtCs8frGy5WneL6_4fish8tinyexpr7minimum0B5_.exit.i ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish8tinyexpr9te_interp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 17 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.d, align 8
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 -1, ptr %.sroa.3.0..sroa_idx.i, align 8
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
  %i.e = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a), !inline_history !2117 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.a, align 8, !range !42, !noundef !11 ; 3 uses
  %i.h = icmp ne i64 %i.g, 10
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 11
  br i1 %i.i, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.0.08.i.i = phi double [ %.sroa.07.0.i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.j = load i8, ptr %i.f, align 8, !range !34, !noundef !11 ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.j, 2
  br i1 %switch.i.i, label %bb.b, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i
  call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a), !inline_history !2117
  %i.k = call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a), !inline_history !2117 ; 2 uses
  %i.l = icmp eq i8 %i.j, 0
  %i.m = fneg double %i.k
  %.sroa.07.0.p.i.i = select i1 %i.l, double %i.k, double %i.m
  %.sroa.07.0.i.i = fadd double %.sroa.0.08.i.i, %.sroa.07.0.p.i.i ; 2 uses
  %i.n = load i64, ptr %i.a, align 8, !range !42, !noundef !11 ; 3 uses
  %i.o = icmp ne i64 %i.n, 10
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, 11
  br i1 %i.p, label %.lr.ph.i.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit: ; preds = %bb.b, %bb.a
  %i.q = phi i64 [ %i.g, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.0.0.lcssa.i.i = phi double [ %i.e, %bb.a ], [ %.sroa.07.0.i.i, %bb.b ]
  %i.r = icmp eq i64 %i.q, 5
  br i1 %i.r, label %bb.c, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread

bb.c:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  store double %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.s, align 8
  br label %bb.d

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread: ; preds = %.lr.ph.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !43, !noundef !11 ; 2 uses
  %.not = icmp eq i8 %i.u, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.014.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.617.0..sroa_idx, i64 7, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4eval.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.x = load i64, ptr %i.w, align 8, !noundef !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0 = phi i64 [ %.sroa.014.0.copyload, %bb.e ], [ %i.x, %bb.f ]
  %.sroa.53.0 = phi i64 [ %.sroa.415.0.copyload, %bb.e ], [ 0, %bb.f ]
  %.sroa.66.0 = phi i8 [ %i.u, %bb.e ], [ 3, %bb.f ]
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.53.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.66.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([19 x i8]) align 1 captures(none) dereferenceable(19) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store i64 1, ptr %i.b, align 8, !alias.scope !2120
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2120
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_1
