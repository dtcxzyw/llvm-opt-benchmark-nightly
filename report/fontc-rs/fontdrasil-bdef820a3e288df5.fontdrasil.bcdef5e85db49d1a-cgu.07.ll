Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.07?download=true
inline.NumInlined: 92
inline.NumDeleted: 51
begin_hunk_0_@_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10dying_nextB1N_:bb.a
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10init_frontB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !61 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62
  invoke void @_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2y_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !63

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !62, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_.exit, !prof !7

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
          to label %.noexc1.i.i unwind label %bb.g, !noalias !64

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13, !noalias !61
  unreachable

_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_.exit, %_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE16deallocating_endNtNtBc_5alloc6GlobalEB2q_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths13safe_filename(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.j = icmp samesign eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.bj
  %.sroa.0.050 = phi ptr [ %.sroa.0.1.ph, %bb.bj ], [ %1, %bb.a ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 1 ; 3 uses
  %i.l = load i8, ptr %.sroa.0.050, align 1, !noalias !88, !noundef !4 ; 5 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.b, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i: ; preds = %.lr.ph
  %i.n = and i8 %i.l, 31
  %i.o = zext nneg i8 %i.n to i32                 ; 3 uses
  %i.p = icmp ne ptr %i.k, %i.i
  call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !noalias !88, !noundef !4
  %i.s = shl nuw nsw i32 %i.o, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32                 ; 2 uses
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = icmp samesign ugt i8 %i.l, -33
  br i1 %i.w, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = zext nneg i8 %i.l to i32
  br label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i
  %i.y = icmp ne ptr %i.q, %i.i
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 3 ; 3 uses
  %i.aa = load i8, ptr %i.q, align 1, !noalias !88, !noundef !4
  %i.ab = shl nuw nsw i32 %i.u, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad            ; 2 uses
  %i.af = shl nuw nsw i32 %i.o, 12
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = icmp samesign ugt i8 %i.l, -17
  br i1 %i.ah, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i, label %bb.c

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i
  %i.ai = icmp ne ptr %i.z, %i.i
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 4
  %i.ak = load i8, ptr %i.z, align 1, !noalias !88, !noundef !4
  %i.al = shl nuw nsw i32 %i.o, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ae, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i ], [ %i.z, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i ], [ %i.aj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.v, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit12.i ], [ %i.ag, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit14.i ], [ %i.ar, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil.exit16.i ], [ %i.x, %bb.b ] ; 9 uses
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 32
  br i1 %i.at, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.sroa.4.0.i.ph, label %_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths16ok_for_filenames.exit [
    i32 127, label %bb.bb
    i32 34, label %bb.bb
    i32 42, label %bb.bb
    i32 43, label %bb.bb
    i32 47, label %bb.bb
    i32 58, label %bb.bb
    i32 60, label %bb.bb
    i32 62, label %bb.bb
    i32 63, label %bb.bb
    i32 91, label %bb.bb
    i32 92, label %bb.bb
    i32 93, label %bb.bb
    i32 124, label %bb.bb
  ]

._crit_edge:                                      ; preds = %bb.bj, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %4
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VeccE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.au)
          to label %bb.e unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aw = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.av, align 4, !range !8, !noundef !4
  %i.ay = icmp eq i32 %i.ax, 46
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 95, ptr %i.av, align 4
  %.pre58 = load ptr, ptr %i.g, align 8
  %.pre59 = load i64, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.az = phi i64 [ 0, %bb.e ], [ %i.aw, %bb.f ], [ %.pre59, %bb.g ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %i.av, %bb.f ], [ %.pre58, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bb = load i64, ptr %i.f, align 8, !range !9, !noundef !4
  %i.bc = icmp ult i64 %i.az, 2305843009213693952
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  store ptr %i.ba, ptr %i.d, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bb, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ba, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bd, ptr %i.bg, align 8
  call void @_RINvXs5_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB8_3vec9into_iter8IntoItercEECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %bb.h
  %i.bl = phi i64 [ 0, %bb.h ], [ %i.bz, %.lr.ph.split.i.i.i.backedge ] ; 5 uses
  %i.bm = sub nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bm, 16
  br i1 %i.bo, label %.preheader.i.i.i.i, label %bb.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i
  %i.bp = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef range(i64 0, -9223372036854775808) %i.bm)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !90 ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.bq = extractvalue { i64, i64 } %i.bp, 0
  %i.br = extractvalue { i64, i64 } %i.bp, 1
  %i.bs = trunc nuw i64 %i.bq to i1
  br i1 %i.bs, label %.loopexit.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.j
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bw, %bb.j ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.04.011.i.i.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !91, !noalias !90, !noundef !4
  %i.bv = icmp eq i8 %i.bu, 46
  br i1 %i.bv, label %.loopexit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bw, %i.bm
  br i1 %exitcond.not.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.br, %.noexc ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bx = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.bm
  call void @llvm.assume(i1 %i.bx)
  %i.by = add i64 %i.bl, 1
  %i.bz = add i64 %i.by, %.sroa.5.0.i.i.i.i       ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.bz, %i.bk       ; 2 uses
  %i.ca = add i64 %.sroa.5.0.i.i.i.i, %i.bl       ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.ca, %i.bk
  br i1 %or.cond.i.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i.i
  br i1 %.not12.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i, label %.lr.ph.split.i.i.i.backedge

bb.l:                                             ; preds = %.loopexit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ca
  %lhsc.i.i = load i8, ptr %i.cb, align 1, !alias.scope !92
  %i.cc = icmp eq i8 %lhsc.i.i, 46                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.cc
  br i1 %brmerge.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.l, %bb.k
  br label %.lr.ph.split.i.i.i

_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %bb.l
  %spec.select.i = select i1 %i.cc, i64 %i.ca, i64 %i.bk
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i

_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i: ; preds = %bb.k, %.noexc, %.preheader.i.i.i.i, %bb.j, %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.i
  %.sroa.7.0.i = phi i64 [ %spec.select.i, %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.i ], [ %i.bk, %bb.j ], [ %i.bk, %.preheader.i.i.i.i ], [ %i.bk, %.noexc ], [ %i.bk, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.7.0.i
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_uppercase0EE9from_iterCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull readonly %i.bi, ptr noundef nonnull readonly %i.cd)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil.exit.thread39.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !89, !nonnull !4, !noundef !4 ; 29 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !89, !noundef !4
  switch i64 %i.ch, label %bb.ak [
    i64 3, label %bb.m
    i64 4, label %bb.q
  ]

bb.m:                                             ; preds = %.noexc12
  %i.ci = load i16, ptr %i.cf, align 1
  %i.cj = xor i16 %i.ci, 20291
  %i.ck = getelementptr i8, ptr %i.cf, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = xor i16 %i.cm, 78
  %i.co = or i16 %i.cj, %i.cn
  %i.cp = icmp ne i16 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = load i16, ptr %i.cf, align 1
  %i.ct = xor i16 %i.cs, 21072
  %i.cu = getelementptr i8, ptr %i.cf, i64 2
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i16
  %i.cx = xor i16 %i.cw, 78
  %i.cy = or i16 %i.ct, %i.cx
  %i.cz = icmp ne i16 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load i16, ptr %i.cf, align 1
  %i.dd = xor i16 %i.dc, 21825
  %i.de = getelementptr i8, ptr %i.cf, i64 2
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i16
  %i.dh = xor i16 %i.dg, 88
  %i.di = or i16 %i.dd, %i.dh
  %i.dj = icmp ne i16 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i16, ptr %i.cf, align 1
  %i.dn = xor i16 %i.dm, 21838
  %i.do = getelementptr i8, ptr %i.cf, i64 2
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i16
  %i.dr = xor i16 %i.dq, 76
  %i.ds = or i16 %i.dn, %i.dr
  %i.dt = icmp ne i16 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ak, label %bb.aj

bb.q:                                             ; preds = %.noexc12
  %i.dw = load i32, ptr %i.cf, align 1
  %i.dx = icmp ne i32 %i.dw, 810372931
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = load i32, ptr %i.cf, align 1
  %i.eb = icmp ne i32 %i.ea, 827150147
  %i.ec = zext i1 %i.eb to i32
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %i.cf, align 1
  %i.ef = icmp ne i32 %i.ee, 843927363
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = load i32, ptr %i.cf, align 1
  %i.ej = icmp ne i32 %i.ei, 860704579
  %i.ek = zext i1 %i.ej to i32
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = load i32, ptr %i.cf, align 1
  %i.en = icmp ne i32 %i.em, 877481795
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = load i32, ptr %i.cf, align 1
  %i.er = icmp ne i32 %i.eq, 894259011
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = load i32, ptr %i.cf, align 1
  %i.ev = icmp ne i32 %i.eu, 911036227
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = load i32, ptr %i.cf, align 1
  %i.ez = icmp ne i32 %i.ey, 927813443
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = load i32, ptr %i.cf, align 1
  %i.fd = icmp ne i32 %i.fc, 944590659
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = load i32, ptr %i.cf, align 1
  %i.fh = icmp ne i32 %i.fg, 961367875
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fk = load i32, ptr %i.cf, align 1
  %i.fl = icmp ne i32 %i.fk, 810831948
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fo = load i32, ptr %i.cf, align 1
  %i.fp = icmp ne i32 %i.fo, 827609164
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = load i32, ptr %i.cf, align 1
  %i.ft = icmp ne i32 %i.fs, 844386380
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load i32, ptr %i.cf, align 1
  %i.fx = icmp ne i32 %i.fw, 861163596
  %i.fy = zext i1 %i.fx to i32
end_hunk_0
begin_hunk_1_@_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths18string_to_filename:bb.a
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECsgdm2QMcbaeA_10fontdrasil.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit unwind label %.loopexit.split-lp.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.as

bb.bh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECsgdm2QMcbaeA_10fontdrasil.exit
  br i1 %.sroa.015.0, label %bb.bi, label %common.resume

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #12
          to label %common.resume unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.01.0.copyload, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.01.0.copyload, ptr %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx.sroa_idx, align 8
  %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload, ptr %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink28 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.52.0.copyload.sink = phi i64 [ %.sroa.52.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink28, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink28, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.52.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10dying_nextB1N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !148, !noundef !4
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  call fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10dying_nextB1N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !noalias !148, !noundef !4
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit, label %.lr.ph.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_.exit: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  tail call fastcc void @_RINvNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsf3Ta7LF998c_4core5clone5Clone5clone13clone_subtreeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtNtBe_5alloc6GlobalEB2O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1x_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtB1O_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.e, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink19 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sink = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink19, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink, ptr %i.i, align 8
  %i.j = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB13_B1G_EEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = call noundef zeroext i1 @_RNvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1J_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10init_frontB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeE7next_kvB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !155, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13
          to label %.noexc1.i unwind label %bb.g, !noalias !155

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  store ptr %i.k, ptr %i.a, align 8, !noalias !155
  invoke void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !156

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB2k_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_.exit unwind label %bb.g, !noalias !155 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !154
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10take_frontB2p_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10init_frontB2p_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1i_14LeafOrInternalE11search_treeB1A_EB2g_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB2k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB28_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_4LeafENtB1m_2KVE7into_kvB2k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB19_4LeafE16push_with_handleB25_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_4LeafENtB1m_2KVE12into_val_mutB2i_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_8InternalENtB1m_2KVE7into_kvB2k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsv_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB19_8InternalE4pushB25_(ptr noalias nofree noundef align 8 dereferenceable(16), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2y_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs9_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalEB28_(ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeE7next_kvB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2x_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB48_11VacantEntryB1D_B2f_E12insert_entry0EB2j_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgdm2QMcbaeA_10fontdrasil(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB2i_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB2i_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1i_14LeafOrInternalE11search_treeB1y_EB2e_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VeccE16extend_desugaredNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB8_3vec9into_iter8IntoItercEECsgdm2QMcbaeA_10fontdrasil(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsf3Ta7LF998c_4core7unicode12unicode_data9uppercase6lookup(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_uppercase0EE9from_iterCsgdm2QMcbaeA_10fontdrasil(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter6ChunkshENCNvNtCsgdm2QMcbaeA_10fontdrasil5paths18string_to_filename0EE9from_iterB2V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB13_B1G_EEB1K_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE10init_frontB2p_(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { cold }
attributes #13 = { noinline noreturn }
attributes #14 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i32 0, i32 1114112}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = distinct !{!10, i1 true, !"_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1K_"}
!11 = distinct !{!11, !10, !"_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1K_: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_"}
!13 = distinct !{!13, !12, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_: argument 0"}
!14 = distinct !{!14, i1 true, !"_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1N_"}
!15 = distinct !{!15, !14, !"_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1N_: argument 0"}
!16 = !{!11}
!17 = !{!15, !13, !11}
!18 = distinct !{!18, i1 true, !"_RNvXsF_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_4TentNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!19 = distinct !{!19, !18, !"_RNvXsF_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_4TentNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXsF_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_4TentNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!21 = distinct !{!21, i1 true, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB2j_"}
!22 = distinct !{!22, !21, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB2j_: argument 0"}
!23 = !{!20, !19}
!24 = !{!22}
!25 = distinct !{!25, i1 true, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE5entryB1N_"}
!26 = distinct !{!26, !25, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE5entryB1N_: argument 1"}
!27 = distinct !{!27, !25, !"_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE5entryB1N_: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_"}
!29 = distinct !{!29, !28, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 2:thread"}
!30 = distinct !{!30, !28, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 1:thread"}
!31 = distinct !{!31, !28, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 0:thread"}
!32 = distinct !{!32, i1 true, !"_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE6insertB21_"}
!33 = distinct !{!33, !32, !"_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE6insertB21_: argument 2"}
!34 = distinct !{!34, !32, !"_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE6insertB21_: argument 0"}
!35 = distinct !{!35, i1 true, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_"}
!36 = distinct !{!36, !35, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 0"}
!37 = distinct !{!37, !35, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 1"}
!38 = distinct !{!38, !35, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE12insert_entryB1Z_: argument 2"}
!39 = !{!26}
!40 = !{!27, !26}
!41 = !{!31, !30, !29}
!42 = !{!34, !33}
!43 = !{!34}
!44 = !{!36}
!45 = !{!37}
!46 = !{!36, !37, !38}
!47 = !{!36, !38}
!48 = !{!36, !37}
!49 = distinct !{!49, i1 true, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE16deallocating_endNtNtBc_5alloc6GlobalEB2q_"}
!50 = distinct !{!50, !49, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE16deallocating_endNtNtBc_5alloc6GlobalEB2q_: argument 0"}
!51 = distinct !{!51, i1 true, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_"}
!52 = distinct !{!52, !51, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_: argument 0"}
!53 = distinct !{!53, !51, !"_RINvMsb_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2q_: argument 1"}
!54 = distinct !{!54, i1 true, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2t_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2x_"}
!55 = distinct !{!55, !54, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2t_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2x_: argument 1"}
!56 = distinct !{!56, !54, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_B2t_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0EB2x_: argument 0"}
!57 = distinct !{!57, i1 true, !"_RNCINvMsm_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2A_"}
!58 = distinct !{!58, !57, !"_RNCINvMsm_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2A_: argument 1"}
!59 = distinct !{!59, !57, !"_RNCINvMsm_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0B2A_: argument 0"}
!60 = !{!50}
!61 = !{!52}
!62 = !{!59, !58, !56, !55, !52, !53}
!63 = !{!56, !52}
!64 = !{!59, !58, !56, !55, !52}
!65 = distinct !{!65, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil"}
!66 = distinct !{!66, !65, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths17scary_for_windows"}
!68 = distinct !{!68, !67, !"_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths17scary_for_windows: argument 0"}
!69 = distinct !{!69, i1 true, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!70 = distinct !{!70, !69, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!71 = distinct !{!71, !69, !"_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!72 = distinct !{!72, i1 true, !"_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil"}
!73 = distinct !{!73, !72, !"_RINvMNtCsf3Ta7LF998c_4core3stre4findcECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!75 = distinct !{!75, !74, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!76 = distinct !{!76, i1 true, !"_RNvXst_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddReE3add"}
!77 = distinct !{!77, !76, !"_RNvXst_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddReE3add: argument 0"}
!78 = distinct !{!78, !76, !"_RNvXst_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddReE3add: argument 2"}
!79 = distinct !{!79, !76, !"_RNvXst_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddReE3add: argument 1"}
!80 = distinct !{!80, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil"}
!81 = distinct !{!81, !80, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!82 = distinct !{!82, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil"}
!83 = distinct !{!83, !82, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!84 = distinct !{!84, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil"}
!85 = distinct !{!85, !84, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!86 = distinct !{!86, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil"}
!87 = distinct !{!87, !86, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeccE8push_mutCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!88 = !{!66}
!89 = !{!68}
!90 = !{!71, !70}
!91 = !{!75, !73, !68}
!92 = !{!73, !68}
!93 = !{i64 0, i64 -9223372036854775807}
!94 = !{!77}
!95 = !{!77, !78}
!96 = !{!81, !79}
!97 = !{!77, !79}
!98 = !{!83}
!99 = !{!85}
!100 = !{!87}
!101 = distinct !{!101, i1 true, !"_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil"}
!102 = distinct !{!102, !101, !"_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!103 = distinct !{!103, i1 true, !"_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!104 = distinct !{!104, !103, !"_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!105 = distinct !{!105, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil"}
!106 = distinct !{!106, !105, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!107 = distinct !{!107, i1 true, !"_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths20is_reserved_filename"}
!108 = distinct !{!108, !107, !"_RNvNtCsgdm2QMcbaeA_10fontdrasil5paths20is_reserved_filename: argument 0"}
!109 = distinct !{!109, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8push_mutCsgdm2QMcbaeA_10fontdrasil"}
!110 = distinct !{!110, !109, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8push_mutCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!111 = distinct !{!111, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!112 = distinct !{!112, !111, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!113 = distinct !{!113, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil"}
!114 = distinct !{!114, !113, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!115 = distinct !{!115, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!116 = distinct !{!116, !115, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil"}
!118 = distinct !{!118, !117, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgdm2QMcbaeA_10fontdrasil: argument 0:h.rot"}
!119 = distinct !{!119, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil"}
!120 = distinct !{!120, !119, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!121 = distinct !{!121, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!122 = distinct !{!122, !121, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0:thread"}
!123 = distinct !{!123, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!124 = distinct !{!124, !123, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!125 = distinct !{!125, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil"}
!126 = distinct !{!126, !125, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!127 = distinct !{!127, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!128 = distinct !{!128, !127, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!129 = distinct !{!129, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil"}
!130 = distinct !{!130, !129, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!131 = !{!106, !104, !102}
!132 = !{!108}
!133 = !{!110}
!134 = !{!112}
!135 = !{!114}
!136 = !{!116}
!137 = !{!118}
!138 = !{!120}
!139 = !{!122}
!140 = !{!124}
!141 = !{!126}
!142 = !{!128}
!143 = !{!130}
!144 = distinct !{!144, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_"}
!145 = distinct !{!145, !144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEEB2g_: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1N_"}
!147 = distinct !{!147, !146, !"_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1N_: argument 0"}
!148 = !{!147, !145}
!149 = distinct !{!149, i1 true, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_"}
!150 = distinct !{!150, !149, !"_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2t_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2x_: argument 0"}
!151 = distinct !{!151, i1 true, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B2z_"}
!152 = distinct !{!152, !151, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B2z_: argument 1"}
!153 = distinct !{!153, !151, !"_RNCNvMsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentNtB1A_4LeafENtB1A_4EdgeE14next_unchecked0B2z_: argument 0"}
!154 = !{!150}
!155 = !{!153, !152, !150}
!156 = !{!152, !150}
end_hunk_1
