Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff3fmt7rfc282215DateTimePrinter27timestamp_to_rfc9110_string17h8b6cb23ecbf9bfd8E:bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3221
  %i.c = tail call noundef dereferenceable_or_null(29) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !3221 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #45
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit": ; preds = %bb.a
  %.val = load i64, ptr %2, align 8, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i32, ptr %i.e, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3226
  %i.f = add i64 %.val, 378683424000              ; 2 uses
  %i.g = udiv i64 %i.f, 86400
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = urem i64 %i.f, 86400                     ; 3 uses
  %i.j = icmp slt i32 %.val8, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.k = add nsw i32 %.val8, 1000000000           ; 2 uses
  br i1 %.not.i.i.i, label %.thread44.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  %.sroa.05.0.i.i.i = phi i32 [ %i.k, %bb.e ], [ %.val8, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit" ] ; 2 uses
  %i.l = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i", label %bb.f

.thread44.i.i.i:                                  ; preds = %bb.c
  %i.m = add i32 %i.h, -1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.i, -1
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %.sroa.0.0.i.i.i to i32 ; 2 uses
  %i.p = udiv i32 %i.o, 3600                      ; 2 uses
  %i.q = urem i32 %i.o, 3600                      ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread44.i.i.i
  %i.s = phi i32 [ 3599, %.thread44.i.i.i ], [ %i.q, %bb.f ]
  %i.t = phi i32 [ 23, %.thread44.i.i.i ], [ %i.p, %bb.f ]
  %.sroa.09.03949.i.i.i = phi i32 [ %i.m, %.thread44.i.i.i ], [ %i.h, %bb.f ]
  %.sroa.05.04148.i.i.i = phi i32 [ %i.k, %.thread44.i.i.i ], [ %.sroa.05.0.i.i.i, %bb.f ]
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.s to i16 ; 2 uses
  %i.u = udiv i16 %.lhs.trunc.i.i.i, 60
  %i.v = shl nuw nsw i16 %i.u, 8
  %.sroa.426.5.insert.shift.i.i.i = zext nneg i16 %i.v to i32
  %i.w = urem i16 %.lhs.trunc.i.i.i, 60
  %.zext33.i.i.i = zext nneg i16 %i.w to i32
  %.sroa.426.6.insert.shift.i.i.i = shl nuw nsw i32 %.zext33.i.i.i, 16
  %i.x = add nuw nsw i32 %i.t, %.sroa.426.5.insert.shift.i.i.i
  %.sroa.426.6.insert.insert.i.i.i = add nuw nsw i32 %i.x, %.sroa.426.6.insert.shift.i.i.i
  br label %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i"

"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i": ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.05.042.i.i.i = phi i32 [ %.sroa.05.0.i.i.i, %bb.d ], [ %.sroa.05.0.i.i.i, %bb.f ], [ %.sroa.05.04148.i.i.i, %bb.g ]
  %.sroa.09.040.i.i.i = phi i32 [ %i.h, %bb.d ], [ %i.h, %bb.f ], [ %.sroa.09.03949.i.i.i, %bb.g ]
  %.sroa.426.0.i.i.i = phi i32 [ 0, %bb.d ], [ %i.p, %bb.f ], [ %.sroa.426.6.insert.insert.i.i.i, %bb.g ] ; 3 uses
  %i.y = shl i32 %.sroa.09.040.i.i.i, 2
  %i.z = add i32 %i.y, 33266051                   ; 2 uses
  %i.aa = urem i32 %i.z, 146097
  %i.ab = or i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 2939745          ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = udiv i32 %i.ae, 11758980
  %i.ag = mul nuw nsw i32 %i.af, 2141
  %i.ah = add nuw nsw i32 %i.ag, 197913           ; 3 uses
  %.lhs.trunc.i.i.i.i = trunc i32 %i.ah to i16
  %i.ai = udiv i16 %.lhs.trunc.i.i.i.i, 2141
  %i.aj = icmp ugt i32 %i.ae, -696719417          ; 2 uses
  %i.ak = and i32 %i.ah, 4128768
  %i.al = add nuw nsw i32 %i.ak, 15990784
  %.sroa.2.0.insert.ext.i.i.i.i = select i1 %i.aj, i32 %i.al, i32 %i.ah
  %i.am = udiv i32 %i.z, 146097
  %i.an = mul nuw nsw i32 %i.am, 100
  %i.ao = add nuw nsw i32 %i.an, 32736
  %i.ap = lshr i64 %i.ad, 32
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = zext i1 %i.aj to i32
  %i.at = add nuw nsw i32 %i.ar, %i.as
  %.sroa.8.8.extract.trunc.i.i = trunc i32 %i.at to i16
  %.sroa.8.10.extract.shift.i.i = lshr i32 %.sroa.2.0.insert.ext.i.i.i.i, 16
  %.sroa.8.10.extract.trunc.i.i = trunc i32 %.sroa.8.10.extract.shift.i.i to i8
  %i.au = trunc nuw nsw i16 %i.ai to i8
  %.sroa.8.11.extract.trunc.i.i = add nuw nsw i8 %i.au, 1
  %.sroa.4.4.extract.trunc.i.i = trunc i32 %.sroa.426.0.i.i.i to i8
  %.sroa.4.5.extract.shift.i.i = lshr i32 %.sroa.426.0.i.i.i, 8
  %.sroa.4.5.extract.trunc.i.i = trunc i32 %.sroa.4.5.extract.shift.i.i to i8
  %.sroa.4.6.extract.shift.i.i = lshr i32 %.sroa.426.0.i.i.i, 16
  %.sroa.4.6.extract.trunc.i.i = trunc nuw nsw i32 %.sroa.4.6.extract.shift.i.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %.sroa.8.8.extract.trunc.i.i, ptr %i.av, align 4, !alias.scope !3230, !noalias !3226
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %.sroa.8.10.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 2, !alias.scope !3230, !noalias !3226
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %.sroa.8.11.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !alias.scope !3230, !noalias !3226
  store i32 %.sroa.05.042.i.i.i, ptr %i.b, align 4, !alias.scope !3230, !noalias !3226
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %.sroa.4.4.extract.trunc.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !3230, !noalias !3226
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %.sroa.4.5.extract.trunc.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 1, !alias.scope !3230, !noalias !3226
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %.sroa.4.6.extract.trunc.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 2, !alias.scope !3230, !noalias !3226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3233
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !3241, !noalias !3246
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 29, ptr %i.aw, align 8, !alias.scope !3241, !noalias !3246
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.ax, align 8, !alias.scope !3241, !noalias !3246
  %i.ay = invoke { i64, ptr } @_ZN4jiff3fmt7rfc282215DateTimePrinter22print_civil_always_utc17h32ea64e5a6d5ade7E(ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit" ; 2 uses

bb.h:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i"
  %i.az = load i16, ptr %i.ax, align 8, !noalias !3233, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3226
  %i.ba = extractvalue { i64, ptr } %i.ay, 0
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit12", label %bb.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit12": ; preds = %bb.h
  %i.bc = extractvalue { i64, ptr } %i.ay, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !3249
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = zext i16 %i.az to i64
  store i64 29, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit12"
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i"
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !3252
  resume { ptr, i32 } %i.bf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt7rfc955717ParsedAnnotations23to_time_zone_annotation17h94fdf41c2a7c7378E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %1, align 8, !range !114, !noundef !3 ; 2 uses
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !93, !alias.scope !3255, !noalias !3258, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  %i.g = load i32, ptr %i.d, align 4, !range !708, !alias.scope !3263, !noalias !3264, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 2
  br i1 %.not.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !3269, !noalias !3270, !noundef !3
  %i.j = sext i8 %i.i to i32
  %i.k = mul nsw i32 %i.j, 3600
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !93, !alias.scope !3269, !noalias !3270, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !3269, !noalias !3270
  %i.q = sext i8 %i.p to i32
  %i.r = mul nsw i32 %i.q, 60
  %i.s = select i1 %i.n, i32 %i.r, i32 0
  %.sroa.0.0.i.i.i = add nsw i32 %i.s, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.u = load i8, ptr %i.t, align 2, !range !93, !alias.scope !3269, !noalias !3270, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !3269, !noalias !3270
  %2 = sext i8 %i.x to i32
  %3 = select i1 %i.v, i32 %2, i32 0
  %.sroa.0.1.i.i.i = add nsw i32 %.sroa.0.0.i.i.i, %3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = trunc nuw i32 %i.g to i1
  %i.aa = load i32, ptr %i.y, align 8, !alias.scope !3269, !noalias !3270
  %i.ab = icmp sgt i32 %i.aa, 499999999
  %or.cond.i.i.i = select i1 %i.z, i1 %i.ab, i1 false
  %i.ac = zext i1 %or.cond.i.i.i to i32
  %.sroa.0.2.i.i.i = add nsw i32 %.sroa.0.1.i.i.i, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !35, !alias.scope !3269, !noalias !3270, !noundef !3
  %i.af = sext i8 %i.ae to i32
  %i.ag = mul nsw i32 %.sroa.0.2.i.i.i, %i.af     ; 2 uses
  %i.ah = add nsw i32 %i.ag, -93600
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ah, -187199
  %i.ai = zext i32 %i.ag to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i64 5377, i64 %i.aj ; 2 uses
  %i.ak = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.al = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 21), !noalias !3272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3275
  store ptr %i.al, ptr %i.a, align 8, !noalias !3275
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !3276
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !3275, !inline_history !29
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %.sroa.67.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i.i, 32
  %i.ao = inttoptr i64 %.sroa.67.0.extract.shift.i.i.i.i to ptr
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !3255, !noalias !3258, !nonnull !3, !align !16, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3255, !noalias !3258, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.au = load i8, ptr %i.at, align 1, !range !93, !alias.scope !3255, !noalias !3258, !noundef !3
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3275
  %i.av = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 18, i8 undef), !noalias !3275
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.c
  %.sroa.12.0.ph = phi i8 [ %i.f, %bb.c ], [ %i.f, %bb.g ], [ %i.au, %bb.h ]
  %.sroa.10.0.ph = phi i64 [ undef, %bb.c ], [ undef, %bb.g ], [ %i.as, %bb.h ]
  %.sroa.6.0.ph = phi ptr [ null, %bb.c ], [ %i.ao, %bb.g ], [ %i.aq, %bb.h ]
  %.sroa.0.0.ph = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775807, %bb.g ], [ -9223372036854775808, %bb.h ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.ph, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.68.sroa.5.0..sroa.68.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.0.ph, ptr %.sroa.68.sroa.5.0..sroa.68.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime12to_timestamp17he651092a9b6473ddE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [12 x i8], align 4                ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.o = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0.copyload, ptr %i.q, align 8
  store i64 0, ptr %0, align 8
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3286
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !noalias !3288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3289)
  %i.r = load i16, ptr %i.k, align 8, !range !2834, !alias.scope !3289, !noalias !3292, !noundef !3
  %i.s = trunc nuw i16 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3289, !noalias !3292, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3295
  store i8 23, ptr %i.j, align 8, !noalias !3295
  %i.v = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h8d1c818ace875e4eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef %i.u), !noalias !3295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3286
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 2, !alias.scope !3289, !noalias !3292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.y = load i8, ptr %i.x, align 2, !range !93, !alias.scope !3299, !noalias !3300, !noundef !3
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 103
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !3299, !noalias !3300 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load i8, ptr %i.ac, align 8, !range !93, !alias.scope !3299, !noalias !3300, !noundef !3
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !3299, !noalias !3300 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.ai = load i8, ptr %i.ah, align 2, !range !93, !alias.scope !3299, !noalias !3300, !noundef !3
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.ae, label %bb.an, label %bb.ao

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !3299, !noalias !3300 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load i32, ptr %i.am, align 8, !range !1258, !alias.scope !3299, !noalias !3300, !noundef !3 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  br i1 %i.aj, label %bb.ah, label %bb.ai

bb.j:                                             ; preds = %bb.h
  %i.ao = trunc nuw i32 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.u

bb.k:                                             ; preds = %bb.h
  %.not12.i.i = icmp eq i32 %i.an, 0
  br i1 %.not12.i.i, label %bb.ac, label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !3299, !noalias !3300, !noundef !3 ; 2 uses
  %.not2.i.i.i.i = icmp ugt i8 %i.ab, 23
  br i1 %.not2.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 5), !noalias !3302
  br label %bb.as

bb.n:                                             ; preds = %bb.l
  %.not2.i34.i.i.i = icmp ugt i8 %i.ag, 59
  br i1 %.not2.i34.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 14), !noalias !3302
  br label %bb.as

bb.p:                                             ; preds = %bb.n
  %.not2.i36.i.i.i = icmp ugt i8 %i.al, 59
  br i1 %.not2.i36.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 22), !noalias !3302
  br label %bb.as

bb.r:                                             ; preds = %bb.p
  %.not4.i.i.i.i = icmp ugt i32 %i.aq, 999999999
end_hunk_0
begin_hunk_1_@_ZN4jiff3fmt8temporal6parser14DateTimeParser23parse_temporal_datetime17hf1a86f54112efe9eE:bb.a
  br i1 %.not.i.i120, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !7847, !noalias !7848, !noundef !3
  switch i8 %i.bh, label %bb.ae [
    i8 122, label %bb.ab
    i8 90, label %bb.ab
    i8 43, label %bb.ab
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7851
  call fastcc void @_ZN4jiff3fmt6offset6Parser5parse17h1c57978d4377f68dE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(6) @276, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bg, i64 noundef %.sroa.566.0.copyload), !noalias !7848
  %i.bi = load i32, ptr %i.a, align 8, !range !3505, !noalias !7851, !noundef !3 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 3
  br i1 %i.bj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.521.0.copyload.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !noalias !7851
  %.sroa.622.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.622.0.copyload.i.i = load ptr, ptr %.sroa.622.0..sroa_idx.i.i, align 8, !noalias !7851
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !7851, !nonnull !3, !noundef !3
  %.sroa.823.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.823.0.copyload.i.i = load i64, ptr %.sroa.823.0..sroa_idx.i.i, align 8, !noalias !7851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7851
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !7851, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7851
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac, %bb.z, %bb.aa
  %.sroa.14.0.ph = phi ptr [ %i.bg, %bb.aa ], [ %i.bg, %bb.z ], [ %.sroa.7.0.copyload.i.i, %bb.ac ]
  %.sroa.10122.0.ph = phi ptr [ undef, %bb.aa ], [ undef, %bb.z ], [ %.sroa.622.0.copyload.i.i, %bb.ac ]
  %.sroa.8.0.ph = phi i32 [ undef, %bb.aa ], [ undef, %bb.z ], [ %.sroa.521.0.copyload.i.i, %bb.ac ]
  %.sroa.0121.0.ph = phi i32 [ 3, %bb.aa ], [ 3, %bb.z ], [ %i.bi, %bb.ac ]
  %.sroa.18123.0.ph = phi i64 [ %.sroa.566.0.copyload, %bb.aa ], [ 0, %bb.z ], [ %.sroa.823.0.copyload.i.i, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.786, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1028, i64 3, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.w, %bb.ae
  %.sroa.081.0 = phi i64 [ %.sroa.667.0.copyload, %bb.ae ], [ undef, %bb.w ]
  %.sroa.683.0 = phi i8 [ %i.be, %bb.ae ], [ 2, %bb.w ]
  %.sroa.098.0 = phi i32 [ %.sroa.0121.0.ph, %bb.ae ], [ 3, %bb.w ]
  %.sroa.0104.0 = phi ptr [ %.sroa.14.0.ph, %bb.ae ], [ %i.ah, %bb.w ]
  %.sroa.6105.0 = phi i64 [ %.sroa.18123.0.ph, %bb.ae ], [ %i.ai, %bb.w ]
  %.sroa.6100.sroa.0.0 = phi i32 [ %.sroa.8.0.ph, %bb.ae ], [ undef, %bb.w ]
  %.sroa.6100.sroa.6.0 = phi ptr [ %.sroa.10122.0.ph, %bb.ae ], [ undef, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4jiff3fmt8temporal6parser14DateTimeParser17parse_annotations17heb249fd3d4a246d3E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0104.0, i64 noundef %.sroa.6105.0)
  %i.bm = load i8, ptr %i.d, align 8, !range !256, !noundef !3 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ad, %bb.y
  %.sink = phi ptr [ %i.bl, %bb.ad ], [ %i.bg, %bb.y ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bo, align 8
  store i32 4, ptr %0, align 8
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.br, align 8
  store i32 4, ptr %0, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.051.sroa.0.sroa.5.sroa.4.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.051.sroa.0.sroa.5.sroa.4.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.576.0..sroa_idx, i64 7, i1 false)
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.677.0.copyload = load ptr, ptr %.sroa.677.0..sroa_idx, align 8
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.778.0.copyload = load i64, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.879.0.copyload = load ptr, ptr %.sroa.879.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.980.0.copyload = load i64, ptr %.sroa.980.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.051.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.051.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.786, i64 3, i1 false)
  store i32 %.sroa.098.0, ptr %0, align 8
  %.sroa.051.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6100.sroa.0.0, ptr %.sroa.051.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.051.sroa.0.sroa.4.sroa.4.0..sroa.051.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6100.sroa.6.0, ptr %.sroa.051.sroa.0.sroa.4.sroa.4.0..sroa.051.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.051.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bm, ptr %.sroa.051.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.051.sroa.0.sroa.5.sroa.5.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.677.0.copyload, ptr %.sroa.051.sroa.0.sroa.5.sroa.5.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.051.sroa.0.sroa.5.sroa.6.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.778.0.copyload, ptr %.sroa.051.sroa.0.sroa.5.sroa.6.0..sroa.051.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.051.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.081.0, ptr %.sroa.051.sroa.4.0..sroa_idx, align 8
  %.sroa.051.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.683.0, ptr %.sroa.051.sroa.5.0..sroa_idx, align 8
  %.sroa.051.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.04.0.copyload.i.i, ptr %.sroa.051.sroa.7.0..sroa_idx, align 4
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.879.0.copyload, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.980.0.copyload, ptr %.sroa.553.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.v, %bb.ai, %bb.t
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal6parser14ParsedDateTime11to_datetime17he0f9e143d012538eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !3505, !noundef !3
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h68136ca0f1453ae7E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17h68136ca0f1453ae7E.exit.thread": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.02.0.copyload = load i32, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load i64, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11 = load i8, ptr %i.e, align 8, !range !114, !noundef !3
  %.not.i = icmp eq i8 %.val11, 2
  %spec.select.i = select i1 %.not.i, i64 0, i64 %.val
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %spec.select.i, ptr %i.f, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.02.0.copyload, ptr %.sroa.46.0..sroa_idx, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN4core6option15Option$LT$T$GT$6map_or17h68136ca0f1453ae7E.exit.thread"
  %storemerge = phi i32 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h68136ca0f1453ae7E.exit.thread" ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal6parser14ParsedDateTime12to_timestamp17h077373d3c61716bbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !114, !noundef !3
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.042.0.copyload = load i64, ptr %i.f, align 8
  %i.g = load i32, ptr %1, align 8, !range !3505, !noundef !3 ; 3 uses
  %.not59 = icmp eq i32 %i.g, 3
  br i1 %.not59, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 54)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7852)
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7855)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !7858, !noalias !7859, !noundef !3
  %i.l = sext i8 %i.k to i32
  %i.m = mul nsw i32 %i.l, 3600
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !93, !alias.scope !7858, !noalias !7859, !noundef !3
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !7858, !noalias !7859
  %i.s = sext i8 %i.r to i32
  %i.t = mul nsw i32 %i.s, 60
  %i.u = select i1 %i.p, i32 %i.t, i32 0
  %.sroa.0.0.i.i = add nsw i32 %i.u, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 2, !range !93, !alias.scope !7858, !noalias !7859, !noundef !3
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !7858, !noalias !7859
  %2 = sext i8 %i.z to i32
  %3 = select i1 %i.x, i32 %2, i32 0
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = trunc nuw i32 %i.g to i1
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !7858, !noalias !7859
  %i.ad = icmp sgt i32 %i.ac, 499999999
  %or.cond.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = zext i1 %or.cond.i.i to i32
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !range !35, !alias.scope !7858, !noalias !7859, !noundef !3
  %i.ah = sext i8 %i.ag to i32
  %i.ai = mul nsw i32 %.sroa.0.2.i.i, %i.ah       ; 2 uses
  %i.aj = add nsw i32 %i.ai, -93600
  %or.cond.i.i.i.i = icmp ult i32 %i.aj, -187199
  %i.ak = zext i32 %i.ai to i64
  %i.al = shl nuw i64 %i.ak, 32
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 5377, i64 %i.al ; 2 uses
  %i.am = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i1
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 21), !noalias !7862 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7865
  store ptr %i.an, ptr %i.a, align 8, !noalias !7865
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !7866
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !7865, !inline_history !29
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %.sroa.67.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 32
  %.sroa.67.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.67.0.extract.shift.i.i.i to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.aq = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 52)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7865
  %i.as = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 18, i8 undef), !noalias !7865
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.h, %bb.d
  %.sroa.5.0.ph = phi i32 [ 0, %bb.d ], [ %.sroa.67.0.extract.trunc.i.i.i, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.035.0.copyload = load i32, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.035.0.copyload, ptr %i.av, align 8
  store i64 %.sroa.042.0.copyload, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4jiff2tz6offset6Offset12to_timestamp17h5c2e70815624a4c5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7873)
  %i.aw = load i64, ptr %i.b, align 8, !range !1099, !alias.scope !7873, !noalias !7876, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.558.0.insert.ext = zext i32 %.sroa.5.0.ph to i64
  %.sroa.558.0.insert.shift = shl nuw i64 %.sroa.558.0.insert.ext, 32
  %.sroa.056.0.insert.insert = or disjoint i64 %.sroa.558.0.insert.shift, 3
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !7873, !noalias !7876, !noundef !3
  %i.ba = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hba78976f86c3fb37E"(i64 range(i64 3, -4294967292) %.sroa.056.0.insert.insert, ptr noundef %i.az), !noalias !7878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.ay, align 8, !alias.scope !7873, !noalias !7876, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !7873, !noalias !7876, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bg, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.c, %bb.i, %bb.m
  %.sink = phi i64 [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.m ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal6parser14ParsedDateTime7to_date17h2b5b49745d1b16bbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !3505, !noundef !3
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf223420969c079c7E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hf223420969c079c7E.exit.thread": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.02.0.copyload = load i32, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.02.0.copyload, ptr %i.d, align 2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf223420969c079c7E.exit.thread"
  %storemerge = phi i16 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf223420969c079c7E.exit.thread" ], [ 1, %bb.b ]
  store i16 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal6parser14ParsedDateTime8to_zoned17h0ae41cfc9a18d77aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, i8 noundef range(i8 0, 4) %3, i8 noundef range(i8 0, 4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 4               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 4               ; 7 uses
  %i.ag = alloca [24 x i8], align 4               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 4               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [12 x i8], align 8               ; 16 uses
  %i.am = alloca [32 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !114, !alias.scope !7879, !noalias !7882, !noundef !3
  %.not.i = icmp eq i8 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i = load i64, ptr %i.ap, align 8, !alias.scope !7879, !noalias !7882
  %.sroa.05.0.i.i = select i1 %.not.i, i64 0, i64 %.val.i.i ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.05.0.copyload.i = load i32, ptr %i.aq, align 4, !alias.scope !7879, !noalias !7882
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %.sroa.05.0.copyload.i, ptr %i.ar, align 8, !noalias !7885
  store i64 %.sroa.05.0.i.i, ptr %i.al, align 8, !noalias !7885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !7885
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_ZN4jiff3fmt7rfc955717ParsedAnnotations23to_time_zone_annotation17h94fdf41c2a7c7378E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as), !noalias !7882
  %i.at = load i64, ptr %i.ak, align 8, !range !7886, !noalias !7885, !noundef !3 ; 6 uses
  %i.au = icmp eq i64 %i.at, -9223372036854775805
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !7885 ; 6 uses
  %i.ax = trunc i64 %.sroa.05.0.i.i to i32        ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !7885
  br label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread

bb.c:                                             ; preds = %bb.a
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.645.sroa.0.0.copyload.i = load i64, ptr %.sroa.645.0..sroa_idx.i, align 8, !noalias !7885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !7885
  switch i64 %i.at, label %bb.e [
    i64 -9223372036854775806, label %bb.d
    i64 -9223372036854775807, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.ay = tail call noundef ptr @"_ZN4jiff5error3fmt8temporal109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..temporal..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h066cb08cfdffb307E"(i64 55), !noalias !7885
  br label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.az = invoke { i64, ptr } @_ZN4jiff2tz2db16TimeZoneDatabase3get17h8dace9c727dce1bbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %.sroa.645.sroa.0.0.copyload.i)
          to label %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i" unwind label %.body.thread.i, !noalias !7887

.body.thread.i:                                   ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.at, label %bb.f [
    i64 0, label %common.resume
    i64 -9223372036854775808, label %common.resume
  ]

bb.f:                                             ; preds = %.body.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !7888
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.bb = ptrtoint ptr %i.aw to i64
  %.sroa.889.8.extract.trunc.i = trunc i64 %i.bb to i32 ; 2 uses
  %i.bc = icmp eq i32 %.sroa.889.8.extract.trunc.i, 0
  %i.bd = shl i32 %.sroa.889.8.extract.trunc.i, 4
  %i.be = or disjoint i32 %i.bd, 3
  %i.bf = sext i32 %i.be to i64
  %i.bg = inttoptr i64 %i.bf to ptr
  %.sroa.01.0.i.i = select i1 %i.bc, ptr inttoptr (i64 1 to ptr), ptr %i.bg ; 18 uses
  %i.bh = load i32, ptr %1, align 8, !range !3505, !alias.scope !7879, !noalias !7882, !noundef !3 ; 2 uses
  switch i32 %i.bh, label %bb.j [
    i32 3, label %bb.h
    i32 2, label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread65
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7891
  invoke fastcc void @_ZN4jiff2tz8timezone8TimeZone22to_ambiguous_timestamp17h13f30377723c06aeE(ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.aj, ptr nonnull %.sroa.01.0.i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.al)
          to label %bb.bc unwind label %bb.i, !noalias !7895

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E"(ptr nonnull %.sroa.01.0.i.i) #47, !noalias !7891
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7899)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !7902, !noalias !7903, !noundef !3
  %i.bl = sext i8 %i.bk to i32
  %i.bm = mul nsw i32 %i.bl, 3600
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !93, !alias.scope !7902, !noalias !7903, !noundef !3
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !7902, !noalias !7903
  %i.bs = sext i8 %i.br to i32
  %i.bt = mul nsw i32 %i.bs, 60
  %i.bu = select i1 %i.bp, i32 %i.bt, i32 0
  %.sroa.0.0.i.i.i = add nsw i32 %i.bu, %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bw = load i8, ptr %i.bv, align 2, !range !93, !alias.scope !7902, !noalias !7903, !noundef !3
  %i.bx = trunc nuw i8 %i.bw to i1                ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !7902, !noalias !7903
  %5 = sext i8 %i.bz to i32
  %6 = select i1 %i.bx, i32 %5, i32 0
  %.sroa.0.1.i.i.i = add nsw i32 %.sroa.0.0.i.i.i, %6
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = trunc nuw i32 %i.bh to i1
  %i.cc = load i32, ptr %i.ca, align 4, !alias.scope !7902, !noalias !7903
  %i.cd = icmp sgt i32 %i.cc, 499999999
  %or.cond.i.i.i = select i1 %i.cb, i1 %i.cd, i1 false
  %i.ce = zext i1 %or.cond.i.i.i to i32
  %.sroa.0.2.i.i.i = add nsw i32 %.sroa.0.1.i.i.i, %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cg = load i8, ptr %i.cf, align 4, !range !35, !alias.scope !7902, !noalias !7903, !noundef !3
  %i.ch = sext i8 %i.cg to i32
  %i.ci = mul nsw i32 %.sroa.0.2.i.i.i, %i.ch     ; 2 uses
  %i.cj = add nsw i32 %i.ci, -93600
  %or.cond.i.i.i.i.i = icmp ult i32 %i.cj, -187199
  %i.ck = zext i32 %i.ci to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i64 5377, i64 %i.cl ; 2 uses
  %i.cm = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i.i to i1
  br i1 %i.cm, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cn = invoke fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 21)
          to label %.noexc73.i unwind label %bb.bd, !noalias !7885 ; 2 uses

.noexc73.i:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7906
  store ptr %i.cn, ptr %i.ai, align 8, !noalias !7906
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !7907
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.l, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i.i.i"

bb.l:                                             ; preds = %.noexc73.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i.i.i" unwind label %bb.bd, !noalias !7885

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i.i.i": ; preds = %bb.l, %.noexc73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7906
  %i.cq = invoke noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 18, i8 undef)
          to label %bb.n unwind label %bb.bd, !noalias !7885 ; 2 uses

"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i": ; preds = %bb.e
  %i.cr = extractvalue { i64, ptr } %i.az, 1      ; 3 uses
  switch i64 %i.at, label %bb.m [
    i64 0, label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread
    i64 -9223372036854775808, label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread
  ]

bb.m:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !7914
  br label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread

bb.n:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i.i.i"
  %i.cs = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.ct = and i64 %i.cs, 7
  %i.cu = icmp eq i64 %i.ct, 5
  br i1 %i.cu, label %bb.o, label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7917
  %i.cv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 -21 ; 2 uses
  store ptr %i.cv, ptr %i.ah, align 8, !noalias !7917
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !7920
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.p, label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc66d1eb56d3b66d3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ah), !noalias !7917
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i"

"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i": ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7917
  br label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread

bb.q:                                             ; preds = %bb.j
  %.sroa.67.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i.i, 32
  %.sroa.67.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.67.0.extract.shift.i.i.i.i to i32 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  switch i8 %3, label %default.unreachable [
    i8 0, label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit.thread65
    i8 1, label %bb.r
    i8 2, label %bb.t
    i8 3, label %bb.ah
  ]

default.unreachable:                              ; preds = %bb.bf, %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7930
  invoke fastcc void @_ZN4jiff2tz8timezone8TimeZone22to_ambiguous_timestamp17h13f30377723c06aeE(ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.ag, ptr nonnull %.sroa.01.0.i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.al)
          to label %_ZN4jiff2tz8timezone8TimeZone20into_ambiguous_zoned17hd564ef3b8f51ff21E.exit.i.i unwind label %bb.s, !noalias !7934

common.resume.i.i:                                ; preds = %bb.bb, %bb.u, %bb.s
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.cy, %bb.s ], [ %i.cz, %bb.u ], [ %lpad.thr_comm.i.i.i, %bb.bb ]
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$jiff..tz..timezone..TimeZone$GT$17h4ae8fce8e14b4716E"(ptr nonnull %.sroa.01.0.i.i) #47, !noalias !7935
  br label %common.resume

bb.s:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_ZN4jiff2tz8timezone8TimeZone20into_ambiguous_zoned17hd564ef3b8f51ff21E.exit.i.i: ; preds = %bb.r
  %.sroa.0.0.copyload17 = load i32, ptr %i.ag, align 4, !noalias !7936
  %.sroa.18.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.18.0.copyload21 = load i32, ptr %.sroa.18.0..sroa_idx20, align 4, !noalias !7936
  %.sroa.23.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.23.0.copyload25 = load ptr, ptr %.sroa.23.0..sroa_idx24, align 4, !noalias !7936
  %.sroa.37.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.37.0.copyload32 = load i64, ptr %.sroa.37.0..sroa_idx31, align 4, !noalias !7936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7930
  br label %_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned17h12d1b37d4561dcc0E.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7937
  invoke fastcc void @_ZN4jiff2tz8timezone8TimeZone22to_ambiguous_timestamp17h13f30377723c06aeE(ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.af, ptr nonnull %.sroa.01.0.i.i, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.al)
          to label %bb.v unwind label %bb.u, !noalias !7942

bb.u:                                             ; preds = %bb.ag, %bb.ad, %bb.ab, %bb.y, %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.v:                                             ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.af, align 4, !noalias !7937 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i77.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !7937 ; 5 uses
  %i.da = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 2
  %.sroa.55.0.copyload.pre.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i77.i, align 4, !noalias !7937 ; 4 uses
  br i1 %i.da, label %bb.w, label %"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit25.thread.i.i.i"

bb.w:                                             ; preds = %bb.v
  %i.db = icmp eq i32 %.sroa.55.0.copyload.pre.i.i.i, %.sroa.67.0.extract.trunc.i.i.i.i
  br i1 %i.db, label %_ZN4jiff2tz6offset14OffsetConflict18resolve_via_prefer17h369cdc2f56ddc4ecE.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = srem i32 %.sroa.55.0.copyload.pre.i.i.i, 60
  %i.dd = icmp eq i32 %i.dc, 0
  %or.cond.i.i = or i1 %i.dd, %i.bx
  br i1 %or.cond.i.i, label %"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit.thread.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7937
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 4, ptr %i.de, align 8, !noalias !7937
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  store i8 6, ptr %i.df, align 1, !noalias !7937
  store i64 1, ptr %i.ad, align 8, !noalias !7937
  invoke void @_ZN4jiff2tz6offset11OffsetRound5round17h1fbcc31b77914064E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, i32 noundef %.sroa.55.0.copyload.pre.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !7937

.noexc.i.i.i:                                     ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7937
  %i.dg = load i32, ptr %i.ae, align 8, !range !1258, !noalias !7937, !noundef !3
  %i.dh = trunc nuw i32 %i.dg to i1
  br i1 %i.dh, label %bb.z, label %"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit.i.i.i"

bb.z:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7943)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7946)
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !7949, !noalias !7937, !noundef !3 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !7952
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.di)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i.i.i.i" unwind label %bb.u, !noalias !7937

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7937
  br label %"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit.thread.i.i.i"

"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit25.thread.i.i.i": ; preds = %"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit25.i.i.i", %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i22.i.i.i", %bb.ac, %bb.v
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.dn = zext i32 %.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.4.copyload44.pre = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !7957
  br label %_ZN4jiff2tz6offset14OffsetConflict18resolve_via_prefer17h369cdc2f56ddc4ecE.exit.i.i

"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit.i.i.i": ; preds = %.noexc.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !noalias !7937, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7937
  %i.dq = icmp eq i32 %i.dp, %.sroa.67.0.extract.trunc.i.i.i.i
  %i.dr = icmp eq i32 %.sroa.5.0.copyload.i.i.i, %.sroa.67.0.extract.trunc.i.i.i.i
  %or.cond35.i.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond35.i.i.i, label %_ZN4jiff2tz6offset14OffsetConflict18resolve_via_prefer17h369cdc2f56ddc4ecE.exit.i.i, label %bb.ac

"_ZN4jiff3fmt8temporal6parser14ParsedDateTime18to_ambiguous_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h62442423a93c89eeE.exit.thread.i.i.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$jiff..tz..offset..Offset$C$jiff..error..Error$GT$$GT$17h1bbd965b9136ab3eE.exit.i.i.i.i", %bb.x
  %.old.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i.i, %.sroa.67.0.extract.trunc.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4jiff3fmt8temporal6parser14ParsedDateTime8to_zoned17h0ae41cfc9a18d77aE:bb.a

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8140
  %i.ob = getelementptr i8, ptr %.sroa.38.172, i64 -20 ; 2 uses
  store ptr %i.ob, ptr %i.b, align 8, !noalias !8140
  %i.oc = atomicrmw sub ptr %i.ob, i64 1 release, align 8, !noalias !8143
  %i.od = icmp eq i64 %i.oc, 1
  br i1 %i.od, label %bb.ef, label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i50.i"

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0a3f70bfa2a38bd6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !8140
  br label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i50.i"

"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i50.i": ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8140
  br label %_ZN4jiff2tz9ambiguous14AmbiguousZoned12disambiguate17hb4341ee6b2d693afE.exit

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8140
  %i.oe = getelementptr i8, ptr %.sroa.38.172, i64 -21 ; 2 uses
  store ptr %i.oe, ptr %i.a, align 8, !noalias !8140
  %i.of = atomicrmw sub ptr %i.oe, i64 1 release, align 8, !noalias !8148
  %i.og = icmp eq i64 %i.of, 1
  br i1 %i.og, label %bb.eh, label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i49.i"

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc66d1eb56d3b66d3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !8140
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i49.i"

"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i49.i": ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8140
  br label %_ZN4jiff2tz9ambiguous14AmbiguousZoned12disambiguate17hb4341ee6b2d693afE.exit

bb.ei:                                            ; preds = %_ZN4jiff2tz9ambiguous18AmbiguousTimestamp11unambiguous17h0026ce8c7ce9593fE.exit.i.i
  %i.oh = load i64, ptr %i.ni, align 8, !alias.scope !8122, !noalias !8125, !noundef !3 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.oj = load i32, ptr %i.oi, align 8, !alias.scope !8122, !noalias !8125, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8113
  %i.ok = invoke fastcc noundef i32 @_ZN4jiff2tz8timezone8TimeZone9to_offset17hcd1809551409d0a0E(ptr %.sroa.38.172, i64 noundef %i.oh, i32 noundef %i.oj)
          to label %bb.ej unwind label %.body.i51.i, !noalias !8153 ; 2 uses

bb.ej:                                            ; preds = %bb.ei
  %i.ol = sext i32 %i.ok to i64
  %i.om = add i64 %i.oh, 378683424000
  %i.on = add i64 %i.om, %i.ol                    ; 2 uses
  %i.oo = udiv i64 %i.on, 86400
  %i.op = trunc i64 %i.oo to i32                  ; 4 uses
  %i.oq = urem i64 %i.on, 86400                   ; 3 uses
  %i.or = icmp slt i32 %i.oj, 0
  br i1 %i.or, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %.not.i.i.i79.i = icmp eq i64 %i.oq, 0
  %i.os = add nsw i32 %i.oj, 1000000000           ; 2 uses
  br i1 %.not.i.i.i79.i, label %.thread44.i.i.i80.i, label %bb.em

bb.el:                                            ; preds = %bb.em, %bb.ej
  %.sroa.05.0.i.i.i52.i = phi i32 [ %i.os, %bb.em ], [ %i.oj, %bb.ej ] ; 3 uses
  %.sroa.0.0.i.i.i53.i = phi i64 [ %i.ov, %bb.em ], [ %i.oq, %bb.ej ] ; 2 uses
  %i.ot = icmp eq i64 %.sroa.0.0.i.i.i53.i, 0
  br i1 %i.ot, label %bb.ep, label %bb.en

.thread44.i.i.i80.i:                              ; preds = %bb.ek
  %i.ou = add i32 %i.op, -1
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %i.ov = add nsw i64 %i.oq, -1
  br label %bb.el

bb.en:                                            ; preds = %bb.el
  %i.ow = trunc nuw nsw i64 %.sroa.0.0.i.i.i53.i to i32 ; 2 uses
  %i.ox = udiv i32 %i.ow, 3600                    ; 2 uses
  %i.oy = urem i32 %i.ow, 3600                    ; 2 uses
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread44.i.i.i80.i
  %i.pa = phi i32 [ 3599, %.thread44.i.i.i80.i ], [ %i.oy, %bb.en ]
  %i.pb = phi i32 [ 23, %.thread44.i.i.i80.i ], [ %i.ox, %bb.en ]
  %.sroa.09.03949.i.i.i54.i = phi i32 [ %i.ou, %.thread44.i.i.i80.i ], [ %i.op, %bb.en ]
  %.sroa.05.04148.i.i.i55.i = phi i32 [ %i.os, %.thread44.i.i.i80.i ], [ %.sroa.05.0.i.i.i52.i, %bb.en ]
  %.lhs.trunc.i.i.i56.i = trunc nuw nsw i32 %i.pa to i16 ; 2 uses
  %i.pc = udiv i16 %.lhs.trunc.i.i.i56.i, 60
  %i.pd = shl nuw nsw i16 %i.pc, 8
  %.sroa.426.5.insert.shift.i.i.i57.i = zext nneg i16 %i.pd to i32
  %i.pe = urem i16 %.lhs.trunc.i.i.i56.i, 60
  %.zext33.i.i.i58.i = zext nneg i16 %i.pe to i32
  %.sroa.426.6.insert.shift.i.i.i59.i = shl nuw nsw i32 %.zext33.i.i.i58.i, 16
  %i.pf = add nuw nsw i32 %i.pb, %.sroa.426.5.insert.shift.i.i.i57.i
  %.sroa.426.6.insert.insert.i.i.i60.i = add nuw nsw i32 %i.pf, %.sroa.426.6.insert.shift.i.i.i59.i
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.el
  %.sroa.05.042.i.i.i61.i = phi i32 [ %.sroa.05.0.i.i.i52.i, %bb.el ], [ %.sroa.05.0.i.i.i52.i, %bb.en ], [ %.sroa.05.04148.i.i.i55.i, %bb.eo ]
  %.sroa.09.040.i.i.i62.i = phi i32 [ %i.op, %bb.el ], [ %i.op, %bb.en ], [ %.sroa.09.03949.i.i.i54.i, %bb.eo ]
  %.sroa.426.0.i.i.i63.i = phi i32 [ 0, %bb.el ], [ %i.ox, %bb.en ], [ %.sroa.426.6.insert.insert.i.i.i60.i, %bb.eo ]
  %i.pg = shl i32 %.sroa.09.040.i.i.i62.i, 2
  %i.ph = add i32 %i.pg, 33266051                 ; 2 uses
  %i.pi = urem i32 %i.ph, 146097
  %i.pj = or i32 %i.pi, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = mul nuw nsw i64 %i.pk, 2939745          ; 2 uses
  %i.pm = trunc i64 %i.pl to i32                  ; 2 uses
  %i.pn = udiv i32 %i.pm, 11758980
  %i.po = mul nuw nsw i32 %i.pn, 2141
  %i.pp = add nuw nsw i32 %i.po, 197913           ; 3 uses
  %.lhs.trunc.i.i.i.i64.i = trunc i32 %i.pp to i16
  %i.pq = udiv i16 %.lhs.trunc.i.i.i.i64.i, 2141
  %i.pr = icmp ugt i32 %i.pm, -696719417          ; 2 uses
  %i.ps = and i32 %i.pp, 4128768
  %i.pt = add nuw nsw i32 %i.ps, 15990784
  %.sroa.2.0.insert.ext.i.i.i.i65.i = select i1 %i.pr, i32 %i.pt, i32 %i.pp
  %i.pu = udiv i32 %i.ph, 146097
  %i.pv = mul nuw nsw i32 %i.pu, 100
  %i.pw = add nuw nsw i32 %i.pv, 32736
  %i.px = lshr i64 %i.pl, 32
  %i.py = trunc nuw nsw i64 %i.px to i32
  %i.pz = add nuw nsw i32 %i.pw, %i.py
  %i.qa = zext i1 %i.pr to i32
  %i.qb = add nuw nsw i32 %i.pz, %i.qa
  %.sroa.8.8.extract.trunc.i.i66.i = trunc i32 %i.qb to i16
  %.sroa.8.10.extract.shift.i.i67.i = lshr i32 %.sroa.2.0.insert.ext.i.i.i.i65.i, 16
  %.sroa.8.10.extract.trunc.i.i68.i = trunc i32 %.sroa.8.10.extract.shift.i.i67.i to i8
  %i.qc = trunc nuw nsw i16 %i.pq to i8
  %.sroa.8.11.extract.trunc.i.i69.i = add nuw nsw i8 %i.qc, 1
  %.sroa.6.0.insert.shift19.i.i70.i = zext nneg i32 %.sroa.426.0.i.i.i63.i to i64
  %.sroa.4.0.insert.insert.i.i71.i = shl nuw nsw i64 %.sroa.6.0.insert.shift19.i.i70.i, 32
  %.sroa.010.0.insert.ext.i.i72.i = zext i32 %.sroa.05.042.i.i.i61.i to i64
  %.sroa.010.0.insert.insert.i.i73.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i71.i, %.sroa.010.0.insert.ext.i.i72.i
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.oh, ptr %i.qd, align 8, !alias.scope !8118, !noalias !8139
  %.sroa.4.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.oj, ptr %.sroa.4.0..sroa_idx.i74.i, align 8, !alias.scope !8118, !noalias !8139
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.38.172, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !8118, !noalias !8139
  %.sroa.6.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.010.0.insert.insert.i.i73.i, ptr %.sroa.6.0..sroa_idx.i75.i, align 8, !alias.scope !8118, !noalias !8139
  %.sroa.7.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sroa.8.8.extract.trunc.i.i66.i, ptr %.sroa.7.0..sroa_idx.i76.i, align 8, !alias.scope !8118, !noalias !8139
  %.sroa.8.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.8.10.extract.trunc.i.i68.i, ptr %.sroa.8.0..sroa_idx.i77.i, align 2, !alias.scope !8118, !noalias !8139
  %.sroa.915.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %.sroa.8.11.extract.trunc.i.i69.i, ptr %.sroa.915.0..sroa_idx.i.i, align 1, !alias.scope !8118, !noalias !8139
  %.sroa.10.0..sroa_idx.i78.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ok, ptr %.sroa.10.0..sroa_idx.i78.i, align 4, !alias.scope !8118, !noalias !8139
  store i64 0, ptr %0, align 8, !alias.scope !8118, !noalias !8139
  br label %_ZN4jiff2tz9ambiguous14AmbiguousZoned12disambiguate17hb4341ee6b2d693afE.exit

_ZN4jiff2tz9ambiguous14AmbiguousZoned12disambiguate17hb4341ee6b2d693afE.exit: ; preds = %bb.ep, %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i49.i", %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i50.i", %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.dk, %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i44.i", %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i45.i", %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.ci, %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i", %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i", %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bg, %bb.be
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal6parser14ParsedDateTime9to_pieces17he98577ee2997dfc7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.16 = alloca [16 x i8], align 8           ; 2 uses
  %.sroa.519 = alloca [16 x i8], align 8          ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !114, !noundef !3
  %.not = icmp ne i8 %i.e, 2                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.03.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.27.0 = select i1 %.not, i64 %.sroa.03.0.copyload, i64 undef
  %.sroa.25.0 = zext i1 %.not to i32
  %i.g = load i32, ptr %1, align 8, !range !3505, !noundef !3 ; 3 uses
  %.not43 = icmp eq i32 %i.g, 3
  br i1 %.not43, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8156)
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8159)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !8162, !noalias !8163, !noundef !3
  %i.j = sext i8 %i.i to i32
  %i.k = mul nsw i32 %i.j, 3600
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !93, !alias.scope !8162, !noalias !8163, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !8162, !noalias !8163
  %i.q = sext i8 %i.p to i32
  %i.r = mul nsw i32 %i.q, 60
  %i.s = select i1 %i.n, i32 %i.r, i32 0
  %.sroa.0.0.i.i = add nsw i32 %i.s, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.u = load i8, ptr %i.t, align 2, !range !93, !alias.scope !8162, !noalias !8163, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !8162, !noalias !8163
  %2 = sext i8 %i.x to i32
  %3 = select i1 %i.v, i32 %2, i32 0
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = trunc nuw i32 %i.g to i1
  %i.aa = load i32, ptr %i.y, align 4, !alias.scope !8162, !noalias !8163
  %i.ab = icmp sgt i32 %i.aa, 499999999
  %or.cond.i.i = select i1 %i.z, i1 %i.ab, i1 false
  %i.ac = zext i1 %or.cond.i.i to i32
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load i8, ptr %i.ad, align 4, !range !35, !alias.scope !8162, !noalias !8163, !noundef !3 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = mul nsw i32 %.sroa.0.2.i.i, %i.af       ; 2 uses
  %i.ah = add nsw i32 %i.ag, -93600
  %or.cond.i.i.i.i = icmp ult i32 %i.ah, -187199
  %i.ai = zext i32 %i.ag to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 5377, i64 %i.aj ; 3 uses
  %i.ak = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i to i1
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = invoke fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 21)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8166
  store ptr %i.al, ptr %i.a, align 8, !noalias !8166
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !8167
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.e, label %.noexc55

bb.e:                                             ; preds = %.noexc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8166
  %i.ao = invoke noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 18, i8 undef)
          to label %.critedge unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  %.sroa.67.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 32
  %.sroa.67.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.67.0.extract.shift.i.i.i to i32
  %.lobit.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i, 63
  %i.ap = icmp eq i8 %i.ae, -1
  %i.aq = trunc nuw nsw i64 %.lobit.i to i8
  %i.ar = select i1 %i.ap, i8 1, i8 %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  %.sroa.20.1 = phi i8 [ 3, %bb.a ], [ 2, %bb.b ], [ %i.ar, %bb.f ]
  %.sroa.17.1 = phi i32 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.67.0.extract.trunc.i.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_ZN4jiff3fmt7rfc955717ParsedAnnotations23to_time_zone_annotation17h94fdf41c2a7c7378E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %bb.i unwind label %bb.o

bb.h:                                             ; preds = %.noexc55, %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.critedge:                                        ; preds = %.noexc55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.au, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.b, align 8, !range !7886, !noundef !3 ; 3 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775805
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  br i1 %i.aw, label %"_ZN4core3ptr56drop_in_place$LT$jiff..fmt..temporal..pieces..Pieces$GT$17h217459c416939dc3E.exit57", label %bb.j

"_ZN4core3ptr56drop_in_place$LT$jiff..fmt..temporal..pieces..Pieces$GT$17h217459c416939dc3E.exit57": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx38, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not44 = icmp eq i64 %i.av, -9223372036854775806
  br i1 %.not44, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.13.3 = phi ptr [ undef, %bb.j ], [ %i.ay, %bb.l ]
  store i64 %i.av, ptr %0, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.3, ptr %.sroa.4138.0..sroa_idx, align 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.17.1, ptr %.sroa.6140.0..sroa_idx, align 8
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.20.1, ptr %.sroa.7141.0..sroa_idx, align 4
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.25.0, ptr %.sroa.9143.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 %.sroa.27.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.0.0.copyload, ptr %.sroa.11144.0..sroa_idx, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519, i64 16, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$jiff..fmt..temporal..pieces..Pieces$GT$17h217459c416939dc3E.exit57", %.critedge, %bb.k
  ret void

bb.n:                                             ; preds = %bb.o, %bb.h
  %.pn155 = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.at, %bb.h ]
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$jiff..fmt..temporal..pieces..Pieces$GT$17h217459c416939dc3E"(i64 -9223372036854775806, ptr undef) #47
  resume { ptr, i32 } %.pn155

bb.o:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff3fmt8temporal6parser14ParsedTimeZone14into_time_zone17h852ab562590d820dE(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !275, !noundef !3 ; 2 uses
  %i.c = add nsw i8 %i.b, -4
  %i.d = icmp samesign ugt i8 %i.b, 3
  %narrow = select i1 %i.d, i8 %i.c, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !16, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  %i.i = tail call { i64, ptr } @_ZN4jiff2tz2db16TimeZoneDatabase3get17h8dace9c727dce1bbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.h)
  %i.j = extractvalue { i64, ptr } %i.i, 1
  %i.k = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h32160b4628a4cfb3E"(ptr noundef nonnull %i.j)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = sext i8 %.sroa.11.0.copyload to i32
  %i.n = mul nsw i32 %i.m, 3600
  %i.o = trunc nuw i8 %.sroa.6.0.copyload to i1
  %i.p = sext i8 %.sroa.7.0.copyload to i32
  %i.q = mul nsw i32 %i.p, 60
  %i.r = select i1 %i.o, i32 %i.q, i32 0
  %i.s = trunc nuw i8 %.sroa.8.0.copyload to i1
  %2 = sext i8 %.sroa.9.0.copyload to i32
  %3 = select i1 %i.s, i32 %2, i32 0
  %i.t = trunc nuw i32 %.sroa.0.0.copyload to i1
  %i.u = icmp sgt i32 %.sroa.5.0.copyload, 499999999
  %or.cond.i.i = select i1 %i.t, i1 %i.u, i1 false
  %i.v = zext i1 %or.cond.i.i to i32
  %.sroa.0.0.i.i = add nsw i32 %3, %i.n
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %i.r
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.v
  %i.w = sext i8 %.sroa.10.0.copyload to i32
  %i.x = mul nsw i32 %.sroa.0.2.i.i, %i.w         ; 2 uses
  %i.y = add nsw i32 %i.x, -93600
  %or.cond.i.i.i.i = icmp ult i32 %i.y, -187199
  %i.z = zext i32 %i.x to i64
  %i.aa = shl nuw i64 %i.z, 32
  %.sroa.0.0.insert.insert.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 5377, i64 %i.aa
  %.sroa.0.0.insert.insert.i.i.i.i.fr = freeze i64 %.sroa.0.0.insert.insert.i.i.i.i ; 2 uses
  %i.ab = trunc i64 %.sroa.0.0.insert.insert.i.i.i.i.fr to i1
  br i1 %i.ab, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 21), !noalias !8174 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8183
  store ptr %i.ac, ptr %i.a, align 8, !noalias !8183
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !8184
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !8183, !inline_history !29
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !8191
  %i.af = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #44, !noalias !8191 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %_ZN4jiff2tz8timezone8TimeZone13from_posix_tz17h37f5355ab8d7b9d6E.exit, !prof !124

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #45, !noalias !8191
  unreachable

_ZN4jiff2tz8timezone8TimeZone13from_posix_tz17h37f5355ab8d7b9d6E.exit: ; preds = %bb.h
  store i64 1, ptr %i.af, align 8, !noalias !8196
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8196
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.ah = getelementptr i8, ptr %i.af, i64 21
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.l, %bb.k, %_ZN4jiff2tz8timezone8TimeZone13from_posix_tz17h37f5355ab8d7b9d6E.exit, %bb.c
  %.sroa.5.0 = phi ptr [ %i.k, %bb.c ], [ %i.al, %bb.k ], [ %i.ah, %_ZN4jiff2tz8timezone8TimeZone13from_posix_tz17h37f5355ab8d7b9d6E.exit ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.aq, %bb.l ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.k ], [ 0, %_ZN4jiff2tz8timezone8TimeZone13from_posix_tz17h37f5355ab8d7b9d6E.exit ], [ 0, %.thread ], [ 0, %bb.l ]
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aj = insertvalue { i64, ptr } %i.ai, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.aj

bb.k:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8183
  %i.ak = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef 18, i8 undef), !noalias !8183
  %i.al = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17heabf3b298b9b99b2E"(ptr noundef nonnull %i.ak)
  br label %bb.j

bb.l:                                             ; preds = %bb.e
  %.sroa.67.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i.i.fr, 32 ; 2 uses
  %.sroa.67.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.67.0.extract.shift.i.i.i to i32
  %i.am = icmp eq i64 %.sroa.67.0.extract.shift.i.i.i, 0
  %i.an = shl i32 %.sroa.67.0.extract.trunc.i.i.i, 4
  %i.ao = or disjoint i32 %i.an, 3
  %i.ap = sext i32 %i.ao to i64
  %i.aq = inttoptr i64 %i.ap to ptr
  br i1 %i.am, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.d, %bb.l
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal7printer11SpanPrinter15print_span_impl17ha18461465727eeadE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !35, !noundef !3
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !8197
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre145 = load i16, ptr %.phi.trans.insert144, align 8, !alias.scope !8197
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8200)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8200, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !8200, !noundef !3 ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !124

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8200
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !alias.scope !8200, !nonnull !3, !align !16, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 45, ptr %i.j, align 1, !noalias !8200
  %i.k = add i16 %i.g, 1                          ; 2 uses
  store i16 %i.k, ptr %i.f, align 8, !alias.scope !8200
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %i.l = phi i16 [ %.pre145, %._crit_edge ], [ %i.k, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ] ; 2 uses
  %i.m = phi i64 [ %.pre, %._crit_edge ], [ %i.e, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8197)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 21 uses
  %i.p = zext i16 %i.l to i64                     ; 2 uses
  %.not.i24 = icmp eq i64 %i.m, %i.p
  br i1 %.not.i24, label %bb.e, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit25, !prof !124

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8197
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit25: ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !alias.scope !8197, !nonnull !3, !align !16, !noundef !3 ; 21 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 80, ptr %i.r, align 1, !noalias !8197
  %i.s = add i16 %i.l, 1                          ; 4 uses
  store i16 %i.s, ptr %i.o, align 8, !alias.scope !8197
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i16, ptr %i.t, align 8, !noundef !3 ; 10 uses
  %i.v = and i16 %i.u, 512
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit25
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.y = load i16, ptr %i.x, align 2, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  %i.z = icmp ult i16 %i.y, 10
  br i1 %i.z, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp ult i16 %i.y, 100
  br i1 %i.aa, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i16 %i.y, 1000
  br i1 %i.ab, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult i16 %i.y, 10000
  %spec.select.i = select i1 %i.ac, i8 4, i8 5
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i, %bb.i ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ] ; 2 uses
  %i.ad = zext nneg i8 %.sroa.0.0.i.i to i64      ; 2 uses
  %i.ae = zext i16 %i.s to i64                    ; 2 uses
  %i.af = sub nuw i64 %i.m, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  %.not.i26 = icmp ult i64 %i.af, %i.ad
  br i1 %.not.i26, label %bb.j, label %.preheader.i, !prof !1899

bb.j:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #45, !noalias !8203
  unreachable

.preheader.i:                                     ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, %.preheader.i
  %.sroa.0.010.i = phi i16 [ %i.am, %.preheader.i ], [ %i.y, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ] ; 2 uses
  %.sroa.03.09.i = phi i64 [ %i.ah, %.preheader.i ], [ %i.ad, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ]
  %i.ah = add nsw i64 %.sroa.03.09.i, -1          ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = urem i16 %.sroa.0.010.i, 10
  %i.ak = trunc nuw nsw i16 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  store i8 %i.al, ptr %i.ai, align 1, !noalias !8203
  %i.am = udiv i16 %.sroa.0.010.i, 10
  %.not8.i = icmp eq i64 %i.ah, 0
  br i1 %.not8.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17h626068dd7370efe8E.exit, label %.preheader.i

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17h626068dd7370efe8E.exit: ; preds = %.preheader.i
  %i.an = zext nneg i8 %.sroa.0.0.i.i to i16
  %i.ao = add i16 %i.s, %i.an                     ; 3 uses
  store i16 %i.ao, ptr %i.o, align 8, !alias.scope !8203
  %.val23 = load ptr, ptr %0, align 8, !nonnull !3, !align !16, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %.val23, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !8206, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8209)
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.k, !prof !48

bb.k:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17h626068dd7370efe8E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8209
  unreachable

bb.l:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17h626068dd7370efe8E.exit
  %i.as = zext i16 %i.ao to i64                   ; 2 uses
  %.not.i27 = icmp eq i64 %i.m, %i.as
  br i1 %.not.i27, label %bb.m, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit28, !prof !124
end_hunk_2
