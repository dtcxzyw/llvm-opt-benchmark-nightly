Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_lz77?download=true
inline.NumInlined: 1422
inline.NumDeleted: 784
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3jxl9ApplyLZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS4_INS_5TokenENS3_9allocatorIS5_EEEENS6_IS8_EEEERKNS_10LZ77ParamsE:bb.a
vector.ph427:                                     ; preds = %.lr.ph.preheader.i9.i.i
  %n.vec428 = and i64 %i.adq, 9223372036854775800 ; 3 uses
  %i.adr = shl i64 %n.vec428, 2
  %i.ads = getelementptr i8, ptr %i.adl, i64 %i.adr
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.acj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next432, %vector.body429 ] ; 2 uses
  %i.adt = shl i64 %index430, 2
  %next.gep431 = getelementptr i8, ptr %i.adl, i64 %i.adt ; 2 uses
  %i.adu = getelementptr i8, ptr %next.gep431, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep431, align 4, !tbaa !93, !noalias !230
  store <4 x i32> %broadcast.splat, ptr %i.adu, align 4, !tbaa !93, !noalias !230
  %index.next432 = add nuw i64 %index430, 8       ; 2 uses
  %i.adv = icmp eq i64 %index.next432, %n.vec428
  br i1 %i.adv, label %middle.block433, label %vector.body429, !llvm.loop !185

middle.block433:                                  ; preds = %vector.body429
  %cmp.n434 = icmp eq i64 %i.adq, %n.vec428
  br i1 %cmp.n434, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i, label %.lr.ph.i11.i.i.preheader

.lr.ph.i11.i.i.preheader:                         ; preds = %.lr.ph.preheader.i9.i.i, %middle.block433
  %.sroa.0.06.i.i.i.ph = phi ptr [ %i.adl, %.lr.ph.preheader.i9.i.i ], [ %i.ads, %middle.block433 ]
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i.preheader, %.lr.ph.i11.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.adw, %.lr.ph.i11.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i11.i.i.preheader ] ; 2 uses
  store i32 %i.acj, ptr %.sroa.0.06.i.i.i, align 4, !tbaa !93, !noalias !230
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.adw, %i.adm
  br i1 %.not.i12.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i, label %.lr.ph.i11.i.i, !llvm.loop !186

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i: ; preds = %.lr.ph.i11.i.i, %middle.block433
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %.0.i.i214.i ; 2 uses
  %.not4.i.i.i.i.i.i.i.i216.i = icmp eq ptr %i.zy, %storemerge.i220272276.i
  br i1 %.not4.i.i.i.i.i.i.i.i216.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader

.lr.ph.i.i.i.i.i.i.i.i217.i.preheader:            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i
  %i.ady = add i64 %i.acl, -4
  %i.adz = sub i64 %i.ady, %i.acm                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 2
  %i.aeb = add nuw nsw i64 %i.aea, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.adz, 28
  %i.aec = sub i64 %i.adk, %i.acm
  %diff.check = icmp ugt i64 %i.aec, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader
  %n.vec = and i64 %i.aeb, 9223372036854775800    ; 3 uses
  %i.aed = mul i64 %n.vec, -4                     ; 2 uses
  %i.aee = getelementptr i8, ptr %i.adl, i64 %i.aed ; 2 uses
  %i.aef = getelementptr i8, ptr %i.zy, i64 %i.aed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aeg = mul i64 %index, -4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.adl, i64 %i.aeg ; 2 uses
  %next.gep422 = getelementptr i8, ptr %i.zy, i64 %i.aeg ; 2 uses
  %i.aeh = getelementptr inbounds i8, ptr %next.gep422, i64 -16
  %i.aei = getelementptr inbounds i8, ptr %next.gep422, i64 -32
  %wide.load = load <4 x i32>, ptr %i.aeh, align 4, !tbaa !93, !noalias !237
  %wide.load423 = load <4 x i32>, ptr %i.aei, align 4, !tbaa !93, !noalias !237
  %i.aej = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aek = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aej, align 4, !tbaa !93, !noalias !237
  store <4 x i32> %wide.load423, ptr %i.aek, align 4, !tbaa !93, !noalias !237
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ael = icmp eq i64 %index.next, %n.vec
  br i1 %i.ael, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aeb, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474

.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader, %middle.block
  %.ph = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader ], [ %i.aee, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i218.i.ph = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader ], [ %i.aef, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i217.i

.lr.ph.i.i.i.i.i.i.i.i217.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474, %.lr.ph.i.i.i.i.i.i.i.i217.i
  %i.aem = phi ptr [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i217.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i218.i = phi ptr [ %i.aen, %.lr.ph.i.i.i.i.i.i.i.i217.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i218.i.ph, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474 ]
  %i.aen = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i218.i, i64 -4 ; 3 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !93, !noalias !237
  %i.aep = getelementptr inbounds i8, ptr %i.aem, i64 -4 ; 3 uses
  store i32 %i.aeo, ptr %i.aep, align 4, !tbaa !93, !noalias !237
  %.not.i.i.i.i.i.i.i.i219.i = icmp eq ptr %i.aen, %storemerge.i220272276.i
  br i1 %.not.i.i.i.i.i.i.i.i219.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i, !llvm.loop !196

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i, %middle.block, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i
  %storemerge.i220.i = phi ptr [ %i.adl, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i ], [ %i.aee, %middle.block ], [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i217.i ] ; 2 uses
  %.not.i13.i.i = icmp eq ptr %storemerge.i220272276.i, null
  br i1 %.not.i13.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %storemerge.i220272276.i, i64 noundef %i.adf) #20, !noalias !230
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i: ; preds = %.lr.ph.i.i212.i, %middle.block446, %bb.dc, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, %bb.cz
  %.sroa.13.5.i = phi ptr [ %.sroa.13.4.i, %bb.cz ], [ %i.adx, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.adx, %bb.dc ], [ %.sroa.13.4.i, %middle.block446 ], [ %.sroa.13.4.i, %.lr.ph.i.i212.i ]
  %storemerge.i220271.i = phi ptr [ %storemerge.i220272276.i, %bb.cz ], [ %storemerge.i220.i, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %storemerge.i220.i, %bb.dc ], [ %storemerge.i220272276.i, %middle.block446 ], [ %storemerge.i220272276.i, %.lr.ph.i.i212.i ] ; 2 uses
  %i.aeq = phi ptr [ %i.zy, %bb.cz ], [ %i.adm, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.adm, %bb.dc ], [ %i.acu, %middle.block446 ], [ %i.acu, %.lr.ph.i.i212.i ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220271.i, i64 %i.aaw ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !93, !noalias !230
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = icmp ult i64 %i.ack, %i.aet
  br i1 %i.aeu, label %bb.dd, label %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i"

bb.dd:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i
  store i32 %i.acj, ptr %i.aer, align 4, !tbaa !93, !noalias !230
  br label %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i"

"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i": ; preds = %bb.dd, %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i
  %spec.select.i.i = call i32 @llvm.umax.i32(i32 %i.aav, i32 %.059.i280.i)
  br label %bb.de

bb.de:                                            ; preds = %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i", %.critedge.i.i, %.lr.ph281.i
  %.sroa.13.6.i = phi ptr [ %.sroa.13.4.i, %.critedge.i.i ], [ %.sroa.13.5.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %.sroa.13.4.i, %.lr.ph281.i ] ; 7 uses
  %storemerge.i220269.i = phi ptr [ %storemerge.i220272276.i, %.critedge.i.i ], [ %storemerge.i220271.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %storemerge.i220272276.i, %.lr.ph281.i ] ; 7 uses
  %i.aev = phi ptr [ %i.zy, %.critedge.i.i ], [ %i.aeq, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %i.zy, %.lr.ph281.i ] ; 7 uses
  %.3.i.i = phi i32 [ %.059.i280.i, %.critedge.i.i ], [ %spec.select.i.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %.059.i280.i, %.lr.ph281.i ]
  %.056.i.i = phi i32 [ %i.aav, %.critedge.i.i ], [ %i.aav, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ 0, %.lr.ph281.i ]
  %i.aew = add nuw i32 %.061.i279.i, 1            ; 2 uses
  %i.aex = load i32, ptr %i.os, align 8, !tbaa !112, !noalias !230
  %.not79.i.i = icmp ult i32 %i.aew, %i.aex
  br i1 %.not79.i.i, label %bb.df, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.df:                                            ; preds = %bb.de
  %i.aey = load i32, ptr %i.oi, align 8, !tbaa !99, !noalias !230 ; 3 uses
  %i.aez = icmp ugt i32 %i.aey, 2
  %i.afa = icmp ugt i32 %.056.i.i, %i.aey
  %or.cond82.i.i = and i1 %i.aez, %i.afa
  %i.afb = zext i32 %.065.i277.i to i64           ; 2 uses
  br i1 %or.cond82.i.i, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.afc = load ptr, ptr %i.om, align 8, !tbaa !92, !noalias !230
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %i.afb
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !93, !noalias !230 ; 3 uses
  %i.aff = icmp eq i32 %.065.i277.i, %i.afe
  br i1 %i.aff, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.afg = zext i32 %i.afe to i64
  %i.afh = load ptr, ptr %i.ok, align 8, !tbaa !92, !noalias !230
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %i.afg
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !93, !noalias !230
  %.not81.i.i = icmp eq i32 %i.afj, %i.aey
  br i1 %.not81.i.i, label %bb.dk, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.di:                                            ; preds = %bb.df
  %i.afk = load ptr, ptr %i.oh, align 8, !tbaa !92, !noalias !230
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.afb
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !93, !noalias !230 ; 3 uses
  %i.afn = icmp eq i32 %.065.i277.i, %i.afm
  br i1 %i.afn, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.afo = zext i32 %i.afm to i64
  %i.afp = load ptr, ptr %i.of, align 8, !tbaa !97, !noalias !230
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %i.afo
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !93, !noalias !230
  %.not80.i.i = icmp eq i32 %i.afr, %.0.i.i183.i
  br i1 %.not80.i.i, label %bb.dk, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.166.i.i = phi i32 [ %i.afe, %bb.dh ], [ %i.afm, %bb.dj ] ; 4 uses
  %.not.i184.i = icmp ugt i32 %.166.i.i, %i.wb
  %i.afs = sub nuw i32 %i.wb, %.166.i.i
  %i.aft = load i64, ptr %i.oe, align 8, !noalias !230
  %i.afu = trunc i64 %i.aft to i32
  %i.afv = sub i32 %i.zm, %.166.i.i
  %i.afw = add i32 %i.afv, %i.afu
  %i.afx = select i1 %.not.i184.i, i32 %i.afw, i32 %i.afs ; 2 uses
  %i.afy = icmp slt i32 %i.afx, %i.zx
  br i1 %i.afy, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %.lr.ph281.i

"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i": ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.de, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i
  %.sroa.13.7.i = phi ptr [ %.sroa.13.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %.sroa.13.6.i, %bb.de ], [ %.sroa.13.6.i, %bb.dg ], [ %.sroa.13.6.i, %bb.dh ], [ %.sroa.13.6.i, %bb.di ], [ %.sroa.13.6.i, %bb.dj ], [ %.sroa.13.6.i, %bb.dk ] ; 3 uses
  %storemerge.i220273.i = phi ptr [ %.sroa.0.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %storemerge.i220269.i, %bb.de ], [ %storemerge.i220269.i, %bb.dg ], [ %storemerge.i220269.i, %bb.dh ], [ %storemerge.i220269.i, %bb.di ], [ %storemerge.i220269.i, %bb.dj ], [ %storemerge.i220269.i, %bb.dk ] ; 6 uses
  %i.afz = phi ptr [ %.sroa.0.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %i.aev, %bb.de ], [ %i.aev, %bb.dg ], [ %i.aev, %bb.dh ], [ %i.aev, %bb.di ], [ %i.aev, %bb.dj ], [ %i.aev, %bb.dk ] ; 2 uses
  %i.aga = ptrtoint ptr %i.afz to i64
  %i.agb = ptrtoint ptr %storemerge.i220273.i to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = ashr exact i64 %i.agc, 2               ; 5 uses
  %.not147.i = icmp ugt i64 %i.agd, %i.tm
  br i1 %.not147.i, label %.lr.ph304.preheader.i, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge"

"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge": ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"
  %.pre186 = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230
  br label %.thread.i25

.lr.ph304.preheader.i:                            ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"
  %i.age = getelementptr inbounds i8, ptr %i.afz, i64 -4 ; 2 uses
  %.0133299.i = add nsw i64 %i.agd, -1
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !93, !noalias !230
  br label %.lr.ph304.i

.lr.ph306.i.loopexit:                             ; preds = %.lr.ph304.i
  %i.agg = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 3 uses
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %.0135310.i ; 2 uses
  %.val169.i = load i64, ptr %6, align 8, !noalias !230 ; 2 uses
  %.val170.i = load ptr, ptr %i.nz, align 8, !noalias !230 ; 2 uses
  %i.agi = load i32, ptr %i.ot, align 8, !tbaa !113, !noalias !238 ; 2 uses
  %i.agj = load i32, ptr %i.ox, align 4, !tbaa !114, !noalias !230
  %.val173.i = load i64, ptr %i.oy, align 8, !noalias !230
  %i.agk = mul i64 %.val173.i, %.val169.i
  %i.agl = getelementptr [4 x i8], ptr %.val170.i, i64 %i.agk
  br label %bb.dl

.lr.ph304.i:                                      ; preds = %.lr.ph304.i, %.lr.ph304.preheader.i
  %.0133302.i = phi i64 [ %.0133.i, %.lr.ph304.i ], [ %.0133299.i, %.lr.ph304.preheader.i ] ; 2 uses
  %.0134301.i = phi i32 [ %spec.select.i, %.lr.ph304.i ], [ %i.agf, %.lr.ph304.preheader.i ]
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220273.i, i64 %.0133302.i ; 2 uses
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !93, !noalias !230
  %spec.select.i = call i32 @llvm.umin.i32(i32 %.0134301.i, i32 %i.agn) ; 2 uses
  store i32 %spec.select.i, ptr %i.agm, align 4, !tbaa !93, !noalias !230
  %.0133.i = add i64 %.0133302.i, -1              ; 2 uses
  %.not148.i = icmp ult i64 %.0133.i, %i.tm
  br i1 %.not148.i, label %.lr.ph306.i.loopexit, label %.lr.ph304.i, !llvm.loop !201

._crit_edge307.i:                                 ; preds = %bb.dp
  %i.ago = load i32, ptr %i.age, align 4, !tbaa !93, !noalias !230 ; 2 uses
  %i.agp = icmp eq i32 %i.ago, 0
  %or.cond.i52 = select i1 %i.agp, i1 %i.vd, i1 false
  %i.agq = icmp eq i32 %i.ago, 1
  %or.cond3.i = select i1 %i.agq, i1 %i.ve, i1 false
  %or.cond320.i = select i1 %or.cond.i52, i1 true, i1 %or.cond3.i
  br i1 %or.cond320.i, label %bb.dq, label %.thread.i25

bb.dl:                                            ; preds = %bb.dp, %.lr.ph306.i.loopexit
  %.0132305.i = phi i64 [ %i.tm, %.lr.ph306.i.loopexit ], [ %i.aix, %bb.dp ] ; 4 uses
  %i.agr = load i32, ptr %i.agh, align 4, !noalias !230
  %i.ags = lshr i32 %i.agr, 1
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = trunc i64 %.0132305.i to i32           ; 2 uses
  %i.agv = sub i32 %i.agu, %i.sk                  ; 4 uses
  %i.agw = icmp ugt i32 %i.agi, %i.agv
  br i1 %i.agw, label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.agx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agv, i1 true) ; 2 uses
  %i.agy = xor i32 %i.agx, 31                     ; 3 uses
  %.neg.i.i.i = ashr exact i32 -2147483648, %i.agx
  %i.agz = add i32 %.neg.i.i.i, %i.agv            ; 2 uses
  %i.aha = load i32, ptr %i.ou, align 4, !tbaa !115, !noalias !238
  %i.ahb = sub i32 %i.agy, %i.aha
  %i.ahc = load i32, ptr %i.ov, align 4, !tbaa !116, !noalias !238 ; 2 uses
  %i.ahd = load i32, ptr %i.ow, align 8, !tbaa !117, !noalias !238 ; 3 uses
  %i.ahe = add i32 %i.ahd, %i.ahc                 ; 2 uses
  %i.ahf = shl i32 %i.ahb, %i.ahe
  %i.ahg = add i32 %i.ahf, %i.agi
  %i.ahh = sub i32 %i.agy, %i.ahc
  %i.ahi = lshr i32 %i.agz, %i.ahh
  %i.ahj = shl i32 %i.ahi, %i.ahd
  %i.ahk = add i32 %i.ahg, %i.ahj
  %notmask.i.i.i = shl nsw i32 -1, %i.ahd
  %i.ahl = xor i32 %notmask.i.i.i, -1
  %i.ahm = and i32 %i.agz, %i.ahl
  %i.ahn = add i32 %i.ahk, %i.ahm
  %i.aho = sub i32 %i.agy, %i.ahe
  %i.ahp = uitofp i32 %i.aho to float
  br label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i

_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i: ; preds = %bb.dm, %bb.dl
  %.02.i.i = phi float [ %i.ahp, %bb.dm ], [ 0.000000e+00, %bb.dl ]
  %.0.i187.i = phi i32 [ %i.ahn, %bb.dm ], [ %i.agv, %bb.dl ]
  %i.ahq = add i32 %.0.i187.i, %i.agj
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = mul i64 %.val169.i, %i.agt
  %i.aht = getelementptr [4 x i8], ptr %.val170.i, i64 %i.ahs
  %i.ahu = getelementptr [4 x i8], ptr %i.aht, i64 %i.ahr
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !57, !noalias !230
  %i.ahw = fadd float %.02.i.i, %i.ahv
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220273.i, i64 %.0132305.i ; 2 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !93, !noalias !230 ; 4 uses
  %i.ahz = icmp ult i32 %i.ahy, 16
  br i1 %i.ahz, label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i
  %i.aia = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahy, i1 true) ; 3 uses
  %.neg.i.i188.i = ashr exact i32 -2147483648, %i.aia
  %i.aib = add i32 %.neg.i.i188.i, %i.ahy
  %i.aic = sub nuw nsw i32 29, %i.aia             ; 2 uses
  %i.aid = lshr i32 %i.aib, %i.aic
  %i.aie = shl nuw nsw i32 %i.aia, 2
  %reass.sub111 = sub nsw i32 %i.aid, %i.aie
  %i.aif = add nsw i32 %reass.sub111, 124
  %i.aig = uitofp nneg i32 %i.aic to float
  br label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i

_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i: ; preds = %bb.dn, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i
  %.05.i.i = phi float [ %i.aig, %bb.dn ], [ 0.000000e+00, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i ]
  %.0.i189.in.i = phi i32 [ %i.aif, %bb.dn ], [ %i.ahy, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i ]
  %.0.i189.i = zext nneg i32 %.0.i189.in.i to i64
  %i.aih = getelementptr [4 x i8], ptr %i.agl, i64 %.0.i189.i
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !57, !noalias !230
  %i.aij = fadd float %.05.i.i, %i.aii
  %i.aik = fadd float %i.ahw, %i.aij
  %i.ail = load float, ptr %i.xw, align 4, !tbaa !233, !noalias !230
  %i.aim = fadd float %i.ail, %i.aik              ; 2 uses
  %i.ain = getelementptr [16 x i8], ptr %i.xv, i64 %.0132305.i ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 12 ; 2 uses
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !233, !noalias !230
  %i.aiq = fcmp ogt float %i.aip, %i.aim
  br i1 %i.aiq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i
  store i32 %i.agu, ptr %i.ain, align 4, !tbaa !235, !noalias !230
  %i.air = load i32, ptr %i.ahx, align 4, !tbaa !93, !noalias !230
  %i.ais = add i32 %i.air, 1
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  store i32 %i.ais, ptr %i.ait, align 4, !tbaa !234, !noalias !230
  %i.aiu = load i32, ptr %i.agh, align 4, !noalias !230
  %i.aiv = lshr i32 %i.aiu, 1
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !236, !noalias !230
  store float %i.aim, ptr %i.aio, align 4, !tbaa !233, !noalias !230
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i
  %i.aix = add nuw i64 %.0132305.i, 1             ; 2 uses
  %exitcond354.not.i = icmp eq i64 %i.aix, %i.agd
  br i1 %exitcond354.not.i, label %._crit_edge307.i, label %bb.dl, !llvm.loop !202

bb.dq:                                            ; preds = %._crit_edge307.i
  %i.aiy = add i64 %.0138308.i, 1                 ; 2 uses
  %i.aiz = icmp ugt i64 %i.aiy, 7
  %i.aja = icmp ugt i64 %i.agd, 9
  %or.cond238.i = and i1 %i.aiz, %i.aja           ; 2 uses
  %i.ajb = add nsw i64 %i.agd, -10
  %spec.select241.i = select i1 %or.cond238.i, i64 0, i64 %i.aiy
  %spec.select242.i = select i1 %or.cond238.i, i64 %i.ajb, i64 0
  br label %.thread.i25

.thread.i25:                                      ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge", %bb.dq, %._crit_edge307.i, %bb.ci
  %i.ajc = phi ptr [ %i.agg, %bb.dq ], [ %i.agg, %._crit_edge307.i ], [ %.pre186, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %i.vg, %bb.ci ] ; 3 uses
  %.sroa.0.4.i = phi ptr [ %storemerge.i220273.i, %bb.dq ], [ %storemerge.i220273.i, %._crit_edge307.i ], [ %storemerge.i220273.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.sroa.0.3.i, %bb.ci ] ; 3 uses
  %.sroa.13.8.i = phi ptr [ %.sroa.13.7.i, %bb.dq ], [ %.sroa.13.7.i, %._crit_edge307.i ], [ %.sroa.13.7.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.sroa.13.3.i, %bb.ci ] ; 3 uses
  %.3.i26 = phi i64 [ %spec.select241.i, %bb.dq ], [ 0, %._crit_edge307.i ], [ %.0138308.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.0138308.i, %bb.ci ]
  %.2.i27 = phi i64 [ %spec.select242.i, %bb.dq ], [ 0, %._crit_edge307.i ], [ 0, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %i.yp, %bb.ci ]
  %i.ajd = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajc to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  %i.ajh = ashr exact i64 %i.ajg, 3               ; 2 uses
  %i.aji = icmp ult i64 %i.xy, %i.ajh
  br i1 %i.aji, label %bb.bu, label %.preheader246.i, !llvm.loop !203

bb.dr:                                            ; preds = %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i, %.lr.ph315.i
  %.0131314.i = phi i64 [ %i.ajh, %.lr.ph315.i ], [ %i.amz, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i ] ; 3 uses
  %i.ajj = getelementptr inbounds nuw [16 x i8], ptr %i.uc, i64 %.0131314.i ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !234, !noalias !230 ; 2 uses
  %i.ajm = icmp ne i32 %i.ajl, 0                  ; 2 uses
  br i1 %i.ajm, label %bb.ds, label %.critedge.i

bb.ds:                                            ; preds = %bb.dr
  %i.ajn = add i32 %i.ajl, -1                     ; 2 uses
  %i.ajo = load i64, ptr %i.oy, align 8, !tbaa !62, !noalias !230
  %i.ajp = trunc i64 %i.ajo to i32                ; 2 uses
  %i.ajq = load ptr, ptr %i.vf, align 8, !tbaa !42, !noalias !230 ; 5 uses
  %i.ajr = load ptr, ptr %i.rf, align 8, !tbaa !52, !noalias !230 ; 2 uses
  %i.ajs = icmp ult ptr %i.ajq, %i.ajr
  br i1 %i.ajs, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ajt = shl i32 %i.ajp, 1
  store i32 %i.ajt, ptr %i.ajq, align 4, !noalias !230
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  store i32 %i.ajn, ptr %i.aju, align 4, !tbaa !55, !noalias !230
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i51

bb.du:                                            ; preds = %bb.ds
  %i.ajw = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230
  %i.ajx = ptrtoint ptr %i.ajq to i64
  %i.ajy = ptrtoint ptr %i.ajw to i64             ; 2 uses
  %i.ajz = sub i64 %i.ajx, %i.ajy                 ; 2 uses
  %i.aka = ashr exact i64 %i.ajz, 3
  %i.akb = add nsw i64 %i.aka, 1                  ; 2 uses
  %i.akc = icmp ugt i64 %i.akb, 2305843009213693951
  br i1 %i.akc, label %bb.dv, label %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40

bb.dv:                                            ; preds = %bb.du
  call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.qj) #17, !noalias !230
  unreachable

_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40: ; preds = %bb.du
  %i.akd = ptrtoint ptr %i.ajr to i64
  %i.ake = sub i64 %i.akd, %i.ajy                 ; 2 uses
  %.not.i.i.i190.i = icmp ult i64 %i.ake, 9223372036854775800
  %i.akf = ashr exact i64 %i.ake, 2
  %.sroa.speculated.i.i.i.i41 = call i64 @llvm.umax.i64(i64 %i.akf, i64 %i.akb)
  %.0.i.i.i.i42 = select i1 %.not.i.i.i190.i, i64 %.sroa.speculated.i.i.i.i41, i64 2305843009213693951 ; 4 uses
  %i.akg = icmp ne i64 %.0.i.i.i.i42, 0
  call void @llvm.assume(i1 %i.akg)
  %i.akh = icmp ugt i64 %.0.i.i.i.i42, 2305843009213693951
  br i1 %i.akh, label %bb.dw, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i43

bb.dw:                                            ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #17, !noalias !230
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i43: ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40
  %i.aki = shl nuw i64 %.0.i.i.i.i42, 3
  %i.akj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aki) #18, !noalias !230 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.ajz ; 5 uses
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.0.i.i.i.i42
  %i.akm = shl i32 %i.ajp, 1
  store i32 %i.akm, ptr %i.akk, align 4, !noalias !230
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  store i32 %i.ajn, ptr %i.akn, align 4, !tbaa !55, !noalias !230
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akk, i64 8 ; 3 uses
  %i.akp = load ptr, ptr %i.vf, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %i.akq = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.akp, %i.akq
end_hunk_0
