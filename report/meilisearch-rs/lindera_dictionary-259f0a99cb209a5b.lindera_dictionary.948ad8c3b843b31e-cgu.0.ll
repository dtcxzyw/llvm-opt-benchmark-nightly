Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4core5slice4sort8unstable9quicksort9quicksort17h051683528d59ed90E:bb.a
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h971c1da6ab3059eeE.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h38b5361147b95647E.exit.i
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.083144, i64 %i.kl ; 2 uses
  %.sroa.0.0.copyload.i.i6.i51 = load i32, ptr %.sroa.0.083144, align 4, !alias.scope !9746
  %i.kn = load i32, ptr %i.km, align 4, !alias.scope !9746
  store i32 %i.kn, ptr %.sroa.0.083144, align 4, !alias.scope !9746
  store i32 %.sroa.0.0.copyload.i.i6.i51, ptr %i.km, align 4, !alias.scope !9746
  %i.ko = add nuw i64 %i.kl, 1                    ; 2 uses
  %i.kp = sub nuw i64 %.sroa.14.082145, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.083144, i64 %i.ko
  br label %.backedge

.backedge:                                        ; preds = %_ZN4core5slice4sort8unstable9quicksort9partition17h971c1da6ab3059eeE.exit, %_ZN4core5slice4sort8unstable9quicksort9partition17he257c1cdf4ace4faE.exit
  %.sroa.021.0.be = phi ptr [ %i.jb, %_ZN4core5slice4sort8unstable9quicksort9partition17he257c1cdf4ace4faE.exit ], [ null, %_ZN4core5slice4sort8unstable9quicksort9partition17h971c1da6ab3059eeE.exit ]
  %.sroa.14.0.be = phi i64 [ %i.jf, %_ZN4core5slice4sort8unstable9quicksort9partition17he257c1cdf4ace4faE.exit ], [ %i.kp, %_ZN4core5slice4sort8unstable9quicksort9partition17h971c1da6ab3059eeE.exit ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.jd, %_ZN4core5slice4sort8unstable9quicksort9partition17he257c1cdf4ace4faE.exit ], [ %i.kq, %_ZN4core5slice4sort8unstable9quicksort9partition17h971c1da6ab3059eeE.exit ] ; 3 uses
  %i.kr = icmp ult i64 %.sroa.14.0.be, 33
  br i1 %i.kr, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_ZN4core9panicking13assert_failed17h8dd735116ffa62bfE(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #22 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_ZN4core9panicking19assert_failed_inner17h1a26c705b351d21aE(i8 noundef %0, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @349, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @349, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #46
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_ZN4core9panicking13assert_failed17hc1cbb4b42d1dde38E(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #22 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_ZN4core9panicking19assert_failed_inner17h1a26c705b351d21aE(i8 noundef %0, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #46
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_ZN4core9panicking13assert_failed17hd7a03701e86e73e1E(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #22 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_ZN4core9panicking19assert_failed_inner17h1a26c705b351d21aE(i8 noundef %0, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @308, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @308, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4yada7builder18DoubleArrayBuilder15build_recursive17he517e50b11602793E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef range(i64 0, 536870912) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  %i.h = alloca [48 x i8], align 8                ; 2 uses
  %i.i = alloca [4 x i8], align 4                 ; 2 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9817
  %i.n = tail call noundef align 8 dereferenceable_or_null(6144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6144, i64 noundef range(i64 1, 9) 8) #47, !noalias !9817 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  %.sink285.sroa.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink285.sroa.gep302 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink285.sroa.gep304 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink285.sroa.gep305 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink285.sroa.gep307 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink285.sroa.gep308 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.o, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 6144, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #46
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit": ; preds = %bb.a
  store i64 256, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %.not202 = icmp ult i64 %4, %5
  br i1 %.not202, label %.lr.ph.preheader, label %.invoke

.lr.ph.preheader:                                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit"
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %2)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %i.r = phi ptr [ %i.kr, %bb.bb ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi ptr [ %i.ks, %bb.bb ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %i.t = phi i64 [ %i.kt, %bb.bb ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.sroa.01.0190 = phi i32 [ %.sroa.01.1, %bb.bb ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.8.0189 = phi i32 [ %.sroa.8.1, %bb.bb ], [ undef, %.lr.ph.preheader ]
  %.sroa.037.0188 = phi i64 [ %i.u, %bb.bb ], [ %4, %.lr.ph.preheader ] ; 5 uses
  %i.u = add i64 %.sroa.037.0188, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.037.0188 ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.037.0188, %umax
  br i1 %exitcond.not, label %.invoke242, label %bb.aq, !prof !16

._crit_edge:                                      ; preds = %bb.bb
  %i.w = icmp ne i32 %.sroa.01.1, 0
  %i.x = or i32 %.sroa.8.1, -2147483648
  %i.y = icmp ult i64 %i.kt, 384307168202282326
  tail call void @llvm.assume(i1 %i.y)
  %.not = icmp eq i64 %i.kt, 0
  br i1 %.not, label %.invoke, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.ao
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 35 uses
  %.idx = mul nuw nsw i64 %i.kt, 24               ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 %.idx   ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %.not46 = icmp eq ptr %i.ab, null
  br i1 %.not46, label %.invoke242, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.aa, i64 -8
  store i64 %5, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9821)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9822
  %i.ad = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.kt, i64 noundef range(i64 1, 9) 1) #47, !noalias !9822 ; 17 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp samesign ult i64 %i.kt, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.kt
  %i.ag = getelementptr i8, ptr %i.z, i64 8
  %i.ah = getelementptr i8, ptr %i.z, i64 %.idx
  %i.ai = getelementptr i8, ptr %i.ah, i64 -15
  %bound0 = icmp ult ptr %i.ad, %i.ai
  %bound1 = icmp ult ptr %i.ag, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check278 = icmp samesign ult i64 %i.kt, 16
  br i1 %min.iters.check278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.kt, 8
  %n.vec = and i64 %i.kt, 576460752303423472      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index
  %i.ba = getelementptr i8, ptr %i.ak, i64 8
  %i.bb = getelementptr i8, ptr %i.al, i64 32
  %i.bc = getelementptr i8, ptr %i.am, i64 56
  %i.bd = getelementptr i8, ptr %i.an, i64 80
  %i.be = getelementptr i8, ptr %i.ao, i64 104
  %i.bf = getelementptr i8, ptr %i.ap, i64 128
  %i.bg = getelementptr i8, ptr %i.aq, i64 152
  %i.bh = getelementptr i8, ptr %i.ar, i64 176
  %i.bi = getelementptr i8, ptr %i.as, i64 200
  %i.bj = getelementptr i8, ptr %i.at, i64 224
  %i.bk = getelementptr i8, ptr %i.au, i64 248
  %i.bl = getelementptr i8, ptr %i.av, i64 272
  %i.bm = getelementptr i8, ptr %i.aw, i64 296
  %i.bn = getelementptr i8, ptr %i.ax, i64 320
  %i.bo = getelementptr i8, ptr %i.ay, i64 344
  %i.bp = getelementptr i8, ptr %i.az, i64 368
  %i.bq = load i8, ptr %i.ba, align 8, !alias.scope !9823, !noalias !9824
  %i.br = load i8, ptr %i.bb, align 8, !alias.scope !9823, !noalias !9824
  %i.bs = load i8, ptr %i.bc, align 8, !alias.scope !9823, !noalias !9824
  %i.bt = load i8, ptr %i.bd, align 8, !alias.scope !9823, !noalias !9824
  %i.bu = load i8, ptr %i.be, align 8, !alias.scope !9823, !noalias !9824
  %i.bv = load i8, ptr %i.bf, align 8, !alias.scope !9823, !noalias !9824
  %i.bw = load i8, ptr %i.bg, align 8, !alias.scope !9823, !noalias !9824
  %i.bx = load i8, ptr %i.bh, align 8, !alias.scope !9823, !noalias !9824
  %i.by = load i8, ptr %i.bi, align 8, !alias.scope !9823, !noalias !9824
  %i.bz = load i8, ptr %i.bj, align 8, !alias.scope !9823, !noalias !9824
  %i.ca = load i8, ptr %i.bk, align 8, !alias.scope !9823, !noalias !9824
  %i.cb = load i8, ptr %i.bl, align 8, !alias.scope !9823, !noalias !9824
  %i.cc = load i8, ptr %i.bm, align 8, !alias.scope !9823, !noalias !9824
  %i.cd = load i8, ptr %i.bn, align 8, !alias.scope !9823, !noalias !9824
  %i.ce = load i8, ptr %i.bo, align 8, !alias.scope !9823, !noalias !9824
  %i.cf = load i8, ptr %i.bp, align 8, !alias.scope !9823, !noalias !9824
  %i.cg = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 1
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 2
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 3
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 4
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 5
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 6
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 7
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 8
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 9
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 10
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 11
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 12
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 13
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 14
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index
  store <16 x i8> %i.cv, ptr %i.cw, align 1, !alias.scope !9825, !noalias !9826
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !9782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kt, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !9827

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec279 = and i64 %i.kt, 576460752303423480   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index280 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next281, %vec.epilog.vector.body ] ; 10 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %index280
  %i.dg = getelementptr i8, ptr %i.cy, i64 8
  %i.dh = getelementptr i8, ptr %i.cz, i64 32
  %i.di = getelementptr i8, ptr %i.da, i64 56
  %i.dj = getelementptr i8, ptr %i.db, i64 80
  %i.dk = getelementptr i8, ptr %i.dc, i64 104
  %i.dl = getelementptr i8, ptr %i.dd, i64 128
  %i.dm = getelementptr i8, ptr %i.de, i64 152
  %i.dn = getelementptr i8, ptr %i.df, i64 176
  %i.do = load i8, ptr %i.dg, align 8, !alias.scope !9823, !noalias !9824
  %i.dp = load i8, ptr %i.dh, align 8, !alias.scope !9823, !noalias !9824
  %i.dq = load i8, ptr %i.di, align 8, !alias.scope !9823, !noalias !9824
  %i.dr = load i8, ptr %i.dj, align 8, !alias.scope !9823, !noalias !9824
  %i.ds = load i8, ptr %i.dk, align 8, !alias.scope !9823, !noalias !9824
  %i.dt = load i8, ptr %i.dl, align 8, !alias.scope !9823, !noalias !9824
  %i.du = load i8, ptr %i.dm, align 8, !alias.scope !9823, !noalias !9824
  %i.dv = load i8, ptr %i.dn, align 8, !alias.scope !9823, !noalias !9824
  %i.dw = insertelement <8 x i8> poison, i8 %i.do, i64 0
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 1
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dq, i64 2
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 3
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 4
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 5
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 6
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index280
  store <8 x i8> %i.ed, ptr %i.ee, align 1, !alias.scope !9825, !noalias !9826
  %index.next281 = add nuw i64 %index280, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next281, %n.vec279
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9783

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n282 = icmp eq i64 %i.kt, %n.vec279
  br i1 %cmp.n282, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec279, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.kt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.prol:                      ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.prol
  %i.eg = phi i64 [ %i.ek, %.preheader.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.preheader ]
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.prol = load i8, ptr %i.ei, align 8, !noalias !9824, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.eg
  store i8 %.val21.i.i.i.i.i.i.i.i.i.prol, ptr %i.ej, align 1, !noalias !9828
  %i.ek = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol, !llvm.loop !9784

.preheader.i.i.i.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.preheader
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ek, %.preheader.i.i.i.i.i.i.prol ]
  %i.el = sub nsw i64 %.ph, %i.kt
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.preheader.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc unwind label %.thread154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i
  %i.en = phi i64 [ %i.fd, %.preheader.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ep, align 8, !noalias !9824, !noundef !6
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.en
  store i8 %.val21.i.i.i.i.i.i.i.i.i, ptr %i.eq, align 1, !noalias !9828
  %i.er = add nuw nsw i64 %i.en, 1                ; 2 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.et, align 8, !noalias !9824, !noundef !6
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.er
  store i8 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %i.eu, align 1, !noalias !9828
  %i.ev = add nuw nsw i64 %i.en, 2                ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.2 = load i8, ptr %i.ex, align 8, !noalias !9824, !noundef !6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ev
  store i8 %.val21.i.i.i.i.i.i.i.i.i.2, ptr %i.ey, align 1, !noalias !9828
  %i.ez = add nuw nsw i64 %i.en, 3                ; 2 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.3 = load i8, ptr %i.fb, align 8, !noalias !9824, !noundef !6
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ez
  store i8 %.val21.i.i.i.i.i.i.i.i.i.3, ptr %i.fc, align 1, !noalias !9828
  %i.fd = add nuw nsw i64 %i.en, 4                ; 2 uses
  %i.fe = icmp eq i64 %i.fd, %i.kt
  br i1 %i.fe, label %.loopexit, label %.preheader.i.i.i.i.i.i, !llvm.loop !9785

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  store i64 %i.kt, ptr %i.l, align 8, !alias.scope !9829
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9829
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.kt, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9829
  br label %bb.g

.thread154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bd, %bb.ba, %.invoke242, %.invoke, %bb.f
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit"

bb.g:                                             ; preds = %.loopexit, %bb.i
  %i.ff = invoke { i32, i32 } @_ZN4yada7builder18DoubleArrayBuilder11find_offset17h527751429fa15b53E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.h unwind label %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.fg = extractvalue { i32, i32 } %i.ff, 0
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = invoke noundef align 8 dereferenceable(1808) ptr @_ZN4yada7builder18DoubleArrayBuilder12extend_block17h0da2ce2f85730a44E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.g unwind label %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.h
  %i.fj = extractvalue { i32, i32 } %i.ff, 1      ; 7 uses
  %i.fk = icmp ult i32 %i.fj, 536870912
  br i1 %i.fk, label %bb.k, label %.invoke250, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.fj, ptr %i.c, align 4, !noalias !9830
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load i64, ptr %i.fm, align 8, !alias.scope !9830, !noundef !6
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val8.i = load i64, ptr %i.fn, align 8, !alias.scope !9830, !noundef !6
  %i.fo = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h45ec15a110c2cbdbE(i64 %.val.i, i64 %.val8.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !9830 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !9831, !noundef !6
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i", !prof !16

bb.l:                                             ; preds = %bb.k
  %i.fs = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7b9383fcd4caed29E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fl, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fm, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i" unwind label %.loopexit.split-lp168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i": ; preds = %bb.l, %bb.k
  %.val.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !9832, !nonnull !6, !noundef !6 ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i.i = load i64, ptr %i.ft, align 8, !alias.scope !9832, !noundef !6 ; 4 uses
  %i.fu = lshr i64 %i.fo, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.fv, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.fo, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i" ], [ %i.gu, %bb.p ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i" ], [ %.sroa.6.124.i.i.i, %bb.p ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i" ], [ %.sroa.01.126.i.i.i, %bb.p ]
  %i.fw = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h32d71a7ce2d5b14fE.exit.i.i" ], [ %i.gt, %bb.p ]
  %.sroa.0.021.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.021.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load <16 x i8>, ptr %i.fx, align 1, !noalias !9833 ; 3 uses
  %i.fy = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.fz = bitcast <16 x i1> %i.fy to i16          ; 2 uses
  %.not29.i.i.i = icmp eq i16 %i.fz, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %.sroa.05.030.i.i.i = phi i16 [ %i.gj, %bb.n ], [ %i.fz, %bb.m ] ; 3 uses
  %i.ga = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.i.i, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = add i64 %.sroa.0.021.i.i.i, %i.gb
  %i.gd = and i64 %i.gc, %.val7.i.i
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %.val3.i.i.i.i = load i32, ptr %i.gg, align 4, !noalias !9834, !noundef !6
  %i.gh = icmp eq i32 %i.fj, %.val3.i.i.i.i
  br i1 %i.gh, label %.loopexit166, label %bb.n, !prof !7

._crit_edge.i.i.i:                                ; preds = %bb.n, %bb.m
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not13.i.i.i, label %.thread.i.i.i, label %bb.o, !prof !16

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.gi = add i16 %.sroa.05.030.i.i.i, -1
  %i.gj = and i16 %i.gi, %.sroa.05.030.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gj, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.gk = icmp slt <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, zeroinitializer
  %i.gl = bitcast <16 x i1> %i.gk to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.gl, 0    ; 2 uses
  %i.gm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gl, i1 true)
  %i.gn = zext nneg i16 %i.gm to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.gn
  %i.go = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.021.i.i.i
  %i.gp = and i64 %i.go, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.p, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.o, %._crit_edge.i.i.i
  %.sroa.6.125.i.i.i = phi i64 [ %i.gp, %bb.o ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.gq = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, splat (i8 -1)
  %i.gr = bitcast <16 x i1> %i.gq to i16
  %i.gs = icmp eq i16 %i.gr, 0
  br i1 %i.gs, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %.thread.i.i.i, %bb.o
  %.sroa.01.126.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.o ]
  %.sroa.6.124.i.i.i = phi i64 [ %.sroa.6.125.i.i.i, %.thread.i.i.i ], [ undef, %bb.o ]
  %i.gt = add i64 %i.fw, 16                       ; 2 uses
  %i.gu = add i64 %i.gt, %.sroa.0.021.i.i.i
  br label %bb.m

end_hunk_0
