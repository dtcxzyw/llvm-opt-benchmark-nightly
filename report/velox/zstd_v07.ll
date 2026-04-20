inline.NumInlined: 403
inline.NumDeleted: 55
begin_hunk_0

@HUFv07_readStats.l = internal unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 7, i32 8, i32 15, i32 16, i32 31, i32 32, i32 63, i32 64, i32 127, i32 128], align 16
@algoTime = internal unnamed_addr constant [16 x [3 x %struct.algo_time_t]] [[3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 38, i32 130 }, %struct.algo_time_t { i32 1313, i32 74 }, %struct.algo_time_t { i32 2151, i32 38 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 448, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 41 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 556, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 47 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 714, i32 128 }, %struct.algo_time_t { i32 1418, i32 74 }, %struct.algo_time_t { i32 2436, i32 53 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 883, i32 128 }, %struct.algo_time_t { i32 1437, i32 74 }, %struct.algo_time_t { i32 2464, i32 61 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 897, i32 128 }, %struct.algo_time_t { i32 1515, i32 75 }, %struct.algo_time_t { i32 2622, i32 68 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 926, i32 128 }, %struct.algo_time_t { i32 1613, i32 75 }, %struct.algo_time_t { i32 2730, i32 75 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 947, i32 128 }, %struct.algo_time_t { i32 1729, i32 77 }, %struct.algo_time_t { i32 3359, i32 77 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1107, i32 128 }, %struct.algo_time_t { i32 2083, i32 81 }, %struct.algo_time_t { i32 4006, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1177, i32 128 }, %struct.algo_time_t { i32 2379, i32 87 }, %struct.algo_time_t { i32 4785, i32 88 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1242, i32 128 }, %struct.algo_time_t { i32 2415, i32 93 }, %struct.algo_time_t { i32 5155, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1349, i32 128 }, %struct.algo_time_t { i32 2644, i32 106 }, %struct.algo_time_t { i32 5260, i32 106 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1455, i32 128 }, %struct.algo_time_t { i32 2422, i32 124 }, %struct.algo_time_t { i32 4174, i32 124 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 722, i32 128 }, %struct.algo_time_t { i32 1891, i32 145 }, %struct.algo_time_t { i32 1936, i32 146 }]], align 16
@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@defaultCustomMem = internal unnamed_addr constant %struct.ZSTDv07_customMem { ptr @ZSTDv07_defaultAllocFunction, ptr @ZSTDv07_defaultFreeFunction, ptr null }, align 8
@ZSTDv07_did_fieldSize = internal unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 4], align 16
end_hunk_0
begin_hunk_1_@HUFv07_decompress4X2_DCtx:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2049 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_1
begin_hunk_2_@HUFv07_decompress4X4_DCtx:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [4097 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_2
begin_hunk_3_@HUFv07_selectDecoder:bb.a
  ret i32 %i.u
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca [4097 x i32], align 16              ; 6 uses
  %5 = alloca [2049 x i32], align 16              ; 6 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.tail, label %bb.b

end_hunk_3
begin_hunk_4_@HUFv07_decompress:bb.a
  %i.w = lshr i32 %i.v, 3
  %i.x = add i32 %i.w, %i.v
  %.not = icmp ult i32 %i.x, %i.p
  br i1 %.not, label %call.1, label %call.0

call.0:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %5, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %5, align 16
  %6 = call i64 @HUFv07_readDTableX2(ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3) ; 5 uses
  %7 = icmp ult i64 %6, -119
  br i1 %7, label %8, label %HUFv07_decompress4X2.exit

8:                                                ; preds = %call.0
  %.not19.i.i = icmp ult i64 %6, %3
  br i1 %.not19.i.i, label %9, label %HUFv07_decompress4X2.exit

9:                                                ; preds = %8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 %6
  %11 = sub nuw i64 %3, %6
  %12 = call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %10, i64 noundef %11, ptr noundef nonnull %5)
  br label %HUFv07_decompress4X2.exit

HUFv07_decompress4X2.exit:                        ; preds = %call.0, %8, %9
  %.0.i.i = phi i64 [ %12, %9 ], [ %6, %call.0 ], [ -72, %8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.tail

call.1:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %4, i8 0, i64 16388, i1 false)
  store i32 201326604, ptr %4, align 16
  %13 = call i64 @HUFv07_readDTableX4(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %3) ; 5 uses
  %14 = icmp ult i64 %13, -119
  br i1 %14, label %15, label %HUFv07_decompress4X4.exit

15:                                               ; preds = %call.1
  %.not19.i.i26 = icmp ult i64 %13, %3
  br i1 %.not19.i.i26, label %16, label %HUFv07_decompress4X4.exit

16:                                               ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 %13
  %18 = sub nuw i64 %3, %13
  %19 = call fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %17, i64 noundef %18, ptr noundef nonnull %4)
  br label %HUFv07_decompress4X4.exit

HUFv07_decompress4X4.exit:                        ; preds = %call.1, %15, %16
  %.0.i.i25 = phi i64 [ %19, %16 ], [ %13, %call.1 ], [ -72, %15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.tail

.tail:                                            ; preds = %HUFv07_decompress4X2.exit, %HUFv07_decompress4X4.exit, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ %1, %bb.d ], [ %1, %bb.f ], [ %.0.i.i, %HUFv07_decompress4X2.exit ], [ %.0.i.i25, %HUFv07_decompress4X4.exit ]
  ret i64 %.0
}

end_hunk_4
begin_hunk_5_@ZSTDv07_decompressBegin
define noundef i64 @ZSTDv07_decompressBegin(ptr noundef writeonly captures(none) initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21612
  store i32 0, ptr %i.e, align 4, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 0, ptr %i.f, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21712
  store i32 0, ptr %i.g, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  ret i64 0
end_hunk_5
begin_hunk_6_@ZSTDv07_decompressBegin:bb.a
; Function Attrs: nounwind uwtable
define ptr @ZSTDv07_createDCtx_advanced(ptr noundef byval(%struct.ZSTDv07_customMem) align 8 captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_6
begin_hunk_7_@ZSTDv07_createDCtx_advanced:bb.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @defaultCustomMem, i64 24, i1 false), !tbaa.struct !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_7
begin_hunk_8_@ZSTDv07_createDCtx_advanced:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 21728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 21552
  store i64 5, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 21604
  store i32 0, ptr %i.o, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 21520
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.q, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 21612
  store i32 0, ptr %i.r, align 4, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 21608
  store i32 0, ptr %i.s, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 21712
  store i32 0, ptr %i.t, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  br label %bb.f
end_hunk_8
begin_hunk_9_@ZSTDv07_createDCtx:bb.a
  %defaultCustomMem.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21744
  store ptr null, ptr %defaultCustomMem.sroa.7.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 21552
  store i64 5, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 21604
  store i32 0, ptr %i.d, align 4, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 21520
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.f, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 21612
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 21608
  store i32 0, ptr %i.h, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21712
  store i32 0, ptr %i.i, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  br label %ZSTDv07_createDCtx_advanced.exit
end_hunk_9
begin_hunk_10_@ZSTDv07_decompressBlock_internal:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 21752
  store i64 %.0131153161170.i, ptr %i.cc, align 8, !tbaa !106
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 1, ptr %i.cd, align 8, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.0131153161170.i
  store i64 0, ptr %i.ce, align 1
  br label %bb.ac
end_hunk_10
begin_hunk_11_@ZSTDv07_decompressBlock_internal:bb.a

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 21608
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !89
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %ZSTDv07_decompressSequences.exit, label %bb.n

end_hunk_11
begin_hunk_12_@ZSTDv07_decompressBlock_internal:bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 21544
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !102
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !88 ; 3 uses
  %i.gl = icmp eq i64 %4, %.5.i
  br i1 %i.gl, label %ZSTDv07_decompressSequences.exit, label %bb.ad

end_hunk_12
begin_hunk_13_@ZSTDv07_decompressBlock_internal:bb.a

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 1, ptr %i.gj, align 4, !tbaa !88
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !3
end_hunk_13
begin_hunk_14_@ZSTDv07_decompressBegin_usingDict:bb.a
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.l, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.m, align 4, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21608 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21712 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %i.t = icmp ne ptr %1, null
end_hunk_14
begin_hunk_15_@ZSTDv07_decompressBegin_usingDict:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ac, align 1
  store i32 %.val.i, ptr %i.r, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = add i64 %2, -8                          ; 5 uses
  %i.af = getelementptr i8, ptr %1, i64 %2        ; 3 uses
end_hunk_15
begin_hunk_16_@ZSTDv07_decompressBegin_usingDict:bb.a
  br i1 %or.cond96.i.i, label %ZSTDv07_loadEntropy.exit.i, label %ZSTDv07_decompress_insertDictionary.exit.thread

ZSTDv07_loadEntropy.exit.i:                       ; preds = %bb.aw
  store i32 1, ptr %i.p, align 4, !tbaa !88
  store i32 1, ptr %i.q, align 8, !tbaa !89
  %i.hw = ptrtoint ptr %i.hk to i64
  %i.hx = ptrtoint ptr %i.ad to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 2 uses
end_hunk_16
begin_hunk_17_@ZSTDv07_decompressFrame:bb.a

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 21712
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !90
  %.not10.i83 = icmp eq i32 %i.ab, %i.z
  br i1 %.not10.i83, label %bb.f, label %.thread

end_hunk_17
begin_hunk_18_@ZSTDv07_decompressDCtx
define i64 @ZSTDv07_decompressDCtx(ptr noundef initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.b, align 4, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21612
  store i32 0, ptr %i.e, align 4, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21608
  store i32 0, ptr %i.f, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 21712
  store i32 0, ptr %i.g, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %.not.i.i = icmp eq ptr %1, null
end_hunk_18
begin_hunk_19_@ZSTDv07_decompress:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 21608
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21712
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 21560
  store i64 5, ptr %i.c, align 8, !tbaa !81
  store i32 0, ptr %i.d, align 4, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.f, align 4, !tbaa !3
  store i32 0, ptr %i.g, align 4, !tbaa !88
  store i32 0, ptr %i.h, align 8, !tbaa !89
  store i32 0, ptr %i.i, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %ZSTDv07_freeDCtx.exit, label %bb.c
end_hunk_19
begin_hunk_20_@ZSTDv07_nextSrcSizeToDecompress
define i64 @ZSTDv07_nextSrcSizeToDecompress(ptr noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  ret i64 %i.b
}

end_hunk_20
begin_hunk_21_@ZSTDv07_isSkipFrame
define range(i32 0, 2) i32 @ZSTDv07_isSkipFrame(ptr noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21604
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87
  %i.c = icmp eq i32 %i.b, 5
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
end_hunk_21
begin_hunk_22_@ZSTDv07_decompressContinue
define i64 @ZSTDv07_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21552 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i64 %4, %i.b
  br i1 %.not, label %bb.b, label %ZSTDv07_decodeFrameHeader.exit.thread

end_hunk_22
begin_hunk_23_@ZSTDv07_decompressContinue:bb.a

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21604 ; 10 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  switch i32 %i.m, label %ZSTDv07_decodeFrameHeader.exit.thread [
    i32 0, label %bb.e
    i32 1, label %ZSTDv07_checkContinuity.exit._crit_edge
end_hunk_23
begin_hunk_24_@ZSTDv07_decompressContinue:bb.a
bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) %3, i64 5, i1 false)
  store i64 3, ptr %i.a, align 8, !tbaa !81
  store i32 4, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.h:                                             ; preds = %bb.f
end_hunk_24
begin_hunk_25_@ZSTDv07_decompressContinue:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.af, -5
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !81
  store i32 1, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.k:                                             ; preds = %bb.i
  store i64 0, ptr %i.a, align 8, !tbaa !81
  br label %bb.l

bb.l:                                             ; preds = %ZSTDv07_checkContinuity.exit._crit_edge, %bb.k
end_hunk_25
begin_hunk_26_@ZSTDv07_decompressContinue:bb.a

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 21712
  %i.au = load i32, ptr %i.at, align 8, !tbaa !90
  %.not10.i99 = icmp eq i32 %i.au, %i.as
  br i1 %.not10.i99, label %bb.n, label %ZSTDv07_decodeFrameHeader.exit.thread

end_hunk_26
begin_hunk_27_@ZSTDv07_decompressContinue:bb.a
  br i1 %i.az, label %bb.p, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.p:                                             ; preds = %ZSTDv07_decodeFrameHeader.exit
  store i64 3, ptr %i.a, align 8, !tbaa !81
  store i32 2, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.q:                                             ; preds = %ZSTDv07_checkContinuity.exit
end_hunk_27
begin_hunk_28_@ZSTDv07_decompressContinue:bb.a
  br i1 %.not91, label %bb.s, label %ZSTDv07_decodeFrameHeader.exit.thread

bb.s:                                             ; preds = %bb.r, %ZSTDv07_getcBlockSize.exit.thread
  store i64 0, ptr %i.a, align 8, !tbaa !81
  br label %bb.t

ZSTDv07_getcBlockSize.exit.thread107:             ; preds = %ZSTDv07_getcBlockSize.exit, %bb.q
  %.0.i100109 = phi i64 [ %i.bp, %ZSTDv07_getcBlockSize.exit ], [ 1, %bb.q ]
  store i64 %.0.i100109, ptr %i.a, align 8, !tbaa !81
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 21600
  store i32 %i.bc, ptr %i.cb, align 8, !tbaa !132
  br label %bb.t

bb.t:                                             ; preds = %ZSTDv07_getcBlockSize.exit.thread107, %bb.s
  %storemerge = phi i32 [ 3, %ZSTDv07_getcBlockSize.exit.thread107 ], [ 0, %bb.s ]
  store i32 %storemerge, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.u:                                             ; preds = %ZSTDv07_checkContinuity.exit
end_hunk_28
begin_hunk_29_@ZSTDv07_decompressContinue:bb.a
  br i1 %i.cf, label %ZSTDv07_copyRawBlock.exit.thread113, label %bb.x

ZSTDv07_copyRawBlock.exit.thread113:              ; preds = %bb.w
  store i32 2, ptr %i.l, align 4, !tbaa !87
  store i64 3, ptr %i.a, align 8, !tbaa !81
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.x:                                             ; preds = %bb.w
end_hunk_29
begin_hunk_30_@ZSTDv07_decompressContinue:bb.a
  br label %ZSTDv07_copyRawBlock.exit

ZSTDv07_copyRawBlock.exit.thread:                 ; preds = %bb.u, %bb.x
  store i32 2, ptr %i.l, align 4, !tbaa !87
  store i64 3, ptr %i.a, align 8, !tbaa !81
  br label %bb.z

ZSTDv07_copyRawBlock.exit:                        ; preds = %bb.y, %bb.v
  %.0 = phi i64 [ %i.ce, %bb.v ], [ %4, %bb.y ]   ; 3 uses
  store i32 2, ptr %i.l, align 4, !tbaa !87
  store i64 3, ptr %i.a, align 8, !tbaa !81
  %i.cg = icmp ult i64 %.0, -119
  br i1 %i.cg, label %bb.z, label %ZSTDv07_decodeFrameHeader.exit.thread

end_hunk_30
begin_hunk_31_@ZSTDv07_decompressContinue:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 152844
  %.val = load i32, ptr %i.co, align 1
  %i.cp = zext i32 %.val to i64
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !81
  store i32 5, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

bb.ac:                                            ; preds = %ZSTDv07_checkContinuity.exit
  store i64 0, ptr %i.a, align 8, !tbaa !81
  store i32 0, ptr %i.l, align 4, !tbaa !87
  br label %ZSTDv07_decodeFrameHeader.exit.thread

ZSTDv07_decodeFrameHeader.exit.thread:            ; preds = %bb.m, %ZSTDv07_copyRawBlock.exit.thread113, %bb.t, %bb.r, %bb.h, %ZSTDv07_checkContinuity.exit, %bb.u, %ZSTDv07_copyRawBlock.exit, %bb.aa, %bb.z, %bb.p, %ZSTDv07_decodeFrameHeader.exit, %bb.e, %bb.a, %bb.ac, %bb.ab, %bb.j, %bb.g
end_hunk_31
begin_hunk_32_@ZSTDv07_createDDict:bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21744
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 21552
  store i64 5, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 21604
  store i32 0, ptr %i.f, align 4, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 21520
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.h, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21612
  store i32 0, ptr %i.i, align 4, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 21608
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 21712
  store i32 0, ptr %i.k, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %i.m = icmp ne ptr %i.b, null
end_hunk_32
begin_hunk_33_@ZBUFFv07_createDCtx:bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 21744
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 21552
  store i64 5, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 21604
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 21520
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.i, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 21612
  store i32 0, ptr %i.j, align 4, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 21608
  store i32 0, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 21712
  store i32 0, ptr %i.l, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
end_hunk_33
begin_hunk_34_@ZBUFFv07_createDCtx:bb.a
; Function Attrs: nounwind uwtable
define ptr @ZBUFFv07_createDCtx_advanced(ptr noundef byval(%struct.ZSTDv07_customMem) align 8 captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_34
begin_hunk_35_@ZBUFFv07_createDCtx_advanced:bb.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @defaultCustomMem, i64 24, i1 false), !tbaa.struct !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_35
begin_hunk_36_@ZBUFFv07_createDCtx_advanced:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 21744
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 21552
  store i64 5, ptr %i.ag, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 21604
  store i32 0, ptr %i.ah, align 4, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 21520
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 21612
  store i32 0, ptr %i.ak, align 4, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 21608
  store i32 0, ptr %i.al, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 21712
  store i32 0, ptr %i.am, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  store ptr %i.o, ptr %i.l, align 8, !tbaa !138
end_hunk_36
begin_hunk_37_@ZBUFFv07_decompressInit:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !138    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 21552
  store i64 5, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 21604
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 21520
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 5132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.i, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 21612
  store i32 0, ptr %i.j, align 4, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 21608
  store i32 0, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 21712
  store i32 0, ptr %i.l, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 21560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  ret i64 0
end_hunk_37
begin_hunk_38_@ZBUFFv07_decompressContinue:bb.a
._crit_edge314:                                   ; preds = %.thread271
  %.pre315 = load ptr, ptr %0, align 8, !tbaa !138
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre315, i64 21552
  %.pre316 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %bb.z

bb.b:                                             ; preds = %.thread271
end_hunk_38
begin_hunk_39_@ZBUFFv07_decompressContinue:bb.a
bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 21552
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !81 ; 3 uses
  %i.aq = tail call i64 @ZSTDv07_decompressContinue(ptr noundef %i.an, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.g, i64 noundef %i.ap) ; 2 uses
  %i.ar = icmp ult i64 %i.aq, -119
  br i1 %i.ar, label %bb.j, label %.thread
end_hunk_39
begin_hunk_40_@ZBUFFv07_decompressContinue:bb.a
bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 21552
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  %i.ay = tail call i64 @ZSTDv07_decompressContinue(ptr noundef %i.au, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.ax, i64 noundef %i.aw) ; 2 uses
  %i.az = icmp ult i64 %i.ay, -119
end_hunk_40
begin_hunk_41_@ZBUFFv07_decompressContinue:bb.a
bb.p:                                             ; preds = %bb.o, %.thread271
  %i.by = load ptr, ptr %0, align 8, !tbaa !138   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 21552
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !81 ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %bb.r

end_hunk_41
begin_hunk_42_@ZBUFFv07_decompressContinue:bb.a

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 21604
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !87
  %i.cg = icmp eq i32 %i.cf, 5                    ; 2 uses
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.ci = load i64, ptr %i.s, align 8, !tbaa !150 ; 2 uses
end_hunk_42
begin_hunk_43_@ZBUFFv07_decompressContinue:bb.a
bb.ac:                                            ; preds = %ZBUFFv07_limitCopy.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 21604
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !87
  %i.dm = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.dn = load i64, ptr %i.s, align 8, !tbaa !150 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
end_hunk_43
begin_hunk_44_@ZBUFFv07_decompressContinue:bb.a
  store i64 %i.es, ptr %2, align 8, !tbaa !98
  %i.et = load ptr, ptr %0, align 8, !tbaa !138
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 21552
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !81
  %i.ew = load i64, ptr %i.u, align 8, !tbaa !147
  %i.ex = sub i64 %i.ev, %i.ew
  br label %.thread
end_hunk_44
begin_hunk_45_@llvm.umax.i64
!78 = !{!79, !4, i64 0}
!79 = !{!"", !4, i64 0, !4, i64 4}
!80 = !{!79, !4, i64 4}
!81 = !{!82, !48, i64 21552}
!82 = !{!"ZSTDv07_DCtx_s", !5, i64 0, !5, i64 2052, !5, i64 3080, !5, i64 5132, !50, i64 21520, !50, i64 21528, !50, i64 21536, !50, i64 21544, !48, i64 21552, !5, i64 21560, !83, i64 21576, !4, i64 21600, !4, i64 21604, !4, i64 21608, !4, i64 21612, !85, i64 21616, !48, i64 21704, !4, i64 21712, !49, i64 21720, !86, i64 21728, !48, i64 21752, !5, i64 21760, !5, i64 152840}
!83 = !{!"", !84, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!84 = !{!"long long", !5, i64 0}
!85 = !{!"XXH64_state_s", !48, i64 0, !5, i64 8, !5, i64 40, !4, i64 72, !4, i64 76, !48, i64 80}
!86 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16}
!87 = !{!82, !4, i64 21604}
!88 = !{!82, !4, i64 21612}
!89 = !{!82, !4, i64 21608}
!90 = !{!82, !4, i64 21712}
!91 = !{!86, !50, i64 0}
!92 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !93}
!93 = !{!50, !50, i64 0}
!94 = !{!86, !50, i64 16}
!95 = !{!82, !50, i64 21736}
!96 = !{!82, !50, i64 21744}
!97 = !{!83, !84, i64 0}
!98 = !{!48, !48, i64 0}
!99 = !{!83, !4, i64 8}
!100 = !{!83, !4, i64 12}
!101 = !{!82, !50, i64 21520}
!102 = !{!82, !50, i64 21544}
!103 = !{!82, !50, i64 21528}
!104 = !{!82, !50, i64 21536}
!105 = !{!82, !49, i64 21720}
!106 = !{!82, !48, i64 21752}
!107 = !{!108, !48, i64 0}
!108 = !{!"", !48, i64 0, !50, i64 8}
!109 = !{!108, !50, i64 8}
end_hunk_45
begin_hunk_46_@llvm.umax.i64
!124 = distinct !{!124, !8, !21, !22}
!125 = distinct !{!125, !8, !21}
!126 = distinct !{!126, !8}
!127 = !{!82, !4, i64 21588}
!128 = !{!82, !4, i64 21592}
!129 = !{ptr @ZSTDv07_freeDCtx}
!130 = !{!84, !84, i64 0}
!131 = !{!82, !48, i64 21704}
!132 = !{!82, !4, i64 21600}
!133 = !{!134, !50, i64 0}
!134 = !{!"ZSTDv07_DDict_s", !50, i64 0, !48, i64 8, !135, i64 16}
!135 = !{!"p1 _ZTS14ZSTDv07_DCtx_s", !50, i64 0}
!136 = !{!134, !48, i64 8}
!137 = !{!134, !135, i64 16}
!138 = !{!139, !135, i64 0}
!139 = !{!"ZBUFFv07_DCtx_s", !135, i64 0, !83, i64 8, !4, i64 32, !49, i64 40, !48, i64 48, !48, i64 56, !49, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !5, i64 104, !48, i64 128, !86, i64 136}
!140 = !{!139, !4, i64 32}
!141 = !{ptr @ZSTDv07_createDCtx_advanced}
!142 = !{!139, !49, i64 40}
end_hunk_46
