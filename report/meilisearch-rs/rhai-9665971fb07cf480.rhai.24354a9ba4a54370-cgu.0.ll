Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4rhai8packages10blob_basic14blob_functions6retain17h08055476cd6d67b6E:bb.a

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph74
  %index77 = phi i64 [ %vec.epilog.resume.val68, %vec.epilog.ph74 ], [ %index.next80, %vec.epilog.vector.body76 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.bl, i64 %index77
  %wide.load79 = load <8 x i8>, ptr %next.gep78, align 1, !noalias !43012
  %i.cm = getelementptr i8, ptr %i.cl, i64 %index77
  store <8 x i8> %wide.load79, ptr %i.cm, align 1, !noalias !43013
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.cn, label %vec.epilog.middle.block81, label %vec.epilog.vector.body76, !llvm.loop !42992

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body76
  %cmp.n82 = icmp eq i64 %gepdiff, %n.vec75
  br i1 %cmp.n82, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck53, %iter.check70, %vec.epilog.iter.check72, %vec.epilog.middle.block81
  %.ph = phi i64 [ %i.bw, %iter.check70 ], [ %i.bw, %vector.memcheck53 ], [ %i.cc, %vec.epilog.iter.check72 ], [ %i.cj, %vec.epilog.middle.block81 ]
  %.ph86 = phi ptr [ %i.bl, %iter.check70 ], [ %i.bl, %vector.memcheck53 ], [ %i.cd, %vec.epilog.iter.check72 ], [ %i.ck, %vec.epilog.middle.block81 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.co = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cp = phi ptr [ %i.cq, %.lr.ph.i.i.i ], [ %.ph86, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !noalias !43012, !noundef !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.co
  store i8 %i.cr, ptr %i.cs, align 1, !noalias !43013
  %i.ct = add i64 %i.co, 1                        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !42993

bb.q:                                             ; preds = %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #72, !noalias !43009
  %.val.i.pre = load i64, ptr %i.b, align 8, !range !65, !alias.scope !43010
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block66, %vec.epilog.middle.block81, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"
  %.val7.i.i.i = phi i64 [ %i.bw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i" ], [ %i.cj, %vec.epilog.middle.block81 ], [ %i.cc, %middle.block66 ], [ %i.ct, %.lr.ph.i.i.i ]
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !43009, !noalias !43014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 17 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43151)
  %.val.i = load i64, ptr %0, align 8, !range !65, !alias.scope !43151, !noundef !55 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !43151, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43151
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i64 %1, %i.b
  br i1 %.not.i, label %.split.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  %.promoted = phi i64 [ %i.i, %bb.f ], [ %1, %bb.e ] ; 16 uses
  %i.j = icmp slt i64 %2, 1
  %i.k = icmp eq i64 %i.b, %.promoted
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.thread, label %bb.g

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", %bb.af, %bb.m, %bb.n, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"
  ret void

bb.g:                                             ; preds = %.split.i
  %i.l = sub nsw i64 %i.b, %.promoted
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 4 uses
  %i.m = add nuw i64 %spec.select.i, %.promoted   ; 11 uses
  %.sroa.031.0.copyload = load i64, ptr %3, align 8 ; 6 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 17 uses
  %.sroa.532.0.copyload129 = ptrtoaddr ptr %.sroa.532.0.copyload to i64 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload.fr = freeze i64 %.sroa.7.0.copyload ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43152)
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %.invoke.i, label %.lr.ph.preheader.i.i.i, !prof !66

.invoke.i:                                        ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.cont.i unwind label %bb.h, !noalias !43153

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.h:                                             ; preds = %.invoke.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43154
  br label %.body

.thread:                                          ; preds = %.split.i, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.q = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43156)
  %i.r = load i64, ptr %0, align 8, !range !65, !alias.scope !43157, !noalias !43158, !noundef !55
  %i.s = sub nsw i64 %i.r, %i.b
  %i.t = icmp ugt i64 %.sroa.5.0.copyload, %i.s
  br i1 %i.t, label %bb.l, label %bb.m, !prof !66

bb.j:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43159
  br label %.body

bb.l:                                             ; preds = %.thread
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.5.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j, !noalias !43158

.noexc.i:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !43160, !noalias !43158
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i, %.thread
  %i.w = phi i64 [ %i.b, %.thread ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !43160, !noalias !43158, !nonnull !55, !noundef !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !43161
  %i.ab = add nuw i64 %i.w, %.sroa.5.0.copyload
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !43160, !noalias !43158
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43162
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  store i64 %.promoted, ptr %i.a, align 8, !alias.scope !43163, !noalias !43164
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !43163, !noalias !43164, !nonnull !55, !noundef !55 ; 5 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ag = sub nuw nsw i64 %i.b, %i.m              ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  %i.ai = icmp sgt i64 %.sroa.7.0.copyload.fr, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload, i64 %.sroa.7.0.copyload.fr ; 7 uses
  %i.ak = icmp eq i64 %i.b, %i.m                  ; 2 uses
  br i1 %i.ak, label %bb.o, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader": ; preds = %.lr.ph.preheader.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.promoted ; 4 uses
  %.not.not.i.i.i51 = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not.not.i.i.i51, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"
  %i.am = add nsw i64 %.sroa.7.0.copyload.fr, -1
  %i.an = add nsw i64 %spec.select.i, -1
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ap = add nuw i64 %i.ao, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 8
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aq = add i64 %.promoted, %i.af
  %i.ar = sub i64 %.sroa.532.0.copyload129, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -4
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.as = and i64 %i.ap, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub i64 %i.ap, %i.au                   ; 3 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.aw = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep131, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep131, align 1, !noalias !43165
  %wide.load132 = load <2 x i8>, ptr %i.ay, align 1, !noalias !43165
  %i.az = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %wide.load, ptr %next.gep, align 1, !noalias !43166
  store <2 x i8> %wide.load132, ptr %i.az, align 1, !noalias !43166
  %i.ba = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bb = add <2 x i64> %vec.phi130, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !43045

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph

scalar.ph:                                        ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %bc.merge.rdx = phi i64 [ %i.bd, %middle.block ], [ %.promoted, %.lr.ph.preheader ], [ %.promoted, %vector.memcheck ]
  %bc.resume.val = phi ptr [ %i.av, %middle.block ], [ %i.al, %.lr.ph.preheader ], [ %i.al, %vector.memcheck ] ; 2 uses
  %bc.resume.val133 = phi ptr [ %i.aw, %middle.block ], [ %.sroa.532.0.copyload, %.lr.ph.preheader ], [ %.sroa.532.0.copyload, %vector.memcheck ] ; 2 uses
  %bc.resume.val133135 = ptrtoaddr ptr %bc.resume.val133 to i64 ; 4 uses
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43168)
  %i.be = load i64, ptr %0, align 8, !range !65, !alias.scope !43169, !noalias !43170, !noundef !55
  %i.bf = sub nsw i64 %i.be, %.promoted
  %i.bg = icmp ugt i64 %.sroa.7.0.copyload.fr, %i.bf
  br i1 %i.bg, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", !prof !66

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.promoted, i64 noundef %.sroa.7.0.copyload.fr, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" unwind label %bb.x, !noalias !43171

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread": ; preds = %bb.p
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !43172, !noalias !43170
  %.pre75 = load ptr, ptr %i.ad, align 8, !alias.scope !43172, !noalias !43170
  br label %iter.check199

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i": ; preds = %bb.o
  %.not7.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %iter.check199

iter.check199:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i"
  %i.bh = phi i64 [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 7 uses
  %i.bi = phi ptr [ %.pre75, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 8 uses
  %min.iters.check183 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 8
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %iter.check199
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj
  %i.bl = sub i64 %.sroa.532.0.copyload129, %i.bk
  %diff.check181 = icmp ugt i64 %i.bl, -32
  br i1 %diff.check181, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check184

vector.main.loop.iter.check184:                   ; preds = %vector.memcheck180
  %min.iters.check185 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 32
  br i1 %min.iters.check185, label %vec.epilog.ph203, label %vector.ph186

vector.ph186:                                     ; preds = %vector.main.loop.iter.check184
  %i.bm = and i64 %.sroa.7.0.copyload.fr, 24
  %n.vec187 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775776 ; 5 uses
  %i.bn = add i64 %i.bh, %n.vec187                ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec187
  %i.bp = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body188 ] ; 3 uses
  %next.gep190 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index189 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <16 x i8>, ptr %next.gep190, align 1, !noalias !43173
  %wide.load192 = load <16 x i8>, ptr %i.bq, align 1, !noalias !43173
  %i.br = getelementptr i8, ptr %i.bp, i64 %index189 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load191, ptr %i.br, align 1, !noalias !43174
  store <16 x i8> %wide.load192, ptr %i.bs, align 1, !noalias !43174
  %index.next193 = add nuw i64 %index189, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.bt, label %middle.block194, label %vector.body188, !llvm.loop !43072

middle.block194:                                  ; preds = %vector.body188
  %cmp.n195 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec187
  br i1 %cmp.n195, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block194
  %min.epilog.iters.check202 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph203, !prof !160

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check184, %vec.epilog.iter.check201
  %vec.epilog.resume.val196 = phi i64 [ %n.vec187, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check184 ]
  %n.vec204 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775800 ; 4 uses
  %i.bu = add i64 %i.bh, %n.vec204                ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec204
  %i.bw = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph203
  %index206 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph203 ], [ %index.next209, %vec.epilog.vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index206
  %wide.load208 = load <8 x i8>, ptr %next.gep207, align 1, !noalias !43173
  %i.bx = getelementptr i8, ptr %i.bw, i64 %index206
  store <8 x i8> %wide.load208, ptr %i.bx, align 1, !noalias !43174
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.by, label %vec.epilog.middle.block210, label %vec.epilog.vector.body205, !llvm.loop !43073

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body205
  %cmp.n211 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec204
  br i1 %cmp.n211, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck180, %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block210
  %.ph = phi i64 [ %i.bh, %iter.check199 ], [ %i.bh, %vector.memcheck180 ], [ %i.bn, %vec.epilog.iter.check201 ], [ %i.bu, %vec.epilog.middle.block210 ] ; 2 uses
  %.ph216 = phi ptr [ %.sroa.532.0.copyload, %iter.check199 ], [ %.sroa.532.0.copyload, %vector.memcheck180 ], [ %i.bo, %vec.epilog.iter.check201 ], [ %i.bv, %vec.epilog.middle.block210 ] ; 3 uses
  %i.bz = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph216239 = ptrtoaddr ptr %.ph216 to i64       ; 2 uses
  %i.ca = sub i64 %i.bz, %.ph216239
  %xtraiter240 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.cb = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !43173, !noundef !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cb
  store i8 %i.cd, ptr %i.cf, align 1, !noalias !43174
  %i.cg = add i64 %i.cb, 1                        ; 3 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !43074

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr243 = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr244 = phi ptr [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ch = sub i64 %.ph216239, %i.bz
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cj = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr243, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr244, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !43173, !noundef !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  store i8 %i.cl, ptr %i.cn, align 1, !noalias !43174
  %i.co = load i8, ptr %i.cm, align 1, !noalias !43173, !noundef !55
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cq = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 %i.co, ptr %i.cr, align 1, !noalias !43174
  %i.cs = load i8, ptr %i.cp, align 1, !noalias !43173, !noundef !55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cu = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i8 %i.cs, ptr %i.cv, align 1, !noalias !43174
  %i.cw = load i8, ptr %i.ct, align 1, !noalias !43173, !noundef !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cz = getelementptr i8, ptr %i.cy, i64 3
  store i8 %i.cw, ptr %i.cz, align 1, !noalias !43174
  %i.da = add i64 %i.cj, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.cx, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !43075

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i": ; preds = %.lr.ph
  %.not.not.i.i.i = icmp eq ptr %i.de, %i.aj
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not.i.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", label %.lr.ph, !llvm.loop !43076

end_hunk_0
