Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h79c3898466569b0eE":bb.a
  %i.ay = load i8, ptr %i.ax, align 8, !range !38, !noundef !34
  %i.az = icmp eq i8 %i.ay, 35
  br i1 %i.az, label %.thread.i, label %.loopexit.sink.split.i

.split38.i:                                       ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.ao, i64 15
  %i.bb = load i8, ptr %i.ba, align 8, !range !38, !noundef !34
  %i.bc = icmp eq i8 %i.bb, 35
  br i1 %i.bc, label %.thread.i, label %.loopexit.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.bd = icmp ult ptr %i.ao, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.bd)
  %.mask.i = and i64 %i.aq, -4294967296
  %i.be = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.be, label %.thread.i, label %.loopexit.sink.split.i

.thread.i:                                        ; preds = %bb.n, %.split38.i, %.split39.i, %.split.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02edb7d549bf98baE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %bb.o

bb.o:                                             ; preds = %.thread.i, %bb.m
  %.sroa.0.119.i = phi ptr [ %.sroa.0.051.i, %.thread.i ], [ %i.av, %bb.m ]
  %.sroa.6.117.i = phi i64 [ %.sroa.6.050.i, %.thread.i ], [ %i.au, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64592
  %i.bf = icmp eq i64 %.sroa.6.117.i, 0
  br i1 %i.bf, label %_ZN3std2io18default_read_exact17h918221df9faa3bc9E.exit, label %bb.b

_ZN3std2io18default_read_exact17h918221df9faa3bc9E.exit: ; preds = %bb.o, %.loopexit.sink.split.i, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h408234dbd086d6bdE.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h408234dbd086d6bdE.exit.thread ], [ %.sroa.07.0.ph.i, %.loopexit.sink.split.i ], [ null, %bb.o ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h59cee01cba2da700E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !64620, !nonnull !34, !noundef !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !64620, !noundef !34 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !64620, !noundef !34
  %i.h = sub nuw i64 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !34 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64621)
  %i.l = load i64, ptr %1, align 8, !range !42, !alias.scope !64621, !noundef !34 ; 4 uses
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64622)
  %i.o = add i64 %i.h, %i.k                       ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.k
  br i1 %i.p, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17he7b8c212eab90ba0E.exit.thread", label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 %i.l, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.q)
  %.sroa.0.0.i32.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 8) ; 4 uses
  %i.r = icmp slt i64 %.sroa.0.0.i32.i.i, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17he7b8c212eab90ba0E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64623
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.s, align 8, !alias.scope !64623, !nonnull !34, !noundef !34
  store ptr %.val29.i.i, ptr %i.a, align 8, !alias.scope !64624, !noalias !64623
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !64624, !noalias !64623
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i, ptr %i.u, align 8, !alias.scope !64624, !noalias !64623
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hc93339b46dcf7ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i32.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !64623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64623
  %i.v = load i64, ptr %i.b, align 8, !range !55, !noalias !64623, !noundef !34
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64623
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17he7b8c212eab90ba0E.exit.thread"

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !64623, !nonnull !34, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64623
  store ptr %i.y, ptr %i.s, align 8, !alias.scope !64623
  store i64 %.sroa.0.0.i32.i.i, ptr %1, align 8, !alias.scope !64623
  %.pre.i = sub i64 %.sroa.0.0.i32.i.i, %i.k
  %i.z = icmp ule i64 %i.h, %.pre.i
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64626)
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit": ; preds = %bb.a, %bb.f
  %i.aa = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !64627, !nonnull !34, !noundef !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.i, i64 %i.h, i1 false), !noalias !64627
  %i.ae = add i64 %i.k, %i.h
  store i64 %i.ae, ptr %i.j, align 8, !alias.scope !64627
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.ag = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11read_to_end17h86d320751dc14a00E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = trunc nuw i64 %i.ah to i1
  %i.al = select i1 %i.ak, i64 0, i64 %i.h
  %spec.select = add i64 %i.al, %i.aj
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17he7b8c212eab90ba0E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17he7b8c212eab90ba0E.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit"
  %.sroa.4.0 = phi i64 [ %spec.select, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit" ], [ 163208757251, %bb.c ], [ 163208757251, %bb.b ], [ 163208757251, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.ah, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h936badbb3179d3a4E.exit" ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.e ]
  %i.am = inttoptr i64 %.sroa.4.0 to ptr
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %i.am, 1
  ret { i64, ptr } %i.ao
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17h2e3903e431be9416E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h701b432e5e0c6a14E.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub i64 %2, %i.f                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !64628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader25

.preheader.preheader25:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader25, %.preheader
  %.sroa.09.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.09.0.i.ph, %.preheader.preheader25 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.07.0.i.ph, %.preheader.preheader25 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.09.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !34
  %i.q = add i64 %.val.i, %.sroa.07.0.i           ; 2 uses
  %i.r = add nuw i64 %.sroa.09.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h701b432e5e0c6a14E.exit", label %.preheader, !llvm.loop !64629

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h701b432e5e0c6a14E.exit": ; preds = %.preheader, %bb.a
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !34 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !34 ; 3 uses
  %3 = icmp eq i64 %i.u, %i.w
  br i1 %3, label %4, label %bb.b

4:                                                ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h701b432e5e0c6a14E.exit"
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !34
  %.not = icmp ult i64 %.sroa.04.0.i, %6
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %4, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h701b432e5e0c6a14E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64644)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !64644, !noalias !64645 ; 3 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64646
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8, !alias.scope !64644, !noalias !64645, !noundef !34
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !64646
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %8, ptr %i.y, align 8, !noalias !64646
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.z, align 8, !noalias !64646
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !64644, !noalias !64645, !noundef !34
  store i64 %i.ac, ptr %i.aa, align 8, !noalias !64646
  %i.ad = call noundef ptr @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$8read_buf17h6293496402feb8cbE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !64647 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !64644, !noalias !64645
  %i.ae = load <2 x i64>, ptr %i.z, align 8, !noalias !64646
  %i.af = load i64, ptr %i.z, align 8, !noalias !64646, !noundef !34
  store <2 x i64> %i.ae, ptr %i.v, align 8, !alias.scope !64644, !noalias !64645
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %bb.d, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit.thread: ; preds = %bb.c
  %i.ag = ptrtoint ptr %i.ad to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64646
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64646
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit: ; preds = %bb.b, %bb.d
  %i.ah = phi i64 [ %i.w, %bb.b ], [ %i.af, %bb.d ]
  %i.ai = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.aj = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %i.ak = icmp eq ptr %.pre.i, null
  br i1 %i.ak, label %bb.f, label %bb.g

bb.e:                                             ; preds = %4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.am = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$13read_vectored17hd7b27e38f88c33a7E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.al, ptr noalias noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit.thread, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit
  %.sroa.610.013 = phi i64 [ %i.ag, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit.thread ], [ %i.aj, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit ]
  %i.an = inttoptr i64 %.sroa.610.013 to ptr
  %i.ao = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.an, 1
  br label %bb.j

bb.g:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hd04e504fb497eb1aE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !64648)
  %i.ap = icmp eq i64 %2, 0
  br i1 %i.ap, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ai
  br label %bb.h

bb.h:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.az, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.at, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ar = phi ptr [ %i.aq, %.lr.ph ], [ %i.ba, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.as = phi i64 [ %i.aj, %.lr.ph ], [ %i.bb, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i17, i64 16 ; 2 uses
  %i.au = load ptr, ptr %.sroa.0.0.i17, align 8, !alias.scope !64648, !noalias !64649, !noundef !34 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i17, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !64648, !noalias !64649, !noundef !34 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64650)
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.aw) ; 5 uses
  %i.ax = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.ax, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h4b15f19e2a2e82afE.exit.i.i"

bb.i:                                             ; preds = %bb.h
  %i.ay = load i8, ptr %i.ar, align 1, !noalias !64651, !noundef !34
  store i8 %i.ay, ptr %i.au, align 1, !alias.scope !64650, !noalias !64652
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h4b15f19e2a2e82afE.exit.i.i": ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.ar, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !64653, !noalias !64654
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h4b15f19e2a2e82afE.exit.i.i", %bb.i
  %i.az = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i18 ; 2 uses
  %.not.i7 = icmp ule i64 %i.as, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i.i.i
  %i.bb = sub nuw i64 %i.as, %.sroa.0.0.i.i.i
  %i.bc = icmp eq ptr %i.at, %i.b
  %or.cond.a = select i1 %.not.i7, i1 true, i1 %i.bc
  br i1 %or.cond.a, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.h

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.az, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bd = inttoptr i64 %.sroa.01.1.i to ptr
  %i.be = load i64, ptr %i.t, align 8, !noundef !34
  %i.bf = add i64 %i.be, %.sroa.01.1.i
  %i.bg = load i64, ptr %i.v, align 8, !noundef !34
  %.sroa.0.0.i8 = call noundef i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bf)
  store i64 %.sroa.0.0.i8, ptr %i.t, align 8
  %i.bh = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bd, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %bb.e
  %.merged = phi { i64, ptr } [ %i.am, %bb.e ], [ %i.ao, %bb.f ], [ %i.bh, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_buf_exact17h3e27cf40db9a2532E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !34 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !34 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64669)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !64669, !noalias !64670, !noundef !34 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !64669, !noalias !64670, !noundef !34
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !64669, !noalias !64670, !nonnull !34, !noundef !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !64671, !nonnull !34, !align !52, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 %i.f, i1 false), !alias.scope !64672, !noalias !64673
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !64671, !noundef !34
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.q)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !noalias !64671
  store i64 %i.c, ptr %i.d, align 8, !noalias !64671
  %i.r = add i64 %i.h, %i.f
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !64669, !noalias !64670
  br label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64674)
  %.not33.i = icmp eq i64 %i.c, %i.e
  br i1 %.not33.i, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit, %.backedge.i
  %i.s = phi i64 [ %i.ah, %.backedge.i ], [ %i.e, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit ]
  %i.t = tail call noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h90d7ffb0e48811c0E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 10 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.d
    i64 0, label %.split31.i
    i64 1, label %.split30.i
  ], !prof !36

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !64674, !noalias !64675, !noundef !34 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit, label %.backedge.i

.split.i:                                         ; preds = %bb.b
  %.mask32.i = and i64 %i.u, -4294967296
  %i.y = icmp eq i64 %.mask32.i, 17179869184
  br i1 %i.y, label %bb.e, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit

.split31.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !38, !noundef !34
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.e, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit

.split30.i:                                       ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.t, i64 15
  %i.ad = load i8, ptr %i.ac, align 8, !range !38, !noundef !34
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.e, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp ult ptr %i.t, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.af)
  %.mask.i = and i64 %i.u, -4294967296
  %i.ag = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ag, label %bb.e, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit

bb.e:                                             ; preds = %bb.d, %.split30.i, %.split31.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64676
  store ptr %i.t, ptr %i.a, align 8, !noalias !64676
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02edb7d549bf98baE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64676
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !64674, !noalias !64675
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.ah = phi i64 [ %.pre.i, %bb.e ], [ %i.w, %bb.c ] ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !alias.scope !64674, !noalias !64675, !noundef !34
  %.not.i1 = icmp eq i64 %i.ai, %i.ah
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit, label %.lr.ph.i

_ZN3std2io22default_read_buf_exact17hb6269f5b0adb8741E.exit: ; preds = %.backedge.i, %bb.d, %.split30.i, %.split31.i, %.split.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h554fc68c52c2ea5eE.exit ], [ null, %.backedge.i ], [ %i.t, %bb.d ], [ %i.t, %.split.i ], [ %i.t, %.split30.i ], [ @686, %bb.c ], [ %i.t, %.split31.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string17h34425774edf2af31E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !34 ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64693
  store ptr %1, ptr %i.c, align 8, !noalias !64693
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !64693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64693
  %i.k = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h59cee01cba2da700E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17ha5cf0d96a6ac8b0fE.exit.i" unwind label %bb.c ; 2 uses

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hf8738388a5250ba5E.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
end_hunk_0
