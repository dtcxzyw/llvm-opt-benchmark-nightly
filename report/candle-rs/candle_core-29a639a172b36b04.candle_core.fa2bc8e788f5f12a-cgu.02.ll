Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.02?download=true
inline.NumInlined: 6230
inline.NumDeleted: 3105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysB12_jEE9from_iterCsltEA4u8Pgfu_11candle_core:bb.a
bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtBG_6string6StringEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp14
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE9from_iterCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !26, !alias.scope !9552, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9552, !nonnull !7, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !9552, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9553)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !9554, !noundef !7 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !9554 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !9554, !noundef !7 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !9554 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i
  %i.t = phi i64 [ %i.ah, %bb.e ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.k, %i.t
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !9555 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ae, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.04.011.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !9556, !noalias !9555, !noundef !7
  %i.ad = icmp eq i8 %i.ac, %.pre.i.i.i
  br i1 %i.ad, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %i.u
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.u
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.t, 1
  %i.ah = add i64 %i.ag, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !9554
  %.not11.i.i.i = icmp ult i64 %i.ah, %i.p
  %.not12.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i:                                ; preds = %bb.c, %.preheader.i.i.i.i, %bb.d
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !9554
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
  %i.ai = icmp ult i64 %i.k, %i.ah
  br i1 %i.ai, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.aj = sub nuw i64 %i.ah, %i.p                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aj
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.m, i64 %i.p), !noalias !9557
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.al, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %1, align 8, !alias.scope !9552, !noundef !7 ; 2 uses
  %i.an = sub nuw i64 %i.aj, %i.am
  store i64 %i.ah, ptr %1, align 8, !alias.scope !9552
  br label %select.unfold

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %bb.e, %.loopexit15.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !9558
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !26, !alias.scope !9558, !noundef !7
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !9558 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !9558 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ar, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i ]
  %.pn = phi i64 [ %i.am, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.as = load i64, ptr %i.a, align 8, !range !14, !noundef !7
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !15, !noundef !7 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.at, label %bb.g, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit, !prof !16

bb.g:                                             ; preds = %select.unfold
  %i.ax = load i64, ptr %i.aw, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #28
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.ay = load ptr, ptr %i.aw, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.az = icmp ugt i64 %i.av, 3
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.1.i.i, ptr %i.ay, align 8, !captures !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.4.1.i.i, ptr %i.ba, align 8
  store i64 %i.av, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9562)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bb, align 1, !alias.scope !9563
  %.promoted11.i.i = load i64, ptr %i.b, align 8, !alias.scope !9564 ; 4 uses
  %i.bc = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.bc, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !9563, !nonnull !7, !noundef !7 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !9563, !noundef !7 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !9565, !noundef !7 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bg, %.val1.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !9564 ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i64               ; 4 uses
  %i.bl = icmp ult i8 %i.bj, 5
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = load i8, ptr %i.bo, align 8, !range !26, !alias.scope !9564
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !9564 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted15.i.i = load i64, ptr %i.br, align 8, !alias.scope !9565
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted11.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.bq, i1 true, i1 %.not.i3.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9568)
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted11.i.i
  %i.bs = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted11.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bt, align 8, !noalias !9564, !captures !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %i.bs, ptr %i.bu, align 8, !noalias !9564
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !9569
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc10, %.lr.ph.split.preheader.i.i
  %i.bv = phi i64 [ %i.cr, %.noexc10 ], [ %.promoted15.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa91314.i.i = phi i64 [ %.lcssa912.i.i, %.noexc10 ], [ %.promoted11.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9566)
  call void @llvm.experimental.noalias.scope.decl(metadata !9567)
  call void @llvm.experimental.noalias.scope.decl(metadata !9568)
  %i.bw = icmp ult i64 %i.bg, %i.bv
  br i1 %i.bw, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bl)
  %.pre.i.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !9565 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.split.preheader.i.i.i.i.i
  %i.bx = phi i64 [ %i.cl, %bb.j ], [ %i.bv, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.by = sub nuw i64 %i.bg, %i.bx                ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bx ; 2 uses
  %i.ca = icmp samesign ult i64 %i.by, 16
  br i1 %i.ca, label %.preheader.i.i.i.i.i.i, label %bb.h

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.cb = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.by)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.h
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1
  %i.ce = trunc nuw i64 %i.cc to i1
  br i1 %i.ce, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !9570, !noalias !9571, !noundef !7
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i
  br i1 %i.ch, label %.loopexit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.by
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc9
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cd, %.noexc9 ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.by
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add i64 %i.bx, 1
  %i.cl = add i64 %i.ck, %.sroa.5.0.i.i.i.i.i.i   ; 8 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.cl, %i.bk
  %.not12.i.i.i.i.i = icmp ugt i64 %i.cl, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.loopexit.i.i.i.i.i
  %i.cm = icmp ult i64 %i.bg, %i.cl
  br i1 %i.cm, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.k:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.cn = sub nuw i64 %i.cl, %i.bk                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cn
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.bh, i64 %i.bk), !noalias !9572
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cp, label %select.unfold.i.i, label %bb.j

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i: ; preds = %bb.j, %.noexc9, %.preheader.i.i.i.i.i.i, %bb.i, %.lr.ph.split.i.i
  %i.cq = phi i64 [ %i.bv, %.lr.ph.split.i.i ], [ %i.bg, %bb.i ], [ %i.bg, %.noexc9 ], [ %i.bg, %.preheader.i.i.i.i.i.i ], [ %i.cl, %bb.j ]
  store i8 1, ptr %i.bb, align 1, !alias.scope !9573
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa91314.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.bq, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit

select.unfold.i.i:                                ; preds = %bb.k, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i
  %i.cr = phi i64 [ %i.cq, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %.lcssa912.i.i = phi i64 [ %.lcssa91314.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %i.cs = phi i1 [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i ], [ false, %bb.k ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i ], [ %i.cn, %bb.k ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa91314.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa91314.i.i
  %i.ct = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !9569, !noundef !7 ; 5 uses
  %i.cu = icmp ult i64 %i.ct, 576460752303423488
  call void @llvm.assume(i1 %i.cu)
  %i.cv = load i64, ptr %i.c, align 8, !range !10, !alias.scope !9569, !noundef !7
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecReE7reserveCsltEA4u8Pgfu_11candle_core.exit.i.i, label %.noexc10

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecReE7reserveCsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %select.unfold.i.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ct, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecReE7reserveCsltEA4u8Pgfu_11candle_core.exit.i.i, %select.unfold.i.i
  %i.cx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9569, !nonnull !7, !noundef !7
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.ct ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.cy, align 8, !noalias !9564, !captures !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.cz, align 8, !noalias !9564
  %i.da = add nuw nsw i64 %i.ct, 1
  store i64 %i.da, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !9569
  br i1 %i.cs, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit, label %.lr.ph.split.i.i

bb.l:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i
  store i64 0, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dc, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecReE7reserveCsltEA4u8Pgfu_11candle_core.exit.i.i
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.n

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcEE11spec_extendCsltEA4u8Pgfu_11candle_core.exit: ; preds = %.noexc10, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.m

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecReEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp63
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB19_3VecTNtNtB1b_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEEEENtNtNtB9_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias nofree noundef align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !9, !noundef !7
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9603)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9604, !noundef !7
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBQ_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsltEA4u8Pgfu_11candle_core.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !9605, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !9605, !nonnull !7, !noundef !7
  %i.n = ptrtoint ptr %.val3.i.i.i to i64
  %i.o = ptrtoint ptr %.val.i.i.i to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 72
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBQ_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsltEA4u8Pgfu_11candle_core.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtBQ_6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
end_hunk_0
