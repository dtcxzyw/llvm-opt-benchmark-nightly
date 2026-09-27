Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4core4hash11BuildHasher8hash_one17h9a0cf704dcdc809bE:bb.a
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h5b51a8096d301cfbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.e = load ptr, ptr %1, align 8, !noundef !16  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9573)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9575)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9576, !noalias !9577, !nonnull !16, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i", %bb.b
  %i.n = phi ptr [ %i.p, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i" ], [ %i.e, %bb.b ] ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !9576, !noalias !9577
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !noalias !9578, !nonnull !16, !align !19, !noundef !16 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val5.i.i.i = load i64, ptr %i.q, align 8, !noalias !9578, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9580
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !9581, !noalias !9582, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  %i.s = call fastcc { i64, i64 } @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hb959e6ee67c7adb7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i), !noalias !9584 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 3 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.e, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !9583, !noalias !9585, !noundef !16 ; 2 uses
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.u, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #38, !noalias !9586
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9583, !noalias !9585, !nonnull !16, !noundef !16
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.i, align 8, !alias.scope !9581, !noalias !9582, !nonnull !16, !align !19, !noundef !16
  %i.ae = load i64, ptr %i.j, align 8, !alias.scope !9581, !noalias !9582, !noundef !16
  %i.af = call noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac), !noalias !9584 ; 4 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !noalias !9584, !noundef !16
  %i.ah = icmp eq i64 %i.ag, -9223372036854775805
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !9584, !nonnull !16, !noundef !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !9584, !noundef !16
  %i.am = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aj, i64 noundef %i.al), !noalias !9584
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  %.not17.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not17.i.i.i.i.i, label %bb.j, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9587
  call void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_uppercase17h311f395cc6e34a44E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i.i.i, i64 noundef %.val5.i.i.i), !noalias !9584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9587
  store ptr %i.c, ptr %i.b, align 8, !noalias !9587
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.49.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9587
  store ptr %i.k, ptr %i.l, align 8, !noalias !9587
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.413.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9588
  store ptr @85, ptr %i.a, align 8, !noalias !9589
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9589
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9589
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9589
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9589
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.m unwind label %bb.k, !noalias !9582

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %.val19.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !9587 ; 2 uses
  %i.ap = icmp eq i64 %.val19.i.i.i.i.i, 0
  br i1 %i.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val20.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !9587, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i.i.i.i, i64 noundef %.val19.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9582
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9587
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !9587 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit21.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val18.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !9587, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9582
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit21.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit21.i.i.i.i.i": ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9587
  %.sroa.06.0.copyload7.i.i.i = load i64, ptr %i.d, align 8, !noalias !9590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8.i.i.i, i64 16, i1 false), !noalias !9590
  br label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit.i.i.i.i.i": ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.ao

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit21.i.i.i.i.i", %bb.i, %bb.d
  %.sroa.06.0.i.i.i = phi i64 [ %.sroa.06.0.copyload7.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f5de302d11ecf9aE.exit21.i.i.i.i.i" ], [ -9223372036854775808, %bb.d ], [ -9223372036854775808, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9580
  %.not3.i.i.i = icmp eq i64 %.sroa.06.0.i.i.i, -9223372036854775808
  br i1 %.not3.i.i.i, label %bb.c, label %_ZN4core3ops8function6FnOnce9call_once17haea01a47f5512a37E.exit

_ZN4core3ops8function6FnOnce9call_once17haea01a47f5512a37E.exit: ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h8cbac3bbdecad510E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !9591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  store ptr null, ptr %1, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17haea01a47f5512a37E.exit, %bb.q
  %.sroa.0.06 = phi i64 [ %.sroa.06.0.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17haea01a47f5512a37E.exit ], [ -9223372036854775808, %bb.q ]
  store i64 %.sroa.0.06, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1d41b63ac6436ad7E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h252372c657d07295E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h2632578c3d8c521eE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h49ccac09c5859384E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h5d9b0644896fea76E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h6e2c333aa6911a04E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h701e089220a652f0E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h7ba7a62ca40dc962E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hab0b5d165f1334ecE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hbf5a7f7c7c0ea59eE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd07f698eb8977847E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd37cb62d726101d3E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdc9078391801f0e0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17he13cf3509654ac85E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hfca30e1c1398a2d4E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @232, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3a103b4f9cafeb0dE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9592
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4232a04e4e785044E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9593
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h6a816199e9e12d04E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9594
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h736ecf69d4a9f866E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9595
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h794d83a94ec11e71E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h86e2b2379bfa4e55E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @300, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h9b769314babf3690E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @338, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17ha00c325a11df4836E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9596
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17ha4a79b9e5b1171a6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hb63b2ed434a00394E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hc97d5137a1b21f23E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9597
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he056b2bb45c26523E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..error..Error$GT$6source17h2cb007fb824b2bbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he249d2052cd7e6bcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @300, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hf9a0bd215c9269daE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !9598
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h2303d15ce8c298c5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17ha494d68b99492bf7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17he9849b1fd70f73d5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h03e7db6decb603c4E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h1fd7118ed8238534E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h2ff116d05b95cae8E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h372dcbb98b3dea12E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h39aae44e9d286117E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h461628bd6876de11E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h4b054711eea8551aE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

end_hunk_0
