Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.03?download=true
inline.NumInlined: 94
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyReNCNvB16_9configure0E0EB18_:bb.a
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !105, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !105
  %i.al = sub nuw i64 %.sroa.04.0.val20, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val19, i64 %i.ak
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit

bb.g:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !105
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.i8.i = phi i64 [ %i.al, %bb.f ], [ %.sroa.04.0.val20, %bb.g ] ; 2 uses
  %.sroa.0.0.i9.i = phi ptr [ %i.am, %bb.f ], [ %.sroa.04.0.val19, %bb.g ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i, i64 %.sroa.3.0.i8.i)
  %i.an = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i, ptr nonnull readonly %.sroa.0.0.i9.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !107 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = sub i64 %.sroa.3.0.i.i, %.sroa.3.0.i8.i
  %spec.select.i.i.i.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.ao ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.val14 = load i64, ptr %i.z, align 8, !noundef !5 ; 3 uses
  %.sroa.08.0.val15 = load ptr, ptr %.sroa.08.0, align 8 ; 4 uses
  %i.ar = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.ar, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !108
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !109
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(104) %i.g) #20, !noalias !109
  %i.as = load i64, ptr %i.h, align 8, !range !8, !noalias !108, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !108, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !108
  %i.aw = sub nuw i64 %.sroa.0.0.val14, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 %i.av
  br label %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i21

bb.i:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !108
  br label %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i21

_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i21: ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.i22 = phi i64 [ %i.aw, %bb.h ], [ %.sroa.0.0.val14, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i23 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.0.0.val, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val15) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !110
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !111
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(104) %i.e) #20, !noalias !111
  %i.ay = load i64, ptr %i.f, align 8, !range !8, !noalias !110, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !110, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110
  %i.bc = sub nuw i64 %.sroa.08.0.val16, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val15, i64 %i.bb
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28

bb.k:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28: ; preds = %bb.j, %bb.k
  %.sroa.3.0.i8.i24 = phi i64 [ %i.bc, %bb.j ], [ %.sroa.08.0.val16, %bb.k ] ; 2 uses
  %.sroa.0.0.i9.i25 = phi ptr [ %i.bd, %bb.j ], [ %.sroa.08.0.val15, %bb.k ]
  %spec.store.select.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i22, i64 %.sroa.3.0.i8.i24)
  %i.be = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i23, ptr nonnull readonly %.sroa.0.0.i9.i25, i64 %spec.store.select.i.i.i.i.i26), !alias.scope !112 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %.sroa.3.0.i.i22, %.sroa.3.0.i8.i24
  %spec.select.i.i.i.i.i27 = select i1 %i.bg, i64 %i.bh, i64 %i.bf
  %i.bi = xor i64 %spec.select.i.i.i.i.i27, %spec.select.i.i.i.i.i
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0EB13_.exit, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.04.0.val12 = load i64, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8 ; 4 uses
  %.sroa.08.0.val13 = load i64, ptr %i.ar, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !114
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(104) %i.c) #20, !noalias !114
  %i.bk = load i64, ptr %i.d, align 8, !range !8, !noalias !113, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !113, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  %i.bo = sub nuw i64 %.sroa.04.0.val12, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val, i64 %i.bn
  br label %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i29

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  br label %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i29

_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i29: ; preds = %bb.n, %bb.m
  %.sroa.3.0.i.i30 = phi i64 [ %i.bo, %bb.m ], [ %.sroa.04.0.val12, %bb.n ] ; 2 uses
  %.sroa.0.0.i.i31 = phi ptr [ %i.bp, %bb.m ], [ %.sroa.04.0.val, %bb.n ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !116
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #20, !noalias !116
  %i.bq = load i64, ptr %i.b, align 8, !range !8, !noalias !115, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !115, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  %i.bu = sub nuw i64 %.sroa.08.0.val13, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 %i.bt
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit36

bb.p:                                             ; preds = %_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit36

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit36: ; preds = %bb.o, %bb.p
  %.sroa.3.0.i8.i32 = phi i64 [ %i.bu, %bb.o ], [ %.sroa.08.0.val13, %bb.p ] ; 2 uses
  %.sroa.0.0.i9.i33 = phi ptr [ %i.bv, %bb.o ], [ %.sroa.08.0.val, %bb.p ]
  %spec.store.select.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i30, i64 %.sroa.3.0.i8.i32)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i31, ptr nonnull readonly %.sroa.0.0.i9.i33, i64 %spec.store.select.i.i.i.i.i34), !alias.scope !117 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %.sroa.3.0.i.i30, %.sroa.3.0.i8.i32
  %spec.select.i.i.i.i.i35 = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = xor i64 %spec.select.i.i.i.i.i35, %spec.select.i.i.i.i.i
  %i.cb = icmp slt i64 %i.ca, 0
  %..i = select i1 %i.cb, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0EB13_.exit: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit36
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit28 ], [ %..i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage11sort_by_keyReNCNvBA_9configure0E0BC_.exit36 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2A_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load ptr, ptr %.sroa.0.0, align 8 ; 4 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val18 = load i64, ptr %i.n, align 8, !noundef !5 ; 6 uses
  %.sroa.04.0.val19 = load ptr, ptr %.sroa.04.0, align 8 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val20 = load i64, ptr %i.o, align 8, !noundef !5 ; 5 uses
  %i.p = icmp eq i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %i.q = icmp ult i64 %.sroa.04.0.val20, %.sroa.0.0.val18
  br i1 %i.p, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.val19), "nonnull"(ptr %.sroa.0.0.val17) ]
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.04.0.val19, i64 %.sroa.0.0.val18)
  %i.s = icmp sgt i32 %i.r, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.neg.i.i = phi i1 [ %i.s, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %.sroa.08.0, align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val16 = load i64, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.u = icmp eq i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %i.v = icmp ult i64 %.sroa.08.0.val16, %.sroa.0.0.val18
  br i1 %i.u, label %bb.e, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22

bb.e:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val15), "nonnull"(ptr %.sroa.0.0.val17) ]
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.08.0.val15, i64 %.sroa.0.0.val18)
  %i.x = icmp sgt i32 %i.w, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit, %bb.e
  %.sroa.01.0.neg.i.i21 = phi i1 [ %i.x, %bb.e ], [ %i.v, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit ]
  %i.y = xor i1 %.sroa.01.0.neg.i.i, %.sroa.01.0.neg.i.i21
  br i1 %i.y, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2u_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22
  %i.z = icmp eq i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %i.aa = icmp ult i64 %.sroa.08.0.val16, %.sroa.04.0.val20
  br i1 %i.z, label %bb.g, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit24

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val15), "nonnull"(ptr %.sroa.04.0.val19) ]
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.08.0.val15, i64 %.sroa.04.0.val20)
  %i.ac = icmp sgt i32 %i.ab, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit24

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit24: ; preds = %bb.f, %bb.g
  %.sroa.01.0.neg.i.i23 = phi i1 [ %i.ac, %bb.g ], [ %i.aa, %bb.f ]
  %i.ad = xor i1 %.sroa.01.0.neg.i.i, %.sroa.01.0.neg.i.i23
  %..i = select i1 %i.ad, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2u_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2u_.exit: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit24
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit22 ], [ %..i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit24 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENCNvMB1p_B1n_5short0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB1r_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 192
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423484
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load i64, ptr %i.h, align 8, !noundef !5
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.val.i, i64 %.sroa.02.0.i)
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 56
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !5
  %..i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.1, i64 %..i.i.i.i)
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 104
  %.val.i.2 = load i64, ptr %i.l, align 8, !noundef !5
  %..i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.2, i64 %..i.i.i.i.1)
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 152
  %.val.i.3 = load i64, ptr %i.n, align 8, !noundef !5
  %..i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.3, i64 %..i.i.i.i.2) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.epil = load i64, ptr %i.q, align 8, !noundef !5
  %..i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.epil, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit, label %bb.d, !llvm.loop !118

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1z_8adapters3map8map_foldRBQ_jjNCNvMBS_BQ_5short0NvYjNtNtBb_3cmp3Ord3maxE0EBU_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !130 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !noalias !130 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65)
  %i.m = add <16 x i8> %wide.load4, splat (i8 -65)
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26)
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26)
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.r = or <16 x i8> %i.p, %wide.load
  %i.s = or <16 x i8> %i.q, %wide.load4
  %i.t = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !131
  store <16 x i8> %i.s, ptr %i.u, align 1, !noalias !131
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !134

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <8 x i8>, ptr %i.y, align 1, !noalias !130 ; 2 uses
  %i.z = add <8 x i8> %wide.load7, splat (i8 -65)
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26)
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ac = or <8 x i8> %i.ab, %wide.load7
  %i.ad = getelementptr i8, ptr %i.x, i64 %index6
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !noalias !131
  %index.next8 = add nuw i64 %index6, 8           ; 2 uses
  %i.ae = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %i.b, %i.c
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1
  %i.ah = add i64 %i.ag, %i.b
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.ai, align 1, !noalias !130, !noundef !5 ; 2 uses
  %i.aj = add i8 %.val15.i.prol, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.al, %.val15.i.prol
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.am, align 1, !noalias !131
  %i.an = add i64 %.ph, 1                         ; 2 uses
  %i.ao = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph.prol ]
  %i.ap = icmp eq i64 %i.ah, %i.c
  br i1 %i.ap, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ar, align 1, !noalias !130, !noundef !5 ; 2 uses
  %i.as = add i8 %.val15.i, -65
  %i.at = icmp ult i8 %i.as, 26
  %i.au = select i1 %i.at, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.au, %.val15.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  store i8 %.sroa.0.0.i.i.i, ptr %i.av, align 1, !noalias !131
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.val15.i.1 = load i8, ptr %i.ax, align 1, !noalias !130, !noundef !5 ; 2 uses
  %i.ay = add i8 %.val15.i.1, -65
  %i.az = icmp ult i8 %i.ay, 26
  %i.ba = select i1 %i.az, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.ba, %.val15.i.1
  %i.bb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aq
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bc, align 1, !noalias !131
  %i.bd = add i64 %i.aq, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.d
  br i1 %i.bf, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %vec.epilog.scalar.ph, !llvm.loop !129

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bd, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !130
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !143, !noundef !5 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !144, !noundef !5
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !144, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !145
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !143, !noundef !5 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !144, !noundef !5
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g
end_hunk_0
