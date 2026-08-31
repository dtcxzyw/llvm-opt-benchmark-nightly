Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_write.simple_write.3978bae4a5c9544f-cgu.4?download=true
inline.NumInlined: 126
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs7_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_11StringTable3addAhj0_ECs4VV2qO6j7hb_12simple_write:bb.a
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, 1099511628211            ; 2 uses
  %i.cj = icmp eq ptr %i.ce, %i.an
  br i1 %i.cj, label %_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit.i, label %.lr.ph.i.i.i.i.i.i

_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %thread-pre-split
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.am, %thread-pre-split ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ci, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !64
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx5, align 8, !noalias !64
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx7, align 8, !noalias !64
  %i.ck = call { i64, i1 } @_RNvMs_NtCsbbt5GHOb4oK_8indexmap5innerINtB4_4CoreINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE11insert_fullCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.5.0.i.i = phi i64 [ %i.j, %.noexc ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ]
  %i.cm = icmp ult i64 %.sroa.5.0.i.i, %i.f
  tail call void @llvm.assume(i1 %i.cm)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
          to label %bb.h unwind label %bb.j

bb.d:                                             ; preds = %bb.g, %_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit.i
  %i.cn = extractvalue { i64, i1 } %i.ck, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.cn

bb.e:                                             ; preds = %_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs4ix5f8b49eS_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !9
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !65, !noundef !9 ; 3 uses
  %i.ct = load i64, ptr %i.co, align 8, !range !68, !alias.scope !65, !noundef !9
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common14DebugStrOffsetE8grow_oneCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !65, !nonnull !9, !noundef !9
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cs
  store i64 %i.cq, ptr %i.cx, align 8
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !65
  %i.cz = add nuw i64 %i.f, 1
  %i.da = load i64, ptr %i.cp, align 8, !noundef !9
  %i.db = add i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cp, align 8
  br label %bb.d

bb.h:                                             ; preds = %.loopexit
  unreachable

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm

bb.j:                                             ; preds = %.loopexit, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsiHO4aZxHxup_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB1L_E0NCINvB14_8get_hashB1L_uE0ECs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5), !noalias !72
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !69, !noalias !74, !nonnull !9, !noundef !9 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load i64, ptr %i.a, align 8, !alias.scope !69, !noalias !74, !noundef !9 ; 3 uses
  %i.b = lshr i64 %2, 57
  %i.c = trunc nuw nsw i64 %i.b to i8             ; 2 uses
  %i.d = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !72, !noalias !76 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !alias.scope !72, !noalias !76, !nonnull !9, !align !77 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !72, !noalias !76, !nonnull !9, !align !77
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %i.l = getelementptr i8, ptr %i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.ap, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.125.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.127.i.i, %bb.f ]
  %i.m = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !78 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.e
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not37.i.i = icmp eq i16 %i.p, 0
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i
  %.sroa.05.038.i.i = phi i16 [ %i.ae, %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.038.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.021.i.i, %i.r
  %i.t = and i64 %i.s, %.val5.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.val.i.i.i = load i64, ptr %i.w, align 8, !noalias !81, !noundef !9 ; 3 uses
  %i.x = icmp ult i64 %.val.i.i.i, %i.h
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.val.i.i.i ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !84, !noundef !9 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !84, !noundef !9
  %i.aa = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.aa, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.i.i, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i, !prof !87

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27, !noalias !84
  unreachable

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.i.i: ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !84, !nonnull !9, !noundef !9
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !84, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i), !noalias !84
  %i.ac = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %bb.j, label %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i, !prof !88

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i, %bb.b
  %.not11.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.e, !prof !13

_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.i.i, %bb.c
  %i.ad = add i16 %.sroa.05.038.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.05.038.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread29.i.i, !prof !13

.thread29.i.i:                                    ; preds = %bb.e
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.0.021.i.i, %i.ai
  %i.ak = and i64 %i.aj, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.ak, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ao = add i64 %i.m, 16                        ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.021.i.i
  br label %bb.b

bb.g:                                             ; preds = %.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !72, !noundef !9
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !72
  %i.at = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i22.i.i = icmp ne i16 %i.au, 0
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  tail call void @llvm.assume(i1 %.not.i22.i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aw, %bb.h ], [ %.sroa.4.126.i.i, %bb.g ]
  store ptr %1, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i.ph.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNCINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbbt5GHOb4oK_8indexmap5inner10equivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEuB26_E0NCINvB1p_8get_hashB26_uE0E0Cs4VV2qO6j7hb_12simple_write.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ay, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB5_9DwarfUnit5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB12_(ptr noalias nofree noundef align 8 dereferenceable(648) %0, ptr noalias nofree noundef align 8 dereferenceable(776) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 15 uses
  %i.b = tail call noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !89
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !89
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !89
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @21, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = invoke i64 @_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB5_4Unit5writeNtCs4VV2qO6j7hb_12simple_write7SectionEBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.lr.ph127, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.q, %.lr.ph
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i, %bb.k, %bb.m
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.n, %._crit_edge.i.i, %bb.i, %bb.h, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.thread.i, %bb.a
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit103, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit108, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev17AbbreviationTableECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #22
          to label %common.resume unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.e, 255
  %.not = icmp eq i64 %i.f, 255
  br i1 %.not, label %bb.c, label %_RINvMsq_NtNtCsi68uqYEhoRA_5gimli5write3strNtB6_15LineStringTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB18_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.h = load i64, ptr %i.g, align 8, !noundef !9 ; 2 uses
  %i.i = icmp ult i64 %i.h, 288230376151711744
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.d, label %.invoke, !prof !92

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.l = load i64, ptr %i.k, align 8, !noundef !9 ; 2 uses
  %i.m = icmp ult i64 %i.l, 288230376151711744
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %.invoke, !prof !92

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.p = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  %i.q = icmp ult i64 %i.p, 288230376151711744
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %bb.f, label %.invoke, !prof !92

.invoke:                                          ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ @13, %bb.d ], [ @10, %bb.c ], [ @15, %bb.e ]
  %i.t = phi i64 [ 54, %bb.d ], [ 55, %bb.c ], [ 59, %bb.e ]
  %i.u = phi ptr [ @14, %bb.d ], [ @12, %bb.c ], [ @16, %bb.e ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.val74 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %.val74, 40
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.w = icmp eq i64 %.val74, 0
  br i1 %i.w, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.thread.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.i

bb.g:                                             ; preds = %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_.exit.i
  %i.x = icmp eq ptr %i.y, %i.v
  br i1 %i.x, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.thread.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.i: ; preds = %bb.f, %bb.g
  %.sroa.0.01.i124 = phi ptr [ %i.y, %bb.g ], [ %.val, %bb.f ] ; 5 uses
  %.sroa.8.0.i123 = phi i64 [ %i.z, %bb.g ], [ 0, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i124, i64 40 ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.8.0.i123, 1       ; 2 uses
  %i.aa = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.z)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.i
  %i.ab = and i64 %i.aa, 255
  %.not33.i = icmp eq i64 %i.ab, 255
  br i1 %.not33.i, label %bb.h, label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB3_17AbbreviationTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1a_.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsbbt5GHOb4oK_8indexmap3set4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write6abbrev12AbbreviationEENtNtNtB8_6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit.thread.i: ; preds = %bb.g, %bb.f
  %i.ac = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 0)
          to label %_RINvMNtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB3_17AbbreviationTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1a_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i124, i64 24
  %i.ae = load i16, ptr %i.ad, align 8, !alias.scope !93, !noalias !96, !noundef !9
  %i.af = zext i16 %i.ae to i64
  %i.ag = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.af)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc80:                                         ; preds = %bb.h
  %i.ah = and i64 %i.ag, 255
  %.not.i.i = icmp eq i64 %i.ah, 255
  br i1 %.not.i.i, label %bb.i, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_.exit.i

bb.i:                                             ; preds = %.noexc80
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i124, i64 26
  %i.aj = load i8, ptr %i.ai, align 2, !range !100, !alias.scope !93, !noalias !96, !noundef !9
  %i.ak = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef %i.aj)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc81:                                         ; preds = %bb.i
  %i.al = and i64 %i.ak, 255
  %.not62.i.i = icmp eq i64 %i.al, 255
  br i1 %.not62.i.i, label %bb.j, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_.exit.i

bb.j:                                             ; preds = %.noexc81
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i124, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !93, !noalias !96, !nonnull !9, !noundef !9 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i124, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !93, !noalias !96, !noundef !9 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ap, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i: ; preds = %.noexc84, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.019.065.i.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.aq
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i
  %.sroa.019.065.i.i = phi ptr [ %i.as, %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i ], [ %i.an, %bb.j ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.019.065.i.i, i64 8
  %i.av = load i16, ptr %i.au, align 8, !alias.scope !101, !noalias !104, !noundef !9
  %i.aw = zext i16 %i.av to i64
  %i.ax = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.aw)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc82:                                         ; preds = %.lr.ph.i.i
  %i.ay = and i64 %i.ax, 255                      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ay, 255
  br i1 %.not.i.i.i, label %bb.k, label %.loopexit.i.i

bb.k:                                             ; preds = %.noexc82
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.019.065.i.i, i64 10
  %i.ba = load i16, ptr %i.az, align 2, !alias.scope !101, !noalias !104, !noundef !9 ; 2 uses
  %i.bb = zext i16 %i.ba to i64
  %i.bc = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.bb)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc83:                                         ; preds = %bb.k
  %i.bd = and i64 %i.bc, 255                      ; 2 uses
  %.not49.i.i.i = icmp eq i64 %i.bd, 255
  br i1 %.not49.i.i.i, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %.noexc83
  %i.be = icmp eq i16 %i.ba, 33
  br i1 %i.be, label %bb.m, label %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %.sroa.019.065.i.i, align 8, !alias.scope !101, !noalias !104, !noundef !9
  %i.bg = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_sleb128B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.bf)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc84:                                         ; preds = %bb.m
  %i.bh = and i64 %i.bg, 255                      ; 2 uses
  %.not50.i.i.i = icmp eq i64 %i.bh, 255
  br i1 %.not50.i.i.i, label %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i, label %.loopexit.i.i

._crit_edge.i.i:                                  ; preds = %_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB6_22AttributeSpecification5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1i_.exit.thread.i.i, %bb.j
  %i.bi = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i8 noundef 0)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc85:                                         ; preds = %._crit_edge.i.i
  %i.bj = and i64 %i.bi, 255
  %.not64.i.i = icmp eq i64 %i.bj, 255
  br i1 %.not64.i.i, label %bb.n, label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_.exit.i

.loopexit.i.i:                                    ; preds = %.noexc84, %.noexc83, %.noexc82
  %.sink.i = phi i64 [ %i.bc, %.noexc83 ], [ %i.ax, %.noexc82 ], [ %i.bg, %.noexc84 ]
  %.sroa.0.0.insert.ext.i.i.pre-phi13.i = phi i64 [ %i.bd, %.noexc83 ], [ %i.ay, %.noexc82 ], [ %i.bh, %.noexc84 ]
  %.sroa.442.0.extract.shift.i.i.le.i = and i64 %.sink.i, -256
  %.sroa.0.0.insert.insert.i.le.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.pre-phi13.i, %.sroa.442.0.extract.shift.i.i.le.i
  br label %_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write6abbrevNtB5_12Abbreviation5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_.exit.i
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write:bb.a

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !212, !noalias !209
  store i8 3, ptr %i.a, align 8, !alias.scope !212, !noalias !209
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.b, align 8
  resume { ptr, i32 } %i.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i, %bb.c
  store ptr %i.h, ptr %i.b, align 8
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer3lenCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !9
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer6resizeCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !9   ; 3 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !215, !noalias !218, !noundef !9
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph.split, label %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us

_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us: ; preds = %.lr.ph, %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us
  %i.i = phi i64 [ %i.n, %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %1, %i.j
  %i.l = and i64 %i.k, 1023
  %i.m = add nuw nsw i64 %i.l, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.n = add i64 %i.i, %i.m                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %1
  br i1 %i.o, label %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us, label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit.us
  store i64 %i.n, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit, %._crit_edge.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit
  %i.p = phi ptr [ %i.ag, %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit ], [ null, %.lr.ph ] ; 2 uses
  %i.q = phi i64 [ %i.ah, %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.r = xor i64 %i.q, -1
  %i.s = add i64 %1, %i.r
  %i.t = and i64 %i.s, 1023
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %bb.b, label %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit

bb.b:                                             ; preds = %.lr.ph.split
  %i.w = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef range(i64 0, -9223372036854775808) %i.u) ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !215, !noalias !218, !noundef !9 ; 4 uses
  %i.x = icmp eq ptr %.val.i, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220
  %i.y = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.z = and i64 %i.y, 3
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i
    i64 1, label %bb.e
  ], !prof !27

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  store ptr %i.ad, ptr %i.f, align 8, !alias.scope !223, !noalias !220
  store i8 3, ptr %i.a, align 8, !alias.scope !223, !noalias !220
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !215, !noalias !218
  resume { ptr, i32 } %i.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4VV2qO6j7hb_12simple_write.exit.i.i, %bb.b
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !215, !noalias !218
  %.pre = load i64, ptr %0, align 8, !alias.scope !215, !noalias !218
  br label %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit

_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer11write_bytesCs4VV2qO6j7hb_12simple_write.exit: ; preds = %.lr.ph.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i
  %i.af = phi i64 [ %i.q, %.lr.ph.split ], [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i ]
  %i.ag = phi ptr [ %i.p, %.lr.ph.split ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs4VV2qO6j7hb_12simple_write.exit.i ]
  %i.ah = add i64 %i.af, %i.u                     ; 3 uses
  store i64 %i.ah, ptr %0, align 8, !alias.scope !215, !noalias !218
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %.lr.ph.split, label %._crit_edge, !llvm.loop !226
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferNtNtCsG258MDvU3F_3std2fs4FileENtB5_14WritableBuffer7reserveCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readnone align 8 captures(none) %0, i64 %1) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationEINtNtB7_6copied6CopiedIBX_jEEEINtB5_7ZipImplBW_B26_E3newCs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.l, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCs9Jn0q30Ea0B_6object5writeNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 2) i8 @_RNvXsX_NtCsG258MDvU3F_3std7processINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBB_5error5ErrorEL_EENtB5_11Termination6reportCs4VV2qO6j7hb_12simple_write(ptr noundef %0, ptr %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCs4VV2qO6j7hb_12simple_write, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio23attempt_print_to_stderr(ptr noundef nonnull @25, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write.exit
  %.sroa.03.0 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write.exit ], [ 0, %bb.a ]
  ret i8 %.sroa.03.0

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val10 = load ptr, ptr %i.b, align 8
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !9, !align !77, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write(ptr %.val10, ptr nonnull %.val11) #22
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %.val9 = load ptr, ptr %i.c, align 8, !nonnull !9, !align !77, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !68, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !175, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write.exit

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !68, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !175, !invariant.load !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.i ], [ %i.k, %bb.j ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs4VV2qO6j7hb_12simple_write.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_ENtNtBM_3fmt5Debug3fmtCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !77, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @26, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Jn0q30Ea0B_6object5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @27, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsi68uqYEhoRA_5gimli5write5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @26, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs4VV2qO6j7hb_12simple_write(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs4VV2qO6j7hb_12simple_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @28, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer8write_u8B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_uleb128B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs9Jn0q30Ea0B_6object5writeNtB5_6Object4emit(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer13write_sleb128B4_(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsiHO4aZxHxup_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbbt5GHOb4oK_8indexmap5inner8get_hashINtNtCsexYYUdYSQU6_5alloc3vec3VechEuE0ECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer5writeBH_(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0
end_hunk_1
