Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN5alloc3str17join_generic_copy17h2884464c55e2b2d3E:bb.a
bb.h:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1480, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1482) #75
  unreachable

bb.i:                                             ; preds = %.invoke, %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !99537)
  %.val.i = load i64, ptr %i.e, align 8, !range !74, !alias.scope !99537, !noundef !44 ; 2 uses
  %i.x = icmp eq i64 %.val.i, 0
  br i1 %i.x, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i = load ptr, ptr %i.y, align 8, !alias.scope !99537, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !99537
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit"

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.u, %bb.f ] ; 2 uses
  store i64 %i.o, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !44, !noundef !44
  %i.ab = getelementptr i8, ptr %1, i64 16
  %.val86 = load i64, ptr %i.ab, align 8, !noundef !44 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99539)
  %i.ac = icmp ugt i64 %.val86, %i.o
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.val86, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.z, align 8, !alias.scope !99540
  %.pre = load ptr, ptr %i.y, align 8, !alias.scope !99540
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.ad = phi ptr [ %.sroa.10.0.i, %bb.k ], [ %.pre, %.noexc ] ; 2 uses
  %i.ae = phi i64 [ 0, %bb.k ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %.val, i64 %.val86, i1 false), !noalias !99540
  %i.ah = add i64 %i.ae, %.val86                  ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.ak = sub nsw i64 %i.o, %i.ah                 ; 4 uses
  %i.al = icmp eq i64 %4, 2
  %i.am = icmp eq i64 %2, 1                       ; 2 uses
  br i1 %i.al, label %.preheader, label %.preheader150

.preheader150:                                    ; preds = %bb.m
  br i1 %i.am, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53cb06c14632c534E.exit93.thread", label %.lr.ph

.preheader:                                       ; preds = %bb.m
  br i1 %i.am, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53cb06c14632c534E.exit93.thread", label %.lr.ph163

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53cb06c14632c534E.exit93.thread": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105", %.preheader150, %.preheader
  %.sroa.28.1 = phi i64 [ %i.bf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105" ], [ %i.ak, %.preheader ], [ %i.ak, %.preheader150 ], [ %i.av, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97" ]
  %i.an = sub i64 %i.o, %.sroa.28.1
  store i64 %i.an, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader150, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97"
  %.sroa.08.2159 = phi ptr [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97" ], [ %i.aj, %.preheader150 ] ; 2 uses
  %.sroa.28.2158 = phi i64 [ %i.av, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97" ], [ %i.ak, %.preheader150 ] ; 2 uses
  %.sroa.0110.0157 = phi ptr [ %i.ao, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97" ], [ %i.h, %.preheader150 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0110.0157, i64 24 ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.0110.0157, i64 8
  %.val89 = load ptr, ptr %i.ap, align 8, !nonnull !44, !noundef !44
  %i.aq = getelementptr i8, ptr %.sroa.0110.0157, i64 16
  %.val90 = load i64, ptr %i.aq, align 8, !noundef !44 ; 4 uses
  %.not81 = icmp eq i64 %.sroa.28.2158, 0
  br i1 %.not81, label %bb.n, label %bb.o, !prof !49

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

bb.o:                                             ; preds = %.lr.ph
  %i.ar = add i64 %.sroa.28.2158, -1              ; 2 uses
  %i.as = load i8, ptr %3, align 1, !alias.scope !99541, !noalias !99542
  store i8 %i.as, ptr %.sroa.08.2159, align 1, !alias.scope !99541, !noalias !99542
  %.not82 = icmp ugt i64 %.val90, %i.ar
  br i1 %.not82, label %bb.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97", !prof !49

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit97": ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.2159, i64 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.val90
  %i.av = sub nuw i64 %i.ar, %.val90              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %.val89, i64 %.val90, i1 false), !alias.scope !99543, !noalias !99544
  %i.aw = icmp eq ptr %i.ao, %i.f
  br i1 %i.aw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53cb06c14632c534E.exit93.thread", label %.lr.ph

.lr.ph163:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105"
  %.sroa.08.3162 = phi ptr [ %i.be, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105" ], [ %i.aj, %.preheader ] ; 2 uses
  %.sroa.28.3161 = phi i64 [ %i.bf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105" ], [ %i.ak, %.preheader ] ; 2 uses
  %.sroa.0111.0160 = phi ptr [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105" ], [ %i.h, %.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0111.0160, i64 24 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.0111.0160, i64 8
  %.val87 = load ptr, ptr %i.ay, align 8, !nonnull !44, !noundef !44
  %i.az = getelementptr i8, ptr %.sroa.0111.0160, i64 16
  %.val88 = load i64, ptr %i.az, align 8, !noundef !44 ; 4 uses
  %i.ba = icmp ugt i64 %.sroa.28.3161, 1
  br i1 %i.ba, label %bb.r, label %bb.q, !prof !46

bb.q:                                             ; preds = %.lr.ph163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

bb.r:                                             ; preds = %.lr.ph163
  %i.bb = add i64 %.sroa.28.3161, -2              ; 2 uses
  %i.bc = load i16, ptr %3, align 1, !alias.scope !99545, !noalias !99546
  store i16 %i.bc, ptr %.sroa.08.3162, align 1, !alias.scope !99545, !noalias !99546
  %.not85 = icmp ugt i64 %.val88, %i.bb
  br i1 %.not85, label %bb.s, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105", !prof !49

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.p, %bb.q, %bb.s
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.n ], [ %.sink.sroa.gep192, %bb.p ], [ %.sink.sroa.gep193, %bb.q ], [ %.sink.sroa.gep194, %bb.s ]
  %.sink.sroa.phi195 = phi ptr [ %.sink.sroa.gep196, %bb.n ], [ %.sink.sroa.gep197, %bb.p ], [ %.sink.sroa.gep198, %bb.q ], [ %.sink.sroa.gep199, %bb.s ]
  %.sink.sroa.phi200 = phi ptr [ %.sink.sroa.gep201, %bb.n ], [ %.sink.sroa.gep202, %bb.p ], [ %.sink.sroa.gep203, %bb.q ], [ %.sink.sroa.gep204, %bb.s ]
  %.sink.sroa.phi205 = phi ptr [ %.sink.sroa.gep206, %bb.n ], [ %.sink.sroa.gep207, %bb.p ], [ %.sink.sroa.gep208, %bb.q ], [ %.sink.sroa.gep209, %bb.s ]
  %.sink = phi ptr [ %i.d, %bb.n ], [ %i.c, %bb.p ], [ %i.b, %bb.q ], [ %i.a, %bb.s ] ; 2 uses
  store ptr @72, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
  store ptr null, ptr %.sink.sroa.phi195, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi200, align 8
  store i64 0, ptr %.sink.sroa.phi205, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1484) #75
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h19ab03e395f6796bE.exit105": ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.3162, i64 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.val88
  %i.bf = sub nuw i64 %i.bb, %.val88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %.val87, i64 %.val88, i1 false), !alias.scope !99547, !noalias !99548
  %i.bg = icmp eq ptr %i.ax, %i.f
  br i1 %i.bg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53cb06c14632c534E.exit93.thread", label %.lr.ph163

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd7cc45108439bf84E.exit": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h1f353a88651b2146E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = icmp eq i64 %4, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %3, align 1, !noundef !44   ; 3 uses
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.e = icmp samesign eq i64 %2, 0
  br i1 %i.e, label %_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !99619
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #66, !noalias !99619 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %2, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !noalias !99620 ; 2 uses
  %wide.load23 = load <16 x i8>, ptr %i.j, align 1, !noalias !99620 ; 2 uses
  %i.k = icmp eq <16 x i8> %wide.load, splat (i8 10)
  %i.l = icmp eq <16 x i8> %wide.load23, splat (i8 10)
  %i.m = select <16 x i1> %i.k, <16 x i8> %broadcast.splat, <16 x i8> %wide.load
  %i.n = select <16 x i1> %i.l, <16 x i8> %broadcast.splat, <16 x i8> %wide.load23
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !noalias !99621
  store <16 x i8> %i.n, ptr %i.p, align 1, !noalias !99621
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !99585

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !183

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %2, 9223372036854775800      ; 3 uses
  %broadcast.splatinsert25 = insertelement <8 x i8> poison, i8 %i.c, i64 0
  %broadcast.splat26 = shufflevector <8 x i8> %broadcast.splatinsert25, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index27
  %wide.load28 = load <8 x i8>, ptr %i.r, align 1, !noalias !99620 ; 2 uses
  %i.s = icmp eq <8 x i8> %wide.load28, splat (i8 10)
  %i.t = select <8 x i1> %i.s, <8 x i8> %broadcast.splat26, <8 x i8> %wide.load28
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %index27
  store <8 x i8> %i.t, ptr %i.u, align 1, !noalias !99621
  %index.next29 = add nuw i64 %index27, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99586

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %2, %n.vec24
  br i1 %cmp.n30, label %_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec24, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75, !noalias !99622
  unreachable

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
  %i.w = phi i64 [ %i.aa, %.preheader.i.i.i.i.i.i ], [ %.ph, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.x, align 1, !noalias !99620, !noundef !44 ; 2 uses
  %i.y = icmp eq i8 %.val21.i.i.i.i.i.i.i.i.i, 10
  %spec.select = select i1 %i.y, i8 %i.c, i8 %.val21.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.w
  store i8 %spec.select, ptr %i.z, align 1, !noalias !99621
  %i.aa = add nuw nsw i64 %i.w, 1                 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %2
  br i1 %i.ab, label %_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit, label %.preheader.i.i.i.i.i.i, !llvm.loop !99587

_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit: ; preds = %.preheader.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i12.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.f, %middle.block ], [ %i.f, %vec.epilog.middle.block ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  store i64 %2, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i12.i.i.i.i, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx46, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.s, %_ZN4core4iter6traits8iterator8Iterator7collect17hebc9527b69bede97E.exit
  ret void

bb.f:                                             ; preds = %bb.a
  %.not19 = icmp eq i64 %4, 0
  %.23 = select i1 %.not19, i64 0, i64 %2         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = icmp slt i64 %.23, 0
  br i1 %i.ac, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.f
  %i.ad = icmp eq i64 %.23, 0
  br i1 %i.ad, label %.lr.ph.split.i.lr.ph, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !99623
  %i.ae = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.23, i64 noundef range(i64 1, 9) 1) #66, !noalias !99623 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %.lr.ph.split.i.lr.ph

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %.23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1485) #75
  unreachable

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99625)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !74, !alias.scope !99626, !noundef !44 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i, 0
  br i1 %i.ag, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !99626, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !99626
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.k:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph.split.i.lr.ph:                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.g
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %2, %bb.g ] ; 2 uses
  %i.ai = icmp ule i64 %.23, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.lr.ph, %bb.v
  %i.aj = phi ptr [ %.sroa.10.0.i, %.lr.ph.split.i.lr.ph ], [ %i.bz, %bb.v ] ; 5 uses
  %i.ak = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.cd, %bb.v ] ; 7 uses
  %.sroa.08.0106 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.ay, %bb.v ] ; 7 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.split.i
  %i.al = phi i64 [ %.sroa.08.0106, %.lr.ph.split.i ], [ %i.ay, %bb.n ] ; 5 uses
  %i.am = sub nuw i64 %2, %i.al                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 2 uses
  %i.ao = icmp ult i64 %i.am, 16
  br i1 %i.ao, label %.preheader.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.preheader.i.i:                                   ; preds = %bb.l
  %.not.i.i = icmp eq i64 %2, %i.al
  br i1 %.not.i.i, label %.critedge25, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.m
  %.sroa.01.05.i.i = phi i64 [ %i.as, %bb.m ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.05.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !99627, !noalias !99628, !noundef !44
  %i.ar = icmp eq i8 %i.aq, 10
  br i1 %i.ar, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i, label %.critedge25, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %bb.l
  %i.at = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.an, i64 noundef %i.am)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %i.au = extractvalue { i64, i64 } %i.at, 0
  %i.av = extractvalue { i64, i64 } %i.at, 1
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %.critedge25

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.4.0.i27.i = phi i64 [ %i.av, %.noexc ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ax = add i64 %i.al, 1
  %i.ay = add i64 %i.ax, %.sroa.4.0.i27.i         ; 4 uses
  %.not21.i = icmp ugt i64 %i.ay, %2              ; 2 uses
  %i.az = add i64 %.sroa.4.0.i27.i, %i.al         ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.az, %2
  br i1 %or.cond.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %.critedge25, label %bb.l

bb.o:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %lhsc = load i8, ptr %i.ba, align 1
  %i.bb = icmp eq i8 %lhsc, 10
  br i1 %i.bb, label %bb.p, label %bb.n

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.q, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

end_hunk_0
begin_hunk_1_@"_ZN96_$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h03dbf816df01e01aE":bb.a
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16"

bb.ba:                                            ; preds = %bb.az
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118553)
  %i.dq = load ptr, ptr %i.dj, align 8, !alias.scope !118554, !noundef !44 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.body.i19, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ds = load i64, ptr %i.dq, align 8, !noalias !118555, !noundef !44
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i64 %i.dt, ptr %i.dq, align 8, !noalias !118555
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.bc, label %.body.i19

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %.body.i19 unwind label %bb.bf

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16_crit_edge", %bb.ay
  %i.dv = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16_crit_edge" ], [ %4, %bb.ay ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118556)
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i", label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16"
  %i.dx = load i64, ptr %i.dv, align 8, !noalias !118557, !noundef !44
  %i.dy = add i64 %i.dx, -1                       ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !noalias !118557
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.be, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i"

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i" unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i19

.body.i19:                                        ; preds = %bb.bg, %bb.bc, %bb.bb, %bb.ba
  %eh.lpad-body.i20 = phi { ptr, i32 } [ %i.eb, %bb.bg ], [ %i.dp, %bb.bc ], [ %i.dp, %bb.bb ], [ %i.dp, %bb.ba ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17hf15e6ba4b43d771aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g) #77
          to label %.body22 unwind label %bb.bk

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i": ; preds = %bb.be, %bb.bd, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i16"
  call void @llvm.experimental.noalias.scope.decl(metadata !118558)
  %i.ec = load i64, ptr %i.g, align 8, !range !60, !alias.scope !118559, !noundef !44
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %"_ZN4core3ptr218drop_in_place$LT$$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd216907a7171e98E.exit", label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !118560)
  %i.ee = load ptr, ptr %i.dk, align 8, !alias.scope !118561, !noundef !44 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i17, label %"_ZN4core3ptr218drop_in_place$LT$$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd216907a7171e98E.exit", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !118562, !noundef !44
  %i.eg = add i64 %i.ef, -1                       ; 2 uses
  store i64 %i.eg, ptr %i.ee, align 8, !noalias !118562
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.bj, label %"_ZN4core3ptr218drop_in_place$LT$$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd216907a7171e98E.exit"

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %"_ZN4core3ptr218drop_in_place$LT$$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd216907a7171e98E.exit" unwind label %bb.bl

bb.bk:                                            ; preds = %.body.i19
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.bl:                                            ; preds = %bb.bj, %bb.ax
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body22:                                          ; preds = %.body.i19, %bb.bl
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.ej, %bb.bl ], [ %eh.lpad-body.i20, %.body.i19 ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hf11d9a9152135beeE"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #77
          to label %.critedge14 unwind label %bb.bm

"_ZN4core3ptr218drop_in_place$LT$$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$..closurize_as_btype$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd216907a7171e98E.exit": ; preds = %bb.bi, %bb.bh, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i", %bb.bj, %bb.ax
  %.sroa.01.0 = phi ptr [ %i.dl, %bb.ax ], [ null, %bb.bj ], [ null, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE.exit.i" ], [ null, %bb.bh ], [ null, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noundef !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.01.0, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.el, ptr %i.en, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.bm:                                            ; preds = %bb.bp, %.critedge, %bb.bn, %.thread, %.body22
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.thread:                                          ; preds = %bb.av, %bb.ao, %bb.an, %bb.am, %bb.aj
  %.pn12.ph = phi { ptr, i32 } [ %.pn.i, %bb.aj ], [ %i.de, %bb.av ], [ %i.co, %bb.am ], [ %i.co, %bb.ao ], [ %i.co, %bb.an ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..BindingType$GT$17hf15e6ba4b43d771aE"(ptr noalias noundef align 8 dereferenceable(16) %i.i) #77
          to label %bb.bn unwind label %bb.bm

bb.bn:                                            ; preds = %.thread
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.j) #77
          to label %.critedge unwind label %bb.bm

.critedge14:                                      ; preds = %.body22, %.critedge
  %.pn1231 = phi { ptr, i32 } [ %.pn12.ph, %.critedge ], [ %eh.lpad-body23, %.body22 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118563)
  call void @llvm.experimental.noalias.scope.decl(metadata !118564)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !118565, !noundef !44 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h65c8b612b6012d20E.exit", label %bb.bo

bb.bo:                                            ; preds = %.critedge14
  %i.es = load i64, ptr %i.eq, align 8, !noalias !118566, !noundef !44
  %i.et = add i64 %i.es, -1                       ; 2 uses
  store i64 %i.et, ptr %i.eq, align 8, !noalias !118566
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.bp, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h65c8b612b6012d20E.exit"

bb.bp:                                            ; preds = %bb.bo
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ep)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h65c8b612b6012d20E.exit" unwind label %bb.bm

.critedge:                                        ; preds = %bb.bn
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ev) #77
          to label %.critedge14 unwind label %bb.bm

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h65c8b612b6012d20E.exit": ; preds = %bb.bo, %.critedge14, %bb.bp
  resume { ptr, i32 } %.pn1231
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h932c1fe61b5c6ca5E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118585)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub nuw i64 %i.a, %i.b                   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !118586, !noundef !44 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !74, !alias.scope !118586, !noundef !44
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i", !prof !49

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !118585
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i": ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %bb.b ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !118585, !nonnull !44, !noundef !44 ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %.not12.i.i.i = icmp eq ptr %1, %2
  br i1 %.not12.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit", label %iter.check

iter.check:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add i64 %i.i, %i.l
  %i.n = sub i64 %i.b, %i.m
  %diff.check = icmp ugt i64 %i.n, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.c, 24
  %n.vec = and i64 %i.c, -32                      ; 5 uses
  %i.p = add i64 %i.i, %n.vec                     ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %n.vec
  %i.r = getelementptr i8, ptr %i.k, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !118587
  %wide.load4 = load <16 x i8>, ptr %i.s, align 1, !noalias !118587
  %i.t = getelementptr i8, ptr %i.r, i64 %index   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 1, !noalias !118588
  store <16 x i8> %wide.load4, ptr %i.u, align 1, !noalias !118588
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !118581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !183

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.c, -8                      ; 4 uses
  %i.w = add i64 %i.i, %n.vec6                    ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %n.vec6
  %i.y = getelementptr i8, ptr %i.k, i64 %i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 3 uses
  %next.gep8 = getelementptr i8, ptr %1, i64 %index7
  %wide.load9 = load <8 x i8>, ptr %next.gep8, align 1, !noalias !118587
  %i.z = getelementptr i8, ptr %i.y, i64 %index7
  store <8 x i8> %wide.load9, ptr %i.z, align 1, !noalias !118588
  %index.next10 = add nuw i64 %index7, 8          ; 2 uses
  %i.aa = icmp eq i64 %index.next10, %n.vec6
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %i.c, %n.vec6
  br i1 %cmp.n11, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0.013.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.013.i.i.i.ph14 = ptrtoaddr ptr %.sroa.0.013.i.i.i.ph to i64 ; 2 uses
  %i.ab = sub i64 %i.a, %.sroa.0.013.i.i.i.ph14
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ac = phi i64 [ %i.ag, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.013.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %.sroa.0.013.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.sroa.0.013.i.i.i.prol, align 1, !noalias !118587, !noundef !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  store i8 %i.ae, ptr %i.af, align 1, !noalias !118588
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !118583

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.prol ]
  %.sroa.0.013.i.i.i.unr = phi ptr [ %.sroa.0.013.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %i.ah = sub i64 %.sroa.0.013.i.i.i.ph14, %i.a
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.013.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.sroa.0.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 1
  %i.al = load i8, ptr %.sroa.0.013.i.i.i, align 1, !noalias !118587, !noundef !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aj
  store i8 %i.al, ptr %i.am, align 1, !noalias !118588
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 2
  %i.ao = load i8, ptr %i.ak, align 1, !noalias !118587, !noundef !44
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  store i8 %i.ao, ptr %i.aq, align 1, !noalias !118588
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 3
  %i.as = load i8, ptr %i.an, align 1, !noalias !118587, !noundef !44
  %i.at = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.au = getelementptr i8, ptr %i.at, i64 2
  store i8 %i.as, ptr %i.au, align 1, !noalias !118588
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i, i64 4 ; 2 uses
  %i.aw = load i8, ptr %i.ar, align 1, !noalias !118587, !noundef !44
  %i.ax = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ay = getelementptr i8, ptr %i.ax, i64 3
  store i8 %i.aw, ptr %i.ay, align 1, !noalias !118588
  %i.az = add i64 %i.aj, 4                        ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i.3, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit", label %.lr.ph.i.i.i, !llvm.loop !118584

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h8a4c823178e07e3aE.exit": ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"
  %.val5.i.i.i = phi i64 [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i" ], [ %i.w, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.az, %.lr.ph.i.i.i ]
  store i64 %.val5.i.i.i, ptr %i.d, align 8, !alias.scope !118585, !noalias !118589
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h9ace97a4ac3de119E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118616)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !118616, !noalias !118615, !nonnull !44, !noundef !44 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.a, align 8, !alias.scope !118616, !noalias !118615, !nonnull !44, !noundef !44 ; 3 uses
  %i.b = ptrtoint ptr %.val4.i to i64             ; 3 uses
  %i.c = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !118617, !noalias !118616, !noundef !44 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !74, !alias.scope !118617, !noalias !118616, !noundef !44
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i", !prof !49

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit_crit_edge.i" unwind label %bb.f, !noalias !118616

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit_crit_edge.i": ; preds = %bb.b
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !118615, !noalias !118616
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit_crit_edge.i", %bb.a
  %i.j = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit_crit_edge.i" ], [ %i.f, %bb.a ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !118615, !noalias !118616, !nonnull !44, !noundef !44 ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !118616, !noalias !118615 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !118616, !noalias !118615 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !118616, !noalias !118615 ; 3 uses
  %.not11.i.i.i = icmp eq ptr %.val.i, %.val4.i
  br i1 %.not11.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = add i64 %i.j, %i.m
  %i.o = sub i64 %i.c, %i.n
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.q = add i64 %i.j, %n.vec                     ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 %n.vec
  %i.s = getelementptr i8, ptr %i.l, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val.i, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !118618
  %wide.load3 = load <16 x i8>, ptr %i.t, align 1, !noalias !118618
  %i.u = getelementptr i8, ptr %i.s, i64 %index   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <16 x i8> %wide.load, ptr %i.u, align 1, !noalias !118619
  store <16 x i8> %wide.load3, ptr %i.v, align 1, !noalias !118619
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !118607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !183

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.x = add i64 %i.j, %n.vec5                    ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i, i64 %n.vec5
  %i.z = getelementptr i8, ptr %i.l, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ] ; 3 uses
  %next.gep7 = getelementptr i8, ptr %.val.i, i64 %index6
  %wide.load8 = load <8 x i8>, ptr %next.gep7, align 1, !noalias !118618
  %i.aa = getelementptr i8, ptr %i.z, i64 %index6
  store <8 x i8> %wide.load8, ptr %i.aa, align 1, !noalias !118619
  %index.next9 = add nuw i64 %index6, 8           ; 2 uses
  %i.ab = icmp eq i64 %index.next9, %n.vec5
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118608

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n10, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.ph13 = phi ptr [ %.val.i, %iter.check ], [ %.val.i, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %.ph1314 = ptrtoaddr ptr %.ph13 to i64          ; 2 uses
  %i.ac = sub i64 %i.b, %.ph1314
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ad = phi i64 [ %i.ai, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i.i.prol ], [ %.ph13, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !noalias !118618, !noundef !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  store i8 %i.ag, ptr %i.ah, align 1, !noalias !118619
  %i.ai = add i64 %i.ad, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !118609

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %.unr15 = phi ptr [ %.ph13, %.lr.ph.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.prol ]
  %i.aj = sub i64 %.ph1314, %i.b
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.al = phi i64 [ %i.bc, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.am = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.unr15, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.am, align 1, !noalias !118618, !noundef !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.al
  store i8 %i.ao, ptr %i.ap, align 1, !noalias !118619
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.an, align 1, !noalias !118618, !noundef !44
  %i.as = getelementptr i8, ptr %i.l, i64 %i.al
  %i.at = getelementptr i8, ptr %i.as, i64 1
  store i8 %i.ar, ptr %i.at, align 1, !noalias !118619
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.av = load i8, ptr %i.aq, align 1, !noalias !118618, !noundef !44
  %i.aw = getelementptr i8, ptr %i.l, i64 %i.al
  %i.ax = getelementptr i8, ptr %i.aw, i64 2
  store i8 %i.av, ptr %i.ax, align 1, !noalias !118619
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.az = load i8, ptr %i.au, align 1, !noalias !118618, !noundef !44
  %i.ba = getelementptr i8, ptr %i.l, i64 %i.al
  %i.bb = getelementptr i8, ptr %i.ba, i64 3
  store i8 %i.az, ptr %i.bb, align 1, !noalias !118619
  %i.bc = add i64 %i.al, 4                        ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ay, %.val4.i
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !118610

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i"
  %.val7.i.i.i = phi i64 [ %i.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb55298f6831b4e87E.exit.i" ], [ %i.x, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bc, %.lr.ph.i.i.i ]
  store i64 %.val7.i.i.i, ptr %i.e, align 8, !alias.scope !118615, !noalias !118620
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h668ccc3d1b8f1372E.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !118621, !noundef !44 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  tail call void @llvm.assume(i1 %i.bf)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i, %i.be
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.bg = add i64 %i.be, %.sroa.7.0.copyload.i
  store i64 %i.bg, ptr %i.bd, align 8, !noalias !118621
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h668ccc3d1b8f1372E.exit"

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !118621, !nonnull !44, !noundef !44 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.6.0.copyload.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %i.bj, i64 %.sroa.7.0.copyload.i, i1 false), !noalias !118621
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h676209551ece6340E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #77, !noalias !118615
  resume { ptr, i32 } %i.bl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h668ccc3d1b8f1372E.exit": ; preds = %._crit_edge.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb26603fdde7928ecE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118679)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !118679, !noalias !118680, !noundef !44 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !118679, !noalias !118680, !noundef !44 ; 4 uses
  %i.b = sub nuw i64 %.val1.i.i, %.val.i.i        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !118681, !noalias !118679, !noundef !44 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !74, !alias.scope !118681, !noalias !118679, !noundef !44
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i", !prof !49

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 24), !noalias !118679
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !118678, !noalias !118679
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i": ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !118678, !noalias !118679, !nonnull !44, !noundef !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118687)
  %i.k = icmp ule i64 %.val.i.i, %.val1.i.i
  tail call void @llvm.assume(i1 %i.k)
  %.not6.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i, %.val1.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h05ddb3feaa91a1e9E.exit", label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i"
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %1, align 8, !alias.scope !118688, !noalias !118689
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 1
  %i.m = icmp eq i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !118690, !noalias !118691, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i, label %.lr.ph.i.preheader.split.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !118692, !noalias !118693, !nonnull !44, !noundef !44
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i.us.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !118692, !noalias !118693, !noundef !44 ; 8 uses
  %i.q = icmp slt i64 %.val1.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.q, label %.split.us.i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  %i.r = icmp eq i64 %.val1.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.r, label %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h70dfca9136ed509aE.exit.loopexit.split.us.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !118694
  %i.s = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i.i.us.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !118694 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.split.us.i.i.i.i.i.i, label %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h70dfca9136ed509aE.exit.loopexit.split.us.i.i.i.i.i.i"

"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h70dfca9136ed509aE.exit.loopexit.split.us.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.us.i.i.i.i.i.i, i64 %.val1.i.i.us.i.i.i.i.i.i, i1 false), !noalias !118695
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 3 uses
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !118696
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !118696
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !118696
  %i.v = add i64 %i.h, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h05ddb3feaa91a1e9E.exit"

.lr.ph.i.preheader.split.i.i.i.i.i.i:             ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %i.w = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i7.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !118692, !noalias !118693, !noundef !44 ; 3 uses
  %i.x = icmp slt i64 %.val1.i.i7.i.i.i.i.i.i, 0
  br i1 %i.x, label %.split.us.i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.lr.ph.i.i.i.i.i.i, !prof !118697

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.lr.ph.i.i.i.i.i.i: ; preds = %.lr.ph.i.preheader.split.i.i.i.i.i.i
  %i.y = icmp ne i64 %.val1.i.i7.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.y)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !118694
  unreachable

.split.us.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.preheader.split.i.i.i.i.i.i, %bb.c, %.lr.ph.i.us.i.i.i.i.i.i
  %.us-phi3.i.i.i.i.i.i = phi i64 [ %.val1.i.i.us.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i ], [ %.val1.i.i.us.i.i.i.i.i.i, %bb.c ], [ %.val1.i.i7.i.i.i.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i.i.i ]
  %.us-phi4.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i.i.i.i.i ], [ 1, %bb.c ], [ 0, %.lr.ph.i.preheader.split.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi4.i.i.i.i.i.i, i64 %.us-phi3.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !118698
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h05ddb3feaa91a1e9E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i", %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h70dfca9136ed509aE.exit.loopexit.split.us.i.i.i.i.i.i"
  %.val3.i.i.i.i.i.i.i = phi i64 [ %i.h, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74ace678a64a2b2cE.exit.i" ], [ %i.v, %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h70dfca9136ed509aE.exit.loopexit.split.us.i.i.i.i.i.i" ]
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !118678, !noalias !118699
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd8229c3dffbeaeacE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118717)
  %i.a = icmp ne ptr %1, null
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !118718, !noalias !118719, !noundef !44 ; 3 uses
end_hunk_1
