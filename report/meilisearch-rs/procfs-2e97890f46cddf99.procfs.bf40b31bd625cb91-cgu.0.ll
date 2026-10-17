Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17hce0caa0d6a52ed98E":bb.a
  %n.vec = sub i64 %2, %i.e                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi34 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %wide.vec = load <4 x i64>, ptr %i.h, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec35 = load <4 x i64>, ptr %i.i, align 8
  %strided.vec36 = shufflevector <4 x i64> %wide.vec35, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.j = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.k = add <2 x i64> %strided.vec36, %vec.phi34 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !26579

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader44

.preheader.preheader44:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader44, %.preheader
  %.sroa.09.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.09.0.i.ph, %.preheader.preheader44 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %.preheader ], [ %.sroa.07.0.i.ph, %.preheader.preheader44 ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.09.0.i
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load i64, ptr %i.o, align 8, !noundef !4
  %i.p = add i64 %.val.i, %.sroa.07.0.i           ; 2 uses
  %i.q = add nuw i64 %.sroa.09.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit", label %.preheader, !llvm.loop !26580

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit": ; preds = %.preheader, %bb.a
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.p, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 3 uses
  %i.w = icmp ne i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 6 uses
  %.not = icmp ult i64 %.sroa.04.0.i, %i.y
  %or.cond = select i1 %i.w, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26613)
  %.not.i = icmp ult i64 %i.t, %i.v
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !26613 ; 4 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !26613, !noundef !4 ; 2 uses
  %i.ac = sub nuw i64 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.ac, i1 false), !noalias !26614
  %i.ae = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias noundef nonnull align 1 %.pre.i, i64 noundef %i.y), !noalias !26615 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 4 uses
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ult i64 %i.y, %i.ah
  br i1 %.not.i.i.i.i, label %bb.e, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", !prof !8

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i": ; preds = %bb.d
  store i64 0, ptr %i.s, align 8, !alias.scope !26613
  store i64 %i.ah, ptr %i.u, align 8, !alias.scope !26613
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !26613
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #43, !noalias !26615
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i": ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !26613
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !26613
  %.not4.i = icmp eq ptr %i.ag, null
  br i1 %.not4.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit: ; preds = %bb.b
  %i.aj = sub nuw i64 %i.v, %i.t                  ; 2 uses
  %i.ak = icmp eq ptr %.pre.i, null
  br i1 %i.ak, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25

bb.f:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf2493f9f0a34adfbE.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26617)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.am = icmp eq i64 %2, 0
  br i1 %i.am, label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ap = phi ptr [ %i.an, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !26618, !noalias !26619, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !26620, !noundef !4
  br label %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit

_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit: ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.3.0.i.i.i = phi i64 [ %i.ar, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.as = tail call { i64, ptr } @"_ZN53_$LT$procfs..FileWrapper$u20$as$u20$std..io..Read$GT$4read17h087f3fcdb92cac2fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias noundef nonnull align 1 %.sroa.02.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i), !noalias !26618
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.ah, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.at = inttoptr i64 %.sroa.610.013 to ptr
  %i.au = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.at, 1
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit
  %i.av = phi i64 [ %i.aj, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ %i.ah, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  %i.aw = phi i64 [ %i.t, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17h138f8ba6980f86e5E.exit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26621)
  %i.ax = icmp eq i64 %2, 0
  br i1 %i.ax, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %.lr.ph32

.lr.ph32:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.aw
  br label %bb.i

bb.i:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph32
  %.sroa.01.0.i31 = phi i64 [ 0, %.lr.ph32 ], [ %i.bh, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i30 = phi ptr [ %1, %.lr.ph32 ], [ %i.bb, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.az = phi ptr [ %i.ay, %.lr.ph32 ], [ %i.bi, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ba = phi i64 [ %i.av, %.lr.ph32 ], [ %i.bj, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.i30, align 8, !alias.scope !26621, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !26621, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26622)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be) ; 5 uses
  %i.bf = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.bf, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.bg = load i8, ptr %i.az, align 1, !noalias !26623, !noundef !4
  store i8 %i.bg, ptr %i.bc, align 1, !alias.scope !26622, !noalias !26624
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i": ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.az, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !26625, !noalias !26626
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h619c66867fe4faa1E.exit.i.i", %bb.j
  %i.bh = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i31 ; 2 uses
  %.not.i7 = icmp ule i64 %i.ba, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i.i.i
  %i.bj = sub nuw i64 %i.ba, %.sroa.0.0.i.i.i
  %i.bk = icmp eq ptr %i.bb, %i.a
  %or.cond39 = select i1 %.not.i7, i1 true, i1 %i.bk
  br i1 %or.cond39, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.i

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25
  %.sroa.01.1.i = phi i64 [ 0, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread25 ], [ %i.bh, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bl = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bm = load i64, ptr %i.s, align 8, !noundef !4
  %i.bn = add i64 %i.bm, %.sroa.01.1.i
  %i.bo = load i64, ptr %i.u, align 8, !noundef !4
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn)
  store i64 %.sroa.0.0.i8, ptr %i.s, align 8
  %i.bp = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bl, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit
  %.merged = phi { i64, ptr } [ %i.as, %_ZN3std2io4Read13read_vectored17h8f9bbd44af210acfE.exit ], [ %i.au, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h45d5ae3401ef14f3E.exit.thread ], [ %i.bp, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26639)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26639, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26639, !noundef !4
  %i.j = sub nuw i64 %i.i, %i.g
  %.not.i.not = icmp ugt i64 %i.e, %i.j
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !alias.scope !26639, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %1, align 8, !noalias !26640, !nonnull !4, !align !5, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.l, i64 %i.e, i1 false), !alias.scope !26641, !noalias !26642
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !26640, !noundef !4
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.p)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.o, align 8, !noalias !26640
  store i64 %i.b, ptr %i.c, align 8, !noalias !26640
  %i.q = add i64 %i.g, %i.e
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !26639
  br label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26643)
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
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !26643, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.r
  br i1 %i.w, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.x = phi i64 [ %i.v, %bb.c ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !26643, !noundef !4
  %.not.i1 = icmp eq i64 %i.y, %i.x
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit, label %.lr.ph.i

.split.i:                                         ; preds = %bb.b
  %.mask38.i = and i64 %i.t, -4294967296
  %i.z = icmp eq i64 %.mask38.i, 17179869184
  br i1 %i.z, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split37.i:                                       ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !20, !noalias !26643, !noundef !4
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

.split36.i:                                       ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %i.s, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !20, !noalias !26643, !noundef !4
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp ult ptr %i.s, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ag)
  %.mask.i = and i64 %i.t, -4294967296
  %i.ah = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ah, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit

bb.e:                                             ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.s), !noalias !26643
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !26643
  br label %.backedge.i

_ZN3std2io22default_read_buf_exact17h221b9f4dfeeb0a3eE.exit: ; preds = %bb.d, %.split36.i, %.split37.i, %.split.i, %.backedge.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17he9ee51956fc467b9E.exit ], [ null, %.backedge.i ], [ %i.s, %bb.d ], [ %i.s, %.split.i ], [ %i.s, %.split36.i ], [ @104, %bb.c ], [ %i.s, %.split37.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string17h31aef9269ac8bd77E"(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26654
  store ptr %1, ptr %i.b, align 8, !noalias !26654
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !26654
  %i.j = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hfeec9670632730e7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i" unwind label %bb.c ; 2 uses

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i": ; preds = %bb.b
  %i.l = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.j, 1        ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !26653, !nonnull !4, !noundef !4
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !26653, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26654
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.p)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i"
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %i.l, 0
  br i1 %i.r, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2fcde3704c8dc432E"(ptr nonnull %i.m)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" unwind label %bb.i

bb.f:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h7e8a37b42dde8c08E.exit.i"
  %i.s = load i64, ptr %i.a, align 8, !range !18, !noalias !26654, !noundef !4
  %.not.i = icmp eq i64 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26654
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !noalias !26654, !nonnull !4, !align !7, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  store i64 %i.v, ptr %i.i, align 8, !noalias !26654
  br label %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit

bb.h:                                             ; preds = %bb.f
  %i.x = trunc nuw i64 %i.l to i1
  %spec.select.i = select i1 %i.x, ptr %i.m, ptr @99
  br label %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit

bb.i:                                             ; preds = %bb.e, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h4f78c4a92701943cE.exit.i" ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit: ; preds = %bb.g, %bb.h
  %.pre-phi19 = phi ptr [ %i.m, %bb.g ], [ %spec.select.i, %bb.h ]
  %.pre-phi = phi i64 [ %i.l, %bb.g ], [ 1, %bb.h ]
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26654
  %i.z = ptrtoint ptr %.pre-phi19 to i64
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.ab, align 8
  %i.ac = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17hfeec9670632730e7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.s, %bb.o, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val14 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.ae = icmp eq i64 %.val14, 0
  br i1 %i.ae, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val15 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef %.val14, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.af = extractvalue { i64, ptr } %i.ac, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = extractvalue { i64, ptr } %i.ac, 1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ak = load i64, ptr %i.ab, align 8, !noundef !4
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aj, i64 noundef %i.ak)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.c, align 8, !range !18, !noundef !4
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !26655)
  call void @llvm.experimental.noalias.scope.decl(metadata !26656)
  %i.ar = load i64, ptr %1, align 8, !range !14, !alias.scope !26657, !noundef !4
  %i.as = sub nsw i64 %i.ar, %i.f
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h440846d0dedc0723E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef %i.aq, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.s
  %.pre.i.i = load i64, ptr %i.e, align 8, !alias.scope !26658
  br label %bb.t

bb.t:                                             ; preds = %.noexc, %bb.r
  %i.au = phi i64 [ %i.f, %bb.r ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !26658, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.ao, i64 %i.aq, i1 false), !noalias !26658
  %i.az = add i64 %i.au, %i.aq
  store i64 %i.az, ptr %i.e, align 8, !alias.scope !26658
  %.val12 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.ba = icmp eq i64 %.val12, 0
  br i1 %i.ba, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16", label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val13 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %.val12, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16": ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.v:                                             ; preds = %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17"
  %.sroa.5.0 = phi i64 [ %i.z, %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit ], [ %.sroa.5.1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17" ], [ %i.aq, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16" ]
  %.sroa.0.0 = phi i64 [ %.pre-phi, %_ZN3std2io16append_to_string17hc3adfb9d228934f2E.exit ], [ 1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17" ], [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit16" ]
  %i.bb = inttoptr i64 %.sroa.5.0 to ptr
  %i.bc = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bd = insertvalue { i64, ptr } %i.bc, ptr %i.bb, 1
  ret { i64, ptr } %i.bd

bb.w:                                             ; preds = %bb.q, %bb.n
  %.sroa.5.1 = phi i64 [ %i.ai, %bb.n ], [ ptrtoint (ptr @99 to i64), %bb.q ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.be = icmp eq i64 %.val, 0
  br i1 %i.be, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha55e5cb075280506E.exit17", label %bb.x
end_hunk_0
