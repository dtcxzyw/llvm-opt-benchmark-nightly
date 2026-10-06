Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h39877984d8db02d5E":bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..map..Utf8SuffixEntry$GT$$GT$17h5b7b1fe08e0eb5edE.exit.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h480adb7028fe5cbaE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91d557283bd126d6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h6db445899b31b621E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha778ba63b656fad9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7e5dbcf4cb8a378E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i": ; preds = %bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7e5dbcf4cb8a378E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17h8b83075f8b41e074E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %common.resume.i.i unwind label %bb.g

"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i": ; preds = %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6807fa47d3e041faE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit": ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { i32, i32 } @_ZN4core3str11validations15next_code_point17h801ab76fc9a918beE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2854, !nonnull !5, !noundef !5 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2854, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !2854
  %i.f = load i8, ptr %i.a, align 1, !noundef !5  ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread": ; preds = %bb.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14", %bb.c
  %.sroa.4.0 = phi i32 [ %i.t, %bb.c ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12" ], [ %i.an, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16" ], [ %i.ac, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.c ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12" ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16" ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14" ], [ 0, %bb.a ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12": ; preds = %bb.b
  %i.j = and i8 %i.f, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.e, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !alias.scope !2855
  %i.n = load i8, ptr %i.e, align 1, !noundef !5
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.f, -33
  br i1 %i.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.f to i32
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12"
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !alias.scope !2856
  %i.w = load i8, ptr %i.m, align 1, !noundef !5
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14"
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.af, ptr %0, align 8, !alias.scope !2857
  %i.ag = load i8, ptr %i.v, align 1, !noundef !5
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit.thread"
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h040f18dacf8a1616E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dh, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit
  %.sroa.021.0 = phi i8 [ %i.ca, %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2910, !noalias !2911, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val5.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2910, !noalias !2911, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2912, !noalias !2913, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !2912, !noalias !2913, !noundef !5
  %i.t = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i.i, i64 noundef %.val7.i.i.i.i), !noalias !2914 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.w = load i8, ptr %i.v, align 8, !range !12, !alias.scope !2910, !noalias !2911
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !12, !alias.scope !2912, !noalias !2913
  %i.z = sub nsw i8 %i.w, %i.y
  %.sroa.0.0.i.i.i.i = select i1 %i.u, i8 %i.z, i8 %i.t
  %i.aa = icmp slt i8 %.sroa.0.0.i.i.i.i, 0       ; 2 uses
  %.not38.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.aa, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i", label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val7.i.i.i10.i = phi i64 [ %.val5.i.i.i8.i, %bb.l ], [ %.val5.i.i.i.i, %.preheader27.i ]
  %.val6.i.i.i9.i = phi ptr [ %.val.i.i.i7.i, %bb.l ], [ %.val.i.i.i.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.am, %bb.l ], [ 2, %.preheader27.i ] ; 4 uses
  %6 = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i29.i ; 3 uses
  %7 = add i64 %.sroa.01.0.i29.i, -1              ; 2 uses
  %8 = icmp ult i64 %7, %i.m
  tail call void @llvm.assume(i1 %8)
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val.i.i.i7.i = load ptr, ptr %i.ac, align 8, !alias.scope !2921, !noalias !2922, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val5.i.i.i8.i = load i64, ptr %i.ad, align 8, !alias.scope !2921, !noalias !2922, !noundef !5 ; 2 uses
  %i.ae = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i7.i, i64 noundef %.val5.i.i.i8.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i9.i, i64 noundef %.val7.i.i.i10.i), !noalias !2923 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !12, !alias.scope !2921, !noalias !2922
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !range !12, !alias.scope !2924, !noalias !2925
  %i.ak = sub nsw i8 %i.ah, %i.aj
  %.sroa.0.0.i.i.i11.i = select i1 %i.af, i8 %i.ak, i8 %i.ae
  %i.al = icmp slt i8 %.sroa.0.0.i.i.i11.i, 0
  br i1 %i.al, label %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.am = add nuw i64 %.sroa.01.0.i29.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %i.m
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i.i.i15.i = phi i64 [ %.val5.i.i.i13.i, %bb.m ], [ %.val5.i.i.i.i, %.preheader.i ]
  %.val6.i.i.i14.i = phi ptr [ %.val.i.i.i12.i, %bb.m ], [ %.val.i.i.i.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.ay, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %9 = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.1.i32.i ; 3 uses
  %10 = add i64 %.sroa.01.1.i32.i, -1             ; 2 uses
  %11 = icmp ult i64 %10, %i.m
  tail call void @llvm.assume(i1 %11)
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.val.i.i.i12.i = load ptr, ptr %i.ao, align 8, !alias.scope !2932, !noalias !2933, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val5.i.i.i13.i = load i64, ptr %i.ap, align 8, !alias.scope !2932, !noalias !2933, !noundef !5 ; 2 uses
  %i.aq = tail call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hd8bf36e0389dcd3dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i12.i, i64 noundef %.val5.i.i.i13.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val6.i.i.i14.i, i64 noundef %.val7.i.i.i15.i), !noalias !2934 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.at = load i8, ptr %i.as, align 8, !range !12, !alias.scope !2932, !noalias !2933
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !12, !alias.scope !2935, !noalias !2936
  %i.aw = sub nsw i8 %i.at, %i.av
  %.sroa.0.0.i.i.i16.i = select i1 %i.ar, i8 %i.aw, i8 %i.aq
  %i.ax = icmp slt i8 %.sroa.0.0.i.i.i16.i, 0
  br i1 %i.ax, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.ay = add nuw i64 %.sroa.01.1.i32.i, 1        ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.ay, %i.m
  br i1 %exitcond41.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i, label %.lr.ph33.i

_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph33.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.az = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.az)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h27389d33f917bfedE.exit.i
  br i1 %i.aa, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i17.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.01.0)
  %i.ba = shl i64 %.sroa.0.0.i17.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i18.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6ece5f5abd1d2ebfE(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i18.i, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5)
  %i.bb = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i": ; preds = %.lr.ph.i.i.i, %.preheader27.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i586569.i, %.lr.ph.i.i.i ]
  %i.bd = shl i64 %.sroa.0.0.i24.i, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit

bb.q:                                             ; preds = %bb.n
  %i.bf = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %.not15.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not15.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.q
  %i.bg = phi i64 [ %i.bf, %bb.q ], [ 1, %.preheader.i ]
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.014.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bi = xor i64 %.sroa.0.014.i.i.i, -1
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i ; 3 uses
  %i.bk = getelementptr [32 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !2939, !noalias !2940
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !2941, !noalias !2942
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !2939, !noalias !2940
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !2941, !noalias !2942
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !2943, !noalias !2940
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !2944, !noalias !2942
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !2943, !noalias !2940
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !2944, !noalias !2942
  %i.br = add nuw nsw i64 %.sroa.0.014.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.br, %i.bg
  br i1 %exitcond.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice4sort6stable5drift10create_run17hb80c365f4c8d30c4E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.be, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00d4252ca2f725dcE.exit.i" ], [ %i.bc, %bb.p ], [ %i.ba, %bb.o ] ; 2 uses
  %i.bs = lshr i64 %.sroa.023.0, 1
  %i.bt = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bu = sub i64 %factor, %i.bs
  %i.bv = add i64 %i.bt, %factor
  %i.bw = mul i64 %i.bu, %.sroa.0.0
  %i.bx = mul i64 %i.bv, %.sroa.0.0
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 false)
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit
  %.sroa.02.138 = phi i64 [ %i.cb, %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cb = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %.not29 = icmp ult i8 %i.cd, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cf, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cb
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !5 ; 3 uses
  %i.ci = lshr i64 %i.ch, 1                       ; 5 uses
  %i.cj = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.ck = add nuw i64 %i.ci, %i.cj                ; 5 uses
  %i.cl = sub i64 %.sroa.09.0, %i.ck
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cl ; 3 uses
  %i.cn = icmp ugt i64 %i.ck, %3
  %i.co = trunc i64 %.sroa.023.137 to i1
  %i.cp = or i64 %i.ch, %.sroa.023.137
  %i.cq = trunc i64 %i.cp to i1
  %or.cond3.i = or i1 %i.cn, %i.cq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = trunc i64 %i.ch to i1
  br i1 %i.cr, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cs = shl i64 %i.ck, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.co, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ct = or i64 %i.ci, 1
  %i.cu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6ece5f5abd1d2ebfE(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h7966e1bc30eb7906E(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef range(i64 0, -1) %i.ck, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %i.ci, ptr noalias noundef nonnull align 1 %5)
  %i.cy = shl i64 %i.ck, 1
  %i.cz = or disjoint i64 %i.cy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit

bb.x:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.ci
  %i.db = or i64 %i.cj, 1
  %i.dc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6ece5f5abd1d2ebfE(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17hebe63632285bf4b1E.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cz, %bb.w ], [ %i.cs, %bb.t ] ; 2 uses
  %i.dg = icmp ugt i64 %i.cb, 1
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dh = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.di = lshr i64 %.sroa.018.0, 1
  %i.dj = add i64 %i.di, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dk = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dk, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dl = or i64 %1, 1
  %i.dm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 1
  %i.dp = xor i32 %i.do, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6ece5f5abd1d2ebfE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h906f201189796b66E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias noundef nonnull align 1 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val10.i = load i32, ptr %i.p, align 4, !alias.scope !2956, !noalias !2957, !noundef !5 ; 3 uses
  %.val11.i = load i32, ptr %i.n, align 4, !alias.scope !2956, !noalias !2957, !noundef !5
  %i.q = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not33.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.k
  br i1 %.not33.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i", label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not33.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.preheader22.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader22.i ]
  %.sroa.01.0.i24.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader22.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.01.0.i24.i
  %6 = add i64 %.sroa.01.0.i24.i, -1
  %7 = icmp ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.r, align 4, !alias.scope !2956, !noalias !2957, !noundef !5 ; 2 uses
  %i.s = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.s, label %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw i64 %.sroa.01.0.i24.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i, label %.lr.ph.i

.lr.ph28.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i27.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.01.1.i27.i
  %8 = add i64 %.sroa.01.1.i27.i, -1
  %9 = icmp ult i64 %8, %i.m
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.u, align 4, !alias.scope !2956, !noalias !2957, !noundef !5 ; 2 uses
  %i.v = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i

bb.m:                                             ; preds = %.lr.ph28.i
  %i.w = add nuw i64 %.sroa.01.1.i27.i, 1         ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond36.not.i, label %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i, label %.lr.ph28.i

_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph28.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i27.i, %.lr.ph28.i ], [ %.sroa.01.0.i24.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5dab3cfa82fbed2dE.exit.i
  br i1 %i.q, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.01.0)
  %i.y = shl i64 %.sroa.0.0.i12.i, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i13.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %i.n, i64 noundef %.sroa.0.0.i13.i, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i": ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader22.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i19.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader22.i ], [ %.sroa.0.0.i475458.i, %middle.block ], [ %.sroa.0.0.i475458.i, %.lr.ph.i.i.i ]
  %i.ab = shl i64 %.sroa.0.0.i19.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  %.not15.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not15.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.q
  %i.ae = phi i64 [ %i.ad, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i475458.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.0.0.i475458.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !alias.scope !2960, !noalias !2961
  %wide.load56 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !2960, !noalias !2961
  %i.ak = getelementptr i8, ptr %i.ai, i64 -12    ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -28    ; 2 uses
  %wide.load57 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !2962, !noalias !2963
  %wide.load58 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !2962, !noalias !2963
  %reverse = shufflevector <4 x i32> %wide.load57, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse59 = shufflevector <4 x i32> %wide.load58, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ah, align 4, !alias.scope !2960, !noalias !2961
  store <4 x i32> %reverse59, ptr %i.aj, align 4, !alias.scope !2960, !noalias !2961
  %reverse60 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse61 = shufflevector <4 x i32> %wide.load56, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse60, ptr %i.ak, align 4, !alias.scope !2962, !noalias !2963
  store <4 x i32> %reverse61, ptr %i.al, align 4, !alias.scope !2962, !noalias !2963
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2954

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.sroa.0.014.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.014.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ %.sroa.0.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.an = xor i64 %.sroa.0.014.i.i.i, -1
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.0.014.i.i.i ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.af, i64 %i.an ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 4, !alias.scope !2960, !noalias !2961, !noundef !5
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !2962, !noalias !2963
  store i32 %i.ar, ptr %i.ao, align 4, !alias.scope !2960, !noalias !2961
  store i32 %i.aq, ptr %i.ap, align 4, !alias.scope !2962, !noalias !2963
  %i.as = add nuw nsw i64 %.sroa.0.014.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond.not.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i", label %.lr.ph.i.i.i, !llvm.loop !2955

_ZN4core5slice4sort6stable5drift10create_run17h05bd865ce1c6c5e0E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i"
  %.sroa.0.0.i34 = phi i64 [ %i.ac, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h00bd041f51390ae9E.exit.i" ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit
  %.sroa.02.138 = phi i64 [ %i.bc, %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bc = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  %.not29 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 3 uses
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
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %i.bn, i64 noundef %i.bj, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.by, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h13e7f218d54ff4c0E(ptr noalias noundef nonnull align 4 %i.bn, i64 noundef range(i64 0, -1) %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i64 noundef %i.bj, ptr noalias noundef nonnull align 1 %5)
  %i.bz = shl i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %i.cb, i64 noundef %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit: ; preds = %bb.t, %bb.w
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
end_hunk_0
