Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN7reqwest5error5Error3new17hea483f0e2e217070E:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @2552, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186646
  %i.u = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !186646 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit", !prof !175

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #78
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17he2e69dc72293284bE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b) #79
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.c, %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6a3757dbbf110d31E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.u

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h928a84a3e5a0a8baE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !186776 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 21 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !186777, !noalias !186778 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4651, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186779
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186779 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4653) #78, !noalias !186780
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186781)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 %i.v, i1 false), !alias.scope !186782, !noalias !186783
  br label %.thread374.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !186784, !noundef !166
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !186781
  br label %.thread374.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !186785, !noalias !186786 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread374

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186787
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

.thread374:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread374.thread

.thread374.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i", %bb.k, %.thread374
  %.sroa.0102.0370382640 = phi i1 [ true, %.thread374 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0101.0368383638 = phi i64 [ %i.af, %.thread374 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.9.0385630 = phi ptr [ undef, %.thread374 ], [ %i.w, %bb.k ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.13.0394628 = phi i64 [ undef, %.thread374 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0279.0396620 = phi i64 [ -9223372036854775808, %.thread374 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ] ; 2 uses
  %.sroa.19.1405618 = phi i64 [ %i.ag, %.thread374 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %.sroa.0.1406616 = phi ptr [ %i.ah, %.thread374 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0368383638, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186788
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186788 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread374.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread374.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4654) #78
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4660, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185": ; preds = %.split642, %bb.u, %bb.r
  %.sroa.0279.0397 = phi i64 [ %.sroa.0279.0404, %bb.r ], [ %.sroa.0279.0396621, %.split642 ], [ %.sroa.0279.0396621, %bb.u ] ; 2 uses
  %.sroa.9.0386 = phi ptr [ %.sroa.9.0393, %bb.r ], [ %.sroa.9.0385631, %.split642 ], [ %.sroa.9.0385631, %bb.u ] ; 2 uses
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split642 ], [ %.pn128646, %bb.u ]
  switch i64 %.sroa.0279.0397, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0386) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0386, i64 noundef %.sroa.0279.0397, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186789
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0404 = phi i64 [ %.sroa.0279.0396620, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0393 = phi ptr [ %.sroa.9.0385630, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"

bb.s:                                             ; preds = %bb.n, %.thread374
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread374 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread374 ] ; 8 uses
  %.sroa.0102.0370382641 = phi i1 [ %.sroa.0102.0370382640, %bb.n ], [ true, %.thread374 ]
  %.sroa.0101.0368383639 = phi i64 [ %.sroa.0101.0368383638, %bb.n ], [ 0, %.thread374 ] ; 4 uses
  %.sroa.9.0385631 = phi ptr [ %.sroa.9.0385630, %bb.n ], [ undef, %.thread374 ] ; 7 uses
  %.sroa.13.0394629 = phi i64 [ %.sroa.13.0394628, %bb.n ], [ undef, %.thread374 ] ; 2 uses
  %.sroa.0279.0396621 = phi i64 [ %.sroa.0279.0396620, %bb.n ], [ -9223372036854775808, %.thread374 ] ; 7 uses
  %.sroa.19.1405619 = phi i64 [ %.sroa.19.1405618, %bb.n ], [ %i.ag, %.thread374 ] ; 2 uses
  %.sroa.0.1406617 = phi ptr [ %.sroa.0.1406616, %bb.n ], [ %i.ah, %.thread374 ] ; 2 uses
  %.sroa.10.0.i176 = phi i64 [ %i.am, %bb.n ], [ 1, %.thread374 ]
  %i.ar = inttoptr i64 %.sroa.10.0.i176 to ptr    ; 5 uses
  %i.as = icmp ugt i64 %i.aq, %.sroa.19.1405619
  br i1 %i.as, label %.thread510, label %bb.v

bb.t:                                             ; preds = %bb.bg
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

bb.u:                                             ; preds = %.thread458.loopexit.split-lp.loopexit, %.split651, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit", %bb.t, %.split649, %.thread458.loopexit.split-lp, %.split642.thread, %.split642
  %.pn128646 = phi { ptr, i32 } [ %i.at, %.split642 ], [ %lpad.thr_comm489, %bb.t ], [ %i.fc, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit" ], [ %lpad.loopexit.split-lp555, %.thread458.loopexit.split-lp ], [ %lpad.thr_comm489, %.split649 ], [ %i.dk, %.split651 ], [ %i.bd, %.split642.thread ], [ %lpad.loopexit, %.thread458.loopexit.split-lp.loopexit ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186790
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"

.split642:                                        ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185", label %bb.u

.thread510:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1406617, i64 %i.aq ; 4 uses
  %i.aw = sub nuw i64 %.sroa.19.1405619, %i.aq    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.1406617, i64 %i.aq, i1 false), !alias.scope !186791, !noalias !186792
  br i1 %.sroa.0102.0370382641, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198", %bb.v
  %.sroa.19.2 = phi i64 [ %i.bk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198" ], [ %i.aw, %bb.v ]
  %.sroa.0.2 = phi ptr [ %i.bj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198" ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = shl nuw nsw i64 %.sroa.0101.0368383639, 5 ; 2 uses
  br i1 %i.ap, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.ay = icmp eq i64 %.sroa.0101.0368383639, 0
  tail call void @llvm.assume(i1 %i.ay)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186793
  %i.bb = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #77, !noalias !186793 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4656) #78
          to label %.noexc187 unwind label %.split642.thread

.split642.thread:                                 ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.noexc187:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6a633d9ce659f5a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4655)
          to label %bb.z unwind label %.split642

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !166, !noundef !166 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !166 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186794)
  %i.bi = icmp ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  %i.bk = sub nuw i64 %i.aw, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188": ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.av, i64 %i.bh, i1 false), !alias.scope !186795, !noalias !186796
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.av, align 1, !noalias !186797, !noundef !166
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !186794
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.bn, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186798)
  %.val.i193 = load i64, ptr %i.f, align 8, !range !165, !alias.scope !186798, !noundef !166 ; 2 uses
  %i.bo = icmp eq i64 %.val.i193, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186798
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195"

bb.ae:                                            ; preds = %bb.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb910a701e4f2ce29E.exit.i188"
  %.sroa.0294.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0294.0.copyload, 0
  br i1 %i.bp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0294.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186799
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit198": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.0101.0368383639, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not115 = icmp eq i64 %.sroa.0279.0396621, -9223372036854775808
  %.sroa.730.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186800
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205": ; preds = %._crit_edge.thread, %._crit_edge
  switch i64 %.sroa.0279.0396621, label %bb.ag [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
  ]

bb.ag:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385631) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385631, i64 noundef %.sroa.0279.0396621, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186801
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206": ; preds = %bb.m, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", %bb.bj, %bb.ag, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit205", %bb.b, %bb.g, %bb.f
  ret void

bb.ah:                                            ; preds = %bb.be, %.lr.ph
  %.sroa.0104.1553 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0104.1, %bb.be ] ; 3 uses
  %.sroa.0104.0552 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0104.1553, %bb.be ] ; 2 uses
  %.sroa.0.3551 = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %.sroa.0.4, %bb.be ] ; 8 uses
  %.sroa.19.3550 = phi i64 [ %.sroa.19.2, %.lr.ph ], [ %.sroa.19.4, %bb.be ] ; 6 uses
  %.sroa.0291.0549 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.be ] ; 3 uses
  %.sroa.0.0.copyload.i199 = load i16, ptr %.sroa.0291.0549, align 1, !alias.scope !186802, !noalias !186803
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0291.0549, i64 2
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0291.0549, i64 4
  %.sroa.0.0.copyload.i207 = load i16, ptr %i.bu, align 1, !alias.scope !186804, !noalias !186805 ; 2 uses
  %i.bv = zext i16 %.sroa.0.0.copyload.i207 to i64
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 4 uses
  br i1 %.not115, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread", label %.cont

.cont:                                            ; preds = %bb.ah
  %i.bx = lshr i64 %.sroa.0104.0552, 3            ; 3 uses
  %i.by = icmp ult i64 %i.bx, %.sroa.13.0394629
  br i1 %i.by, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit", label %bb.ai

bb.ai:                                            ; preds = %.cont
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bx, i64 noundef %.sroa.13.0394629, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4661) #78
          to label %.noexc212 unwind label %.thread458.loopexit.split-lp

.noexc212:                                        ; preds = %bb.ai
  unreachable

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit": ; preds = %.cont
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.0385631, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !186806, !noundef !166
  %i.cb = trunc i64 %.sroa.0104.0552 to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = shl nuw i8 1, %i.cc
  %i.ce = and i8 %i.ca, %i.cd
  %.not513 = icmp eq i8 %i.ce, 0
  br i1 %.not513, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread", label %bb.aj

"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread": ; preds = %bb.ah, %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit"
  %i.cf = icmp ult i16 %.sroa.0.0.copyload.i207, 4096
  br i1 %i.cf, label %bb.am, label %bb.ak

bb.aj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit"
  %i.cg = icmp ult i64 %.sroa.19.3550, 2
  br i1 %i.cg, label %bb.az, label %bb.ba

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77
  %i.ch = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 8) #77 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.al, label %bb.an, !prof !175

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8192) #78
          to label %.noexc218 unwind label %.thread458.loopexit.split-lp

.noexc218:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h7d00cdb4723fd8f7E.exit.thread"
  %i.cj = shl nuw nsw i64 %i.bw, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186807
  %i.ck = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cj, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !186807 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.invoke, label %bb.as

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.ch, i8 0, i64 8192, i1 false)
  %i.cm = icmp ult i64 %.sroa.19.3550, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3551) ]
  br i1 %i.cm, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.3551, i64 8192
  %i.co = add i64 %.sroa.19.3550, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.ch, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.3551, i64 8192, i1 false), !alias.scope !186808, !noalias !186809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7roaring6bitmap5store12bitmap_store11BitmapStore8try_from17h24fc3ed428f45e5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 4097, 65537) %i.bw, ptr noalias noundef nonnull align 8 %i.ch)
          to label %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit unwind label %.thread458.loopexit.split-lp.loopexit

_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit: ; preds = %bb.ao
  %i.cp = load i64, ptr %i.b, align 8, !range !180, !noundef !166
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = load i64, ptr %i.bt, align 8, !noundef !166 ; 2 uses
  br i1 %i.cq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit
  %i.cs = load i64, ptr %i.bs, align 8, !noundef !166
  %i.ct = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef 21, i64 noundef %i.cs, i64 noundef %i.cr)
          to label %.thread453 unwind label %.thread458.loopexit.split-lp

.thread453:                                       ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.aq:                                            ; preds = %_ZN4core3ops8function2Fn4call17h88937a45dbb9493bE.exit
  %i.cv = load ptr, ptr %i.bs, align 8, !nonnull !166, !align !170, !noundef !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.cw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 8192, i64 noundef 8) #77
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

.thread458.loopexit.split-lp.loopexit:            ; preds = %bb.at, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

.thread458.loopexit.split-lp:                     ; preds = %.invoke, %bb.av, %bb.al, %bb.ai, %bb.ap
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

bb.as:                                            ; preds = %bb.am
  %i.cx = icmp ugt i64 %i.cj, %.sroa.19.3550
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3551) ]
  br i1 %i.cx, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.3551, i64 %i.cj
  %i.cz = sub nuw i64 %.sroa.19.3550, %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ck, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.3551, i64 %i.cj, i1 false), !alias.scope !186810, !noalias !186811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bw, ptr %i.a, align 8, !noalias !186812
  store ptr %i.ck, ptr %.sroa.4332.0..sroa_idx, align 8, !noalias !186812
  store i64 %i.bw, ptr %.sroa.5333.0..sroa_idx, align 8, !noalias !186812
  invoke void @"_ZN124_$LT$roaring..bitmap..store..array_store..ArrayStore$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u16$GT$$GT$$GT$8try_from17h9b325ec933d5e4fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.au unwind label %.thread458.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = load i64, ptr %i.c, align 8, !range !192, !noundef !166 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dc = load i64, ptr %.sroa.496.0..sroa_idx, align 8, !noundef !166
  %i.dd = load i8, ptr %.sroa.597.0..sroa_idx, align 8, !range !183, !noundef !166
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef 21, i64 noundef %i.dc, i1 noundef zeroext %i.de)
          to label %.thread475 unwind label %.thread458.loopexit.split-lp

.thread475:                                       ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dg, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.aw:                                            ; preds = %bb.au
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.aw, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248"
  %.sroa.19.4 = phi i64 [ %i.ev, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.cz, %bb.aw ], [ %i.co, %bb.aq ]
  %.sroa.0.4 = phi ptr [ %i.eu, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.cy, %bb.aw ], [ %i.cn, %bb.aq ]
  %.sroa.835.0 = phi i64 [ %.sroa.835.0.copyload39, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %.sroa.597.0.copyload, %bb.aw ], [ %i.cr, %bb.aq ]
  %.sroa.730.0 = phi ptr [ %.sroa.730.0.copyload34, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %.sroa.496.0.copyload, %bb.aw ], [ %i.cv, %bb.aq ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %.sroa.027.0.copyload29, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248" ], [ %i.da, %bb.aw ], [ -9223372036854775808, %bb.aq ] ; 2 uses
  %i.dh = load i64, ptr %i.br, align 8, !alias.scope !186813, !noundef !166 ; 3 uses
  %i.di = load i64, ptr %i.e, align 8, !range !165, !alias.scope !186813, !noundef !166
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4659)
          to label %bb.be unwind label %.split651, !noalias !186814

.split651:                                        ; preds = %bb.ay
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E"(i64 %.sroa.027.0, ptr %.sroa.730.0) #79, !noalias !186814
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit": ; preds = %bb.as
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.dl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 2) #77
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.az:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.dm, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.ba:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.3551, i64 2 ; 3 uses
  %i.do = add i64 %.sroa.19.3550, -2              ; 2 uses
  %.sroa.0.0.copyload.i213 = load i16, ptr %.sroa.0.3551, align 1, !alias.scope !186815, !noalias !186816 ; 3 uses
  %i.dp = zext i16 %.sroa.0.0.copyload.i213 to i64 ; 4 uses
  %i.dq = shl nuw nsw i64 %i.dp, 2                ; 14 uses
  %i.dr = icmp eq i16 %.sroa.0.0.copyload.i213, 0 ; 3 uses
  br i1 %i.dr, label %.thread, label %bb.bb

.thread:                                          ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 1 %i.dn, i64 %i.dq, i1 false), !alias.scope !186817, !noalias !186818
  %i.ds = getelementptr inbounds nuw i8, ptr inttoptr (i64 2 to ptr), i64 %i.dq
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !186819
  %i.dt = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !186819 ; 8 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.invoke, label %.thread506

.invoke:                                          ; preds = %bb.am, %bb.bb
  %i.dv = phi i64 [ %i.dq, %bb.bb ], [ %i.cj, %bb.am ]
  %i.dw = phi ptr [ @4658, %bb.bb ], [ @4657, %bb.am ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw) #78
          to label %.cont690 unwind label %.thread458.loopexit.split-lp

.cont690:                                         ; preds = %.invoke
  unreachable

.thread506:                                       ; preds = %bb.bb
  %i.dx = icmp ugt i64 %i.dq, %i.do
  br i1 %i.dx, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %.thread506
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dt, ptr nonnull readonly align 1 %i.dn, i64 %i.dq, i1 false), !alias.scope !186817, !noalias !186818
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dq
  %min.iters.check = icmp ult i16 %.sroa.0.0.copyload.i213, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bc
  %i.dz = and i64 %i.dp, 3                        ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = select i1 %i.ea, i64 4, i64 %i.dz
  %n.vec = sub nsw i64 %i.dp, %i.eb               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi719 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index
  %i.ee = getelementptr i8, ptr %i.ec, i64 2
  %i.ef = getelementptr i8, ptr %i.ed, i64 10
  %wide.vec = load <4 x i16>, ptr %i.ee, align 2
  %strided.vec = shufflevector <4 x i16> %wide.vec, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec720 = load <4 x i16>, ptr %i.ef, align 2
  %strided.vec721 = shufflevector <4 x i16> %wide.vec720, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.eg = zext <2 x i16> %strided.vec to <2 x i64>
  %i.eh = zext <2 x i16> %strided.vec721 to <2 x i64>
  %i.ei = add <2 x i64> %vec.phi, %i.eg           ; 2 uses
  %i.ej = add <2 x i64> %vec.phi719, %i.eh        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !186762

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ej, %i.ei
  %i.el = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bc, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %bb.bc ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %bb.bc ], [ %i.el, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.09.0.i = phi i64 [ %i.eq, %scalar.ph ], [ %.sroa.09.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.ep, %scalar.ph ], [ %.sroa.07.0.i.ph, %scalar.ph.preheader ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.09.0.i
  %i.en = getelementptr i8, ptr %i.em, i64 2
  %.val.i243 = load i16, ptr %i.en, align 2, !noundef !166
  %i.eo = zext i16 %.val.i243 to i64
  %i.ep = add i64 %.sroa.07.0.i, %i.eo            ; 2 uses
  %i.eq = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.er = icmp eq i64 %i.eq, %i.dp
  br i1 %i.er, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit", label %scalar.ph, !llvm.loop !186763

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit": ; preds = %scalar.ph, %.thread
  %i.es = phi ptr [ %i.ds, %.thread ], [ %i.dy, %scalar.ph ]
  %i.et = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.dt, %scalar.ph ] ; 5 uses
  %.sroa.04.0.i = phi i64 [ 0, %.thread ], [ %i.ep, %scalar.ph ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dq
  %i.ev = sub nuw i64 %i.do, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0.i)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"
  br i1 %i.dr, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd, %.noexc246
  %i.ew = phi ptr [ %i.ex, %.noexc246 ], [ %i.et, %bb.bd ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.ew, align 2, !noalias !186820 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.02.0.copyload.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.02.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i16
  %i.ey = add i16 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i ; 2 uses
  %i.ez = icmp ult i16 %i.ey, %.sroa.01.0.extract.trunc.i.i.i
  br i1 %i.ez, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i", !prof !169

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i": ; preds = %.lr.ph.i
  %.sroa.012.2.insert.ext.i.i.i = zext i16 %i.ey to i48
  %.sroa.012.2.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.012.2.insert.ext.i.i.i, 16
  %i.fa = and i32 %.sroa.02.0.copyload.i, 65535
  %.sroa.012.2.insert.mask.i.i.i = zext nneg i32 %i.fa to i48
  %.sroa.012.2.insert.insert.i.i.i = or disjoint i48 %.sroa.012.2.insert.shift.i.i.i, %.sroa.012.2.insert.mask.i.i.i
  %i.fb = invoke noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i48 %.sroa.012.2.insert.insert.i.i.i)
          to label %.noexc246 unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit" ; 0 uses

.noexc246:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i"
  %.not.i = icmp eq ptr %i.ex, %i.es
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hf1699a7e5c36e13cE.exit.i"
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !186821
  %.val154 = load i64, ptr %i.d, align 8, !range !192, !noundef !166
  %.val155 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h2eb08a1476f2931cE"(i64 %.val154, ptr %.val155) #79
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit": ; preds = %.lr.ph.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.fd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !186822
  %.val152 = load i64, ptr %i.d, align 8, !range !192, !noundef !166
  %.val153 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h2eb08a1476f2931cE"(i64 %.val152, ptr %.val153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

.loopexit:                                        ; preds = %.noexc246
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !186823
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h32d11986ffd2677fE.exit248": ; preds = %bb.bd, %.loopexit
  %.sroa.027.0.copyload29 = load i64, ptr %i.d, align 8
  %.sroa.730.0.copyload34 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  %.sroa.835.0.copyload39 = load i64, ptr %.sroa.835.0..sroa_idx38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ax

bb.be:                                            ; preds = %bb.ay, %bb.ax
  %i.fe = load ptr, ptr %i.bq, align 8, !alias.scope !186813, !nonnull !166, !noundef !166
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %i.dh ; 4 uses
  store i64 %.sroa.027.0, ptr %i.ff, align 8
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %.sroa.730.0, ptr %.sroa.5337.0..sroa_idx, align 8
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %.sroa.835.0, ptr %.sroa.7338.0..sroa_idx, align 8
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i16 %.sroa.0.0.copyload.i199, ptr %.sroa.8339.0..sroa_idx, align 8
  %i.fg = add i64 %i.dh, 1
  store i64 %i.fg, ptr %i.br, align 8
  %i.fh = icmp samesign ult i64 %.sroa.0104.1553, %.sroa.0101.0368383639 ; 2 uses
  %i.fi = zext i1 %i.fh to i64
  %.sroa.0104.1 = add nuw nsw i64 %.sroa.0104.1553, %i.fi
  br i1 %i.fh, label %bb.ah, label %._crit_edge

bb.bf:                                            ; preds = %.thread506
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1974, ptr %i.fj, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit"

bb.bg:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h48c286424d464cfdE.exit"
  %lpad.thr_comm489 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.split649

.split649:                                        ; preds = %bb.bg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 2) #77
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #79
  br label %bb.u

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit": ; preds = %bb.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h76e4b863f28397b3E.exit", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hde6a1cdb893cd5aeE.exit", %.thread475, %bb.ar, %.thread453, %bb.az
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h149e0d87430a36e3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bh

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h09c326f8ff96957aE.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit195"
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252", label %bb.bi

bb.bi:                                            ; preds = %.thread510, %bb.bh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186824
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252": ; preds = %bb.bh, %bb.bi
  switch i64 %.sroa.0279.0396621, label %bb.bj [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"
  ]

bb.bj:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385631) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385631, i64 noundef %.sroa.0279.0396621, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !186825
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit252.thread": ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fk, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hbdc0e97463cb8b33E.exit": ; preds = %bb.q, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0772d97dc647f038E.exit185"
  resume { ptr, i32 } %.pn130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap4iter107_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$6extend17h2576881001d3dde0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !186878 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !noalias !186879, !noundef !166 ; 3 uses
  %i.c = lshr i32 %i.b, 16
  %i.d = trunc nuw i32 %i.c to i16                ; 5 uses
  %i.e = trunc i32 %i.b to i16                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186880)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !186880, !nonnull !166, !noundef !166 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !186880, !noundef !166 ; 12 uses
  switch i64 %i.i, label %.lr.ph.i.i.i [
    i64 0, label %bb.d
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %.lr.ph.i.i.i ] ; 4 uses
  %i.j = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.05.0.lcssa.i.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val20.i.i.i = load i16, ptr %i.l, align 8, !alias.scope !186881, !noalias !186880, !noundef !166 ; 2 uses
  %i.m = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.m, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit", label %bb.c

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = lshr i64 %.sroa.01.025.i.i.i, 1          ; 2 uses
  %i.o = add i64 %i.n, %.sroa.05.024.i.i.i        ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val22.i.i.i = load i16, ptr %i.r, align 8, !alias.scope !186881, !noalias !186880, !noundef !166
  %i.s = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i.i, i64 %i.o, !unpredictable !166 ; 2 uses
  %i.u = sub nuw i64 %.sroa.01.025.i.i.i, %i.n    ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.w = icmp ult i16 %.val20.i.i.i, %i.d
  %i.x = zext i1 %i.w to i64
  %i.y = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.x ; 2 uses
  %i.z = icmp ule i64 %i.y, %i.i
  tail call void @llvm.assume(i1 %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 4 uses
  %i.aa = icmp ult i64 %i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %0, align 8, !range !165, !alias.scope !186882, !noundef !166
  %i.ac = icmp eq i64 %i.i, %i.ab
  br i1 %i.ac, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4672), !noalias !186883
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !186882
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.d ]
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.4.0.i.i.ph.i ; 6 uses
  %i.af = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i, %i.i
  br i1 %i.af, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = sub nuw nsw i64 %i.i, %.sroa.4.0.i.i.ph.i
  %i.ai = shl nuw nsw i64 %i.ah, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ae, i64 %i.ai, i1 false), !noalias !186883
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i": ; preds = %bb.f, %bb.e
  store i64 0, ptr %i.ae, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i16 %i.d, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.aj = add nuw nsw i64 %i.i, 1                 ; 2 uses
  store i64 %i.aj, ptr %i.h, align 8, !alias.scope !186882
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit": ; preds = %._crit_edge.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i"
  %i.ak = phi i64 [ %i.aj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i" ], [ %i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i16.i = phi i64 [ %.sroa.4.0.i.i.ph.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17he19b1e329d7f6687E.exit.i" ], [ %.sroa.05.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.4.0.i.i16.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.o

.loopexit:                                        ; preds = %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit60, %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, %bb.a
  ret void

bb.g:                                             ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21find_container_by_key17h87df9d849b720ed8E.exit"
  %i.am = load ptr, ptr %i.f, align 8, !nonnull !166, !noundef !166
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.4.0.i.i16.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186884)
  %i.ao = load i64, ptr %i.an, align 8, !range !192, !alias.scope !186884, !noundef !166 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %i.ap, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186885)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !186886, !nonnull !166, !noundef !166 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !186886, !noundef !166 ; 11 uses
  switch i64 %i.at, label %.lr.ph.i.i.i24 [
    i64 0, label %bb.j
    i64 1, label %._crit_edge.i.i.i21
  ]

._crit_edge.i.i.i21:                              ; preds = %.lr.ph.i.i.i24, %bb.h
  %.sroa.05.0.lcssa.i.i.i22 = phi i64 [ 0, %bb.h ], [ %i.bc, %.lr.ph.i.i.i24 ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.05.0.lcssa.i.i.i22, %i.at
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %.sroa.05.0.lcssa.i.i.i22
  %.val20.i.i.i23 = load i16, ptr %i.av, align 2, !alias.scope !186887, !noalias !186886, !noundef !166 ; 2 uses
  %i.aw = icmp eq i16 %.val20.i.i.i23, %i.e
  br i1 %i.aw, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.i

.lr.ph.i.i.i24:                                   ; preds = %bb.h, %.lr.ph.i.i.i24
  %.sroa.01.025.i.i.i25 = phi i64 [ %i.bd, %.lr.ph.i.i.i24 ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.05.024.i.i.i26 = phi i64 [ %i.bc, %.lr.ph.i.i.i24 ], [ 0, %bb.h ] ; 2 uses
  %i.ax = lshr i64 %.sroa.01.025.i.i.i25, 1       ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.05.024.i.i.i26    ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.at
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ay
  %.val22.i.i.i27 = load i16, ptr %i.ba, align 2, !alias.scope !186887, !noalias !186886, !noundef !166
  %i.bb = icmp ugt i16 %.val22.i.i.i27, %i.e
  %i.bc = select i1 %i.bb, i64 %.sroa.05.024.i.i.i26, i64 %i.ay, !unpredictable !166 ; 2 uses
  %i.bd = sub nuw i64 %.sroa.01.025.i.i.i25, %i.ax ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %.lr.ph.i.i.i24, label %._crit_edge.i.i.i21

bb.i:                                             ; preds = %._crit_edge.i.i.i21
  %i.bf = icmp ult i16 %.val20.i.i.i23, %i.e
  %i.bg = zext i1 %i.bf to i64
  %i.bh = add nuw i64 %.sroa.05.0.lcssa.i.i.i22, %i.bg ; 2 uses
  %i.bi = icmp ule i64 %i.bh, %i.at
  tail call void @llvm.assume(i1 %i.bi)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bh, %bb.i ], [ %i.at, %bb.h ] ; 3 uses
  %i.bj = icmp ult i64 %i.at, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.at, %i.ao
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4665)
  %.pre.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !186888
  br label %bb.l
end_hunk_0
