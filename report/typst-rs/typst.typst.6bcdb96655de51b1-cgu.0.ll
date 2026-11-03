Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 112
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs9fPPV5zPXBl_5typst:bb.a
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff = sub nuw nsw i64 %2, %.sroa.04.0      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5266)
  %i.r = load i64, ptr %i.d, align 8, !range !37, !alias.scope !5267, !noundef !28
  %i.s = sub i64 %i.r, %i.m
  %i.t = icmp ugt i64 %gepdiff, %i.s
  br i1 %i.t, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %bb.h
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i
  %i.u = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5266, !noundef !28 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5266
  br label %bb.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.h
  %i.w = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %2, %.sroa.04.0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i, %.noexc
  %i.x = phi ptr [ %.pre, %.noexc ], [ %i.l, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i ]
  %i.y = phi i64 [ %i.u, %.noexc ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.q, i64 %gepdiff, i1 false), !noalias !5266
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i
  %i.aa = phi i64 [ %i.y, %bb.i ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i ]
  %i.ab = add i64 %i.aa, %gepdiff
  store i64 %i.ab, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.h, align 8, !noundef !28 ; 2 uses
  %i.ad = load i64, ptr %i.i, align 8, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff32 = sub nuw nsw i64 %i.ac, %.sroa.04.0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5268)
  %i.af = load i64, ptr %i.d, align 8, !range !37, !alias.scope !5269, !noundef !28 ; 3 uses
  %i.ag = sub i64 %i.af, %i.m
  %i.ah = icmp ugt i64 %gepdiff32, %i.ag
  br i1 %i.ah, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i28, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i28: ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m, i64 noundef %gepdiff32, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i28
  %i.ai = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5268, !noundef !28 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %.pre36 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5268 ; 2 uses
  %.pre37.pre = load i64, ptr %i.d, align 8, !range !37, !alias.scope !5270
  br label %bb.l

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26: ; preds = %bb.k
  %i.ak = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.ak)
  %.not.i27 = icmp eq i64 %i.ac, %.sroa.04.0
  br i1 %.not.i27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26, %.noexc29
  %.pre37 = phi i64 [ %.pre37.pre, %.noexc29 ], [ %i.af, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.al = phi ptr [ %.pre36, %.noexc29 ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.am = phi ptr [ %.pre36, %.noexc29 ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ] ; 3 uses
  %i.an = phi i64 [ %i.ai, %.noexc29 ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %i.ae, i64 %gepdiff32, i1 false), !noalias !5268
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26, %bb.l
  %i.ap = phi ptr [ %i.al, %bb.l ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ] ; 2 uses
  %i.aq = phi i64 [ %.pre37, %bb.l ], [ %i.af, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.ar = phi ptr [ %i.am, %bb.l ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.as = phi ptr [ %i.am, %bb.l ], [ %i.l, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.at = phi i64 [ %i.an, %bb.l ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i26 ]
  %i.au = add i64 %i.at, %gepdiff32               ; 6 uses
  store i64 %i.au, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5271)
  %i.av = sub i64 %i.aq, %i.au
  %i.aw = icmp ugt i64 %4, %i.av
  br i1 %i.aw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i33, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i33: ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.au, i64 noundef %4, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i33
  %i.ax = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5271, !noundef !28 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %.pre38 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5271
  br label %bb.n

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31: ; preds = %bb.m
  %i.az = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.az)
  br i1 %.not.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31, %.noexc34
  %i.ba = phi ptr [ %.pre38, %.noexc34 ], [ %i.ap, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ] ; 4 uses
  %i.bb = phi i64 [ %i.ax, %.noexc34 ], [ %i.au, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !5271
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31
  %i.bd = phi ptr [ %i.ba, %bb.n ], [ %i.ap, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ]
  %i.be = phi ptr [ %i.ba, %bb.n ], [ %i.ar, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ]
  %i.bf = phi ptr [ %i.ba, %bb.n ], [ %i.as, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ]
  %i.bg = phi i64 [ %i.bb, %bb.n ], [ %i.au, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i31 ]
  %i.bh = add i64 %i.bg, %4                       ; 2 uses
  store i64 %i.bh, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !5271
  br label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.f, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB6_11VirtualPath3newReECs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 7, 19) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [16 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [22 x i8], align 2            ; 4 uses
  %.sroa.7 = alloca [22 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5299
  call void @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path10components(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5299
  call void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e), !noalias !5299
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 89 ; 2 uses
  %.promoted69.i = load i8, ptr %i.h, align 1, !alias.scope !5300, !noalias !5299 ; 2 uses
  %.promoted70.i = load i64, ptr %i.g, align 8, !noalias !5299 ; 4 uses
  %.promoted76.i = load i64, ptr %i.f, align 8, !noalias !5299 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !5299, !nonnull !28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val1.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !5299 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noalias !5299 ; 8 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load i8, ptr %i.n, align 8, !noalias !5299 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.u = load i8, ptr %i.t, align 8, !range !53, !noalias !5299
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !5299 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load i64, ptr %i.w, align 8, !noalias !5299
  %i.x = icmp eq i64 %.val.i.i, 0                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not.i.i.i.i.i.fr.i = freeze i1 %.not.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.fr.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.promoted81.i = load i64, ptr %i.aa, align 8, !noalias !5299
  br label %.split.i

.split.us.i:                                      ; preds = %bb.a
  %i.ab = trunc nuw i8 %.promoted69.i to i1
  br i1 %i.ab, label %.loopexit, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.lr.ph.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.lr.ph.i: ; preds = %.split.us.i
  %.not.i3.i.i.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted70.i
  %or.cond.not.i.i.i.i.i.us.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.us.i
  %i.ac = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted70.i ; 2 uses
  %.sroa.0.1.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted70.i ; 3 uses
  br i1 %or.cond.not.i.i.i.i.i.us.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i, label %.loopexit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  switch i64 %i.ac, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i
  %i.ad = load i16, ptr %.sroa.0.1.i.i.i.i.us.i, align 1
  %i.ae = icmp ne i16 %i.ad, 11822
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread.us.us.i, label %bb.e

bb.c:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i
  %lhsc1.i.i.us.us.i = load i8, ptr %.sroa.0.1.i.i.i.i.us.i, align 1, !noalias !5306
  %i.ah = icmp eq i8 %lhsc1.i.i.us.us.i, 46
  br i1 %i.ah, label %.thread.us.us.i, label %bb.e

bb.d:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i
  %i.ai = icmp ne i64 %.promoted76.i, 0
  %or.cond.i.i.us.us.i = select i1 %i.ai, i1 true, i1 %i.x
  %spec.select.i.us.us.i = zext i1 %or.cond.i.i.us.us.i to i64
  br label %.thread.us.us.i

bb.e:                                             ; preds = %bb.c, %bb.b, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5306
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i, i64 noundef %i.ac)
          to label %.noexc24.us.us.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299

.noexc24.us.us.i:                                 ; preds = %bb.e
  %i.aj = load i64, ptr %i.b, align 8, !range !33, !noalias !5306, !noundef !28
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %.split95.i, label %bb.f

bb.f:                                             ; preds = %.noexc24.us.us.i
  %i.al = load ptr, ptr %i.y, align 8, !noalias !5306, !nonnull !28, !noundef !28
  %i.am = load i64, ptr %i.z, align 8, !noalias !5306, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5306
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.us.us.i = trunc i64 %i.an to i8
  %.sroa.829.1.extract.shift.us.us.i = lshr i64 %i.an, 8
  %.sroa.829.1.extract.trunc.us.us.i = trunc nuw i64 %.sroa.829.1.extract.shift.us.us.i to i56
  br label %.thread.us.us.i

.thread.us.us.i:                                  ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.829.1.extract.trunc46.us.us.i = phi i56 [ %.sroa.829.1.extract.trunc.us.us.i, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.829.0.extract.trunc45.us.us.i = phi i8 [ %.sroa.829.0.extract.trunc.us.us.i, %bb.f ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.0.ph44.us.us.i = phi i64 [ 3, %bb.f ], [ 2, %bb.b ], [ %spec.select.i.us.us.i, %bb.d ], [ 1, %bb.c ]
  %.sroa.11.0.ph43.us.us.i = phi i64 [ %i.am, %bb.f ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.c ]
  store i64 %.sroa.0.0.ph44.us.us.i, ptr %i.c, align 8, !noalias !5299
  store i8 %.sroa.829.0.extract.trunc45.us.us.i, ptr %.sroa.610.0..sroa_idx11.i, align 8, !noalias !5299
  store i56 %.sroa.829.1.extract.trunc46.us.us.i, ptr %.sroa.8.0..sroa_idx13.i, align 1, !noalias !5299
  store i64 %.sroa.11.0.ph43.us.us.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !5299
  %i.ao = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299 ; 2 uses

bb.g:                                             ; preds = %.thread.us.us.i
  %.not20.us.us.i = icmp eq i8 %i.ao, 2
  br i1 %.not20.us.us.i, label %.loopexit, label %.split100.i

.split.i:                                         ; preds = %.split.i.preheader, %bb.u
  %.lcssa6884.i = phi i64 [ %.lcssa6882.i, %bb.u ], [ %.promoted81.i, %.split.i.preheader ] ; 3 uses
  %i.ap = phi i64 [ %i.bn, %bb.u ], [ %.promoted76.i, %.split.i.preheader ] ; 2 uses
  %.lcssa6072.i = phi i64 [ %.lcssa6071.i, %bb.u ], [ %.promoted70.i, %.split.i.preheader ] ; 4 uses
  %i.aq = phi i8 [ %i.bm, %bb.u ], [ %.promoted69.i, %.split.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  %i.as = icmp ult i64 %i.l, %.lcssa6884.i
  br i1 %i.as, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.h
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !5307, !noalias !5299 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.k, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.at = phi i64 [ %i.bh, %bb.k ], [ %.lcssa6884.i, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.au = sub nuw i64 %i.l, %i.at                 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.at ; 2 uses
  %i.aw = icmp samesign ult i64 %i.au, 16
  br i1 %i.aw, label %.preheader.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ax = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef range(i64 0, -9223372036854775808) %i.au)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299 ; 2 uses

.noexc.i:                                         ; preds = %bb.i
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = trunc nuw i64 %i.ay to i1
  br i1 %i.ba, label %.loopexit.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.j
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !5308, !noalias !5309, !noundef !28
  %i.bd = icmp eq i8 %i.bc, %.pre.i.i.i.i.i.i
  br i1 %i.bd, label %.loopexit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.be = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.au
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.az, %.noexc.i ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.bf = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.au
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add i64 %i.at, 1
  %i.bh = add i64 %i.bg, %.sroa.5.0.i.i.i.i.i.i.i ; 8 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.bh, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.loopexit.i.i.i.i.i.i
  %i.bi = icmp ult i64 %i.l, %i.bh
  br i1 %i.bi, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.bj = sub nuw i64 %i.bh, %i.p                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bj
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bk, ptr nonnull %i.m, i64 %i.p), !noalias !5310
  %i.bl = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bl, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.k

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.k, %.noexc.i, %.preheader.i.i.i.i.i.i.i, %bb.j, %bb.h
  %.lcssa6883.i = phi i64 [ %i.l, %bb.j ], [ %.lcssa6884.i, %bb.h ], [ %i.l, %.preheader.i.i.i.i.i.i.i ], [ %i.l, %.noexc.i ], [ %i.bh, %bb.k ]
  store i8 1, ptr %i.h, align 1, !alias.scope !5311, !noalias !5299
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa6072.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %.loopexit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.l, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %.lcssa6882.i = phi i64 [ %.lcssa6883.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ %i.bh, %bb.l ]
  %.lcssa6071.i = phi i64 [ %.lcssa6072.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ %i.bh, %bb.l ]
  %i.bm = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ 0, %bb.l ]
  %.pn.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ %i.bj, %bb.l ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i, %.lcssa6072.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa6072.i ; 3 uses
  %i.bn = add i64 %i.ap, 1
  switch i64 %.sroa.4.1.i.i.i.i.i, label %bb.p [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.m:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.bo = icmp ne i64 %i.ap, 0
  %or.cond.i.i.i = select i1 %i.bo, i1 true, i1 %i.x
  %spec.select.i.i = zext i1 %or.cond.i.i.i to i64
  br label %.thread.i

bb.n:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %lhsc1.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i, align 1, !noalias !5306
  %i.bp = icmp eq i8 %lhsc1.i.i.i, 46
  br i1 %i.bp, label %.thread.i, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.bq = load i16, ptr %.sroa.0.1.i.i.i.i.i, align 1
  %i.br = icmp ne i16 %i.bq, 11822
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5306
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299

.noexc24.i:                                       ; preds = %bb.p
  %i.bu = load i64, ptr %i.b, align 8, !range !33, !noalias !5306, !noundef !28
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %.split95.i, label %bb.s

.split95.i:                                       ; preds = %.noexc24.i, %.noexc24.us.us.i
  %i.bw = load i64, ptr %i.z, align 8, !noalias !5306, !noundef !28
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !43

bb.q:                                             ; preds = %.split95.i
  %i.by = load ptr, ptr %i.y, align 8, !noalias !5306, !nonnull !28, !noundef !28
  %lhsc.i.i.i = load i8, ptr %i.by, align 1, !noalias !5306
  %i.bz = icmp eq i8 %lhsc.i.i.i, 92
  br i1 %i.bz, label %bb.t, label %bb.r, !prof !43

bb.r:                                             ; preds = %bb.q, %.split95.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #65
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5299
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB2i_7builder12value_parserINtB3j_15EnumValueParserB2c_ENtB3j_16TypedValueParser9parse_refs_00ENCB3b_s_0ENCB3b_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !37932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37933
  call void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder4util5colorNtB5_11ColorChoiceNtNtB9_6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f), !noalias !37934
  %i.h = load i64, ptr %i.a, align 8, !range !32, !noalias !37933, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !37933
  %i.i = trunc nuw i8 %.sroa.3.0.copyload.i.i.i.i to i1
  br i1 %i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i, label %bb.d

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i: ; preds = %bb.c
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.a), !noalias !37934
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37933
  %i.j = icmp eq ptr %i.g, %i.d
  br i1 %i.j, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.c
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37933
  store i64 %i.h, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37935)
  %.sroa.0.0.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37935, !nonnull !28, !noundef !28
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !37935, !noundef !28 ; 7 uses
  %.not.i.i = icmp slt i64 %.sroa.3.0.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.e, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.k, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !37936
  %i.l = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37936 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.b) #62, !noalias !37937
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.d ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.3.0.i) #61
          to label %bb.i unwind label %bb.f, !noalias !37938

bb.h:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false), !noalias !37938
  br label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.g
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e, %bb.h
  %i.o = phi ptr [ %i.l, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.e ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.b), !noalias !37937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.3.0.i, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.j

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2c_ENtB3l_16TypedValueParser9parse_refs_00ENCB3d_s_0ENCB3d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37964)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !37965, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !37965 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i.i.i.i, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !37965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37966
  call void @_RNvXs0_NtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shellNtB5_5ShellNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f), !noalias !37967
  %i.h = load i64, ptr %i.a, align 8, !range !32, !noalias !37966, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !37966
  %i.i = trunc nuw i8 %.sroa.3.0.copyload.i.i.i.i to i1
  br i1 %i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i, label %bb.d

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i: ; preds = %bb.c
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.a), !noalias !37967
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread17.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37966
  %i.j = icmp eq ptr %i.g, %i.d
  br i1 %i.j, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.c
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37966
  store i64 %i.h, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37968)
  %.sroa.0.0.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !37968, !nonnull !28, !noundef !28
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !37968, !noundef !28 ; 7 uses
  %.not.i.i = icmp slt i64 %.sroa.3.0.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.e, !prof !61

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.k, label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !37969
  %i.l = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !37969 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.b) #62, !noalias !37970
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.d ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.3.0.i) #61
          to label %bb.i unwind label %bb.f, !noalias !37971

bb.h:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false), !noalias !37971
  br label %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.g
  unreachable

_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e, %bb.h
  %i.o = phi ptr [ %i.l, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.e ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.b), !noalias !37970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.3.0.i, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.j

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCNvNtCs9fPPV5zPXBl_5typst4info4info0ENvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBb_7convert4FromReE4fromENtNtNtB9_6traits8iterator8Iterator4nextB1P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38002)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 4 uses
  %.promoted.i.i.i = load i8, ptr %i.a, align 1, !alias.scope !38003 ; 4 uses
  %.promoted17.i.i.i = load i64, ptr %1, align 8, !alias.scope !38004 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !38004, !nonnull !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !38004 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !38004 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !38004 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !53, !alias.scope !38004
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !38004 ; 4 uses
  %.not.i.i.i.fr.i.i.i = freeze i1 %.not.i.i.i.i.i.i
  br i1 %.not.i.i.i.fr.i.i.i, label %.split.us.i.i.i, label %.split.preheader.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.a
  %.promoted20.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !38004
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.a
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted17.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %i.q = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted17.i.i.i
  %.fr.i.i.i = freeze i64 %i.q                    ; 2 uses
  %or.cond.not.i.i.i.us.fr.i.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i.i
  br i1 %or.cond.not.i.i.i.us.fr.i.i.i, label %.split.us.split.us.i.i.i, label %.split.us.split.i.i.i

.split.us.split.us.i.i.i:                         ; preds = %.split.us.i.i.i
  %.not.i.us.i.i.i = icmp eq i64 %.fr.i.i.i, 0
  br i1 %.not.i.us.i.i.i, label %.split.us.split.us.split.us.i.i.i, label %.split.us.split.us.split.i.i.i

.split.us.split.us.split.us.i.i.i:                ; preds = %.split.us.split.us.i.i.i
  %i.r = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.r, label %.loopexit, label %.loopexit.sink.split

.split.us.split.us.split.i.i.i:                   ; preds = %.split.us.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38006)
  %i.s = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.s, label %.loopexit, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.us.i.i.i: ; preds = %.split.us.split.us.split.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38007)
  store i8 1, ptr %i.a, align 1, !alias.scope !38008
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

.split.us.split.i.i.i:                            ; preds = %.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38006)
  %i.t = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.t, label %.loopexit, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.i.i.i: ; preds = %.split.us.split.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38007)
  br label %.loopexit.sink.split

.split.i.i.i:                                     ; preds = %select.unfold.i.i.i, %.split.preheader.i.i.i
  %i.u = phi i64 [ %i.as, %select.unfold.i.i.i ], [ %.promoted20.i.i.i, %.split.preheader.i.i.i ] ; 3 uses
  %.lcssa1519.i.i.i = phi i64 [ %.lcssa1518.i.i.i, %select.unfold.i.i.i ], [ %.promoted17.i.i.i, %.split.preheader.i.i.i ] ; 4 uses
  %i.v = phi i8 [ %i.at, %select.unfold.i.i.i ], [ %.promoted.i.i.i, %.split.preheader.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38006)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.split.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38007)
  %i.x = icmp ult i64 %i.f, %i.u
  br i1 %i.x, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !38009 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.y = phi i64 [ %i.am, %bb.e ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.f, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.f, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !38010 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !38011, !noalias !38010, !noundef !28
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i.i.i.i.i
  br i1 %i.ai, label %.loopexit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.z
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.am, ptr %i.d, align 8, !alias.scope !38009
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.am, %i.j
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !38009
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i
  %i.an = icmp ult i64 %i.f, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ao = sub nuw i64 %i.am, %i.j                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.g, i64 %i.j), !noalias !38012
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.am, ptr %1, align 8, !alias.scope !38003
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i, %bb.b
  %i.ar = phi i64 [ %i.u, %bb.b ], [ %i.f, %.loopexit15.i.i.i.i.i.i ], [ %i.am, %bb.e ]
  store i8 1, ptr %i.a, align 1, !alias.scope !38008
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1519.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.as = phi i64 [ %i.am, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  %.lcssa1518.i.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  %i.at = phi i8 [ 0, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa1519.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.split.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %select.unfold.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %.fr.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.us.i.i.i ], [ %.sroa.4.1.i.i.i.i.i, %select.unfold.i.i.i ] ; 5 uses
  %.us-phi25.i.i.i = phi i64 [ %.promoted17.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.us.i.i.i ], [ %.lcssa1519.i.i.i, %select.unfold.i.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !38013
  %i.au = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.us-phi.i.i.i, i64 noundef range(i64 1, 17) 1) #56, !noalias !38013 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst.exit

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.us-phi.i.i.i) #61, !noalias !38014
  unreachable

_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.us-phi25.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %.sroa.0.1.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.us-phi.i.i.i, i1 false), !noalias !38015
  store i64 %.us-phi.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

.loopexit.sink.split:                             ; preds = %.split.us.split.us.split.us.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.us.i.i.i
  store i8 1, ptr %i.a, align 1, !alias.scope !38008
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %.split.i.i.i, %.loopexit.sink.split, %.split.us.split.i.i.i, %.split.us.split.us.split.i.i.i, %.split.us.split.us.split.us.i.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENvMB11_e4trimENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38028)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !53, !alias.scope !38029, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !38029, !nonnull !28, !noundef !28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !38029, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38030)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !38031, !noundef !28 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.h, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !38031 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.i
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !38031, !noundef !28 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.pre.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !38031 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.q = phi i64 [ %i.ae, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.q
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.u = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !38032 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.04.011.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !38033, !noalias !38032, !noundef !28
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %i.q, 1
  %i.ae = add i64 %i.ad, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !38031
  %.not11.i.i.i = icmp ult i64 %i.ae, %i.m
  %.not12.i.i.i = icmp ugt i64 %i.ae, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !38031
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.af = icmp ult i64 %i.h, %i.ae
  br i1 %i.af, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.ag = sub nuw i64 %i.ae, %i.m                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.j, i64 %i.m), !noalias !38034
  %i.ai = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ai, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %0, align 8, !alias.scope !38029, !noundef !28 ; 2 uses
  %i.ak = sub nuw i64 %i.ag, %i.aj
  store i64 %i.ae, ptr %0, align 8, !alias.scope !38029
  br label %select.unfold

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !38035
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i8, ptr %i.al, align 8, !range !53, !alias.scope !38035, !noundef !28
  %i.an = trunc nuw i8 %i.am to i1
  %.pre.i2.i.i = load i64, ptr %0, align 8, !alias.scope !38035 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !38035 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.an, i1 true, i1 %.not.i3.i.i
  %i.ao = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread

select.unfold:                                    ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ak, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ao, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.pn = phi i64 [ %i.aj, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.ap = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  br label %_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread

_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i, %bb.a, %select.unfold
  %.sroa.3.0 = phi i64 [ %i.ar, %select.unfold ], [ undef, %bb.a ], [ undef, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %.sroa.0.0 = phi ptr [ %i.aq, %select.unfold ], [ null, %bb.a ], [ null, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst.exit.i.i ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs16_NtCsdaEETE4DqmE_13typst_library4diagNtB6_9FileErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %1, align 8, !range !96, !noundef !28 ; 5 uses
  %i.d = icmp ne i32 %i.c, 11
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i32 %i.c, -5
  %i.f = icmp samesign ugt i32 %i.c, 4
  %narrow = select i1 %i.f, i32 %i.e, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val49 = load i64, ptr %i.h, align 8, !noundef !28 ; 6 uses
  %i.i = icmp eq i64 %.val49, 0
  br i1 %i.i, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !38052
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val49, i64 noundef range(i64 1, 17) 1) #56, !noalias !38052 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val49) #61, !noalias !38053
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val49, i1 false), !noalias !38054
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.c, %bb.e
  %.sroa.5.0 = phi ptr [ %i.j, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val49, ptr %i.l, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val49, ptr %.sroa.566.0..sroa_idx, align 8
  store i32 5, ptr %0, align 8
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  store i32 6, ptr %0, align 8
  br label %bb.at

bb.g:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!37782 = !{!37644, !37642, !37641, !37620, !37629, !37594, !37597, !37592, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37783 = !{!37646, !37620, !37629, !37594, !37597, !37592, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37784 = !{!37648, !37594, !37597, !37592, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37785 = !{!37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37786 = !{!37650, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37787 = !{!37650, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37788 = !{!37652}
!37789 = !{!37654}
!37790 = !{!37654, !37652}
!37791 = !{!37656, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37792 = !{!37656, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37793 = !{!37654, !37652, !37656, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37794 = !{!37660, !37658, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37795 = !{!37664, !37662, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37796 = !{!37668, !37666, !37590, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37797 = !{!37671, !37670, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37798 = !{!37673, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37799 = !{!37675}
!37800 = !{!37679, !37677, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37801 = !{!37683, !37681, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37802 = !{!37687, !37685, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37803 = !{!37506, !37504, !37500, !37503, !37498, !37496, !37495}
!37804 = !{!37691, !37689, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37805 = !{!37695, !37693, !37509, !37506, !37508, !37504, !37500, !37503, !37498, !37496, !37495}
!37806 = !{!37503, !37498, !37496, !37495}
!37807 = !{!37498, !37495}
!37808 = !{!37498, !37496, !37495}
!37809 = !{!37699, !37697, !37496, !37495}
!37810 = distinct !{!37810, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2M_15EnumValueParserB1W_ENtB2M_16TypedValueParser9parse_refs_00ENCB2E_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_"}
!37811 = distinct !{!37811, !37810, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2M_15EnumValueParserB1W_ENtB2M_16TypedValueParser9parse_refs_00ENCB2E_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 1"}
!37812 = distinct !{!37812, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1v_ENtB2l_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2d_s_0EB1z_"}
!37813 = distinct !{!37813, !37812, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1v_ENtB2l_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2d_s_0EB1z_: argument 1"}
!37814 = distinct !{!37814, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1B_ENtB2r_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4p_4find5checkNtNtB2t_14possible_value13PossibleValueQNCB2j_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5t_EEB1F_"}
!37815 = distinct !{!37815, !37814, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1B_ENtB2r_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4p_4find5checkNtNtB2t_14possible_value13PossibleValueQNCB2j_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5t_EEB1F_: argument 1"}
!37816 = distinct !{!37816, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1v_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNCNvXso_NtB3f_12value_parserINtB5h_15EnumValueParserBJ_ENtB5h_16TypedValueParser9parse_refs_00NCINvNvB1p_4find5checkB3b_QNCB59_s_0E0E0B4n_EBN_"}
!37817 = distinct !{!37817, !37816, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1v_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNCNvXso_NtB3f_12value_parserINtB5h_15EnumValueParserBJ_ENtB5h_16TypedValueParser9parse_refs_00NCINvNvB1p_4find5checkB3b_QNCB59_s_0E0E0B4n_EBN_: argument 1"}
!37818 = distinct !{!37818, i1 true, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!37819 = distinct !{!37819, !37818, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!37820 = distinct !{!37820, !37810, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2M_15EnumValueParserB1W_ENtB2M_16TypedValueParser9parse_refs_00ENCB2E_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 0"}
!37821 = distinct !{!37821, !37812, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2l_15EnumValueParserB1v_ENtB2l_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2d_s_0EB1z_: argument 0"}
!37822 = distinct !{!37822, !37814, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2r_15EnumValueParserB1B_ENtB2r_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4p_4find5checkNtNtB2t_14possible_value13PossibleValueQNCB2j_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5t_EEB1F_: argument 0"}
!37823 = distinct !{!37823, !37816, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1v_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNCNvXso_NtB3f_12value_parserINtB5h_15EnumValueParserBJ_ENtB5h_16TypedValueParser9parse_refs_00NCINvNvB1p_4find5checkB3b_QNCB59_s_0E0E0B4n_EBN_: argument 0"}
!37824 = distinct !{!37824, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1U_ENCNCNvXso_NtB1Y_12value_parserINtB40_15EnumValueParserB1f_ENtB40_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1U_QNCB3S_s_0E0E0B1j_"}
!37825 = distinct !{!37825, !37824, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1U_ENCNCNvXso_NtB1Y_12value_parserINtB40_15EnumValueParserB1f_ENtB40_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1U_QNCB3S_s_0E0E0B1j_: argument 0"}
!37826 = distinct !{!37826, i1 true, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs_0s0_0B1s_"}
!37827 = distinct !{!37827, !37826, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 1"}
!37828 = distinct !{!37828, !37826, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args10DepsFormatENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 0"}
!37829 = distinct !{!37829, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37830 = distinct !{!37830, !37829, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37831 = !{!37811}
!37832 = !{!37813}
!37833 = !{!37815}
!37834 = !{!37817}
!37835 = !{!37819, !37817, !37815, !37813, !37811}
!37836 = !{!37823, !37817, !37822, !37815, !37821, !37813, !37820, !37811}
!37837 = !{!37825, !37823, !37817, !37822, !37815, !37821, !37813, !37820, !37811}
!37838 = !{!37827}
!37839 = !{!37830, !37828, !37827}
!37840 = !{!37828}
!37841 = !{!37828, !37827}
!37842 = distinct !{!37842, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2N_15EnumValueParserB1W_ENtB2N_16TypedValueParser9parse_refs_00ENCB2F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_"}
!37843 = distinct !{!37843, !37842, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2N_15EnumValueParserB1W_ENtB2N_16TypedValueParser9parse_refs_00ENCB2F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 1"}
!37844 = distinct !{!37844, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1v_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2e_s_0EB1z_"}
!37845 = distinct !{!37845, !37844, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1v_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2e_s_0EB1z_: argument 1"}
!37846 = distinct !{!37846, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2s_15EnumValueParserB1B_ENtB2s_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4q_4find5checkNtNtB2u_14possible_value13PossibleValueQNCB2k_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5u_EEB1F_"}
!37847 = distinct !{!37847, !37846, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2s_15EnumValueParserB1B_ENtB2s_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4q_4find5checkNtNtB2u_14possible_value13PossibleValueQNCB2k_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5u_EEB1F_: argument 1"}
!37848 = distinct !{!37848, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1w_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3c_ENCNCNvXso_NtB3g_12value_parserINtB5i_15EnumValueParserBJ_ENtB5i_16TypedValueParser9parse_refs_00NCINvNvB1q_4find5checkB3c_QNCB5a_s_0E0E0B4o_EBN_"}
!37849 = distinct !{!37849, !37848, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1w_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3c_ENCNCNvXso_NtB3g_12value_parserINtB5i_15EnumValueParserBJ_ENtB5i_16TypedValueParser9parse_refs_00NCINvNvB1q_4find5checkB3c_QNCB5a_s_0E0E0B4o_EBN_: argument 1"}
!37850 = distinct !{!37850, i1 true, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!37851 = distinct !{!37851, !37850, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!37852 = distinct !{!37852, !37842, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2N_15EnumValueParserB1W_ENtB2N_16TypedValueParser9parse_refs_00ENCB2F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 0"}
!37853 = distinct !{!37853, !37844, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1v_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2e_s_0EB1z_: argument 0"}
!37854 = distinct !{!37854, !37846, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2s_15EnumValueParserB1B_ENtB2s_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4q_4find5checkNtNtB2u_14possible_value13PossibleValueQNCB2k_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5u_EEB1F_: argument 0"}
!37855 = distinct !{!37855, !37848, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1w_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3c_ENCNCNvXso_NtB3g_12value_parserINtB5i_15EnumValueParserBJ_ENtB5i_16TypedValueParser9parse_refs_00NCINvNvB1q_4find5checkB3c_QNCB5a_s_0E0E0B4o_EBN_: argument 0"}
!37856 = distinct !{!37856, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1V_ENCNCNvXso_NtB1Z_12value_parserINtB41_15EnumValueParserB1f_ENtB41_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1V_QNCB3T_s_0E0E0B1j_"}
!37857 = distinct !{!37857, !37856, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1V_ENCNCNvXso_NtB1Z_12value_parserINtB41_15EnumValueParserB1f_ENtB41_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1V_QNCB3T_s_0E0E0B1j_: argument 0"}
!37858 = distinct !{!37858, i1 true, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtB9_16TypedValueParser9parse_refs_0s0_0B1s_"}
!37859 = distinct !{!37859, !37858, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 1"}
!37860 = distinct !{!37860, !37858, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 0"}
!37861 = distinct !{!37861, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37862 = distinct !{!37862, !37861, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37863 = !{!37843}
!37864 = !{!37845}
!37865 = !{!37847}
!37866 = !{!37849}
!37867 = !{!37851, !37849, !37847, !37845, !37843}
!37868 = !{!37855, !37849, !37854, !37847, !37853, !37845, !37852, !37843}
!37869 = !{!37857, !37855, !37849, !37854, !37847, !37853, !37845, !37852, !37843}
!37870 = !{!37859}
!37871 = !{!37862, !37860, !37859}
!37872 = !{!37860}
!37873 = !{!37860, !37859}
!37874 = distinct !{!37874, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1W_ENtB2H_16TypedValueParser9parse_refs_00ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_"}
!37875 = distinct !{!37875, !37874, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1W_ENtB2H_16TypedValueParser9parse_refs_00ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 1"}
!37876 = distinct !{!37876, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2g_15EnumValueParserB1v_ENtB2g_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB28_s_0EB1z_"}
!37877 = distinct !{!37877, !37876, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2g_15EnumValueParserB1v_ENtB2g_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB28_s_0EB1z_: argument 1"}
!37878 = distinct !{!37878, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1B_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkNtNtB2o_14possible_value13PossibleValueQNCB2e_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5o_EEB1F_"}
!37879 = distinct !{!37879, !37878, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1B_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkNtNtB2o_14possible_value13PossibleValueQNCB2e_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5o_EEB1F_: argument 1"}
!37880 = distinct !{!37880, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1q_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB36_ENCNCNvXso_NtB3a_12value_parserINtB5c_15EnumValueParserBJ_ENtB5c_16TypedValueParser9parse_refs_00NCINvNvB1k_4find5checkB36_QNCB54_s_0E0E0B4i_EBN_"}
!37881 = distinct !{!37881, !37880, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1q_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB36_ENCNCNvXso_NtB3a_12value_parserINtB5c_15EnumValueParserBJ_ENtB5c_16TypedValueParser9parse_refs_00NCINvNvB1k_4find5checkB36_QNCB54_s_0E0E0B4i_EBN_: argument 1"}
!37882 = distinct !{!37882, i1 true, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!37883 = distinct !{!37883, !37882, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!37884 = distinct !{!37884, !37874, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2H_15EnumValueParserB1W_ENtB2H_16TypedValueParser9parse_refs_00ENCB2z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_: argument 0"}
!37885 = distinct !{!37885, !37876, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2g_15EnumValueParserB1v_ENtB2g_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB28_s_0EB1z_: argument 0"}
!37886 = distinct !{!37886, !37878, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2m_15EnumValueParserB1B_ENtB2m_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4k_4find5checkNtNtB2o_14possible_value13PossibleValueQNCB2e_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5o_EEB1F_: argument 0"}
!37887 = distinct !{!37887, !37880, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs9fPPV5zPXBl_5typst4args6TargetENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1q_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB36_ENCNCNvXso_NtB3a_12value_parserINtB5c_15EnumValueParserBJ_ENtB5c_16TypedValueParser9parse_refs_00NCINvNvB1k_4find5checkB36_QNCB54_s_0E0E0B4i_EBN_: argument 0"}
!37888 = distinct !{!37888, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1P_ENCNCNvXso_NtB1T_12value_parserINtB3V_15EnumValueParserB1f_ENtB3V_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1P_QNCB3N_s_0E0E0B1j_"}
!37889 = distinct !{!37889, !37888, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCs9fPPV5zPXBl_5typst4args6TargetNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB1P_ENCNCNvXso_NtB1T_12value_parserINtB3V_15EnumValueParserB1f_ENtB3V_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1P_QNCB3N_s_0E0E0B1j_: argument 0"}
!37890 = distinct !{!37890, i1 true, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args6TargetENtB9_16TypedValueParser9parse_refs_0s0_0B1s_"}
!37891 = distinct !{!37891, !37890, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args6TargetENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 1"}
!37892 = distinct !{!37892, !37890, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtCs9fPPV5zPXBl_5typst4args6TargetENtB9_16TypedValueParser9parse_refs_0s0_0B1s_: argument 0"}
!37893 = distinct !{!37893, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37894 = distinct !{!37894, !37893, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37895 = !{!37875}
!37896 = !{!37877}
!37897 = !{!37879}
!37898 = !{!37881}
!37899 = !{!37883, !37881, !37879, !37877, !37875}
!37900 = !{!37887, !37881, !37886, !37879, !37885, !37877, !37884, !37875}
!37901 = !{!37889, !37887, !37881, !37886, !37879, !37885, !37877, !37884, !37875}
!37902 = !{!37891}
!37903 = !{!37894, !37892, !37891}
!37904 = !{!37892}
!37905 = !{!37892, !37891}
!37906 = distinct !{!37906, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB22_7builder12value_parserINtB33_15EnumValueParserB1W_ENtB33_16TypedValueParser9parse_refs_00ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37907 = distinct !{!37907, !37906, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB22_7builder12value_parserINtB33_15EnumValueParserB1W_ENtB33_16TypedValueParser9parse_refs_00ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 1"}
!37908 = distinct !{!37908, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1B_7builder12value_parserINtB2C_15EnumValueParserB1v_ENtB2C_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2u_s_0ECs9fPPV5zPXBl_5typst"}
!37909 = distinct !{!37909, !37908, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1B_7builder12value_parserINtB2C_15EnumValueParserB1v_ENtB2C_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2u_s_0ECs9fPPV5zPXBl_5typst: argument 1"}
!37910 = distinct !{!37910, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1H_7builder12value_parserINtB2I_15EnumValueParserB1B_ENtB2I_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4i_4find5checkNtNtB2K_14possible_value13PossibleValueQNCB2A_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5m_EECs9fPPV5zPXBl_5typst"}
!37911 = distinct !{!37911, !37910, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1H_7builder12value_parserINtB2I_15EnumValueParserB1B_ENtB2I_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4i_4find5checkNtNtB2K_14possible_value13PossibleValueQNCB2A_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5m_EECs9fPPV5zPXBl_5typst: argument 1"}
!37912 = distinct !{!37912, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtBP_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3s_ENCNCNvXso_NtB3w_12value_parserINtB59_15EnumValueParserBJ_ENtB59_16TypedValueParser9parse_refs_00NCINvNvB1G_4find5checkB3s_QNCB51_s_0E0E0B4f_ECs9fPPV5zPXBl_5typst"}
!37913 = distinct !{!37913, !37912, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtBP_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3s_ENCNCNvXso_NtB3w_12value_parserINtB59_15EnumValueParserBJ_ENtB59_16TypedValueParser9parse_refs_00NCINvNvB1G_4find5checkB3s_QNCB51_s_0E0E0B4f_ECs9fPPV5zPXBl_5typst: argument 1"}
!37914 = distinct !{!37914, i1 true, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37915 = distinct !{!37915, !37914, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37916 = distinct !{!37916, !37906, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB22_7builder12value_parserINtB33_15EnumValueParserB1W_ENtB33_16TypedValueParser9parse_refs_00ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37917 = distinct !{!37917, !37908, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1B_7builder12value_parserINtB2C_15EnumValueParserB1v_ENtB2C_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2u_s_0ECs9fPPV5zPXBl_5typst: argument 0"}
!37918 = distinct !{!37918, !37910, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENCNCNvXso_NtNtB1H_7builder12value_parserINtB2I_15EnumValueParserB1B_ENtB2I_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4i_4find5checkNtNtB2K_14possible_value13PossibleValueQNCB2A_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5m_EECs9fPPV5zPXBl_5typst: argument 0"}
!37919 = distinct !{!37919, !37912, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtBP_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3s_ENCNCNvXso_NtB3w_12value_parserINtB59_15EnumValueParserBJ_ENtB59_16TypedValueParser9parse_refs_00NCINvNvB1G_4find5checkB3s_QNCB51_s_0E0E0B4f_ECs9fPPV5zPXBl_5typst: argument 0"}
!37920 = distinct !{!37920, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst"}
!37921 = distinct !{!37921, !37920, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst: argument 1"}
!37922 = distinct !{!37922, !37920, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsj1PC5XHMKi0_12clap_builder4util5color11ColorChoiceNtNtNtB1l_7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2b_ENCNCNvXso_NtB2f_12value_parserINtB3T_15EnumValueParserB1f_ENtB3T_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2b_QNCB3L_s_0E0E0Cs9fPPV5zPXBl_5typst: argument 0"}
!37923 = distinct !{!37923, i1 true, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst"}
!37924 = distinct !{!37924, !37923, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst: argument 1"}
!37925 = distinct !{!37925, !37923, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtBd_4util5color11ColorChoiceENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst: argument 0"}
!37926 = distinct !{!37926, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37927 = distinct !{!37927, !37926, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37928 = !{!37907}
!37929 = !{!37909}
!37930 = !{!37911}
!37931 = !{!37913}
!37932 = !{!37915, !37913, !37911, !37909, !37907}
!37933 = !{!37922, !37921, !37919, !37913, !37918, !37911, !37917, !37909, !37916, !37907}
!37934 = !{!37922, !37919, !37913, !37918, !37911, !37917, !37909, !37916, !37907}
!37935 = !{!37924}
!37936 = !{!37927, !37925, !37924}
!37937 = !{!37925}
!37938 = !{!37925, !37924}
!37939 = distinct !{!37939, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB35_15EnumValueParserB1W_ENtB35_16TypedValueParser9parse_refs_00ENCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37940 = distinct !{!37940, !37939, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB35_15EnumValueParserB1W_ENtB35_16TypedValueParser9parse_refs_00ENCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 1"}
!37941 = distinct !{!37941, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1v_ENtB2E_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2w_s_0ECs9fPPV5zPXBl_5typst"}
!37942 = distinct !{!37942, !37941, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1v_ENtB2E_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2w_s_0ECs9fPPV5zPXBl_5typst: argument 1"}
!37943 = distinct !{!37943, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2K_15EnumValueParserB1B_ENtB2K_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4I_4find5checkNtNtB2M_14possible_value13PossibleValueQNCB2C_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5M_EECs9fPPV5zPXBl_5typst"}
!37944 = distinct !{!37944, !37943, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2K_15EnumValueParserB1B_ENtB2K_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4I_4find5checkNtNtB2M_14possible_value13PossibleValueQNCB2C_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5M_EECs9fPPV5zPXBl_5typst: argument 1"}
!37945 = distinct !{!37945, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1O_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3u_ENCNCNvXso_NtB3y_12value_parserINtB5A_15EnumValueParserBJ_ENtB5A_16TypedValueParser9parse_refs_00NCINvNvB1I_4find5checkB3u_QNCB5s_s_0E0E0B4G_ECs9fPPV5zPXBl_5typst"}
!37946 = distinct !{!37946, !37945, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1O_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3u_ENCNCNvXso_NtB3y_12value_parserINtB5A_15EnumValueParserBJ_ENtB5A_16TypedValueParser9parse_refs_00NCINvNvB1I_4find5checkB3u_QNCB5s_s_0E0E0B4G_ECs9fPPV5zPXBl_5typst: argument 1"}
!37947 = distinct !{!37947, i1 true, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37948 = distinct !{!37948, !37947, !"_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37949 = distinct !{!37949, !37939, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB35_15EnumValueParserB1W_ENtB35_16TypedValueParser9parse_refs_00ENCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37950 = distinct !{!37950, !37941, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2E_15EnumValueParserB1v_ENtB2E_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator4findQNCB2w_s_0ECs9fPPV5zPXBl_5typst: argument 0"}
!37951 = distinct !{!37951, !37943, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB2K_15EnumValueParserB1B_ENtB2K_16TypedValueParser9parse_refs_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4I_4find5checkNtNtB2M_14possible_value13PossibleValueQNCB2C_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5M_EECs9fPPV5zPXBl_5typst: argument 0"}
!37952 = distinct !{!37952, !37945, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1O_8adapters10filter_map19filter_map_try_foldRBJ_NtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB3u_ENCNCNvXso_NtB3y_12value_parserINtB5A_15EnumValueParserBJ_ENtB5A_16TypedValueParser9parse_refs_00NCINvNvB1I_4find5checkB3u_QNCB5s_s_0E0E0B4G_ECs9fPPV5zPXBl_5typst: argument 0"}
!37953 = distinct !{!37953, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst"}
!37954 = distinct !{!37954, !37953, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst: argument 1"}
!37955 = distinct !{!37955, !37953, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellNtNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_value13PossibleValueuINtNtNtBa_3ops12control_flow11ControlFlowB2d_ENCNCNvXso_NtB2h_12value_parserINtB4j_15EnumValueParserB1f_ENtB4j_16TypedValueParser9parse_refs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2d_QNCB4b_s_0E0E0Cs9fPPV5zPXBl_5typst: argument 0"}
!37956 = distinct !{!37956, i1 true, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst"}
!37957 = distinct !{!37957, !37956, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst: argument 1"}
!37958 = distinct !{!37958, !37956, !"_RNCNCNvXso_NtNtCsj1PC5XHMKi0_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtNtCsfAYOsQn52pq_13clap_complete3aot6shells5shell5ShellENtB9_16TypedValueParser9parse_refs_0s0_0Cs9fPPV5zPXBl_5typst: argument 0"}
!37959 = distinct !{!37959, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37960 = distinct !{!37960, !37959, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!37961 = !{!37940}
!37962 = !{!37942}
!37963 = !{!37944}
!37964 = !{!37946}
!37965 = !{!37948, !37946, !37944, !37942, !37940}
!37966 = !{!37955, !37954, !37952, !37946, !37951, !37944, !37950, !37942, !37949, !37940}
!37967 = !{!37955, !37952, !37946, !37951, !37944, !37950, !37942, !37949, !37940}
!37968 = !{!37957}
!37969 = !{!37960, !37958, !37957}
!37970 = !{!37958}
!37971 = !{!37958, !37957}
!37972 = distinct !{!37972, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3str4iter5SplitcENCNvNtCs9fPPV5zPXBl_5typst4info4info0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_"}
!37973 = distinct !{!37973, !37972, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3str4iter5SplitcENCNvNtCs9fPPV5zPXBl_5typst4info4info0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_: argument 0"}
!37974 = distinct !{!37974, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvNtCs9fPPV5zPXBl_5typst4info4info0EB1B_"}
!37975 = distinct !{!37975, !37974, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvNtCs9fPPV5zPXBl_5typst4info4info0EB1B_: argument 0"}
!37976 = distinct !{!37976, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_4find5checkReQNCNvNtCs9fPPV5zPXBl_5typst4info4info0E0INtNtNtBa_3ops12control_flow11ControlFlowB1U_EEB23_"}
!37977 = distinct !{!37977, !37976, !"_RINvYINtNtNtCs3oUPovFnLWP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_4find5checkReQNCNvNtCs9fPPV5zPXBl_5typst4info4info0E0INtNtNtBa_3ops12control_flow11ControlFlowB1U_EEB23_: argument 0"}
!37978 = distinct !{!37978, i1 true, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!37979 = distinct !{!37979, !37978, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37980 = distinct !{!37980, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs9fPPV5zPXBl_5typst"}
!37981 = distinct !{!37981, !37980, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs9fPPV5zPXBl_5typst: argument 0"}
!37982 = distinct !{!37982, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!37983 = distinct !{!37983, !37982, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!37984 = distinct !{!37984, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst"}
!37985 = distinct !{!37985, !37984, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst: argument 0"}
!37986 = distinct !{!37986, !37982, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!37987 = distinct !{!37987, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!37988 = distinct !{!37988, !37987, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!37989 = distinct !{!37989, i1 true, !"_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst"}
!37990 = distinct !{!37990, !37989, !"_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst: argument 1"}
!37991 = distinct !{!37991, !37989, !"_RNvYNvYNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCs9fPPV5zPXBl_5typst: argument 0"}
!37992 = distinct !{!37992, i1 true, !"_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCs9fPPV5zPXBl_5typst"}
!37993 = distinct !{!37993, !37992, !"_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCs9fPPV5zPXBl_5typst: argument 1"}
!37994 = distinct !{!37994, !37992, !"_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCs9fPPV5zPXBl_5typst: argument 0"}
!37995 = distinct !{!37995, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst"}
!37996 = distinct !{!37996, !37995, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 1"}
!37997 = distinct !{!37997, !37995, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 0"}
!37998 = distinct !{!37998, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!37999 = distinct !{!37999, !37998, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!38000 = !{!37973}
!38001 = !{!37975}
!38002 = !{!37977}
!38003 = !{!37981, !37979, !37977, !37975, !37973}
!38004 = !{!37977, !37975, !37973}
!38005 = !{!37979}
!38006 = !{!37981}
!38007 = !{!37983}
!38008 = !{!37985, !37981, !37979, !37977, !37975, !37973}
!38009 = !{!37983, !37981, !37979, !37977, !37975, !37973}
!38010 = !{!37986, !37983, !37981, !37979, !37977, !37975, !37973}
!38011 = !{!37988}
!38012 = !{!37986}
!38013 = !{!37999, !37997, !37996, !37994, !37993, !37991, !37990}
!38014 = !{!37997, !37996, !37994, !37993, !37991, !37990}
!38015 = !{!37997, !37994, !37991}
!38016 = distinct !{!38016, i1 true, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst"}
!38017 = distinct !{!38017, !38016, !"_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst: argument 0"}
!38018 = distinct !{!38018, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs9fPPV5zPXBl_5typst"}
!38019 = distinct !{!38019, !38018, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs9fPPV5zPXBl_5typst: argument 0"}
!38020 = distinct !{!38020, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!38021 = distinct !{!38021, !38020, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!38022 = distinct !{!38022, !38020, !"_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!38023 = distinct !{!38023, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!38024 = distinct !{!38024, !38023, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!38025 = distinct !{!38025, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst"}
!38026 = distinct !{!38026, !38025, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9fPPV5zPXBl_5typst: argument 0"}
!38027 = !{!38017}
!38028 = !{!38019}
!38029 = !{!38019, !38017}
!38030 = !{!38021}
!38031 = !{!38021, !38019, !38017}
!38032 = !{!38022, !38021, !38019, !38017}
!38033 = !{!38024}
!38034 = !{!38022}
!38035 = !{!38026, !38019, !38017}
!38036 = distinct !{!38036, i1 true, !"_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst"}
!38037 = distinct !{!38037, !38036, !"_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9fPPV5zPXBl_5typst: argument 0"}
!38038 = distinct !{!38038, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst"}
!38039 = distinct !{!38039, !38038, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 1"}
!38040 = distinct !{!38040, !38038, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst: argument 0"}
!38041 = distinct !{!38041, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!38042 = distinct !{!38042, !38041, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!38043 = distinct !{!38043, i1 true, !"_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!38044 = distinct !{!38044, !38043, !"_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!38045 = distinct !{!38045, !38043, !"_RNvXs1c_NtCsdaEETE4DqmE_13typst_library4diagNtB6_12PackageErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!38046 = distinct !{!38046, i1 true, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!38047 = distinct !{!38047, !38046, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!38048 = distinct !{!38048, !38046, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!38049 = distinct !{!38049, i1 true, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!38050 = distinct !{!38050, !38049, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!38051 = distinct !{!38051, !38049, !"_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!38052 = !{!38042, !38040, !38039, !38037}
!38053 = !{!38040, !38039, !38037}
!38054 = !{!38040, !38037}
!38055 = !{!38044}
!38056 = !{!38045}
!38057 = !{!38047}
!38058 = !{!38048, !38047, !38044, !38045}
!38059 = !{!38047, !38045}
!38060 = !{!38044, !38045}
!38061 = !{!38050}
!38062 = !{!38051, !38050, !38044, !38045}
!38063 = !{!38050, !38045}
!38064 = distinct !{!38064, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_"}
!38065 = distinct !{!38065, !38064, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_: argument 0"}
!38066 = distinct !{!38066, !38064, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_: argument 2"}
!38067 = distinct !{!38067, !38064, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args5InputEEB1S_: argument 1"}
!38068 = distinct !{!38068, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1S_"}
!38069 = distinct !{!38069, !38068, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1S_: argument 0"}
!38070 = distinct !{!38070, !38068, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1S_: argument 2"}
!38071 = distinct !{!38071, !38068, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args6OutputEEB1S_: argument 1"}
!38072 = distinct !{!38072, i1 true, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1H_"}
!38073 = distinct !{!38073, !38072, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1H_: argument 1"}
!38074 = distinct !{!38074, !38072, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1H_: argument 0"}
!38075 = distinct !{!38075, i1 true, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1J_"}
!38076 = distinct !{!38076, !38075, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1J_: argument 1"}
!38077 = distinct !{!38077, !38075, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1J_: argument 0"}
!38078 = distinct !{!38078, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst"}
!38079 = distinct !{!38079, !38078, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst: argument 0"}
!38080 = distinct !{!38080, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38081 = distinct !{!38081, !38080, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38082 = distinct !{!38082, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38083 = distinct !{!38083, !38082, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38084 = distinct !{!38084, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38085 = distinct !{!38085, !38084, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38086 = distinct !{!38086, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_"}
!38087 = distinct !{!38087, !38086, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_: argument 0:thread"}
!38088 = distinct !{!38088, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38089 = distinct !{!38089, !38088, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38090 = distinct !{!38090, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38091 = distinct !{!38091, !38090, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38092 = distinct !{!38092, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38093 = distinct !{!38093, !38092, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38094 = distinct !{!38094, i1 true, !"_RINvMsF_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1Y_"}
!38095 = distinct !{!38095, !38094, !"_RINvMsF_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1Y_: argument 1"}
!38096 = distinct !{!38096, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1l_"}
!38097 = distinct !{!38097, !38096, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1l_: argument 1"}
!38098 = distinct !{!38098, !38096, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1l_: argument 0"}
!38099 = distinct !{!38099, !38094, !"_RINvMsF_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEB1Y_: argument 0"}
!38100 = distinct !{!38100, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs9fPPV5zPXBl_5typst"}
!38101 = distinct !{!38101, !38100, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs9fPPV5zPXBl_5typst: argument 0"}
!38102 = distinct !{!38102, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst"}
!38103 = distinct !{!38103, !38102, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst: argument 0"}
!38104 = distinct !{!38104, i1 true, !"_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatE10try_unwrapBK_"}
!38105 = distinct !{!38105, !38104, !"_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatE10try_unwrapBK_: argument 0"}
!38106 = distinct !{!38106, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1d_"}
!38107 = distinct !{!38107, !38106, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1d_: argument 0"}
!38108 = distinct !{!38108, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!38109 = distinct !{!38109, !38108, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!38110 = distinct !{!38110, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueE6expectBL_"}
!38111 = distinct !{!38111, !38110, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueE6expectBL_: argument 0"}
!38112 = distinct !{!38112, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueECs9fPPV5zPXBl_5typst"}
!38113 = distinct !{!38113, !38112, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util9any_value8AnyValueECs9fPPV5zPXBl_5typst: argument 0"}
!38114 = distinct !{!38114, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs9fPPV5zPXBl_5typst"}
!38115 = distinct !{!38115, !38114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECs9fPPV5zPXBl_5typst: argument 0"}
!38116 = distinct !{!38116, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst"}
!38117 = distinct !{!38117, !38116, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst: argument 0"}
!38118 = distinct !{!38118, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_"}
!38119 = distinct !{!38119, !38118, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_: argument 0"}
!38120 = distinct !{!38120, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!38121 = distinct !{!38121, !38120, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!38122 = distinct !{!38122, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_"}
!38123 = distinct !{!38123, !38122, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_: argument 0:thread"}
!38124 = distinct !{!38124, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_"}
!38125 = distinct !{!38125, !38124, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs9fPPV5zPXBl_5typst4args12OutputFormatEEB1S_: argument 0"}
!38126 = distinct !{!38126, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_"}
!38127 = distinct !{!38127, !38126, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_: argument 0"}
!38128 = distinct !{!38128, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!38129 = distinct !{!38129, !38128, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!38130 = distinct !{!38130, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionbEECs9fPPV5zPXBl_5typst"}
!38131 = distinct !{!38131, !38130, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionbEECs9fPPV5zPXBl_5typst: argument 1"}
!38132 = distinct !{!38132, !38130, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionbEECs9fPPV5zPXBl_5typst: argument 0"}
!38133 = distinct !{!38133, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_"}
!38134 = distinct !{!38134, !38133, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_: argument 0"}
!38135 = distinct !{!38135, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!38136 = distinct !{!38136, !38135, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!38137 = distinct !{!38137, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_"}
!38138 = distinct !{!38138, !38137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9fPPV5zPXBl_5typst4args6OutputEBF_: argument 0"}
!38139 = distinct !{!38139, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst"}
!38140 = distinct !{!38140, !38139, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst: argument 0"}
!38141 = distinct !{!38141, i1 true, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1I_"}
!38142 = distinct !{!38142, !38141, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1I_: argument 0"}
!38143 = distinct !{!38143, !38141, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1I_: argument 1"}
!38144 = distinct !{!38144, i1 true, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_"}
!38145 = distinct !{!38145, !38144, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_: argument 1"}
!38146 = distinct !{!38146, !38144, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args5PagesEB1J_: argument 0"}
!38147 = distinct !{!38147, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst"}
!38148 = distinct !{!38148, !38147, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst: argument 0"}
!38149 = distinct !{!38149, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38150 = distinct !{!38150, !38149, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38151 = distinct !{!38151, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38152 = distinct !{!38152, !38151, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38153 = distinct !{!38153, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38154 = distinct !{!38154, !38153, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38155 = distinct !{!38155, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38156 = distinct !{!38156, !38155, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38157 = distinct !{!38157, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38158 = distinct !{!38158, !38157, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38159 = distinct !{!38159, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38160 = distinct !{!38160, !38159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38161 = distinct !{!38161, i1 true, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1I_"}
!38162 = distinct !{!38162, !38161, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1I_: argument 0"}
!38163 = distinct !{!38163, !38161, !"_RINvMs0_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches15try_remove_manyNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1I_: argument 1"}
!38164 = distinct !{!38164, i1 true, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_"}
!38165 = distinct !{!38165, !38164, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_: argument 1"}
!38166 = distinct !{!38166, !38164, !"_RINvMs1_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEB1J_: argument 0"}
!38167 = distinct !{!38167, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst"}
!38168 = distinct !{!38168, !38167, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11matched_arg10MatchedArgEECs9fPPV5zPXBl_5typst: argument 0"}
!38169 = distinct !{!38169, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38170 = distinct !{!38170, !38169, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38171 = distinct !{!38171, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38172 = distinct !{!38172, !38171, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38173 = distinct !{!38173, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38174 = distinct !{!38174, !38173, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38175 = distinct !{!38175, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst"}
!38176 = distinct !{!38176, !38175, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder4util2id2IdECs9fPPV5zPXBl_5typst: argument 0"}
!38177 = distinct !{!38177, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst"}
!38178 = distinct !{!38178, !38177, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str3StrECs9fPPV5zPXBl_5typst: argument 0"}
!38179 = distinct !{!38179, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst"}
!38180 = distinct !{!38180, !38179, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsj1PC5XHMKi0_12clap_builder7builder3str5inner5InnerECs9fPPV5zPXBl_5typst: argument 0"}
!38181 = distinct !{!38181, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_"}
!38182 = distinct !{!38182, !38181, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_: argument 1"}
!38183 = distinct !{!38183, !38181, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_: argument 0"}
!38184 = distinct !{!38184, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_"}
!38185 = distinct !{!38185, !38184, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_: argument 1:thread"}
!38186 = distinct !{!38186, !38184, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesEEEB2u_: argument 0:thread"}
!38187 = distinct !{!38187, i1 true, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterB15_"}
!38188 = distinct !{!38188, !38187, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterB15_: argument 1"}
!38189 = distinct !{!38189, !38187, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesB11_EE9from_iterB15_: argument 0"}
!38190 = distinct !{!38190, i1 true, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_"}
!38191 = distinct !{!38191, !38190, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!38192 = distinct !{!38192, !38190, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!38193 = distinct !{null}
!38194 = distinct !{!38194, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst"}
!38195 = distinct !{!38195, !38194, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst: argument 0"}
!38196 = distinct !{!38196, i1 true, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendBV_"}
!38197 = distinct !{!38197, !38196, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendBV_: argument 0"}
!38198 = distinct !{!38198, !38196, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesEINtB2_10SpecExtendBR_INtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBR_EE11spec_extendBV_: argument 1"}
!38199 = distinct !{!38199, i1 true, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_"}
!38200 = distinct !{!38200, !38199, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_: argument 0"}
!38201 = distinct !{!38201, !38199, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCs9fPPV5zPXBl_5typst4args5PagesE16extend_desugaredINtNtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matches6ValuesBG_EEBK_: argument 1"}
!38202 = distinct !{!38202, i1 true, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_"}
!38203 = distinct !{!38203, !38202, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!38204 = distinct !{!38204, !38202, !"_RNvXs5_NtNtNtCsj1PC5XHMKi0_12clap_builder6parser7matches11arg_matchesINtB5_6ValuesNtNtCs9fPPV5zPXBl_5typst4args5PagesENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!38205 = distinct !{!38205, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_"}
!38206 = distinct !{!38206, !38205, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_: argument 1"}
!38207 = distinct !{!38207, !38205, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_: argument 0"}
!38208 = distinct !{!38208, i1 true, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_"}
!38209 = distinct !{!38209, !38208, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_: argument 1:thread"}
!38210 = distinct !{!38210, !38208, !"_RINvMNtNtCsj1PC5XHMKi0_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCs9fPPV5zPXBl_5typst4args11PdfStandardEEEB2u_: argument 0:thread"}
end_hunk_2
