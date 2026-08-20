inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZN84_$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$5check17h246fa170f6f97877E":bb.a
.loopexit.split-lp.loopexit.i.i:                  ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit66.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit71.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gt, %bb.aj ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit66.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit71.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #53, !noalias !9140
  br label %common.resume

bb.k:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", %.lr.ph.i.i
  %.sroa.057.0103.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.bd, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i" ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.057.0103.i.i, i64 40 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.057.0103.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.be, align 8, !noalias !9140, !nonnull !4, !noundef !4 ; 5 uses
  %i.bf = getelementptr i8, ptr %.sroa.057.0103.i.i, i64 16
  %.val47.i.i = load i64, ptr %i.bf, align 8, !noalias !9140, !noundef !4 ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.val47.i.i
  %i.bh = icmp samesign eq i64 %.val47.i.i, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.sroa.03.01.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %.val.i.i, %bb.k ] ; 2 uses
  %i.bk = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noalias !9140, !noundef !4 ; 2 uses
  %i.bl = add i8 %i.bk, -32
  %or.cond.i.i.i = icmp ult i8 %i.bl, 95
  %i.bm = icmp eq i8 %i.bk, 9
  %or.cond1.i.i.i = or i1 %i.bm, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9148)
  %.val.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !9148, !noalias !9140, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !9148, !noalias !9140, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9151)
  %i.bn = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.bp, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i ; 5 uses
  %i.bp = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !9160)
  %i.br = load i8, ptr %i.bq, align 8, !range !206, !alias.scope !9163, !noalias !9164, !noundef !4
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !9165)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !9168, !noalias !9164 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !9168, !noalias !9164, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9169
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !range !3, !alias.scope !9170, !noalias !9164, !noundef !4 ; 3 uses
  %i.bx = icmp ne i64 %.val.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.bx)
  %or.cond.i4.i.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !9170, !noalias !9164, !nonnull !4, !noundef !4
  %i.bz = shl nuw i64 %.val.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9171
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i": ; preds = %bb.p, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i"
  %i.ca = icmp eq i64 %i.bp, %.val1.i.i.i
  br i1 %i.ca, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i", %bb.m
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !9148, !noalias !9140 ; 2 uses
  %i.cb = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.cb, label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i"
  %i.cc = mul nuw i64 %.val2.i.i.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9164
  br label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i

.lr.ph.i.i.i.i.lr.ph.i.i.i.i:                     ; preds = %bb.l, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  call void @llvm.experimental.noalias.scope.decl(metadata !9175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9178
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i
  %i.cd = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.backedge ]
  %.promoted54.i.i.i.i26.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.promoted54.i.i.i.i25.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 5 uses
  %i.ce = phi i1 [ false, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.be, %.lr.ph.i.i.i.i.i.i.i.i.backedge ]
  %i.cf = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.be467, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.lcssa445657.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.i.backedge ] ; 7 uses
  %i.cg = icmp ult i64 %.val47.i.i, %i.cf
  br i1 %i.cg, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.s
  %i.ch = phi i64 [ %i.cu, %bb.s ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ci = sub nuw i64 %.val47.i.i, %i.ch          ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ch ; 2 uses
  %i.ck = icmp ult i64 %i.ci, 16
  br i1 %i.ck, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val47.i.i, %i.ch
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.r ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !9180, !noalias !9183, !noundef !4
  %i.cn = icmp eq i8 %i.cm, 44
  br i1 %i.cn, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = add nuw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.ci
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cj, i64 noundef %i.ci)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = extractvalue { i64, i64 } %i.cp, 0
  %i.cr = extractvalue { i64, i64 } %i.cp, 1
  %i.cs = trunc nuw i64 %i.cq to i1
  br i1 %i.cs, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %.noexc.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ct = add i64 %i.ch, 1
  %i.cu = add i64 %i.ct, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i ; 8 uses
  %i.cv = add i64 %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i.i.i, %i.ch ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.not.i.i = icmp ult i64 %i.cv, %.val47.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.t, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = icmp ult i64 %.val47.i.i, %i.cu
  br i1 %i.cw, label %select.unfold.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cv
  %lhsc.i.i = load i8, ptr %i.cx, align 1, !noalias !9140
  %i.cy = icmp eq i8 %lhsc.i.i, 44
  br i1 %i.cy, label %select.unfold.i.i.i.i.i.i.i.i, label %bb.s

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %bb.t, %bb.s, %.noexc.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cz = phi i64 [ %.val47.i.i, %bb.r ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %i.cu, %bb.s ] ; 2 uses
  %.promoted54.i.i.i.i25.i.i.i.i = phi i64 [ %.promoted54.i.i.i.i26.i.i.i.i, %bb.r ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.noexc.i.i ], [ %.promoted54.i.i.i.i26.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %.promoted54.i.i.i.i26.i.i.i.i, %bb.s ] ; 2 uses
  %i.da = phi i1 [ true, %bb.r ], [ true, %.lr.ph.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.db = phi i64 [ %.val47.i.i, %bb.r ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %i.cu, %bb.s ]
  %.lcssa4455.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa445657.i.i.i.i.i.i.i.i, %bb.r ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.noexc.i.i ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.t ], [ %.lcssa445657.i.i.i.i.i.i.i.i, %bb.s ]
  %i.dc = phi i1 [ true, %bb.r ], [ true, %.lr.ph.i.i.i.i.i.i.i.i ], [ true, %.noexc.i.i ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.t ], [ true, %bb.s ]
  %.pn61.i.i.i.i.i.i.i.i = phi i64 [ %.val47.i.i, %bb.r ], [ %.val47.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val47.i.i, %.noexc.i.i ], [ %.val47.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.t ], [ %.val47.i.i, %bb.s ]
  %.sroa.4.1.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.pn61.i.i.i.i.i.i.i.i, %.lcssa445657.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.lcssa445657.i.i.i.i.i.i.i.i
  %i.dd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i.i.i.i), !noalias !9204 ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  %.not.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.dg = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.de, i64 noundef %i.df), !noalias !9207 ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0      ; 11 uses
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9214)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 8 uses
  %i.dj = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.dj, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.v
  %i.dk = icmp ult i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.di
  br i1 %i.dk, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

iter.check:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = shl i64 %indvar, 5
  %i.dm = sub i64 %i.di, %i.dl                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  br i1 %min.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check423 = icmp ult i64 %i.dm, 32
  br i1 %min.iters.check423, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.di, 31                       ; 3 uses
  %n.vec = sub nuw i64 %i.dm, %i.dn               ; 3 uses
  %i.do = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.du, %vector.body ]
  %vec.phi424 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.dv, %vector.body ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !9217, !noalias !9220
  %wide.load425 = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !9217, !noalias !9220
  %i.ds = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.dt = icmp slt <16 x i8> %wide.load425, zeroinitializer
  %i.du = or <16 x i1> %vec.phi, %i.ds            ; 2 uses
  %i.dv = or <16 x i1> %vec.phi424, %i.dt         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !9222

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.dv, %i.du
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dx = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not435 = icmp eq i16 %i.dx, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.dn, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !9225

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not435, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.dy = xor i1 %bc.merge.rdx, true
  %i.dz = and i64 %i.di, 3                        ; 2 uses
  %n.vec426 = sub i64 %i.dm, %i.dz                ; 2 uses
  %i.ea = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec426
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.dy, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi428 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr436, %vec.epilog.vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %index427
  %wide.load429 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !9217, !noalias !9220
  %i.ed = icmp slt <4 x i8> %wide.load429, zeroinitializer
  %i.ee = or <4 x i1> %vec.phi428, %i.ed
  %.fr436 = freeze <4 x i1> %i.ee                 ; 2 uses
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9226

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.eg = bitcast <4 x i1> %.fr436 to i4
  %.not437 = icmp eq i4 %i.eg, 0                  ; 2 uses
  %cmp.n431 = icmp eq i64 %i.dz, 0
  br i1 %cmp.n431, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i1 [ true, %iter.check ], [ %.not435, %vec.epilog.iter.check ], [ %.not437, %vec.epilog.middle.block ]
  br label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !9217, !noalias !9220, !noundef !4
  %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ei, -1
  %i.ej = select i1 %.inv.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %.sroa.011.023.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ek = add nuw i64 %.sroa.01.124.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, %i.di
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9227

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = load <32 x i8>, ptr %i.el, align 1, !alias.scope !9217, !noalias !9220
  %i.en = icmp slt <32 x i8> %i.em, zeroinitializer
  %i.eo = bitcast <32 x i1> %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ep, label %bb.v, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa404 = phi i1 [ %.not437, %vec.epilog.middle.block ], [ %.not435, %middle.block ], [ %i.ej, %.lr.ph25.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br i1 %.lcssa404, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %bb.w
  %i.eq = phi i64 [ %i.eu, %bb.w ], [ %i.di, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.er = invoke { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 59, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eq)
          to label %.noexc51.i.i unwind label %.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc51.i.i:                                     ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = extractvalue { i64, i64 } %i.er, 0
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.x, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.y, %bb.x
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eu, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread175.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc51.i.i
  %i.eu = extractvalue { i64, i64 } %i.er, 1      ; 6 uses
  %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.eu, %i.di
  br i1 %or.cond25.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eu
  %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ev, align 1, !alias.scope !9228, !noalias !9231
  %i.ew = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.ew, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.ex = add nuw i64 %i.eu, 1                    ; 2 uses
  %i.ey = sub nuw i64 %i.di, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ex
  %i.fa = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.eu), !noalias !9220 ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ez, i64 noundef %i.ey), !noalias !9220 ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 7 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 5 uses
  %i.fg = icmp ult i64 %i.ff, 2
  br i1 %i.fg, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.aa

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.w, %.noexc51.i.i, %bb.ag, %bb.ae
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gk, %bb.ag ], [ 1000, %bb.ae ], [ 1000, %.noexc51.i.i ], [ 1000, %bb.w ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.ag ], [ %i.di, %bb.ae ], [ %i.di, %.noexc51.i.i ], [ %i.di, %bb.w ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.ag ], [ %i.dh, %bb.ae ], [ %i.dh, %.noexc51.i.i ], [ %i.dh, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9233
  invoke void @"_ZN57_$LT$mime..Mime$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h3cad4ad1e6f69c56E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9140

.noexc52.i.i:                                     ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = load i64, ptr %i.a, align 8, !range !672, !noalias !9233, !noundef !4 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 2
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, 2 ; 2 uses
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !9238, !noalias !9220, !noundef !4
  %i.fl = icmp sgt i8 %i.fk, -65
  br i1 %i.fl, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i": ; preds = %bb.ad, %bb.ab
  %i.fm = phi i64 [ 0, %bb.ab ], [ 2, %bb.ad ]
  %i.fn = phi i64 [ 2, %bb.ab ], [ %i.ff, %bb.ad ]
  %i.fo = phi ptr [ @56, %bb.ab ], [ @57, %bb.ad ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff, i64 noundef %i.fm, i64 noundef %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo) #52
          to label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9140

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.cont.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ab
  %i.fp = load i16, ptr %i.fe, align 1
  %i.fq = icmp ne i16 %i.fp, 15729
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ae, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  br i1 %.not6.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !9241, !noalias !9220, !noundef !4
  %i.fv = icmp sgt i8 %i.fu, -65
  br i1 %i.fv, label %bb.af, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.invoke.i.i"

bb.ae:                                            ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.thread184.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fw = load i16, ptr %i.fe, align 1
  %i.fx = icmp ne i16 %i.fw, 15697
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ac, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ga = add i64 %i.ff, -2                       ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 5
  br i1 %i.gb, label %.loopexit.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.af, %bb.ac
  %i.gc = phi i64 [ %i.ga, %bb.af ], [ 0, %bb.ac ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.ge = invoke i64 @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f32$GT$8from_str17hd393ea1bf0d9426cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gd, i64 noundef %i.gc)
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !9140 ; 2 uses

.noexc55.i.i:                                     ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc55.i.i
  %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.ge, 32
  %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.5163.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.gg = bitcast i32 %.sroa.5163.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i to float ; 3 uses
  %i.gh = fcmp oge float %i.gg, 0.000000e+00
  %i.gi = fcmp ole float %i.gg, 1.000000e+00
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.gh, %i.gi
  %i.gj = fmul float %i.gg, 1.000000e+03
  %i.gk = call i16 @llvm.fptoui.sat.i16.f32(float %i.gj)
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9233
  br label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %.noexc55.i.i, %bb.af, %bb.z, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  br i1 %i.dc, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.i.backedge:                  ; preds = %.loopexit.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"
  %.be = phi i1 [ %i.da, %.loopexit.i.i.i.i.i.i.i.i ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.be467 = phi i64 [ %i.db, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.cz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  %.lcssa445657.i.i.i.i.i.i.i.i.be = phi i64 [ %.lcssa4455.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %.promoted54.i.i.i.i25.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.noexc52.i.i
  %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5126.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9245
  %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.293.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.30.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !9245
  %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.304.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.31.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32.24..sroa.5126.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !9245
  %i.gl = load <2 x i64>, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9233
  store i64 %i.fh, ptr %i.b, align 8, !noalias !9245
  store <2 x i64> %i.gl, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store ptr %.sroa.27.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i8 %.sroa.293.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i64 %.sroa.304.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store ptr %.sroa.31.24.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  store i16 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !noalias !9245
  %i.gm = load i64, ptr %i.ba, align 8, !alias.scope !9246, !noalias !9247, !noundef !4 ; 5 uses
  %i.gn = icmp ult i64 %i.gm, 96076792050570582
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i64, ptr %i.c, align 8, !range !357, !alias.scope !9246, !noalias !9247, !noundef !4
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i": ; preds = %bb.ak, %bb.ai
  %i.gq = load ptr, ptr %i.az, align 8, !alias.scope !9246, !noalias !9247, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw [96 x i8], ptr %i.gq, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gr, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !9245
  %i.gs = add nuw nsw i64 %i.gm, 1
  store i64 %i.gs, ptr %i.ba, align 8, !alias.scope !9246, !noalias !9247
  br i1 %i.da, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.backedge

bb.aj:                                            ; preds = %bb.ak
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #53, !noalias !9245
  br label %.body.i.i

bb.ak:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gm, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 96)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i" unwind label %bb.aj, !noalias !9247

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heca627093a1cf687E.exit.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9178
  %i.gu = icmp eq ptr %i.bd, %.sroa.3.0.i.i
  br i1 %i.gu, label %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, label %bb.k

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i: ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6fb81217a625be3dE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9140
  br label %bb.ao

_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17ha459e49e806ad5f2E.exit.i.i"
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.c, align 8, !noalias !9082 ; 2 uses
  %.sroa.6.0.copyload3.pre.i = load i64, ptr %i.az, align 8, !noalias !9082 ; 2 uses
  %.sroa.7.0.copyload5.pre.i = load i64, ptr %i.ba, align 8, !noalias !9082 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9140
  %i.gv = icmp eq i64 %.sroa.0.0.copyload1.pre.i, -9223372036854775808
  br i1 %i.gv, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i
  %.sroa.0.0.copyload1101.i = phi i64 [ %.sroa.4.0.i.i.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.0.0.copyload1.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ] ; 6 uses
  %.sroa.6.0.copyload3100.i = phi i64 [ %i.bc, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.0.copyload599.i = phi i64 [ 0, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread95.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.6.0.copyload3100.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9082
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.0.copyload599.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9082
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1101.i, ptr %i.h, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9248)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gx = load i8, ptr %i.gw, align 8, !range !206, !alias.scope !9248, !noalias !9251, !noundef !4
  %i.gy = trunc nuw i8 %i.gx to i1                ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.gz, align 8, !alias.scope !9248, !noalias !9251 ; 2 uses
  %.val7.i = load ptr, ptr %i.hb, align 8, !alias.scope !9248, !noalias !9251, !nonnull !4
  %.sroa.0.0.i = select i1 %i.gy, ptr %.val.i, ptr %.val7.i ; 9 uses
  %.val8.i = load i64, ptr %i.ha, align 8, !alias.scope !9248, !noalias !9251
  %.val9.cast.i = ptrtoint ptr %.val.i to i64
  %.sroa.5.0.i = select i1 %i.gy, i64 %.val8.i, i64 %.val9.cast.i ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !9248, !noalias !9251, !noundef !4 ; 10 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i = icmp ult i64 %i.hd, %.sroa.5.0.i
  br i1 %.not.i.i, label %bb.an, label %.split.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.hf = icmp eq i64 %i.hd, %.sroa.5.0.i
  br i1 %i.hf, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.hd
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !9253, !noalias !9256, !noundef !4
  %i.hi = icmp sgt i8 %i.hh, -65
  br i1 %i.hi, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit, label %.invoke371

bb.ao:                                            ; preds = %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i
  %.sroa.6.014.i = phi i64 [ undef, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.6.0.copyload3.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %.sroa.7.013.i = phi i64 [ 5, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.thread.i ], [ %.sroa.7.0.copyload5.pre.i, %_ZN10actix_http6header5utils20from_comma_delimited17he28d164271061251E.exit.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.014.i, ptr %i.hj, align 8, !alias.scope !9082
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.013.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !9082
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !9082
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$actix_web..http..header..accept..Accept$C$actix_http..error..ParseError$GT$$GT$17h2a748ea4736026b3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bh

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit:     ; preds = %bb.an, %.split.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !9257)
  %i.hk = load i64, ptr %0, align 8, !range !244, !alias.scope !9257, !noalias !9260, !noundef !4
  %i.hl = trunc nuw i64 %i.hk to i1
  br i1 %i.hl, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i", label %bb.ap

bb.ap:                                            ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !range !3, !alias.scope !9257, !noalias !9260, !noundef !4 ; 3 uses
  %i.ho = icmp ne i64 %i.hn, -9223372036854775807
  call void @llvm.assume(i1 %i.ho)
  %i.hp = xor i64 %i.hn, -9223372036854775808
  %i.hq = icmp slt i64 %i.hn, 0
  %i.hr = select i1 %i.hq, i64 %i.hp, i64 1
  switch i64 %i.hr, label %bb.aq [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"

bb.as:                                            ; preds = %bb.ap
  %.sroa.02.0.in.v.i.i = select i1 %i.gy, i64 72, i64 64
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"

"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i": ; preds = %bb.as, %bb.ar, %bb.ap, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit
  %.sink.i.sink.i = phi i64 [ 8, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit ], [ %.sroa.02.0.in.v.i.i, %bb.as ], [ 40, %bb.ar ], [ 24, %bb.ap ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i.sink.i
  %.sroa.0.0.i29 = load i64, ptr %i.hs, align 8, !alias.scope !9257, !noalias !9260 ; 11 uses
  %i.ht = add i64 %i.hd, 1                        ; 12 uses
  %.not.i.i32 = icmp ugt i64 %i.ht, %.sroa.0.0.i29
  br i1 %.not.i.i32, label %.invoke371, label %bb.at

bb.at:                                            ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i"
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not5.i.i = icmp ult i64 %i.ht, %.sroa.5.0.i
  br i1 %.not5.i.i, label %bb.aw, label %.split.i.i33

bb.av:                                            ; preds = %bb.aw, %.split.i.i33, %bb.at
  %i.hv = icmp eq i64 %.sroa.0.0.i29, 0
  br i1 %i.hv, label %bb.az, label %bb.ax

.split.i.i33:                                     ; preds = %bb.au
  %i.hw = icmp eq i64 %i.ht, %.sroa.5.0.i
  br i1 %i.hw, label %bb.av, label %.invoke371

bb.aw:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.ht
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !9262, !noalias !9265, !noundef !4
  %i.hz = icmp sgt i8 %i.hy, -65
  br i1 %i.hz, label %bb.av, label %.invoke371

bb.ax:                                            ; preds = %bb.av
  %.not6.i.i = icmp ult i64 %.sroa.0.0.i29, %.sroa.5.0.i
  br i1 %.not6.i.i, label %bb.ay, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.ax
  %i.ia = icmp eq i64 %.sroa.0.0.i29, %.sroa.5.0.i
  br i1 %i.ia, label %bb.az, label %.invoke371

bb.ay:                                            ; preds = %bb.ax
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.0.i29
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !9262, !noalias !9265, !noundef !4
  %i.id = icmp sgt i8 %i.ic, -65
  br i1 %i.id, label %bb.az, label %.invoke371

.invoke371:                                       ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i", %.split.i.i33, %bb.aw, %.split7.i.i, %bb.ay, %.split.i.i, %bb.an
  %i.ie = phi i64 [ 0, %.split.i.i ], [ 0, %bb.an ], [ %i.ht, %bb.ay ], [ %i.ht, %.split7.i.i ], [ %i.ht, %bb.aw ], [ %i.ht, %.split.i.i33 ], [ %i.ht, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i" ]
  %i.if = phi i64 [ %i.hd, %.split.i.i ], [ %i.hd, %bb.an ], [ %.sroa.0.0.i29, %bb.ay ], [ %.sroa.0.0.i29, %.split7.i.i ], [ %.sroa.0.0.i29, %bb.aw ], [ %.sroa.0.0.i29, %.split.i.i33 ], [ %.sroa.0.0.i29, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i" ]
end_hunk_0
begin_hunk_1_@_ZN9actix_web4http6header19content_disposition19split_once_and_trim17h4d3c0ab9e27ca417E:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !11578, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !11578, !noundef !4
  %i.ca = lshr i8 %i.bz, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.br, %bb.n ], [ %i.bv, %bb.o ], [ %i.bp, %bb.m ], [ %i.ca, %bb.p ]
  %i.cb = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.cc = icmp eq ptr %1, %i.bk
  br i1 %i.cc, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit", label %.lr.ph.i.i.i

bb.r:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.l, %bb.k
  %i.cd = ptrtoint ptr %i.aa to i64
  %i.ce = ptrtoint ptr %1 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit": ; preds = %bb.q, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, %bb.r
  %.sink.i.i8 = phi i64 [ %.sink.i.i7, %bb.r ], [ %.sink.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink.i.i7, %bb.q ]
  %.sink3.i.i6 = phi ptr [ %.sink3.i.i5, %bb.r ], [ %.sink3.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink3.i.i5, %bb.q ]
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.r ], [ 0, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ 0, %bb.q ]
  %i.cg = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hb5795610c88f9b77E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sink3.i.i6, i64 noundef %.sink.i.i8) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %1, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ci, ptr %i.cl, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN9actix_web4http6header4date4Date3now17h4bc8955600ca4f06E() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E()
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9actix_web4http6header5range13ByteRangeSpec20to_satisfiable_range17h381b9c40f9121484E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !672, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 8 uses
  switch i64 %i.b, label %default.unreachable9 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.k, %bb.j
  %.sink12 = phi i64 [ %i.o, %bb.j ], [ 0, %bb.k ], [ %i.d, %bb.h ], [ %i.d, %bb.g ]
  %.sink10 = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.m, %bb.h ], [ %.sroa.0.0.i, %bb.g ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink12, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.f, %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

default.unreachable9:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.d, %2
  %i.j = icmp ule i64 %i.d, %i.h
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.d, %2
  br i1 %i.k, label %bb.h, label %bb.c

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = add i64 %2, -1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.l, i64 %i.h)
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.m = add i64 %2, -1
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %i.d, %2
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = sub nuw i64 %2, %i.d
  %i.p = add i64 %2, -1
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.q = add i64 %2, -1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range11bytes_multi17h4285cd81cceb357dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !11579, !noalias !11582 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11579, !noalias !11582, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11579, !noalias !11582 ; 7 uses
  %i.a = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.a)
  %i.b = mul nuw i64 %.sroa.5.0.copyload.i, 24    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.c, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11584
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #46, !noalias !11584 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.b
  %i.f = add nuw nsw i64 %.sroa.5.0.copyload.i, 1152921504606846975
  %i.g = and i64 %i.f, 1152921504606846975        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 2305843009213693948
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.b, %bb.b ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #52
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !noalias !11604

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.k = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x i64>, ptr %i.k, align 8, !noalias !11605
  store i64 0, ptr %i.m, align 8, !noalias !11621
  store <2 x i64> %i.n, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11621
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load <2 x i64>, ptr %i.l, align 8, !noalias !11605
  store i64 0, ptr %i.q, align 8, !noalias !11621
  store <2 x i64> %i.r, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !11621
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load <2 x i64>, ptr %i.o, align 8, !noalias !11605
  store i64 0, ptr %i.u, align 8, !noalias !11621
  store <2 x i64> %i.v, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !11621
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load <2 x i64>, ptr %i.s, align 8, !noalias !11605
  store i64 0, ptr %i.y, align 8, !noalias !11621
  store <2 x i64> %i.z, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !11621
  %i.aa = add nuw nsw i64 %i.j, 4                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init18 = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init18, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !11605
  store i64 0, ptr %i.ae, align 8, !noalias !11621
  store <2 x i64> %i.af, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !11621
  %i.ag = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11628

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i16 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.5.0.copyload.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.0.i.i.i.i.i.i15 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ai = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11629
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit

"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11632
  br label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i.i16, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i15, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range5bytes17hcbc2b81a8de86ea0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #46 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !223

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx6, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN9actix_web4http6header6Writer3new17h5f6fa997e0373a06E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6Writer4take17h5aefe2556e0aae5eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call fastcc void @_ZN5bytes9bytes_mut8BytesMut6freeze17h3d19f315c4911139E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept10preference17hdb9302611cbcb7c5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not1920 = icmp eq i64 %i.g, 0
  br i1 %.not1920, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.06.022 = phi i16 [ 0, %.lr.ph ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.07.021 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = icmp ugt i16 %i.p, %.sroa.06.022
  br i1 %i.q, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.sroa.01.0.copyload.pre = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0.copyload.pre, 2
  br i1 %.not, label %._crit_edge.thread, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"

bb.c:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", %bb.b
  %.sroa.06.1 = phi i16 [ %i.p, %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit" ], [ %.sroa.06.022, %bb.b ]
  %.not19 = icmp eq ptr %i.n, %i.h
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.07.021)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.a) #53
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !672, !noundef !4
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.i, align 8, !range !206, !noundef !4
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.j, align 8     ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11635
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.i, %bb.h, %bb.g
  %.val.i.i = load i64, ptr %i.l, align 8, !range !3, !noundef !4 ; 3 uses
  %i.x = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.j

end_hunk_1
begin_hunk_2_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17he30a5e2ac34175ceE":bb.a
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge, %._crit_edge73.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.de, %._crit_edge73.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge ] ; 2 uses
  %i.bc = phi i64 [ %.pre84, %._crit_edge73.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.._crit_edge73_crit_edge ]
  %i.bd = sub i64 %.sroa.02.0.i.i, %i.bc
  store i64 %i.as, ptr %0, align 8, !alias.scope !15342, !noalias !15345
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !15357, !noalias !15359 ; 3 uses
  store i64 %i.am, ptr %i.h, align 8, !alias.scope !15357, !noalias !15359
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !15361, !noalias !15363
  %i.bf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge73
  %i.bg = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5 ; 2 uses
  %i.bh = add i64 %i.bg, 32
  %i.bi = add i64 %i.bg, 47                       ; 2 uses
  %i.bj = icmp uge i64 %i.bi, %i.bh
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = and i64 %i.bi, -32                      ; 3 uses
  %i.bl = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bm = add i64 %i.bl, %i.bk                    ; 4 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  %i.bo = icmp ult i64 %i.bm, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", label %bb.l

bb.l:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bq = sub nsw i64 0, %i.bk
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 16) #46, !noalias !15365
  br label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit"

"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit": ; preds = %._crit_edge73, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15331
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.069, %.preheader ], [ %i.ba, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.071, %.preheader ], [ %i.bb, %.noexc3 ] ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.072, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.bs = add i16 %.sroa.13.1.lcssa, -1
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = and i16 %i.bs, %.sroa.13.1.lcssa
  %i.bw = add i64 %.sroa.5.1.lcssa, %i.bu         ; 2 uses
  %i.bx = add i64 %.sroa.9.070, -1                ; 2 uses
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -32
  %i.cb = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44ca5d1f3f74f1faE(i64 %.val.i.i10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ca)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" unwind label %bb.k ; 2 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit": ; preds = %._crit_edge
  %.sroa.0.04.i.i = and i64 %i.cb, %i.am          ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !15370
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !15373

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit", %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ]
  %i.cf = phi i64 [ %i.cg, %.lr.ph.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ]
  %i.cg = add i64 %i.cf, 16                       ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.ch, %i.am         ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !15370
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !15374

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.ce, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit" ], [ %i.ck, %.lr.ph.i.i ]
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cm
  %i.co = and i64 %i.cn, %i.am                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !4
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.m, label %bb.n, !prof !223

bb.m:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.ap, align 16
  %i.cs = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %i.cu = icmp ne i16 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.cw, %bb.m ], [ %i.co, %._crit_edge.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i.i
  %i.cy = lshr i64 %i.cb, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.db = and i64 %i.da, %i.am
  store i8 %i.cz, ptr %i.cx, align 1
  %i.dc = getelementptr i8, ptr %i.ap, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  store i8 %i.cz, ptr %i.dd, align 1
  %i.de = load ptr, ptr %0, align 8, !alias.scope !15340, !noalias !15341, !nonnull !4, !noundef !4 ; 3 uses
  %i.df = shl i64 %i.bw, 5
  %i.dg = sub nuw nsw i64 -32, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.dg
  %i.di = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.dj = sub nuw nsw i64 -32, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.ap, i64 %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dk, ptr noundef nonnull align 1 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.dl = icmp eq i64 %i.bx, 0
  br i1 %i.dl, label %._crit_edge73.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.es, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15375)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !15375 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i13

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15375
  br label %bb.aa

.lr.ph.i.i13:                                     ; preds = %bb.o
  %i.dm = lshr i64 %i.k, 4
  %i.dn = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dn, 0
  %i.do = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dm, %i.do ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dp = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.i.i13.new

.lr.ph.i.i13.new:                                 ; preds = %.lr.ph.i.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i14.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i14.unr-lcssa, %.lr.ph.i.i13
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13 ], [ %i.dz, %._crit_edge.i.i14.unr-lcssa ]
  %lcmp.mod129 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dq, align 16, !noalias !15375
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !15375
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i14.unr-lcssa, %.epil.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.30.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull align 1 %.val10.i, i64 %.30.i, i1 false), !noalias !15375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15375
  store ptr @_ZN4core3ops8function6FnOnce9call_once17ha0f51f2958e0a0f6E, ptr %i.dt, align 8, !noalias !15375
  store i64 32, ptr %i.du, align 8, !noalias !15375
  store ptr %0, ptr %i.a, align 8, !noalias !15375
  %.val.i.i.i = load i64, ptr %2, align 8
  br label %.lr.ph.i

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i13.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %i.dz, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %niter.next.1, %bb.p ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dw, align 16, !noalias !15375
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dx = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dy = or <2 x i64> %i.dx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dy, ptr %i.dw, align 16, !noalias !15375
  %i.dz = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eb, align 16, !noalias !15375
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ec = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ed = or <2 x i64> %i.ec, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ed, ptr %i.eb, align 16, !noalias !15375
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i14.unr-lcssa, label %bb.p

.lr.ph.i:                                         ; preds = %bb.y, %._crit_edge.i.i14
  %.sroa.0.17.i = phi i64 [ %.sroa.0.1.i, %bb.y ], [ 1, %._crit_edge.i.i14 ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ %.sroa.0.17.i, %bb.y ], [ 0, %._crit_edge.i.i14 ] ; 8 uses
  %i.ee = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.0.06.i
  %i.eg = load i8, ptr %i.ef, align 1, !noundef !4
  %.not.i15 = icmp eq i8 %i.eg, -128
  br i1 %.not.i15, label %bb.q, label %bb.y

bb.q:                                             ; preds = %.lr.ph.i
  %i.eh = shl i64 %.sroa.0.06.i, 5
  %i.ei = sub nuw nsw i64 -32, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei ; 6 uses
  %i.ek = sub nsw i64 0, %.sroa.0.06.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.q
  %i.eo = phi ptr [ %.pre.i32, %bb.x ], [ %i.ee, %bb.q ]
  %i.ep = getelementptr inbounds [32 x i8], ptr %i.eo, i64 %i.ek
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.er = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h44ca5d1f3f74f1faE(i64 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eq)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h448fdda41ee7198dE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
          to label %common.resume unwind label %bb.z

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i": ; preds = %bb.r
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4 ; 7 uses
  %.val9.i = load i64, ptr %i.h, align 8, !alias.scope !15375, !noundef !4 ; 6 uses
  %.sroa.0.04.i.i18 = and i64 %.val9.i, %i.er     ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.04.i.i18
  %.sroa.0.0.copyload.i35.i.i19 = load <16 x i8>, ptr %i.et, align 1, !noalias !15378
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i19, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.not.i.not6.i.i20 = icmp eq i16 %i.ev, 0
  br i1 %.not.not.i.not6.i.i20, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !15373

.lr.ph.i13.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i", %.lr.ph.i13.i
  %.sroa.0.07.i.i34 = phi i64 [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i18, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i13.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.07.i.i34
  %.sroa.0.0.i.i35 = and i64 %i.ey, %.val9.i      ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i35
  %.sroa.0.0.copyload.i3.i.i36 = load <16 x i8>, ptr %i.ez, align 1, !noalias !15378
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i36, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.not.i.not.i.i37 = icmp eq i16 %i.fb, 0
  br i1 %.not.not.i.not.i.i37, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !15374

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i"
  %.sroa.0.0.lcssa.i.i21 = phi i64 [ %.sroa.0.04.i.i18, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ], [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ]
  %.lcssa.i.i22 = phi i16 [ %i.ev, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4780b1b095c9f3bdE.exit.i" ], [ %i.fb, %.lr.ph.i13.i ]
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i22, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.0.lcssa.i.i21, %i.fd
  %i.ff = and i64 %i.fe, %.val9.i                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noundef !4
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.t, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !223

bb.t:                                             ; preds = %._crit_edge.i12.i
  %.val2.i.i.i33 = load <16 x i8>, ptr %.val.i17, align 16
  %i.fj = icmp slt <16 x i8> %.val2.i.i.i33, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %i.fl = icmp ne i16 %i.fk, 0
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.t, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i23 = phi i64 [ %i.fn, %bb.t ], [ %i.ff, %._crit_edge.i12.i ] ; 4 uses
  %i.fo = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i18
  %i.fp = sub i64 %.sroa.0.0.i5.i.i23, %.sroa.0.04.i.i18
  %i.fq = xor i64 %i.fp, %i.fo
  %.unshifted.i = and i64 %i.fq, %.val9.i
  %i.fr = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fr, label %bb.v, label %bb.u, !prof !90

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fs = shl i64 %.sroa.0.0.i5.i.i23, 5
  %i.ft = sub nuw nsw i64 -32, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %.val.i17, i64 %i.ft ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i23 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !4
  %i.fx = lshr i64 %i.er, 57
  %i.fy = trunc nuw nsw i64 %i.fx to i8           ; 2 uses
  %i.fz = add i64 %.sroa.0.0.i5.i.i23, -16
  %i.ga = and i64 %i.fz, %.val9.i
  store i8 %i.fy, ptr %i.fv, align 1
  %i.gb = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store i8 %i.fy, ptr %i.gd, align 1
  %i.ge = icmp eq i8 %i.fw, -1
  br i1 %i.ge, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.gf = lshr i64 %i.er, 57
  %i.gg = trunc nuw nsw i64 %i.gf to i8           ; 2 uses
  %i.gh = add i64 %.sroa.0.06.i, -16
  %i.gi = and i64 %.val9.i, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.gg, ptr %i.gj, align 1
  %i.gk = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.gi
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  store i8 %i.gg, ptr %i.gm, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gn = add i64 %.sroa.0.06.i, -16
  %i.go = load i64, ptr %i.h, align 8, !alias.scope !15375, !noundef !4
  %i.gp = and i64 %i.go, %i.gn
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gr, align 1
  %i.gs = load ptr, ptr %0, align 8, !alias.scope !15375, !nonnull !4, !noundef !4
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gp
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store i8 -1, ptr %i.gu, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fu, ptr noundef nonnull align 1 dereferenceable(32) %i.ej, i64 32, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15384)
  %.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %i.ej, align 1, !alias.scope !15381, !noalias !15384
  %.sroa.02.0.copyload.i.i.i.i.i25 = load i64, ptr %i.fu, align 1, !alias.scope !15384, !noalias !15381
  store i64 %.sroa.02.0.copyload.i.i.i.i.i25, ptr %i.ej, align 1, !alias.scope !15381, !noalias !15384
  store i64 %.sroa.0.0.copyload.i.i.i.i.i24, ptr %i.fu, align 1, !alias.scope !15384, !noalias !15381
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15388)
  %.sroa.0.0.copyload.i.i.i.1.i.i26 = load i64, ptr %i.el, align 1, !alias.scope !15386, !noalias !15388
  %.sroa.02.0.copyload.i.i.i.1.i.i27 = load i64, ptr %i.gv, align 1, !alias.scope !15388, !noalias !15386
  store i64 %.sroa.02.0.copyload.i.i.i.1.i.i27, ptr %i.el, align 1, !alias.scope !15386, !noalias !15388
  store i64 %.sroa.0.0.copyload.i.i.i.1.i.i26, ptr %i.gv, align 1, !alias.scope !15388, !noalias !15386
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15392)
  %.sroa.0.0.copyload.i.i.i.2.i.i28 = load i64, ptr %i.em, align 1, !alias.scope !15390, !noalias !15392
  %.sroa.02.0.copyload.i.i.i.2.i.i29 = load i64, ptr %i.gw, align 1, !alias.scope !15392, !noalias !15390
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i29, ptr %i.em, align 1, !alias.scope !15390, !noalias !15392
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i28, ptr %i.gw, align 1, !alias.scope !15392, !noalias !15390
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15396)
  %.sroa.0.0.copyload.i.i.i.3.i.i30 = load i64, ptr %i.en, align 1, !alias.scope !15394, !noalias !15396
  %.sroa.02.0.copyload.i.i.i.3.i.i31 = load i64, ptr %i.gx, align 1, !alias.scope !15396, !noalias !15394
  store i64 %.sroa.02.0.copyload.i.i.i.3.i.i31, ptr %i.en, align 1, !alias.scope !15394, !noalias !15396
  store i64 %.sroa.0.0.copyload.i.i.i.3.i.i30, ptr %i.gx, align 1, !alias.scope !15396, !noalias !15394
  %.pre.i32 = load ptr, ptr %0, align 8, !alias.scope !15398, !noalias !15401
  br label %bb.r

bb.y:                                             ; preds = %bb.w, %bb.v, %.lr.ph.i
  %i.gy = icmp ult i64 %.sroa.0.17.i, %i.k        ; 2 uses
  %i.gz = zext i1 %i.gy to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gz
  br i1 %i.gy, label %.lr.ph.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

bb.z:                                             ; preds = %bb.s
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.y
  %.pre13.i = load i64, ptr %i.h, align 8, !alias.scope !15375
  %.pre13.i.fr = freeze i64 %.pre13.i             ; 3 uses
  %.pre14.i = add i64 %.pre13.i.fr, 1
  %i.hb = lshr i64 %.pre14.i, 3
  %i.hc = mul nuw i64 %i.hb, 7
  %i.hd = icmp ult i64 %.pre13.i.fr, 8
  %spec.select = select i1 %i.hd, i64 %.pre13.i.fr, i64 %i.hc
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !15375
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.he = phi i64 [ %i.e, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.pre, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.hf = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %spec.select, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = sub i64 %i.hf, %i.he
  store i64 %i.hh, ptr %i.hg, align 8, !alias.scope !15375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15375
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17h3b973d73feea6f67E.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.thread, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit", %bb.aa
  %.sroa.4.0.i = phi i64 [ undef, %bb.aa ], [ %.sroa.12.052, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h39249c72a12e131dE.exit.thread ], [ undef, %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h23b71fe051480ad5E.exit" ]
end_hunk_2
