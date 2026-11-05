Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17hd0a5c367cceed3c5E:bb.a
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.l
  store i64 0, ptr %scevgep.i.i, align 4, !noalias !36594
  %.first_iter = icmp samesign ult i64 %.sroa.010.0137458, %1
  %i.m = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit, %bb.n
  %.sroa.024.0 = phi i32 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd23791371a41120eE.exit ], [ %i.az, %bb.n ] ; 3 uses
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.aw
  %.sroa.027.0146 = phi i32 [ %.sroa.027.2, %bb.aw ], [ 0, %.lr.ph148.preheader ] ; 3 uses
  %.sroa.037.0145 = phi i64 [ %i.n, %bb.aw ], [ %i.fr, %.lr.ph148.preheader ]
  %i.n = add nsw i64 %.sroa.037.0145, -1          ; 5 uses
  br i1 %.first_iter, label %bb.av, label %.invoke

._crit_edge149:                                   ; preds = %bb.aw
  %i.o = add i32 %.sroa.027.2, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.p = sext i32 %.sroa.027.2 to i64             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36595)
  %i.q = icmp ult i32 %.sroa.027.2, 13
  br i1 %i.q, label %.preheader.split.i, label %bb.e

.preheader.split.i:                               ; preds = %._crit_edge149
  %i.r = icmp samesign ugt i32 %.sroa.027.2, 1
  br i1 %i.r, label %.lr.ph66.i, label %.loopexit42

bb.e:                                             ; preds = %._crit_edge149
  %i.s = icmp ult i32 %.sroa.027.2, 57
  %i.t = select i1 %i.s, i64 2, i64 0
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge63.i, %bb.e
  %indvars.iv.i = phi i64 [ %i.t, %bb.e ], [ %indvars.iv.next.i, %._crit_edge63.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps17ha345c21f8c53bdffE, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !noalias !36595, !noundef !52 ; 5 uses
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %.lr.ph62.preheader.i, label %._crit_edge63.i

.lr.ph62.preheader.i:                             ; preds = %bb.f
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.h) ; 2 uses
  br label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.h, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond82.not.i, label %.loopexit42, label %bb.f

.lr.ph62.i:                                       ; preds = %bb.h, %.lr.ph62.preheader.i
  %.sroa.025.060.i = phi i64 [ %i.x, %bb.h ], [ %i.v, %.lr.ph62.preheader.i ] ; 4 uses
  %i.x = add nuw i64 %.sroa.025.060.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.025.060.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph62.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.025.060.i
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !36595 ; 2 uses
  %.sroa.038.0.extract.trunc.i = trunc i64 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.sroa.015.057.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.025.060.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = sub nuw i64 %.sroa.015.057.i, %i.v      ; 6 uses
  %.not26 = icmp ugt i64 %i.aa, %i.g
  br i1 %.not26, label %.invoke, label %bb.g

._crit_edge.i:                                    ; preds = %bb.i, %bb.g
  %.sroa.015.0.lcssa.ph.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.015.057.i, %bb.g ] ; 3 uses
  %.not27 = icmp ugt i64 %.sroa.015.0.lcssa.ph.i, %i.g
  br i1 %.not27, label %.invoke, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %.val35.i = load i32, ptr %i.ab, align 4, !alias.scope !36595, !noundef !52
  %i.ac = icmp ugt i32 %.val35.i, %.sroa.038.0.extract.trunc.i
  br i1 %i.ac, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.0.lcssa.ph.i
  store i64 %i.z, ptr %i.ad, align 4, !alias.scope !36595
  %exitcond80.not.i = icmp eq i64 %i.x, %i.p
  br i1 %exitcond80.not.i, label %._crit_edge63.i, label %.lr.ph62.i

bb.i:                                             ; preds = %bb.g
  %.sroa.021.0.copyload.i = load i64, ptr %i.ab, align 4, !alias.scope !36595
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.015.057.i
  store i64 %.sroa.021.0.copyload.i, ptr %i.ae, align 4, !alias.scope !36595
  %.not.i = icmp ult i64 %i.aa, %i.v
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %.preheader.split.i, %.thread
  %.sroa.023.065.i = phi i64 [ %i.af, %.thread ], [ 1, %.preheader.split.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.023.065.i, 1     ; 2 uses
  %exitcond84.not.i = icmp eq i64 %.sroa.023.065.i, %i.h
  br i1 %exitcond84.not.i, label %.invoke, label %.split.i

.split.i:                                         ; preds = %.lr.ph66.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.023.065.i
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !36595 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ah to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.split.i
  %.sroa.01.0.i = phi i64 [ %.sroa.023.065.i, %.split.i ], [ %.sroa.03.0.i, %bb.k ] ; 3 uses
  %.sroa.03.0.i = add nsw i64 %.sroa.01.0.i, -1   ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.03.0.i ; 2 uses
  %.val37.i = load i32, ptr %i.ai, align 4, !alias.scope !36595, !noundef !52
  %i.aj = icmp ugt i32 %.val37.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.aj, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload.i = load i64, ptr %i.ai, align 4, !alias.scope !36595
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.0.i
  store i64 %.sroa.08.0.copyload.i, ptr %i.ak, align 4, !alias.scope !36595
  %i.al = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.al, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.k, %bb.j
  %.sroa.01.1.i20 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %bb.k ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.1.i20
  store i64 %i.ah, ptr %i.am, align 4, !alias.scope !36595
  %exitcond85.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond85.not.i, label %.loopexit42, label %.lr.ph66.i

.loopexit42:                                      ; preds = %._crit_edge63.i, %.thread, %.preheader.split.i
  %i.an = zext i32 %i.o to i64                    ; 3 uses
  %.not29 = icmp samesign ult i64 %i.g, %i.an
  br i1 %.not29, label %.invoke, label %bb.l

.invoke.loopexit474.split.loop.exit501:           ; preds = %bb.ax
  %.not173.le = icmp ult i32 %i.fd, %.sroa.024.0
  %.431.le = select i1 %.not173.le, ptr @1659, ptr @1660
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %.loopexit42, %.invoke.loopexit474.split.loop.exit501, %.lr.ph148, %.lr.ph66.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph157, %._crit_edge.i, %.lr.ph62.i, %.lr.ph.i
  %i.ao = phi i64 [ %i.n, %.lr.ph148 ], [ %i.aa, %.lr.ph.i ], [ %.sroa.015.0.lcssa.ph.i, %._crit_edge.i ], [ %i.h, %.lr.ph66.i ], [ %i.dv, %.lr.ph157 ], [ %umax.i, %.lr.ph62.i ], [ %i.dw, %bb.an ], [ %i.ed, %bb.ao ], [ %i.ee, %bb.ap ], [ %i.el, %bb.aq ], [ %i.em, %bb.ar ], [ %i.eo, %bb.as ], [ %i.ez, %bb.at ], [ %i.fg, %.invoke.loopexit474.split.loop.exit501 ], [ %i.an, %.loopexit42 ], [ %i.as, %bb.l ]
  %i.ap = phi i64 [ %1, %.lr.ph148 ], [ %i.h, %.lr.ph.i ], [ %i.h, %._crit_edge.i ], [ %i.h, %.lr.ph66.i ], [ %i.h, %bb.at ], [ %i.h, %.lr.ph62.i ], [ %i.h, %.lr.ph157 ], [ %i.h, %bb.an ], [ %i.h, %bb.ao ], [ %i.h, %bb.ap ], [ %i.h, %bb.aq ], [ %i.h, %bb.ar ], [ %i.h, %bb.as ], [ %i.h, %.invoke.loopexit474.split.loop.exit501 ], [ %i.h, %.loopexit42 ], [ %i.h, %bb.l ]
  %i.aq = phi ptr [ @1658, %.lr.ph148 ], [ @1575, %.lr.ph.i ], [ @1576, %._crit_edge.i ], [ @1577, %.lr.ph66.i ], [ @1650, %.lr.ph157 ], [ @1574, %.lr.ph62.i ], [ @1651, %bb.an ], [ @1652, %bb.ao ], [ @1653, %bb.ap ], [ @1654, %bb.aq ], [ @1655, %bb.ar ], [ @1656, %bb.as ], [ @1657, %bb.at ], [ %.431.le, %.invoke.loopexit474.split.loop.exit501 ], [ @1641, %.loopexit42 ], [ @1642, %bb.l ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ao, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %.loopexit42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an
  %i.as = zext i32 %.sroa.027.2 to i64            ; 3 uses
  %.not30 = icmp samesign ult i64 %i.g, %i.as
  store i64 -1, ptr %i.ar, align 4
  br i1 %.not30, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.as
  %.sroa.060.0151 = add i32 %.sroa.027.2, -1
  %i.au = icmp sgt i32 %.sroa.060.0151, 0
  store i64 -1, ptr %i.at, align 4
  br i1 %i.au, label %.lr.ph157.preheader, label %.._crit_edge158_crit_edge

.._crit_edge158_crit_edge:                        ; preds = %bb.m
  %.pre274 = shl i32 %.sroa.027.2, 1
  br label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.m
  %i.av = add nuw i32 %.sroa.027.2, 2
  %i.aw = shl i32 %.sroa.027.2, 1                 ; 2 uses
  br label %.lr.ph157

._crit_edge158:                                   ; preds = %bb.au, %.._crit_edge158_crit_edge
  %.pre-phi275 = phi i32 [ %.pre274, %.._crit_edge158_crit_edge ], [ %i.aw, %bb.au ]
  %i.ax = add i32 %.pre-phi275, -1
  %i.ay = invoke noundef zeroext i1 @_ZN6brotli3enc14entropy_encode14BrotliSetDepth17h5f5ba8abc19b5273E(i32 noundef %i.ax, ptr noalias noundef nonnull align 4 %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, i32 noundef 14)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge158
  %i.az = shl i32 %.sroa.024.0, 1
  br i1 %i.ay, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217", label %.lr.ph148.preheader

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217": ; preds = %bb.n
  tail call void @mi_free(ptr noundef nonnull align 4 %i.j) #38
  tail call void @_ZN6brotli3enc14entropy_encode31BrotliConvertBitDepthsToSymbols17hf5dace01f018846fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5, i64 noundef %i.fr, ptr noalias noundef nonnull align 2 %6, i64 noundef %7)
  %i.ba = icmp ult i64 %.sroa.0.1, 5
  br i1 %i.ba, label %bb.o, label %.split.preheader

.split.preheader:                                 ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream25StoreStaticCodeLengthCode17hf918db1678579c13E(ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.split

bb.o:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17h66adf8cf8f2b9f83E.exit217"
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.bb = add nsw i64 %.sroa.0.1, -1
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.preheader

.split:                                           ; preds = %.split.preheader, %.loopexit40
  %.sroa.085.0171 = phi i8 [ %.sroa.085.1, %.loopexit40 ], [ 8, %.split.preheader ] ; 2 uses
  %.sroa.086.0170 = phi i64 [ %.pre-phi330, %.loopexit40 ], [ 0, %.split.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.086.0170
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !52 ; 11 uses
  %.sroa.0101.0159 = add nuw nsw i64 %.sroa.086.0170, 1 ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.086.0170, %.sroa.010.0137458
  br i1 %i.be, label %.lr.ph162.preheader, label %._crit_edge163.thread

.lr.ph162.preheader:                              ; preds = %.split
  %i.bf = sub nsw i64 %i.fr, %.sroa.086.0170
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %bb.p
  %.sroa.0101.0161 = phi i64 [ %.sroa.0101.0, %bb.p ], [ %.sroa.0101.0159, %.lr.ph162.preheader ] ; 3 uses
  %.sroa.090.0160 = phi i64 [ %i.bl, %bb.p ], [ 1, %.lr.ph162.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.0101.0161
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !52
  %i.bi = icmp eq i8 %i.bh, %i.bd
  br i1 %i.bi, label %bb.p, label %._crit_edge163

._crit_edge163:                                   ; preds = %bb.p, %.lr.ph162
  %.sroa.090.0.lcssa.ph = phi i64 [ %i.bf, %bb.p ], [ %.sroa.090.0160, %.lr.ph162 ] ; 5 uses
  %.pre = add i64 %.sroa.090.0.lcssa.ph, %.sroa.086.0170 ; 2 uses
  %i.bj = icmp eq i8 %i.bd, 0
  br i1 %i.bj, label %bb.q, label %bb.r

._crit_edge163.thread:                            ; preds = %.split
  %i.bk = icmp eq i8 %i.bd, 0
  br i1 %i.bk, label %.thread335, label %bb.r

bb.p:                                             ; preds = %.lr.ph162
  %i.bl = add nuw nsw i64 %.sroa.090.0160, 1
  %.sroa.0101.0 = add i64 %.sroa.0101.0161, 1
  %exitcond272.not = icmp eq i64 %.sroa.0101.0161, %.sroa.010.0137458
  br i1 %exitcond272.not, label %._crit_edge163, label %.lr.ph162

bb.q:                                             ; preds = %._crit_edge163
  %i.bm = icmp ult i64 %.sroa.090.0.lcssa.ph, 704
  br i1 %i.bm, label %.thread335, label %bb.s

bb.r:                                             ; preds = %._crit_edge163.thread, %._crit_edge163
  %.sroa.090.0.lcssa333 = phi i64 [ 1, %._crit_edge163.thread ], [ %.sroa.090.0.lcssa.ph, %._crit_edge163 ] ; 2 uses
  %.pre-phi331 = phi i64 [ %.sroa.0101.0159, %._crit_edge163.thread ], [ %.pre, %._crit_edge163 ] ; 3 uses
  %.not174 = icmp eq i8 %.sroa.085.0171, %i.bd
  br i1 %.not174, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.090.0.lcssa.ph, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #43
  unreachable

.thread335:                                       ; preds = %._crit_edge163.thread, %bb.q
  %.pre-phi332339 = phi i64 [ %.pre, %bb.q ], [ %.sroa.0101.0159, %._crit_edge163.thread ]
  %.sroa.090.0.lcssa334338 = phi i64 [ %.sroa.090.0.lcssa.ph, %bb.q ], [ 1, %._crit_edge163.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants14kZeroRepsDepth17h008abeb978242173E, i64 %.sroa.090.0.lcssa334338
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !52
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants13kZeroRepsBits17h8bfdc183adf0dea0E, i64 %.sroa.090.0.lcssa334338
  %i.br = load i64, ptr %i.bq, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.bp, i64 noundef %i.br, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph168.split, %.preheader39, %bb.z, %.thread335
  %.pre-phi330 = phi i64 [ %.pre-phi332339, %.thread335 ], [ %.pre-phi331, %bb.z ], [ %.pre-phi331, %.preheader39 ], [ %.pre-phi331, %.lr.ph168.split ] ; 2 uses
  %.sroa.085.1 = phi i8 [ %.sroa.085.0171, %.thread335 ], [ %i.bd, %bb.z ], [ %i.bd, %.preheader39 ], [ %i.bd, %.lr.ph168.split ]
  %.not = icmp ugt i64 %.pre-phi330, %.sroa.010.0137458
  br i1 %.not, label %.loopexit41, label %.split

bb.t:                                             ; preds = %bb.r
  %i.bs = zext i8 %i.bd to i64                    ; 3 uses
  %i.bt = icmp ult i8 %i.bd, 18
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r, %bb.v
  %.sroa.090.1 = phi i64 [ %i.cf, %bb.v ], [ %.sroa.090.0.lcssa333, %bb.r ] ; 4 uses
  %i.bu = icmp ult i64 %.sroa.090.1, 3
  br i1 %i.bu, label %.preheader39, label %bb.x

.preheader39:                                     ; preds = %bb.u
  %i.bv = icmp eq i64 %.sroa.090.1, 0
  br i1 %i.bv, label %.loopexit40, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader39
  %i.bw = zext i8 %i.bd to i64                    ; 3 uses
  %i.bx = icmp ult i8 %i.bd, 18
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.bw
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.bw
  br i1 %i.bx, label %.lr.ph168.split, label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants16kCodeLengthDepth17he1a3802995d17e02E, i64 %i.bs
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !52
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants15kCodeLengthBits17he8d7f9e9cdc65196E, i64 %i.bs
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !52
  %i.ce = zext i32 %i.cd to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cb, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cf = add nsw i64 %.sroa.090.0.lcssa333, -1
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bs, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1644) #43
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cg = add i64 %.sroa.090.1, -3                ; 4 uses
  %i.ch = icmp ult i64 %i.cg, 704
  br i1 %i.ch, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cg, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #43
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants17kNonZeroRepsDepth17hf0ed542e139afe71E, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !noundef !52
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_ZN6brotli3enc9constants16kNonZeroRepsBits17h7002645b2b70cbe2E, i64 %i.cg
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.ck, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit40

.lr.ph168.split:                                  ; preds = %.lr.ph168, %.lr.ph168.split
  %.sroa.090.2167 = phi i64 [ %i.cn, %.lr.ph168.split ], [ %.sroa.090.1, %.lr.ph168 ]
  %i.cn = add nsw i64 %.sroa.090.2167, -1         ; 2 uses
  %i.co = load i8, ptr %i.by, align 1, !noundef !52
  %i.cp = load i32, ptr %i.bz, align 4, !noundef !52
  %i.cq = zext i32 %i.cp to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.co, i64 noundef %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %.loopexit40, label %.lr.ph168.split

bb.aa:                                            ; preds = %.lr.ph168
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bw, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #43
  unreachable

.loopexit:                                        ; preds = %bb.al, %.preheader
  %i.cs = icmp ult i64 %.sroa.0105.1175, %.sroa.0.1
  %i.ct = add i64 %.sroa.0105.1175, 1
  br i1 %i.cs, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.o, %.loopexit
  %.sroa.0105.1175 = phi i64 [ 1, %bb.o ], [ %i.ct, %.loopexit ] ; 5 uses
  %.sroa.0105.0174 = phi i64 [ 0, %bb.o ], [ %.sroa.0105.1175, %.loopexit ]
  %i.cu = icmp ult i64 %.sroa.0105.1175, %.sroa.0.1
  br i1 %i.cu, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0105.0174 ; 2 uses
  br label %bb.ag

bb.ab:                                            ; preds = %.loopexit
  %i.cw = trunc i64 %3 to i8                      ; 5 uses
  %i.cx = load i64, ptr %i.a, align 8, !noundef !52 ; 4 uses
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cw, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cw, i64 noundef %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  switch i64 %.sroa.0.1, label %bb.ad [
    i64 2, label %.loopexit41
    i64 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cw, i64 noundef %i.db, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.ad:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cw, i64 noundef %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.df = load i64, ptr %i.de, align 8, !noundef !52
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.cw, i64 noundef %i.df, ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  %i.dg = icmp ult i64 %i.cx, %5
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.cx
  %i.di = load i8, ptr %i.dh, align 1, !noundef !52
  %i.dj = icmp eq i8 %i.di, 1
  %. = zext i1 %i.dj to i64
  tail call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 1, i64 noundef %., ptr noalias noundef nonnull align 8 dereferenceable(8) %8, ptr noalias noundef nonnull align 1 %9, i64 noundef %10)
  br label %.loopexit41

bb.af:                                            ; preds = %bb.ad
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cx, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1647) #43
  unreachable

.loopexit41:                                      ; preds = %.loopexit40, %bb.ae, %bb.ac, %bb.ab, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.ag:                                            ; preds = %.lr.ph173, %bb.al
  %.sroa.0107.0172 = phi i64 [ %.sroa.0105.1175, %.lr.ph173 ], [ %i.dk, %bb.al ] ; 2 uses
  %i.dk = add i64 %.sroa.0107.0172, 1             ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0107.0172 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !52 ; 4 uses
  %i.dn = icmp ult i64 %i.dm, %5
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.do = load i64, ptr %i.cv, align 8, !noundef !52 ; 4 uses
  %i.dp = icmp ult i64 %i.do, %5
  br i1 %i.dp, label %bb.aj, label %bb.ak

end_hunk_0
