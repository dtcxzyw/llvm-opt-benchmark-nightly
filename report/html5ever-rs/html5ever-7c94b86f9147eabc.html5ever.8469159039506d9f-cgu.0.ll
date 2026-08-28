Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.0?download=true
inline.NumInlined: 122
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever:bb.a

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod278 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.av = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.aw = getelementptr [40 x i8], ptr %i.v, i64 %i.av
  %i.ax = getelementptr [40 x i8], ptr %i.al, i64 %.sroa.06.014.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false), !alias.scope !80
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.ay = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ay, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.088218
  br i1 %.not.i38, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit, !prof !10

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !88
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute12split_at_mutCsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.p
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph95) ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %6) #22
  %i.ba = icmp ult i64 %.sroa.11.1.lcssa.i, 17
  br i1 %i.ba, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.088218
  br i1 %.not63, label %bb.s, label %bb.r, !prof !79

bb.r:                                             ; preds = %.thread
  %i.bb = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.088218 ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %.thread
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i41 = phi ptr [ %i.bb, %bb.r ], [ %i.bn, %bb.u ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.r ], [ %i.bp, %bb.u ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph95, %bb.r ], [ %i.bq, %bb.u ] ; 3 uses
  %.sroa.05.0.i44 = phi ptr [ null, %bb.r ], [ %i.bo, %bb.u ]
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.088218, %bb.u ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.0.0.i45 ; 2 uses
  %i.bd = icmp ult ptr %.sroa.5.0.i43, %i.bc
  br i1 %i.bd, label %.lr.ph.i54, label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %.lr.ph.i54, %bb.t
  %.sroa.19.1.lcssa.i47 = phi ptr [ %.sroa.19.0.i41, %bb.t ], [ %i.bh, %.lr.ph.i54 ]
  %.sroa.11.1.lcssa.i48 = phi i64 [ %.sroa.11.0.i42, %bb.t ], [ %i.bk, %.lr.ph.i54 ] ; 10 uses
  %.sroa.5.1.lcssa.i49 = phi ptr [ %.sroa.5.0.i43, %bb.t ], [ %i.bl, %.lr.ph.i54 ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i45, %.sroa.16.088218
  br i1 %i.be, label %bb.v, label %bb.u

.lr.ph.i54:                                       ; preds = %bb.t, %.lr.ph.i54
  %.sroa.5.111.i55 = phi ptr [ %i.bl, %.lr.ph.i54 ], [ %.sroa.5.0.i43, %bb.t ] ; 3 uses
  %.sroa.11.110.i56 = phi i64 [ %i.bk, %.lr.ph.i54 ], [ %.sroa.11.0.i42, %bb.t ] ; 2 uses
  %.sroa.19.19.i57 = phi ptr [ %i.bh, %.lr.ph.i54 ], [ %.sroa.19.0.i41, %bb.t ]
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsbmOI1VUejFP_9html5ever(ptr noundef nonnull readonly align 8 %i.t, ptr noundef nonnull readonly align 8 %.sroa.5.111.i55) #21, !noalias !92 ; 2 uses
  %i.bg = xor i1 %i.bf, true
  %i.bh = getelementptr inbounds i8, ptr %.sroa.19.19.i57, i64 -40 ; 3 uses
  %.sroa.01.0.i.i58 = select i1 %i.bf, ptr %i.bh, ptr %2
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i58, i64 %.sroa.11.110.i56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i55, i64 40, i1 false), !alias.scope !95, !noalias !97
  %i.bj = zext i1 %i.bg to i64
  %i.bk = add i64 %.sroa.11.110.i56, %i.bj        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i55, i64 40 ; 3 uses
  %i.bm = icmp ult ptr %i.bl, %i.bc
  br i1 %i.bm, label %.lr.ph.i54, label %._crit_edge.i46

bb.u:                                             ; preds = %._crit_edge.i46
  %i.bn = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i47, i64 -40
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i49, i64 40, i1 false), !alias.scope !95, !noalias !100
  %i.bp = add i64 %.sroa.11.1.lcssa.i48, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i49, i64 40
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.0.i44, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !95
  %i.br = mul nuw nsw i64 %.sroa.11.1.lcssa.i48, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph95, ptr nonnull align 8 %2, i64 %i.br, i1 false), !alias.scope !95
  %i.bs = sub i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i48 ; 6 uses
  %.not18.i50 = icmp eq i64 %.sroa.16.088218, %.sroa.11.1.lcssa.i48
  br i1 %.not18.i50, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_23StableSmallSortTypeImpl10small_sortNvYBW_NtNtBb_3cmp10PartialOrd2ltECsbmOI1VUejFP_9html5ever.exit, label %.lr.ph16.i51

.lr.ph16.i51:                                     ; preds = %bb.v
  %i.bt = getelementptr [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i48 ; 3 uses
  %.neg291 = add i64 %.sroa.11.1.lcssa.i48, 1
  %xtraiter286 = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %.sroa.16.088218, %.neg291
  br i1 %i.bu, label %.epil.preheader279, label %.lr.ph16.i51.new

.lr.ph16.i51.new:                                 ; preds = %.lr.ph16.i51
  %unroll_iter289 = and i64 %i.bs, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph16.i51.new
  %.sroa.06.014.i52 = phi i64 [ 0, %.lr.ph16.i51.new ], [ %i.by, %bb.w ] ; 5 uses
  %niter290 = phi i64 [ 0, %.lr.ph16.i51.new ], [ %niter290.next.1, %bb.w ]
  %i.bv = xor i64 %.sroa.06.014.i52, -1
  %i.bw = getelementptr [40 x i8], ptr %i.bb, i64 %i.bv
  %i.bx = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 40, i1 false), !alias.scope !95
  %i.by = add nuw i64 %.sroa.06.014.i52, 2        ; 2 uses
  %i.bz = xor i64 %.sroa.06.014.i52, -2
  %i.ca = getelementptr [40 x i8], ptr %i.bb, i64 %i.bz
  %i.cb = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !alias.scope !95
  %niter290.next.1 = add i64 %niter290, 2         ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit.unr-lcssa, label %bb.w

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit.unr-lcssa, %.lr.ph16.i51
  %.sroa.06.014.i52.epil.init = phi i64 [ 0, %.lr.ph16.i51 ], [ %i.by, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.cd = xor i64 %.sroa.06.014.i52.epil.init, -1
  %i.ce = getelementptr [40 x i8], ptr %i.bb, i64 %i.cd
  %i.cf = getelementptr [40 x i8], ptr %i.bt, i64 %.sroa.06.014.i52.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false), !alias.scope !95
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit.unr-lcssa, %.epil.preheader279
  %i.cg = icmp ugt i64 %.sroa.11.1.lcssa.i48, %.sroa.16.088218
  br i1 %i.cg, label %bb.x, label %.outer, !prof !10

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph95, i64 %.sroa.11.1.lcssa.i48 ; 2 uses
  %i.ci = icmp ult i64 %i.bs, 17
  br i1 %i.ci, label %.outer._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsbmOI1VUejFP_9html5ever.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i48, i64 noundef %.sroa.16.088218, i64 noundef %.sroa.16.088218, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 5) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 10 uses
  %i.m = icmp eq ptr %i.k, inttoptr (i64 15 to ptr)
  br i1 %i.m, label %.thread42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult ptr %i.k, inttoptr (i64 9 to ptr) ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8              ; 5 uses
  %i.q = trunc nuw i64 %i.l to i32                ; 2 uses
  %.sroa.01.0 = select i1 %i.n, i32 %i.q, i32 %i.p ; 2 uses
  %i.r = trunc nuw nsw i64 %2 to i32
  %i.s = add i32 %.sroa.01.0, %i.r                ; 7 uses
  %i.t = icmp ult i32 %i.s, %.sroa.01.0
  br i1 %i.t, label %bb.d, label %bb.c, !prof !103

.thread42:                                        ; preds = %bb.a
  %i.u = trunc nuw nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ult i32 %i.s, 9
  br i1 %i.v, label %bb.y, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !nonnull !4, !noundef !4
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.y = icmp ult ptr %i.k, inttoptr (i64 16 to ptr) ; 2 uses
  %i.z = trunc i64 %i.l to i1                     ; 4 uses
  %or.cond.i.i = or i1 %i.y, %i.z
  br i1 %or.cond.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %bb.e
  %i.aa = and i64 %i.l, 1
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  %.sroa.01.0.i.i.i.i = select i1 %i.z, i64 %i.af, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = zext i32 %i.p to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i.i.i.i
  %.pre-phi = select i1 %i.n, i32 %i.q, i32 %i.p
  %.sroa.4.0.i.i.i = select i1 %i.n, i64 %i.l, i64 %i.ah ; 3 uses
  %.sroa.0.0.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.ai
  %spec.store.select.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %.pre-phi, i32 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !110
  %i.aj = zext i32 %spec.store.select.i.i.i.i to i64
  %i.ak = add nuw nsw i64 %i.aj, 15
  %i.al = lshr i64 %i.ak, 4                       ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !110
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.am, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !110
  %i.an = load i64, ptr %i.h, align 8, !range !117, !noalias !110, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !118, !noalias !110, !noundef !4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !110
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.as) #24, !noalias !110
  unreachable

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i.i
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 7 uses
  %i.au = icmp samesign ult i64 %i.al, %i.aq
  tail call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !110
  store i64 %i.aq, ptr %i.i, align 8, !noalias !110
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.at, ptr %i.av, align 8, !noalias !110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.aw, align 8, !noalias !110
  %i.ax = shl i64 %i.aq, 4
  %i.ay = add i64 %i.ax, -16                      ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 4294967295
  br i1 %i.az, label %bb.h, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever.exit.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.g, align 8, !noalias !110
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbmOI1VUejFP_9html5ever, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !110
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24
          to label %bb.j unwind label %bb.i, !noalias !110

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.k, !noalias !110

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !110
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.o, %bb.r, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.eu, %bb.ae ], [ %i.ba, %bb.i ], [ %i.bx, %bb.o ], [ %i.cf, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %bb.g
  store i64 1, ptr %i.at, align 8, !noalias !119
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i, i1 false), !noalias !120
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i64 %i.ay, 32
  %.sroa.04.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.4.0.i.i.i ; 2 uses
  br i1 %i.y, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever.exit.i.i
  %i.bd = and i64 %i.l, 1
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr i8, ptr %i.k, i64 %i.be   ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.in.i.i.i.i.i = select i1 %i.z, ptr %i.bg, ptr %i.bh
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !noalias !121, !noundef !4 ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !124
  %i.bi = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.bj = add nuw nsw i64 %i.bi, 15
  %i.bk = lshr i64 %i.bj, 4
  %i.bl = add nuw nsw i64 %i.bk, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  store i64 %i.bl, ptr %i.e, align 8, !noalias !124
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bf, ptr %i.bm, align 8, !noalias !124
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %i.bn, align 8, !noalias !124
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc.i.i unwind label %bb.o, !noalias !129

.noexc.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i.i.i
  %i.bo = load i64, ptr %i.bf, align 8, !noalias !124, !noundef !4 ; 2 uses
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.bf, align 8, !noalias !124
  %i.bq = icmp eq i64 %i.bo, 1
  br i1 %i.bq, label %bb.n, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124
  %i.br = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.bs = add nuw nsw i64 %i.br, 15
  %i.bt = lshr i64 %i.bs, 4
  %i.bu = add nuw nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.f, align 8, !noalias !124
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bf, ptr %i.bv, align 8, !noalias !124
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %i.bw, align 8, !noalias !124
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc4.i.i unwind label %bb.o, !noalias !129

.noexc4.i.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %0, align 8, !alias.scope !129
  store i64 %.sroa.04.0.insert.insert.i.i.i, ptr %i.o, align 8, !alias.scope !129
  br label %common.resume

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i: ; preds = %.noexc4.i.i, %bb.m, %.noexc.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsbmOI1VUejFP_9html5ever.exit.i.i
  store ptr %i.at, ptr %0, align 8, !alias.scope !129
  store i64 %.sroa.04.0.insert.insert.i.i.i, ptr %i.o, align 8, !alias.scope !129
  %3 = trunc i64 %.sroa.4.0.i.i.i to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a: ; preds = %bb.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i
  %i.by = phi i32 [ %3, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i ], [ %i.p, %bb.e ]
  %i.bz = phi ptr [ %i.at, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.i ], [ %i.k, %bb.e ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.0.0.i.i = load i32, ptr %4, align 4, !noalias !130, !noundef !4 ; 3 uses
  %.not.i.i = icmp ugt i32 %i.s, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.p, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever.exit

bb.p:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a
  %i.ca = add i32 %i.s, -1
  %i.cb = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %bb.s, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !133, !noundef !4
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !133
  unreachable

bb.r:                                             ; preds = %bb.v, %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.x, !noalias !133

bb.s:                                             ; preds = %bb.p
  %i.cg = lshr i32 -1, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !133
  %i.ch = zext i32 %.sroa.0.0.i.i to i64
  %i.ci = add nuw nsw i64 %i.ch, 15
  %i.cj = lshr i64 %i.ci, 4
  %i.ck = add nuw nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.d, align 8, !noalias !133
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.cl, align 8, !noalias !133
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.cm, align 8, !noalias !133
  %narrow.i.i = add nuw i32 %i.cg, 16
  %i.cn = lshr i32 %narrow.i.i, 4
  %narrow14.i.i = add nuw nsw i32 %i.cn, 1
  %i.co = zext nneg i32 %narrow14.i.i to i64
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 0, i64 noundef %i.co, i64 noundef 8, i64 noundef 16)
          to label %bb.t unwind label %bb.r, !noalias !133

bb.t:                                             ; preds = %bb.s
  %i.cp = load i64, ptr %i.d, align 8, !range !136, !noalias !133, !noundef !4
  %i.cq = shl i64 %i.cp, 4
  %i.cr = add i64 %i.cq, -16                      ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 4294967295
  br i1 %i.cs, label %bb.v, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %i.cl, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.cu = trunc nuw i64 %i.cr to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !133
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.c, align 8, !noalias !133
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbmOI1VUejFP_9html5ever, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !133
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24
          to label %bb.w unwind label %bb.r, !noalias !133

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !133
  unreachable

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a, %bb.u
  %.sroa.63.0.i = phi i32 [ %i.cu, %bb.u ], [ %.sroa.0.0.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a ] ; 2 uses
  %.sroa.0.0.i19 = phi ptr [ %i.ct, %bb.u ], [ %i.bz, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsbmOI1VUejFP_9html5ever.exit.thread.i.a ] ; 5 uses
  store ptr %.sroa.0.0.i19, ptr %0, align 8, !alias.scope !104
  store i32 %.sroa.63.0.i, ptr %4, align 4, !alias.scope !104
  %i.cw = ptrtoint ptr %.sroa.0.0.i19 to i64      ; 3 uses
  %i.cx = and i64 %i.cw, 1
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr i8, ptr %.sroa.0.0.i19, i64 %i.cy
  %i.da = trunc i64 %i.cw to i1
  %.sroa.01.0.i = select i1 %i.da, i32 %.sroa.63.0.i, i32 0
  %i.db = icmp eq ptr %.sroa.0.0.i19, inttoptr (i64 15 to ptr)
  %i.dc = icmp ult ptr %.sroa.0.0.i19, inttoptr (i64 9 to ptr)
  %i.dd = trunc nuw nsw i64 %i.cw to i32
  %spec.select = select i1 %i.dc, i32 %i.dd, i32 %i.by
  %.sroa.04.0.i = select i1 %i.db, i32 0, i32 %spec.select
  %i.de = add i32 %.sroa.04.0.i, %.sroa.01.0.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  store i32 %i.s, ptr %i.o, align 8
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  br i1 %i.n, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = and i64 %i.l, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %i.k, i64 %i.dj
  %i.dl = trunc i64 %i.l to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = zext i32 %i.dn to i64
  %.sroa.01.0.i.i21 = select i1 %i.dl, i64 %i.do, i64 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = zext i32 %i.p to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.01.0.i.i21
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24: ; preds = %bb.y, %.thread42, %bb.z
  %i.ds = phi i32 [ %i.s, %bb.z ], [ %i.u, %.thread42 ], [ %i.s, %bb.y ] ; 2 uses
  %.sroa.4.0.i22 = phi i64 [ %i.dq, %bb.z ], [ 0, %.thread42 ], [ %i.l, %bb.y ] ; 2 uses
  %.sroa.0.0.i23 = phi ptr [ %i.dr, %bb.z ], [ inttoptr (i64 1 to ptr), %.thread42 ], [ %i.o, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.sroa.0.0.i23, i64 %.sroa.4.0.i22, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.4.0.i22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dt, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.du = zext nneg i32 %i.ds to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.dv = icmp eq i32 %i.ds, 0
  %i.dw = inttoptr i64 %i.du to ptr
  %i.dx = select i1 %i.dv, ptr inttoptr (i64 15 to ptr), ptr %i.dw ; 2 uses
  store i64 0, ptr %.sroa.4.i, align 8, !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull readonly align 8 %i.j, i64 range(i64 0, 9) %i.du, i1 false), !noalias !141
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.dy = icmp ult ptr %i.k, inttoptr (i64 16 to ptr)
  br i1 %i.dy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24
  %i.dz = and i64 %i.l, 1
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr i8, ptr %i.k, i64 %i.ea   ; 6 uses
  %i.ec = trunc i64 %i.l to i1                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.in.i.i.i = select i1 %i.ec, ptr %i.ed, ptr %i.ee
  %.sroa.0.0.i.i.i26 = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !142, !noundef !4 ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  %i.ef = zext i32 %.sroa.0.0.i.i.i26 to i64
  %i.eg = add nuw nsw i64 %i.ef, 15
  %i.eh = lshr i64 %i.eg, 4
  %i.ei = add nuw nsw i64 %i.eh, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  store i64 %i.ei, ptr %i.a, align 8, !noalias !145
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.eb, ptr %i.ej, align 8, !noalias !145
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.ek, align 8, !noalias !145
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

bb.ab:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever.exit.i.i
  %i.el = load i64, ptr %i.eb, align 8, !noalias !145, !noundef !4 ; 2 uses
  %i.em = add i64 %i.el, -1
  store i64 %i.em, ptr %i.eb, align 8, !noalias !145
  %i.en = icmp eq i64 %i.el, 1
  br i1 %i.en, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  %i.eo = zext i32 %.sroa.0.0.i.i.i26 to i64
  %i.ep = add nuw nsw i64 %i.eo, 15
  %i.eq = lshr i64 %i.ep, 4
  %i.er = add nuw nsw i64 %i.eq, 1
  store i64 %i.er, ptr %i.b, align 8, !noalias !145
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.eb, ptr %i.es, align 8, !noalias !145
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.et, align 8, !noalias !145
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc27 unwind label %bb.ae

.noexc27:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsbmOI1VUejFP_9html5ever.exit
  ret void

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dx, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever.exit: ; preds = %.noexc27, %bb.ab, %.noexc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit24
  store ptr %i.dx, ptr %0, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx31, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbmOI1VUejFP_9html5ever9tokenizer11option_push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 14 uses
  %i.d = load i64, ptr %0, align 8, !range !117, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.g = icmp samesign ult i32 %1, 128
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %1, 2048
  %i.i = trunc i32 %1 to i8
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 3 uses
  %i.l = lshr i32 %1, 6
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 2 uses
  %i.p = lshr i32 %1, 12
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = lshr i32 %1, 18
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or disjoint i8 %i.u, -16
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.w = trunc nuw nsw i32 %1 to i8
  store i8 %i.w, ptr %i.c, align 4, !alias.scope !150
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.x = or disjoint i8 %i.m, -64
  store i8 %i.x, ptr %i.c, align 4, !alias.scope !150
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.k, ptr %i.y, align 1, !alias.scope !150
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i32 %1, 65536
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = or disjoint i8 %i.q, -32
  store i8 %i.aa, ptr %i.c, align 4, !alias.scope !150
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.o, ptr %i.ab, align 1, !alias.scope !150
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.k, ptr %i.ac, align 2, !alias.scope !150
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.h:                                             ; preds = %bb.f
  store i8 %i.v, ptr %i.c, align 4, !alias.scope !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.s, ptr %i.ad, align 1, !alias.scope !150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.o, ptr %i.ae, align 2, !alias.scope !150
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.k, ptr %i.af, align 1, !alias.scope !150
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
end_hunk_0
