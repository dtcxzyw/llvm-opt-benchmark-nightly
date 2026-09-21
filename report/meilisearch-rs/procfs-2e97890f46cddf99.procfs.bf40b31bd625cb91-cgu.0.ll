Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h07f4ee542beaa791E":bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !noundef !4
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.i, label %_ZN3std2io18default_read_exact17h16189c037aaa22f3E.exit

.split42.i:                                       ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.k, i64 15
  %i.x = load i8, ptr %i.w, align 8, !range !20, !noundef !4
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread.i, label %_ZN3std2io18default_read_exact17h16189c037aaa22f3E.exit

bb.f:                                             ; preds = %bb.b
  %i.z = icmp ult ptr %i.k, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.z)
  %.mask.i = and i64 %i.l, -4294967296
  %i.aa = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.aa, label %.thread.i, label %_ZN3std2io18default_read_exact17h16189c037aaa22f3E.exit

.thread.i:                                        ; preds = %bb.f, %.split42.i, %.split43.i, %.split.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr %i.k)
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.e
  %.sroa.0.123.i = phi ptr [ %.sroa.0.049.i, %.thread.i ], [ %i.r, %bb.e ]
  %.sroa.6.121.i = phi i64 [ %.sroa.6.048.i, %.thread.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.6.121.i, 0
  br i1 %i.ab, label %_ZN3std2io18default_read_exact17h16189c037aaa22f3E.exit, label %.lr.ph.i

_ZN3std2io18default_read_exact17h16189c037aaa22f3E.exit: ; preds = %bb.g, %bb.f, %.split42.i, %.split43.i, %.split.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h79377e0ddda875ddE.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h79377e0ddda875ddE.exit.thread ], [ null, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %.split.i ], [ %i.k, %.split42.i ], [ @104, %bb.c ], [ %i.k, %.split43.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hfeec9670632730e7E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !26803, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !26803, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26803, !noundef !4
  %i.h = sub nuw i64 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26804)
  %i.l = load i64, ptr %1, align 8, !range !14, !alias.scope !26804, !noundef !4 ; 4 uses
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26805)
  %i.o = add i64 %i.h, %i.k                       ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.k
  br i1 %i.p, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h8a93304c20d69a73E.exit.thread", label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 %i.l, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.q)
  %.sroa.0.0.i32.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 8) ; 4 uses
  %i.r = icmp slt i64 %.sroa.0.0.i32.i.i, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h8a93304c20d69a73E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !6

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26806
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.s, align 8, !alias.scope !26806, !nonnull !4, !noundef !4
  store ptr %.val29.i.i, ptr %i.a, align 8, !alias.scope !26807, !noalias !26806
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !26807, !noalias !26806
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i, ptr %i.u, align 8, !alias.scope !26807, !noalias !26806
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hd6c473b8e2f98485E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i32.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !26806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26806
  %i.v = load i64, ptr %i.b, align 8, !range !18, !noalias !26806, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26806
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h8a93304c20d69a73E.exit.thread"

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h06520c6daf7e8052E.exit.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !26806, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26806
  store ptr %i.y, ptr %i.s, align 8, !alias.scope !26806
  store i64 %.sroa.0.0.i32.i.i, ptr %1, align 8, !alias.scope !26806
  %.pre.i = sub i64 %.sroa.0.0.i32.i.i, %i.k
  %i.z = icmp ule i64 %i.h, %.pre.i
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26809)
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit": ; preds = %bb.a, %bb.f
  %i.aa = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !26810, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.i, i64 %i.h, i1 false), !noalias !26810
  %i.ae = add i64 %i.k, %i.h
  store i64 %i.ae, ptr %i.j, align 8, !alias.scope !26810
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.ag = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$11read_to_end17ha6c38e3bf203a018E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = trunc nuw i64 %i.ah to i1
  %i.al = select i1 %i.ak, i64 0, i64 %i.h
  %spec.select = add i64 %i.al, %i.aj
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h8a93304c20d69a73E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h8a93304c20d69a73E.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit"
  %.sroa.4.0 = phi i64 [ %spec.select, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit" ], [ 163208757251, %bb.c ], [ 163208757251, %bb.b ], [ 163208757251, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.ah, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h62dd9250238d5010E.exit" ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.e ]
  %i.am = inttoptr i64 %.sroa.4.0 to ptr
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %i.am, 1
  ret { i64, ptr } %i.ao
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17hce0caa0d6a52ed98E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.c = and i64 %2, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %2, %i.e                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi33 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %wide.vec = load <4 x i64>, ptr %i.h, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec34 = load <4 x i64>, ptr %i.i, align 8
  %strided.vec35 = shufflevector <4 x i64> %wide.vec34, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.j = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.k = add <2 x i64> %strided.vec35, %vec.phi33 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !26811

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader42

.preheader.preheader42:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader42, %.preheader
  %.sroa.09.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.09.0.i.ph, %.preheader.preheader42 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %.preheader ], [ %.sroa.07.0.i.ph, %.preheader.preheader42 ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.09.0.i
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load i64, ptr %i.o, align 8, !noundef !4
  %i.p = add i64 %.val.i, %.sroa.07.0.i           ; 2 uses
  %i.q = add nuw i64 %.sroa.09.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit", label %.preheader, !llvm.loop !26812

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit": ; preds = %.preheader, %bb.a
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.p, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 3 uses
  %3 = icmp eq i64 %i.t, %i.v
  br i1 %3, label %4, label %bb.b

4:                                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit"
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !4
  %.not = icmp ult i64 %.sroa.04.0.i, %6
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %4, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26848)
  %.not.i = icmp ult i64 %i.t, %i.v
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !26848, !noalias !26849 ; 4 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8, !alias.scope !26848, !noalias !26849, !noundef !4 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !26848, !noalias !26849, !noundef !4 ; 2 uses
  %i.z = sub nuw i64 %8, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.z, i1 false), !noalias !26850
  %i.ab = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull align 1 %.pre.i, i64 noundef %8), !noalias !26851 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.af = trunc nuw i64 %i.ac to i1
  br i1 %i.af, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ult i64 %8, %i.ae
  br i1 %.not.i.i.i.i, label %bb.e, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", !prof !8

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i": ; preds = %bb.d
  store i64 0, ptr %i.s, align 8, !alias.scope !26848, !noalias !26849
  store i64 %i.ae, ptr %i.u, align 8, !alias.scope !26848, !noalias !26849
  store i64 %8, ptr %i.x, align 8, !alias.scope !26848, !noalias !26849
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !26851
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i": ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !26848, !noalias !26849
  store i64 %8, ptr %i.x, align 8, !alias.scope !26848, !noalias !26849
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit: ; preds = %bb.b
  %i.ag = sub nuw i64 %i.v, %i.t                  ; 2 uses
  %i.ah = icmp eq ptr %.pre.i, null
  br i1 %i.ah, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24

bb.f:                                             ; preds = %4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26853)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.am = phi ptr [ %i.ak, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !26854, !noalias !26855, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !26856, !noalias !26857, !noundef !4
  br label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit

_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit: ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.3.0.i.i.i = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.ap = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 1 %.sroa.02.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i), !noalias !26854
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %.sroa.610.013 = phi i64 [ %i.ag, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.ae, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %i.as = phi i64 [ %i.ag, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.ae, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.at = phi i64 [ %i.t, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26858)
  %i.au = icmp eq i64 %2, 0
  br i1 %i.au, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.at
  br label %bb.i

bb.i:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph31
  %.sroa.01.0.i30 = phi i64 [ 0, %.lr.ph31 ], [ %i.be, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i29 = phi ptr [ %1, %.lr.ph31 ], [ %i.ay, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.aw = phi ptr [ %i.av, %.lr.ph31 ], [ %i.bf, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ax = phi i64 [ %i.as, %.lr.ph31 ], [ %i.bg, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 16 ; 2 uses
  %i.az = load ptr, ptr %.sroa.0.0.i29, align 8, !alias.scope !26858, !noalias !26859, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !26858, !noalias !26859, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26860)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %i.bb) ; 5 uses
  %i.bc = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.bc, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.aw, align 1, !noalias !26861, !noundef !4
  store i8 %i.bd, ptr %i.az, align 1, !alias.scope !26860, !noalias !26862
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i": ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.aw, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !26863, !noalias !26864
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i", %bb.j
  %i.be = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i30 ; 2 uses
  %.not.i7 = icmp ule i64 %i.ax, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.0.0.i.i.i
  %i.bg = sub nuw i64 %i.ax, %.sroa.0.0.i.i.i
  %i.bh = icmp eq ptr %i.ay, %i.a
  %or.cond.a = select i1 %.not.i7, i1 true, i1 %i.bh
  br i1 %or.cond.a, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.i

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24
  %.sroa.01.1.i = phi i64 [ 0, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread24 ], [ %i.be, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bi = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bj = load i64, ptr %i.s, align 8, !noundef !4
  %i.bk = add i64 %i.bj, %.sroa.01.1.i
  %i.bl = load i64, ptr %i.u, align 8, !noundef !4
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bk)
  store i64 %.sroa.0.0.i8, ptr %i.s, align 8
  %i.bm = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bi, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit
  %.merged = phi { i64, ptr } [ %i.ap, %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit ], [ %i.ar, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread ], [ %i.bm, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_buf_exact17h722b2c9d9de5e235E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = sub i64 %i.b, %i.d                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26879)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26879, !noalias !26880, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26879, !noalias !26880, !noundef !4
  %i.j = sub nuw i64 %i.i, %i.g
  %.not.i.not = icmp ugt i64 %i.e, %i.j
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !26879, !noalias !26880, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %1, align 8, !noalias !26881, !nonnull !4, !align !5, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.l, i64 %i.e, i1 false), !alias.scope !26882, !noalias !26883
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !26881, !noundef !4
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.p)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.o, align 8, !noalias !26881
  store i64 %i.b, ptr %i.c, align 8, !noalias !26881
  %i.q = add i64 %i.g, %i.e
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !26879, !noalias !26880
  br label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26884)
  %.not39.i = icmp eq i64 %i.b, %i.d
  br i1 %.not39.i, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, %.backedge.i
  %i.r = phi i64 [ %i.x, %.backedge.i ], [ %i.d, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit ]
  %i.s = tail call noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h7a62add5da8aad4bE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 10 uses
  %.not10.i = icmp eq ptr %i.s, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.d
    i64 0, label %.split37.i
    i64 1, label %.split36.i
  ], !prof !19

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !26884, !noalias !26885, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.r
  br i1 %i.w, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.x = phi i64 [ %i.v, %bb.c ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !26884, !noalias !26885, !noundef !4
  %.not.i1 = icmp eq i64 %i.y, %i.x
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.lr.ph.i

.split.i:                                         ; preds = %bb.b
  %.mask38.i = and i64 %i.t, -4294967296
  %i.z = icmp eq i64 %.mask38.i, 17179869184
  br i1 %i.z, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split37.i:                                       ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !20, !noalias !26884, !noundef !4
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split36.i:                                       ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.s, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !20, !noalias !26884, !noundef !4
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp ult ptr %i.s, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ag)
  %.mask.i = and i64 %i.t, -4294967296
  %i.ah = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ah, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.e:                                             ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.s), !noalias !26884
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !26884, !noalias !26885
  br label %.backedge.i

_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit: ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i, %.backedge.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit ], [ null, %.backedge.i ], [ %i.s, %bb.d ], [ %i.s, %.split.i ], [ %i.s, %.split36.i ], [ @104, %bb.c ], [ %i.s, %.split37.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string17h31aef9269ac8bd77E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
