Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed-smc-utils?download=true
inline.NumInlined: 198
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"../tests/qtest/aspeed-smc-utils.c\00", align 1
@__func__.aspeed_smc_test_read_jedec = private unnamed_addr constant [27 x i8] c"aspeed_smc_test_read_jedec\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"jedec == test_data->jedec_id\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@__func__.aspeed_smc_test_erase_sector = private unnamed_addr constant [29 x i8] c"aspeed_smc_test_erase_sector\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"page[i] == 0xffffffff\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"page[i] == some_page_addr + i * 4\00", align 1
@__func__.aspeed_smc_test_erase_all = private unnamed_addr constant [26 x i8] c"aspeed_smc_test_erase_all\00", align 1
@__func__.aspeed_smc_test_write_page = private unnamed_addr constant [27 x i8] c"aspeed_smc_test_write_page\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"page[i] == my_page_addr + i * 4\00", align 1
@__func__.aspeed_smc_test_read_page_mem = private unnamed_addr constant [30 x i8] c"aspeed_smc_test_read_page_mem\00", align 1
@__func__.aspeed_smc_test_write_page_mem = private unnamed_addr constant [31 x i8] c"aspeed_smc_test_write_page_mem\00", align 1
@__func__.aspeed_smc_test_read_status_reg = private unnamed_addr constant [32 x i8] c"aspeed_smc_test_read_status_reg\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"r & SR_WEL == 0\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"write-enable\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"!qtest_qom_get_bool (test_data->s, test_data->node, \22write-enable\22)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"r & SR_WEL == SR_WEL\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"qtest_qom_get_bool (test_data->s, test_data->node, \22write-enable\22)\00", align 1
@__func__.aspeed_smc_test_status_reg_write_protection = private unnamed_addr constant [44 x i8] c"aspeed_smc_test_status_reg_write_protection\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"r & SRWD == SRWD\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"r & SRWD == 0\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"WP#\00", align 1
@__func__.aspeed_smc_test_write_page_qpi = private unnamed_addr constant [31 x i8] c"aspeed_smc_test_write_page_qpi\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"page[i] == page_pattern[i]\00", align 1
@global_qtest = weak dso_local local_unnamed_addr global ptr null, align 8
@__func__.assert_page_mem = private unnamed_addr constant [16 x i8] c"assert_page_mem\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"page[i] == expected_value\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_read_jedec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 65536, %i.c
  %.val.i = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val4.i = load i64, ptr %i.e, align 8
  %i.f = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.g = or i32 %i.f, %i.d
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.e, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.g) #6
  %i.h = load i8, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 16                 ; 3 uses
  %.val.i26 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.e, align 8
  %i.l = add i64 %i.k, %.val10.i
  %i.m = tail call i32 @qtest_readl(ptr noundef %.val.i26, i64 noundef %i.l) #6
  %i.n = or i32 %i.m, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.e, align 8
  %i.o = add i64 %.val14.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.o, i32 noundef %i.n) #6
  %i.p = and i32 %i.n, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.e, align 8
  %i.q = add i64 %.val12.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.q, i32 noundef %i.p) #6
  %.val = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val19 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val19, i8 noundef zeroext -97) #6
  %.val24 = load ptr, ptr %0, align 8
  %.val25 = load i64, ptr %i.r, align 8
  %i.s = tail call zeroext i8 @qtest_readb(ptr noundef %.val24, i64 noundef %.val25) #6
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 16
  %.val22 = load ptr, ptr %0, align 8
  %.val23 = load i64, ptr %i.r, align 8
  %i.v = tail call zeroext i8 @qtest_readb(ptr noundef %.val22, i64 noundef %.val23) #6
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = or disjoint i64 %i.x, %i.u
  %.val20 = load ptr, ptr %0, align 8
  %.val21 = load i64, ptr %i.r, align 8
  %i.z = tail call zeroext i8 @qtest_readb(ptr noundef %.val20, i64 noundef %.val21) #6
  %i.aa = zext i8 %i.z to i64
  %i.ab = or disjoint i64 %i.y, %i.aa             ; 2 uses
  %i.ac = load i8, ptr %i.a, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 16               ; 2 uses
  %.val.i27 = load ptr, ptr %0, align 8
  %.val6.i28 = load i64, ptr %i.e, align 8
  %i.ag = add i64 %i.af, %.val6.i28
  %i.ah = tail call i32 @qtest_readl(ptr noundef %.val.i27, i64 noundef %i.ag) #6
  %i.ai = or i32 %i.ah, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.e, align 8
  %i.aj = add i64 %.val8.i, %i.af
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.aj, i32 noundef %i.ai) #6
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = icmp eq i64 %i.ab, %i.am
  br i1 %i.an, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = uitofp nneg i64 %i.ab to x86_fp80
  %i.ap = uitofp i32 %i.al to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @__func__.aspeed_smc_test_read_jedec, ptr noundef nonnull @.str.1, x86_fp80 noundef %i.ao, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ap, i8 noundef signext 120) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flash_reset(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 65536, %i.c
  %.val.i = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8          ; 9 uses
  %.val4.i = load i64, ptr %i.e, align 8
  %i.f = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.g = or i32 %i.f, %i.d
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.e, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.g) #6
  %i.h = load i8, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 16                 ; 3 uses
  %.val.i20 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.e, align 8
  %i.l = add i64 %i.k, %.val10.i
  %i.m = tail call i32 @qtest_readl(ptr noundef %.val.i20, i64 noundef %i.l) #6
  %i.n = or i32 %i.m, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.e, align 8
  %i.o = add i64 %.val14.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.o, i32 noundef %i.n) #6
  %i.p = and i32 %i.n, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.e, align 8
  %i.q = add i64 %.val12.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.q, i32 noundef %i.p) #6
  %.val18 = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %.val19 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val18, i64 noundef %.val19, i8 noundef zeroext 102) #6
  %.val16 = load ptr, ptr %0, align 8
  %.val17 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val16, i64 noundef %.val17, i8 noundef zeroext -103) #6
  %.val14 = load ptr, ptr %0, align 8
  %.val15 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val14, i64 noundef %.val15, i8 noundef zeroext 6) #6
  %.val12 = load ptr, ptr %0, align 8
  %.val13 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val12, i64 noundef %.val13, i8 noundef zeroext -57) #6
  %.val = load ptr, ptr %0, align 8
  %.val11 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val11, i8 noundef zeroext 4) #6
  %i.s = load i8, ptr %i.a, align 8
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 16                 ; 2 uses
  %.val.i21 = load ptr, ptr %0, align 8
  %.val6.i22 = load i64, ptr %i.e, align 8
  %i.w = add i64 %i.v, %.val6.i22
  %i.x = tail call i32 @qtest_readl(ptr noundef %.val.i21, i64 noundef %i.w) #6
  %i.y = or i32 %i.x, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.e, align 8
  %i.z = add i64 %.val8.i, %i.v
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.z, i32 noundef %i.y) #6
  %i.aa = load i8, ptr %i.a, align 8
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 65536, %i.ab
  %.val.i23 = load ptr, ptr %0, align 8
  %.val4.i24 = load i64, ptr %i.e, align 8
  %i.ad = tail call i32 @qtest_readl(ptr noundef %.val.i23, i64 noundef %.val4.i24) #6
  %i.ae = xor i32 %i.ac, -1
  %i.af = and i32 %i.ad, %i.ae
  %.val5.i25 = load ptr, ptr %0, align 8
  %.val6.i26 = load i64, ptr %i.e, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i25, i64 noundef %.val6.i26, i32 noundef %i.af) #6
  ret void
}

declare void @g_assertion_message_cmpnum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, x86_fp80 noundef, ptr noundef, x86_fp80 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_erase_sector(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 65536, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 12 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.j = or i32 %i.i, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.j) #6
  %i.k = add i32 %i.c, -256
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = uitofp i32 %i.m to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @__func__.aspeed_smc_test_erase_sector, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.o, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !13

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.d, align 8
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 16                 ; 3 uses
  %.val.i73 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.t = add i64 %i.s, %.val10.i
  %i.u = tail call i32 @qtest_readl(ptr noundef %.val.i73, i64 noundef %i.t) #6
  %i.v = or i32 %i.u, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.w = add i64 %.val14.i, %i.s
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.w, i32 noundef %i.v) #6
  %i.x = and i32 %i.v, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.y = add i64 %.val12.i, %i.s
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.y, i32 noundef %i.x) #6
  %.val65 = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %.val66 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val65, i64 noundef %.val66, i8 noundef zeroext -73) #6
  %.val63 = load ptr, ptr %0, align 8
  %.val64 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val63, i64 noundef %.val64, i8 noundef zeroext 6) #6
  %.val61 = load ptr, ptr %0, align 8
  %.val62 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val61, i64 noundef %.val62, i8 noundef zeroext 2) #6
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.c) ; 2 uses
  %.val71 = load ptr, ptr %0, align 8
  %.val72 = load i64, ptr %i.z, align 8
  tail call void @qtest_writel(ptr noundef %.val71, i64 noundef %.val72, i32 noundef %i.aa) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.187 = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ]  ; 2 uses
  %i.ab = shl nuw nsw i32 %.187, 2
  %i.ac = add i32 %i.ab, %i.c
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  %.val69 = load ptr, ptr %0, align 8
  %.val70 = load i64, ptr %i.z, align 8
  tail call void @qtest_writel(ptr noundef %.val69, i64 noundef %.val70, i32 noundef %i.ad) #6
  %i.ae = add nuw nsw i32 %.187, 1                ; 2 uses
  %exitcond91.not = icmp eq i32 %i.ae, 64
  br i1 %exitcond91.not, label %bb.g, label %bb.f, !llvm.loop !14

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.d, align 8
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16               ; 2 uses
  %.val.i74 = load ptr, ptr %0, align 8
  %.val6.i75 = load i64, ptr %i.h, align 8
  %i.aj = add i64 %i.ai, %.val6.i75
  %i.ak = tail call i32 @qtest_readl(ptr noundef %.val.i74, i64 noundef %i.aj) #6
  %i.al = or i32 %i.ak, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.am = add i64 %.val8.i, %i.ai
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.am, i32 noundef %i.al) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.j
  %indvars.iv92 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next93, %bb.j ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv92
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %indvars.iv92.tr = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.ap = shl nuw nsw i32 %indvars.iv92.tr, 2
  %i.aq = add i32 %i.ap, %i.c                     ; 2 uses
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = uitofp i32 %i.ao to x86_fp80
  %i.at = uitofp i32 %i.aq to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @__func__.aspeed_smc_test_erase_sector, ptr noundef nonnull @.str.4, x86_fp80 noundef %i.as, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.at, i8 noundef signext 120) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 64
  br i1 %exitcond95.not, label %bb.k, label %bb.h, !llvm.loop !15

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.d, align 8
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 16               ; 3 uses
  %.val.i76 = load ptr, ptr %0, align 8
  %.val10.i77 = load i64, ptr %i.h, align 8
  %i.ay = add i64 %i.ax, %.val10.i77
  %i.az = tail call i32 @qtest_readl(ptr noundef %.val.i76, i64 noundef %i.ay) #6
  %i.ba = or i32 %i.az, 7                         ; 2 uses
  %.val13.i78 = load ptr, ptr %0, align 8
  %.val14.i79 = load i64, ptr %i.h, align 8
  %i.bb = add i64 %.val14.i79, %i.ax
  tail call void @qtest_writel(ptr noundef %.val13.i78, i64 noundef %i.bb, i32 noundef %i.ba) #6
  %i.bc = and i32 %i.ba, -5
  %.val11.i80 = load ptr, ptr %0, align 8
  %.val12.i81 = load i64, ptr %i.h, align 8
  %i.bd = add i64 %.val12.i81, %i.ax
  tail call void @qtest_writel(ptr noundef %.val11.i80, i64 noundef %i.bd, i32 noundef %i.bc) #6
  %.val59 = load ptr, ptr %0, align 8
  %.val60 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val59, i64 noundef %.val60, i8 noundef zeroext 6) #6
  %.val57 = load ptr, ptr %0, align 8
  %.val58 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val57, i64 noundef %.val58, i8 noundef zeroext -73) #6
  %.val = load ptr, ptr %0, align 8
  %.val56 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val56, i8 noundef zeroext -40) #6
  %.val67 = load ptr, ptr %0, align 8
  %.val68 = load i64, ptr %i.z, align 8
  tail call void @qtest_writel(ptr noundef %.val67, i64 noundef %.val68, i32 noundef %i.aa) #6
  %i.be = load i8, ptr %i.d, align 8
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 16               ; 2 uses
  %.val.i82 = load ptr, ptr %0, align 8
  %.val6.i83 = load i64, ptr %i.h, align 8
  %i.bi = add i64 %i.bh, %.val6.i83
  %i.bj = tail call i32 @qtest_readl(ptr noundef %.val.i82, i64 noundef %i.bi) #6
  %i.bk = or i32 %i.bj, 7
  %.val7.i84 = load ptr, ptr %0, align 8
  %.val8.i85 = load i64, ptr %i.h, align 8
  %i.bl = add i64 %.val8.i85, %i.bh
  tail call void @qtest_writel(ptr noundef %.val7.i84, i64 noundef %i.bl, i32 noundef %i.bk) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %indvars.iv96 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next97, %bb.n ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv96
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = uitofp i32 %i.bn to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 274, ptr noundef nonnull @__func__.aspeed_smc_test_erase_sector, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.bp, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 64
  br i1 %exitcond99.not, label %bb.o, label %bb.l, !llvm.loop !16

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @read_page(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 16                 ; 3 uses
  %.val.i = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val10.i = load i64, ptr %i.f, align 8
  %i.g = add i64 %i.e, %.val10.i
  %i.h = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %i.g) #6
  %i.i = or i32 %i.h, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.f, align 8
  %i.j = add i64 %.val14.i, %i.e
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.j, i32 noundef %i.i) #6
  %i.k = and i32 %i.i, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.f, align 8
  %i.l = add i64 %.val12.i, %i.e
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.l, i32 noundef %i.k) #6
  %.val11 = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val12 = load i64, ptr %i.m, align 8
  tail call void @qtest_writeb(ptr noundef %.val11, i64 noundef %.val12, i8 noundef zeroext -73) #6
  %.val = load ptr, ptr %0, align 8
  %.val10 = load i64, ptr %i.m, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val10, i8 noundef zeroext 3) #6
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  %.val13 = load ptr, ptr %0, align 8
  %.val14 = load i64, ptr %i.m, align 8
  tail call void @qtest_writel(ptr noundef %.val13, i64 noundef %.val14, i32 noundef %i.n) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val15 = load ptr, ptr %0, align 8
  %.val16 = load i64, ptr %i.m, align 8
  %i.o = tail call i32 @qtest_readl(ptr noundef %.val15, i64 noundef %.val16) #6
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.a, align 8
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 16                 ; 2 uses
  %.val.i17 = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.f, align 8
  %i.v = add i64 %i.u, %.val6.i
  %i.w = tail call i32 @qtest_readl(ptr noundef %.val.i17, i64 noundef %i.v) #6
  %i.x = or i32 %i.w, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.f, align 8
  %i.y = add i64 %.val8.i, %i.u
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.y, i32 noundef %i.x) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_erase_all(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 65536, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 12 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.j = or i32 %i.i, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.j) #6
  %i.k = add i32 %i.c, -256
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef %i.a)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = uitofp i32 %i.m to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @__func__.aspeed_smc_test_erase_all, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.o, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !18

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.d, align 8
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 16                 ; 3 uses
  %.val.i66 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.t = add i64 %i.s, %.val10.i
  %i.u = tail call i32 @qtest_readl(ptr noundef %.val.i66, i64 noundef %i.t) #6
  %i.v = or i32 %i.u, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.w = add i64 %.val14.i, %i.s
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.w, i32 noundef %i.v) #6
  %i.x = and i32 %i.v, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.y = add i64 %.val12.i, %i.s
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.y, i32 noundef %i.x) #6
  %.val60 = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %.val61 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val60, i64 noundef %.val61, i8 noundef zeroext -73) #6
  %.val58 = load ptr, ptr %0, align 8
  %.val59 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val58, i64 noundef %.val59, i8 noundef zeroext 6) #6
  %.val56 = load ptr, ptr %0, align 8
  %.val57 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val56, i64 noundef %.val57, i8 noundef zeroext 2) #6
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.c)
  %.val64 = load ptr, ptr %0, align 8
  %.val65 = load i64, ptr %i.z, align 8
  tail call void @qtest_writel(ptr noundef %.val64, i64 noundef %.val65, i32 noundef %i.aa) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.180 = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ]  ; 2 uses
  %i.ab = shl nuw nsw i32 %.180, 2
  %i.ac = add i32 %i.ab, %i.c
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  %.val62 = load ptr, ptr %0, align 8
  %.val63 = load i64, ptr %i.z, align 8
  tail call void @qtest_writel(ptr noundef %.val62, i64 noundef %.val63, i32 noundef %i.ad) #6
  %i.ae = add nuw nsw i32 %.180, 1                ; 2 uses
  %exitcond84.not = icmp eq i32 %i.ae, 64
  br i1 %exitcond84.not, label %bb.g, label %bb.f, !llvm.loop !19

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.d, align 8
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16               ; 2 uses
  %.val.i67 = load ptr, ptr %0, align 8
  %.val6.i68 = load i64, ptr %i.h, align 8
  %i.aj = add i64 %i.ai, %.val6.i68
  %i.ak = tail call i32 @qtest_readl(ptr noundef %.val.i67, i64 noundef %i.aj) #6
  %i.al = or i32 %i.ak, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.am = add i64 %.val8.i, %i.ai
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.am, i32 noundef %i.al) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.j
  %indvars.iv85 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next86, %bb.j ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv85
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %indvars.iv85.tr = trunc nuw nsw i64 %indvars.iv85 to i32
  %i.ap = shl nuw nsw i32 %indvars.iv85.tr, 2
  %i.aq = add i32 %i.ap, %i.c                     ; 2 uses
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = uitofp i32 %i.ao to x86_fp80
  %i.at = uitofp i32 %i.aq to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 313, ptr noundef nonnull @__func__.aspeed_smc_test_erase_all, ptr noundef nonnull @.str.4, x86_fp80 noundef %i.as, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.at, i8 noundef signext 120) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, 64
  br i1 %exitcond88.not, label %bb.k, label %bb.h, !llvm.loop !20

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.d, align 8
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 16               ; 3 uses
  %.val.i69 = load ptr, ptr %0, align 8
  %.val10.i70 = load i64, ptr %i.h, align 8
  %i.ay = add i64 %i.ax, %.val10.i70
  %i.az = tail call i32 @qtest_readl(ptr noundef %.val.i69, i64 noundef %i.ay) #6
  %i.ba = or i32 %i.az, 7                         ; 2 uses
  %.val13.i71 = load ptr, ptr %0, align 8
  %.val14.i72 = load i64, ptr %i.h, align 8
  %i.bb = add i64 %.val14.i72, %i.ax
  tail call void @qtest_writel(ptr noundef %.val13.i71, i64 noundef %i.bb, i32 noundef %i.ba) #6
  %i.bc = and i32 %i.ba, -5
  %.val11.i73 = load ptr, ptr %0, align 8
  %.val12.i74 = load i64, ptr %i.h, align 8
  %i.bd = add i64 %.val12.i74, %i.ax
  tail call void @qtest_writel(ptr noundef %.val11.i73, i64 noundef %i.bd, i32 noundef %i.bc) #6
  %.val54 = load ptr, ptr %0, align 8
  %.val55 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val54, i64 noundef %.val55, i8 noundef zeroext 6) #6
  %.val = load ptr, ptr %0, align 8
  %.val53 = load i64, ptr %i.z, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val53, i8 noundef zeroext -57) #6
  %i.be = load i8, ptr %i.d, align 8
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 16               ; 2 uses
  %.val.i75 = load ptr, ptr %0, align 8
  %.val6.i76 = load i64, ptr %i.h, align 8
  %i.bi = add i64 %i.bh, %.val6.i76
  %i.bj = tail call i32 @qtest_readl(ptr noundef %.val.i75, i64 noundef %i.bi) #6
  %i.bk = or i32 %i.bj, 7
  %.val7.i77 = load ptr, ptr %0, align 8
  %.val8.i78 = load i64, ptr %i.h, align 8
  %i.bl = add i64 %.val8.i78, %i.bh
  tail call void @qtest_writel(ptr noundef %.val7.i77, i64 noundef %i.bl, i32 noundef %i.bk) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %indvars.iv89 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next90, %bb.n ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv89
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = uitofp i32 %i.bn to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 324, ptr noundef nonnull @__func__.aspeed_smc_test_erase_all, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.bp, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, 64
  br i1 %exitcond92.not, label %bb.o, label %bb.l, !llvm.loop !21

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_write_page(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 65536, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.j = or i32 %i.i, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.j) #6
  %i.k = load i8, ptr %i.d, align 8
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 16                 ; 3 uses
  %.val.i49 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.o = add i64 %i.n, %.val10.i
  %i.p = tail call i32 @qtest_readl(ptr noundef %.val.i49, i64 noundef %i.o) #6
  %i.q = or i32 %i.p, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.r = add i64 %.val14.i, %i.n
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.r, i32 noundef %i.q) #6
  %i.s = and i32 %i.q, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.t = add i64 %.val12.i, %i.n
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.t, i32 noundef %i.s) #6
  %.val43 = load ptr, ptr %0, align 8
  %i.u = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %.val44 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val43, i64 noundef %.val44, i8 noundef zeroext -73) #6
  %.val41 = load ptr, ptr %0, align 8
  %.val42 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val41, i64 noundef %.val42, i8 noundef zeroext 6) #6
  %.val = load ptr, ptr %0, align 8
  %.val40 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val40, i8 noundef zeroext 2) #6
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.c)
  %.val47 = load ptr, ptr %0, align 8
  %.val48 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val47, i64 noundef %.val48, i32 noundef %i.v) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i32 [ 0, %bb.a ], [ %i.z, %bb.b ]   ; 2 uses
  %i.w = shl nuw nsw i32 %.052, 2
  %i.x = add i32 %i.w, %i.c
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %.val45 = load ptr, ptr %0, align 8
  %.val46 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val45, i64 noundef %.val46, i32 noundef %i.y) #6
  %i.z = add nuw nsw i32 %.052, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.aa = load i8, ptr %i.d, align 8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 16               ; 2 uses
  %.val.i50 = load ptr, ptr %0, align 8
  %.val6.i51 = load i64, ptr %i.h, align 8
  %i.ae = add i64 %i.ad, %.val6.i51
  %i.af = tail call i32 @qtest_readl(ptr noundef %.val.i50, i64 noundef %i.ae) #6
  %i.ag = or i32 %i.af, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.ah = add i64 %.val8.i, %i.ad
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.ah, i32 noundef %i.ag) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.al = add i32 %i.ak, %i.c                     ; 2 uses
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = uitofp i32 %i.aj to x86_fp80
  %i.ao = uitofp i32 %i.al to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 355, ptr noundef nonnull @__func__.aspeed_smc_test_write_page, ptr noundef nonnull @.str.5, x86_fp80 noundef %i.an, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ao, i8 noundef signext 120) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond56.not, label %bb.g, label %bb.d, !llvm.loop !23

bb.g:                                             ; preds = %bb.f
  %i.ap = add i32 %i.c, 256
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.ap, ptr noundef %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.j
  %indvars.iv57 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next58, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv57
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = uitofp i32 %i.ar to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @__func__.aspeed_smc_test_write_page, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.at, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, 64
  br i1 %exitcond60.not, label %bb.k, label %bb.h, !llvm.loop !24

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_read_page_mem(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 15 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.val4.i, 4
  %i.j = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %i.i) #6
  %i.k = or i32 %i.j, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  %i.l = add i64 %.val6.i, 4
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %i.l, i32 noundef %i.k) #6
  %i.m = load i8, ptr %i.d, align 8
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw i32 65536, %i.n
  %.val.i53 = load ptr, ptr %0, align 8
  %.val4.i54 = load i64, ptr %i.h, align 8
  %i.p = tail call i32 @qtest_readl(ptr noundef %.val.i53, i64 noundef %.val4.i54) #6
  %i.q = or i32 %i.p, %i.o
  %.val5.i55 = load ptr, ptr %0, align 8
  %.val6.i56 = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i55, i64 noundef %.val6.i56, i32 noundef %i.q) #6
  %i.r = load i8, ptr %i.d, align 8
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 16                 ; 3 uses
  %.val.i57 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.v = add i64 %i.u, %.val10.i
  %i.w = tail call i32 @qtest_readl(ptr noundef %.val.i57, i64 noundef %i.v) #6
  %i.x = or i32 %i.w, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.y = add i64 %.val14.i, %i.u
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.y, i32 noundef %i.x) #6
  %i.z = and i32 %i.x, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.aa = add i64 %.val12.i, %i.u
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.aa, i32 noundef %i.z) #6
  %.val47 = load ptr, ptr %0, align 8
  %i.ab = getelementptr i8, ptr %0, i64 16        ; 7 uses
  %.val48 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writeb(ptr noundef %.val47, i64 noundef %.val48, i8 noundef zeroext -73) #6
  %.val45 = load ptr, ptr %0, align 8
  %.val46 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writeb(ptr noundef %.val45, i64 noundef %.val46, i8 noundef zeroext 6) #6
  %.val = load ptr, ptr %0, align 8
  %.val44 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val44, i8 noundef zeroext 2) #6
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.c)
  %.val51 = load ptr, ptr %0, align 8
  %.val52 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writel(ptr noundef %.val51, i64 noundef %.val52, i32 noundef %i.ac) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.077 = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.b ]  ; 2 uses
  %i.ad = shl nuw nsw i32 %.077, 2
  %i.ae = add i32 %i.ad, %i.c
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  %.val49 = load ptr, ptr %0, align 8
  %.val50 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writel(ptr noundef %.val49, i64 noundef %.val50, i32 noundef %i.af) #6
  %i.ag = add nuw nsw i32 %.077, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !25

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.ah = load i8, ptr %i.d, align 8
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %.val.i58 = load ptr, ptr %0, align 8
  %.val6.i59 = load i64, ptr %i.h, align 8
  %i.al = add i64 %i.ak, %.val6.i59
  %i.am = tail call i32 @qtest_readl(ptr noundef %.val.i58, i64 noundef %i.al) #6
  %i.an = or i32 %i.am, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.ao = add i64 %.val8.i, %i.ak
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.ao, i32 noundef %i.an) #6
  %i.ap = load i8, ptr %i.d, align 8
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw i32 65536, %i.aq
  %.val.i60 = load ptr, ptr %0, align 8
  %.val4.i61 = load i64, ptr %i.h, align 8
  %i.as = tail call i32 @qtest_readl(ptr noundef %.val.i60, i64 noundef %.val4.i61) #6
  %i.at = xor i32 %i.ar, -1
  %i.au = and i32 %i.as, %i.at
  %.val5.i62 = load ptr, ptr %0, align 8
  %.val6.i63 = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i62, i64 noundef %.val6.i63, i32 noundef %i.au) #6
  %i.av = load i8, ptr %i.d, align 8
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 16               ; 2 uses
  %.val.i.i = load ptr, ptr %0, align 8
  %.val9.i.i = load i64, ptr %i.h, align 8
  %i.az = add i64 %i.ay, %.val9.i.i
  %i.ba = tail call i32 @qtest_readl(ptr noundef %.val.i.i, i64 noundef %i.az) #6
  %i.bb = and i32 %i.ba, -16711684
  %i.bc = or disjoint i32 %i.bb, 196608
  %.val10.i.i = load ptr, ptr %0, align 8
  %.val11.i.i = load i64, ptr %i.h, align 8
  %i.bd = add i64 %.val11.i.i, %i.ay
  tail call void @qtest_writel(ptr noundef %.val10.i.i, i64 noundef %i.bd, i32 noundef %i.bc) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.be = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.bf = add i32 %i.be, %i.c
  %i.bg = zext i32 %i.bf to i64
  %.val.i64 = load ptr, ptr %0, align 8
  %.val7.i65 = load i64, ptr %i.ab, align 8
  %i.bh = add i64 %.val7.i65, %i.bg
  %i.bi = tail call i32 @qtest_readl(ptr noundef %.val.i64, i64 noundef %i.bh) #6
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %read_page_mem.exit.preheader, label %bb.d, !llvm.loop !0

read_page_mem.exit.preheader:                     ; preds = %bb.d, %read_page_mem.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %read_page_mem.exit ], [ 0, %bb.d ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.bo = add i32 %i.bn, %i.c                     ; 2 uses
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %read_page_mem.exit, label %bb.e

bb.e:                                             ; preds = %read_page_mem.exit.preheader
  %i.bq = uitofp i32 %i.bm to x86_fp80
  %i.br = uitofp i32 %i.bo to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @__func__.aspeed_smc_test_read_page_mem, ptr noundef nonnull @.str.5, x86_fp80 noundef %i.bq, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.br, i8 noundef signext 120) #6
  br label %read_page_mem.exit

read_page_mem.exit:                               ; preds = %read_page_mem.exit.preheader, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond81.not, label %bb.f, label %read_page_mem.exit.preheader, !llvm.loop !26

bb.f:                                             ; preds = %read_page_mem.exit
  %i.bs = add i32 %i.c, 256
  %i.bt = load i8, ptr %i.d, align 8
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 16               ; 2 uses
  %.val.i.i66 = load ptr, ptr %0, align 8
  %.val9.i.i67 = load i64, ptr %i.h, align 8
  %i.bx = add i64 %i.bw, %.val9.i.i67
  %i.by = tail call i32 @qtest_readl(ptr noundef %.val.i.i66, i64 noundef %i.bx) #6
  %i.bz = and i32 %i.by, -16711684
  %i.ca = or disjoint i32 %i.bz, 196608
  %.val10.i.i68 = load ptr, ptr %0, align 8
  %.val11.i.i69 = load i64, ptr %i.h, align 8
  %i.cb = add i64 %.val11.i.i69, %i.bw
  tail call void @qtest_writel(ptr noundef %.val10.i.i68, i64 noundef %i.cb, i32 noundef %i.ca) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i70 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i74, %bb.g ] ; 3 uses
  %indvars.iv.tr.i71 = trunc nuw nsw i64 %indvars.iv.i70 to i32
  %i.cc = shl nuw nsw i32 %indvars.iv.tr.i71, 2
  %i.cd = add i32 %i.bs, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %.val.i72 = load ptr, ptr %0, align 8
  %.val7.i73 = load i64, ptr %i.ab, align 8
  %i.cf = add i64 %.val7.i73, %i.ce
  %i.cg = tail call i32 @qtest_readl(ptr noundef %.val.i72, i64 noundef %i.cf) #6
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i70
  store i32 %i.ch, ptr %i.ci, align 4
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, 64
  br i1 %exitcond.not.i75, label %read_page_mem.exit76.preheader, label %bb.g, !llvm.loop !0

read_page_mem.exit76.preheader:                   ; preds = %bb.g, %read_page_mem.exit76
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %read_page_mem.exit76 ], [ 0, %bb.g ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv82
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %read_page_mem.exit76, label %bb.h

bb.h:                                             ; preds = %read_page_mem.exit76.preheader
  %i.cm = uitofp i32 %i.ck to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @__func__.aspeed_smc_test_read_page_mem, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.cm, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %read_page_mem.exit76

read_page_mem.exit76:                             ; preds = %read_page_mem.exit76.preheader, %bb.h
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, 64
  br i1 %exitcond85.not, label %bb.i, label %read_page_mem.exit76.preheader, !llvm.loop !27

bb.i:                                             ; preds = %read_page_mem.exit76
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_write_page_mem(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 13 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = add i64 %.val4.i, 4
  %i.j = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %i.i) #6
  %i.k = or i32 %i.j, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  %i.l = add i64 %.val6.i, 4
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %i.l, i32 noundef %i.k) #6
  %i.m = load i8, ptr %i.d, align 8
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw i32 65536, %i.n
  %.val.i36 = load ptr, ptr %0, align 8
  %.val4.i37 = load i64, ptr %i.h, align 8
  %i.p = tail call i32 @qtest_readl(ptr noundef %.val.i36, i64 noundef %.val4.i37) #6
  %i.q = or i32 %i.p, %i.o
  %.val5.i38 = load ptr, ptr %0, align 8
  %.val6.i39 = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i38, i64 noundef %.val6.i39, i32 noundef %i.q) #6
  %i.r = load i8, ptr %i.d, align 8
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 16                 ; 3 uses
  %.val.i40 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.v = add i64 %i.u, %.val10.i
  %i.w = tail call i32 @qtest_readl(ptr noundef %.val.i40, i64 noundef %i.v) #6
  %i.x = or i32 %i.w, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.y = add i64 %.val14.i, %i.u
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.y, i32 noundef %i.x) #6
  %i.z = and i32 %i.x, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.aa = add i64 %.val12.i, %i.u
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.aa, i32 noundef %i.z) #6
  %.val32 = load ptr, ptr %0, align 8
  %i.ab = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %.val33 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writeb(ptr noundef %.val32, i64 noundef %.val33, i8 noundef zeroext -73) #6
  %.val = load ptr, ptr %0, align 8
  %.val31 = load i64, ptr %i.ab, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val31, i8 noundef zeroext 6) #6
  %i.ac = load i8, ptr %i.d, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 16               ; 2 uses
  %.val.i41 = load ptr, ptr %0, align 8
  %.val6.i42 = load i64, ptr %i.h, align 8
  %i.ag = add i64 %i.af, %.val6.i42
  %i.ah = tail call i32 @qtest_readl(ptr noundef %.val.i41, i64 noundef %i.ag) #6
  %i.ai = or i32 %i.ah, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.aj = add i64 %.val8.i, %i.af
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.aj, i32 noundef %i.ai) #6
  %i.ak = load i8, ptr %i.d, align 8
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 16               ; 2 uses
  %.val.i43 = load ptr, ptr %0, align 8
  %.val9.i = load i64, ptr %i.h, align 8
  %i.ao = add i64 %i.an, %.val9.i
  %i.ap = tail call i32 @qtest_readl(ptr noundef %.val.i43, i64 noundef %i.ao) #6
  %i.aq = and i32 %i.ap, -16711684
  %i.ar = or disjoint i32 %i.aq, 131074
  %.val10.i44 = load ptr, ptr %0, align 8
  %.val11.i45 = load i64, ptr %i.h, align 8
  %i.as = add i64 %.val11.i45, %i.an
  tail call void @qtest_writel(ptr noundef %.val10.i44, i64 noundef %i.as, i32 noundef %i.ar) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.au = add i32 %i.at, %i.c                     ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef i32 @llvm.bswap.i32(i32 %i.au)
  %.val34 = load ptr, ptr %0, align 8
  %.val35 = load i64, ptr %i.ab, align 8
  %i.ax = add i64 %.val35, %i.av
  tail call void @qtest_writel(ptr noundef %.val34, i64 noundef %i.ax, i32 noundef %i.aw) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.ay = load i8, ptr %i.d, align 8
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 16               ; 2 uses
  %.val.i.i = load ptr, ptr %0, align 8
  %.val9.i.i = load i64, ptr %i.h, align 8
  %i.bc = add i64 %i.bb, %.val9.i.i
  %i.bd = tail call i32 @qtest_readl(ptr noundef %.val.i.i, i64 noundef %i.bc) #6
  %i.be = and i32 %i.bd, -16711684
  %i.bf = or disjoint i32 %i.be, 196608
  %.val10.i.i = load ptr, ptr %0, align 8
  %.val11.i.i = load i64, ptr %i.h, align 8
  %i.bg = add i64 %.val11.i.i, %i.bb
  tail call void @qtest_writel(ptr noundef %.val10.i.i, i64 noundef %i.bg, i32 noundef %i.bf) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bh = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.bi = add i32 %i.bh, %i.c
  %i.bj = zext i32 %i.bi to i64
  %.val.i46 = load ptr, ptr %0, align 8
  %.val7.i47 = load i64, ptr %i.ab, align 8
  %i.bk = add i64 %.val7.i47, %i.bj
  %i.bl = tail call i32 @qtest_readl(ptr noundef %.val.i46, i64 noundef %i.bk) #6
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bm, ptr %i.bn, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %read_page_mem.exit.preheader, label %bb.d, !llvm.loop !0

read_page_mem.exit.preheader:                     ; preds = %bb.d, %read_page_mem.exit
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %read_page_mem.exit ], [ 0, %bb.d ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv51
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %indvars.iv51.tr = trunc nuw nsw i64 %indvars.iv51 to i32
  %i.bq = shl nuw nsw i32 %indvars.iv51.tr, 2
  %i.br = add i32 %i.bq, %i.c                     ; 2 uses
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %read_page_mem.exit, label %bb.e

bb.e:                                             ; preds = %read_page_mem.exit.preheader
  %i.bt = uitofp i32 %i.bp to x86_fp80
  %i.bu = uitofp i32 %i.br to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 440, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_mem, ptr noundef nonnull @.str.5, x86_fp80 noundef %i.bt, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.bu, i8 noundef signext 120) #6
  br label %read_page_mem.exit

read_page_mem.exit:                               ; preds = %read_page_mem.exit.preheader, %bb.e
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 64
  br i1 %exitcond54.not, label %bb.f, label %read_page_mem.exit.preheader, !llvm.loop !29

bb.f:                                             ; preds = %read_page_mem.exit
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_read_status_reg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 65536, %i.c
  %.val.i = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8          ; 17 uses
  %.val4.i = load i64, ptr %i.e, align 8
  %i.f = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.g = or i32 %i.f, %i.d
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.e, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.g) #6
  %i.h = load i8, ptr %i.a, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 16                 ; 3 uses
  %.val.i66 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.e, align 8
  %i.l = add i64 %i.k, %.val10.i
  %i.m = tail call i32 @qtest_readl(ptr noundef %.val.i66, i64 noundef %i.l) #6
  %i.n = or i32 %i.m, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.e, align 8
  %i.o = add i64 %.val14.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.o, i32 noundef %i.n) #6
  %i.p = and i32 %i.n, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.e, align 8
  %i.q = add i64 %.val12.i, %i.k
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.q, i32 noundef %i.p) #6
  %.val58 = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %.val59 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val58, i64 noundef %.val59, i8 noundef zeroext 5) #6
  %.val64 = load ptr, ptr %0, align 8
  %.val65 = load i64, ptr %i.r, align 8
  %i.s = tail call zeroext i8 @qtest_readb(ptr noundef %.val64, i64 noundef %.val65) #6
  %i.t = load i8, ptr %i.a, align 8
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 16                 ; 2 uses
  %.val.i67 = load ptr, ptr %0, align 8
  %.val6.i68 = load i64, ptr %i.e, align 8
  %i.x = add i64 %i.w, %.val6.i68
  %i.y = tail call i32 @qtest_readl(ptr noundef %.val.i67, i64 noundef %i.x) #6
  %i.z = or i32 %i.y, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.e, align 8
  %i.aa = add i64 %.val8.i, %i.w
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.aa, i32 noundef %i.z) #6
  %i.ab = and i8 %i.s, 2                          ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = uitofp nneg i8 %i.ab to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 458, ptr noundef nonnull @__func__.aspeed_smc_test_read_status_reg, ptr noundef nonnull @.str.6, x86_fp80 noundef %i.ad, ptr noundef nonnull @.str.2, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call zeroext i1 @qtest_qom_get_bool(ptr noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull @.str.7) #6
  br i1 %i.ah, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @__func__.aspeed_smc_test_read_status_reg, ptr noundef nonnull @.str.8) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.a, align 8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 16               ; 3 uses
  %.val.i69 = load ptr, ptr %0, align 8
  %.val10.i70 = load i64, ptr %i.e, align 8
  %i.am = add i64 %i.al, %.val10.i70
  %i.an = tail call i32 @qtest_readl(ptr noundef %.val.i69, i64 noundef %i.am) #6
  %i.ao = or i32 %i.an, 7                         ; 2 uses
  %.val13.i71 = load ptr, ptr %0, align 8
  %.val14.i72 = load i64, ptr %i.e, align 8
  %i.ap = add i64 %.val14.i72, %i.al
  tail call void @qtest_writel(ptr noundef %.val13.i71, i64 noundef %i.ap, i32 noundef %i.ao) #6
  %i.aq = and i32 %i.ao, -5
  %.val11.i73 = load ptr, ptr %0, align 8
  %.val12.i74 = load i64, ptr %i.e, align 8
  %i.ar = add i64 %.val12.i74, %i.al
  tail call void @qtest_writel(ptr noundef %.val11.i73, i64 noundef %i.ar, i32 noundef %i.aq) #6
  %.val56 = load ptr, ptr %0, align 8
  %.val57 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val56, i64 noundef %.val57, i8 noundef zeroext 6) #6
  %.val54 = load ptr, ptr %0, align 8
  %.val55 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val54, i64 noundef %.val55, i8 noundef zeroext 5) #6
  %.val62 = load ptr, ptr %0, align 8
  %.val63 = load i64, ptr %i.r, align 8
  %i.as = tail call zeroext i8 @qtest_readb(ptr noundef %.val62, i64 noundef %.val63) #6
  %i.at = load i8, ptr %i.a, align 8
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 16               ; 2 uses
  %.val.i75 = load ptr, ptr %0, align 8
  %.val6.i76 = load i64, ptr %i.e, align 8
  %i.ax = add i64 %i.aw, %.val6.i76
  %i.ay = tail call i32 @qtest_readl(ptr noundef %.val.i75, i64 noundef %i.ax) #6
  %i.az = or i32 %i.ay, 7
  %.val7.i77 = load ptr, ptr %0, align 8
  %.val8.i78 = load i64, ptr %i.e, align 8
  %i.ba = add i64 %.val8.i78, %i.aw
  tail call void @qtest_writel(ptr noundef %.val7.i77, i64 noundef %i.ba, i32 noundef %i.az) #6
  %i.bb = and i8 %i.as, 2
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @__func__.aspeed_smc_test_read_status_reg, ptr noundef nonnull @.str.9, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull @.str.2, x86_fp80 noundef 2.000000e+00, i8 noundef signext 120) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = load ptr, ptr %i.af, align 8
  %i.be = tail call zeroext i1 @qtest_qom_get_bool(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull @.str.7) #6
  br i1 %i.be, label %bb.i, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 470, ptr noundef nonnull @__func__.aspeed_smc_test_read_status_reg, ptr noundef nonnull @.str.10) #7
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.a, align 8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 16               ; 3 uses
  %.val.i79 = load ptr, ptr %0, align 8
  %.val10.i80 = load i64, ptr %i.e, align 8
  %i.bj = add i64 %i.bi, %.val10.i80
end_hunk_0
begin_hunk_1_@aspeed_smc_test_status_reg_write_protection:bb.a
  %i.bo = add nuw nsw i64 %i.bn, 16               ; 2 uses
  %.val.i118 = load ptr, ptr %0, align 8
  %.val6.i119 = load i64, ptr %i.e, align 8
  %i.bp = add i64 %i.bo, %.val6.i119
  %i.bq = tail call i32 @qtest_readl(ptr noundef %.val.i118, i64 noundef %i.bp) #6
  %i.br = or i32 %i.bq, 7
  %.val7.i120 = load ptr, ptr %0, align 8
  %.val8.i121 = load i64, ptr %i.e, align 8
  %i.bs = add i64 %.val8.i121, %i.bo
  tail call void @qtest_writel(ptr noundef %.val7.i120, i64 noundef %i.bs, i32 noundef %i.br) #6
  %.not58 = icmp sgt i8 %i.bk, -1
  br i1 %.not58, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @__func__.aspeed_smc_test_status_reg_write_protection, ptr noundef nonnull @.str.11, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.280000e+02, i8 noundef signext 120) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bt = load i8, ptr %i.a, align 8
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 16               ; 3 uses
  %.val.i122 = load ptr, ptr %0, align 8
  %.val10.i123 = load i64, ptr %i.e, align 8
  %i.bx = add i64 %i.bw, %.val10.i123
  %i.by = tail call i32 @qtest_readl(ptr noundef %.val.i122, i64 noundef %i.bx) #6
  %i.bz = or i32 %i.by, 7                         ; 2 uses
  %.val13.i124 = load ptr, ptr %0, align 8
  %.val14.i125 = load i64, ptr %i.e, align 8
  %i.ca = add i64 %.val14.i125, %i.bw
  tail call void @qtest_writel(ptr noundef %.val13.i124, i64 noundef %i.ca, i32 noundef %i.bz) #6
  %i.cb = and i32 %i.bz, -5
  %.val11.i126 = load ptr, ptr %0, align 8
  %.val12.i127 = load i64, ptr %i.e, align 8
  %i.cc = add i64 %.val12.i127, %i.bw
  tail call void @qtest_writel(ptr noundef %.val11.i126, i64 noundef %i.cc, i32 noundef %i.cb) #6
  %.val65 = load ptr, ptr %0, align 8
  %.val66 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val65, i64 noundef %.val66, i8 noundef zeroext 6) #6
  %.val63 = load ptr, ptr %0, align 8
  %.val64 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val63, i64 noundef %.val64, i8 noundef zeroext 1) #6
  %.val61 = load ptr, ptr %0, align 8
  %.val62 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val61, i64 noundef %.val62, i8 noundef zeroext 0) #6
  %.val = load ptr, ptr %0, align 8
  %.val60 = load i64, ptr %i.r, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val60, i8 noundef zeroext 5) #6
  %.val91 = load ptr, ptr %0, align 8
  %.val92 = load i64, ptr %i.r, align 8
  %i.cd = tail call zeroext i8 @qtest_readb(ptr noundef %.val91, i64 noundef %.val92) #6
  %i.ce = load i8, ptr %i.a, align 8
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 16               ; 2 uses
  %.val.i128 = load ptr, ptr %0, align 8
  %.val6.i129 = load i64, ptr %i.e, align 8
  %i.ci = add i64 %i.ch, %.val6.i129
  %i.cj = tail call i32 @qtest_readl(ptr noundef %.val.i128, i64 noundef %i.ci) #6
  %i.ck = or i32 %i.cj, 7
  %.val7.i130 = load ptr, ptr %0, align 8
  %.val8.i131 = load i64, ptr %i.e, align 8
  %i.cl = add i64 %.val8.i131, %i.ch
  tail call void @qtest_writel(ptr noundef %.val7.i130, i64 noundef %i.cl, i32 noundef %i.ck) #6
  %.not59 = icmp sgt i8 %i.cd, -1
  br i1 %.not59, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 536, ptr noundef nonnull @__func__.aspeed_smc_test_status_reg_write_protection, ptr noundef nonnull @.str.11, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull @.str.2, x86_fp80 noundef 1.280000e+02, i8 noundef signext 120) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = load ptr, ptr %i.ay, align 8
  tail call void @qtest_set_irq_in(ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  ret void
}

declare void @qtest_set_irq_in(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_write_block_protect(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i32], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %.val.i = load ptr, ptr %0, align 8
  %i.g = getelementptr i8, ptr %0, i64 8          ; 15 uses
  %.val4.i = load i64, ptr %i.g, align 8
  %i.h = add i64 %.val4.i, 4
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %i.h) #6
  %i.j = or i32 %i.i, %i.f
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.g, align 8
  %i.k = add i64 %.val6.i, 4
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %i.k, i32 noundef %i.j) #6
  %i.l = load i8, ptr %i.c, align 8
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw i32 65536, %i.m
  %.val.i61 = load ptr, ptr %0, align 8
  %.val4.i62 = load i64, ptr %i.g, align 8
  %i.o = tail call i32 @qtest_readl(ptr noundef %.val.i61, i64 noundef %.val4.i62) #6
  %i.p = or i32 %i.o, %i.n
  %.val5.i63 = load ptr, ptr %0, align 8
  %.val6.i64 = load i64, ptr %i.g, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i63, i64 noundef %.val6.i64, i32 noundef %i.p) #6
  %i.q = getelementptr i8, ptr %0, i64 16         ; 10 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a, %bb.f
  %.04691 = phi i32 [ 0, %bb.a ], [ %i.au, %bb.f ] ; 5 uses
  %i.r = shl nuw nsw i32 %.04691, 3
  %i.s = and i32 %i.r, 64
  %i.t = shl nuw nsw i32 %.04691, 2
  %i.u = and i32 %i.t, 28
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = load i8, ptr %i.c, align 8
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 16                 ; 3 uses
  %.val.i65 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.g, align 8
  %i.aa = add i64 %i.z, %.val10.i
  %i.ab = tail call i32 @qtest_readl(ptr noundef %.val.i65, i64 noundef %i.aa) #6
  %i.ac = or i32 %i.ab, 7                         ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.g, align 8
  %i.ad = add i64 %.val14.i, %i.z
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.ad, i32 noundef %i.ac) #6
  %i.ae = and i32 %i.ac, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.g, align 8
  %i.af = add i64 %.val12.i, %i.z
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.af, i32 noundef %i.ae) #6
  %.val59 = load ptr, ptr %0, align 8
  %.val60 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val59, i64 noundef %.val60, i8 noundef zeroext 6) #6
  %.val57 = load ptr, ptr %0, align 8
  %.val58 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val57, i64 noundef %.val58, i8 noundef zeroext -57) #6
  %.val55 = load ptr, ptr %0, align 8
  %.val56 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val55, i64 noundef %.val56, i8 noundef zeroext 6) #6
  %.val53 = load ptr, ptr %0, align 8
  %.val54 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val53, i64 noundef %.val54, i8 noundef zeroext 1) #6
  %i.ag = trunc nuw nsw i32 %i.v to i8
  %.val51 = load ptr, ptr %0, align 8
  %.val52 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val51, i64 noundef %.val52, i8 noundef zeroext %i.ag) #6
  %.val49 = load ptr, ptr %0, align 8
  %.val50 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val49, i64 noundef %.val50, i8 noundef zeroext -73) #6
  %.val = load ptr, ptr %0, align 8
  %.val48 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val48, i8 noundef zeroext 6) #6
  %i.ah = load i8, ptr %i.c, align 8
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %.val.i66 = load ptr, ptr %0, align 8
  %.val6.i67 = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, %.val6.i67
  %i.am = tail call i32 @qtest_readl(ptr noundef %.val.i66, i64 noundef %i.al) #6
  %i.an = or i32 %i.am, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.g, align 8
  %i.ao = add i64 %.val8.i, %i.ak
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.ao, i32 noundef %i.an) #6
  %.not = icmp eq i32 %.04691, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i32 %.04691, -1
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = tail call i32 @llvm.usub.sat.i32(i32 512, i32 %i.aq)
  %i.as = zext nneg i32 %i.ar to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.as, %bb.d ], [ 512, %bb.c ]
  br label %bb.g

bb.f:                                             ; preds = %assert_page_mem.exit89
  %i.au = add nuw nsw i32 %.04691, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.au, 16
  br i1 %exitcond93.not, label %bb.b, label %bb.c, !llvm.loop !32

bb.g:                                             ; preds = %bb.e, %assert_page_mem.exit89
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %assert_page_mem.exit89 ] ; 3 uses
  %i.av = shl nuw nsw i64 %indvars.iv, 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !annotation !11
  %i.aw = load i8, ptr %i.c, align 8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 16               ; 2 uses
  %.val.i.i.i = load ptr, ptr %0, align 8
  %.val9.i.i.i = load i64, ptr %i.g, align 8
  %i.ba = add i64 %i.az, %.val9.i.i.i
  %i.bb = tail call i32 @qtest_readl(ptr noundef %.val.i.i.i, i64 noundef %i.ba) #6
  %i.bc = and i32 %i.bb, -16711684
  %i.bd = or disjoint i32 %i.bc, 196608
  %.val10.i.i.i = load ptr, ptr %0, align 8
  %.val11.i.i.i = load i64, ptr %i.g, align 8
  %i.be = add i64 %.val11.i.i.i, %i.az
  tail call void @qtest_writel(ptr noundef %.val10.i.i.i, i64 noundef %i.be, i32 noundef %i.bd) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.bf = shl i64 %indvars.iv.i.i, 2
  %i.bg = and i64 %i.bf, 4294967292
  %i.bh = add nuw nsw i64 %i.bg, %i.av
  %.val.i.i = load ptr, ptr %0, align 8
  %.val7.i.i = load i64, ptr %i.q, align 8
  %i.bi = add i64 %.val7.i.i, %i.bh
  %i.bj = tail call i32 @qtest_readl(ptr noundef %.val.i.i, i64 noundef %i.bi) #6
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i32 %i.bk, ptr %i.bl, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %read_page_mem.exit.preheader.i, label %bb.h, !llvm.loop !0

read_page_mem.exit.preheader.i:                   ; preds = %bb.h, %read_page_mem.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %read_page_mem.exit.i ], [ 0, %bb.h ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %read_page_mem.exit.i, label %bb.i

bb.i:                                             ; preds = %read_page_mem.exit.preheader.i
  %i.bp = uitofp i32 %i.bn to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @__func__.assert_page_mem, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.bp, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %read_page_mem.exit.i

read_page_mem.exit.i:                             ; preds = %bb.i, %read_page_mem.exit.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %assert_page_mem.exit, label %read_page_mem.exit.preheader.i, !llvm.loop !1

assert_page_mem.exit:                             ; preds = %read_page_mem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bq = load i8, ptr %i.c, align 8
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 16               ; 2 uses
  %.val.i.i68 = load ptr, ptr %0, align 8
  %.val9.i.i = load i64, ptr %i.g, align 8
  %i.bu = add i64 %i.bt, %.val9.i.i
  %i.bv = tail call i32 @qtest_readl(ptr noundef %.val.i.i68, i64 noundef %i.bu) #6
  %i.bw = and i32 %i.bv, -16711684
  %i.bx = or disjoint i32 %i.bw, 131074
  %.val10.i.i = load ptr, ptr %0, align 8
  %.val11.i.i = load i64, ptr %i.g, align 8
  %i.by = add i64 %.val11.i.i, %i.bt
  tail call void @qtest_writel(ptr noundef %.val10.i.i, i64 noundef %i.by, i32 noundef %i.bx) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %assert_page_mem.exit
  %indvars.iv.i69 = phi i64 [ 0, %assert_page_mem.exit ], [ %indvars.iv.next.i72, %bb.j ] ; 2 uses
  %i.bz = shl nuw nsw i64 %indvars.iv.i69, 2
  %i.ca = add nuw nsw i64 %i.bz, %i.av
  %.val.i70 = load ptr, ptr %0, align 8
  %.val6.i71 = load i64, ptr %i.q, align 8
  %i.cb = add i64 %i.ca, %.val6.i71
  tail call void @qtest_writel(ptr noundef %.val.i70, i64 noundef %i.cb, i32 noundef 317705643) #6
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, 64
  br i1 %exitcond.not.i73, label %write_page_mem.exit, label %bb.j, !llvm.loop !2

write_page_mem.exit:                              ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.cc = load i8, ptr %i.c, align 8
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 16               ; 2 uses
  %.val.i.i.i74 = load ptr, ptr %0, align 8
  %.val9.i.i.i75 = load i64, ptr %i.g, align 8
  %i.cg = add i64 %i.cf, %.val9.i.i.i75
  %i.ch = tail call i32 @qtest_readl(ptr noundef %.val.i.i.i74, i64 noundef %i.cg) #6
  %i.ci = and i32 %i.ch, -16711684
  %i.cj = or disjoint i32 %i.ci, 196608
  %.val10.i.i.i76 = load ptr, ptr %0, align 8
  %.val11.i.i.i77 = load i64, ptr %i.g, align 8
  %i.ck = add i64 %.val11.i.i.i77, %i.cf
  tail call void @qtest_writel(ptr noundef %.val10.i.i.i76, i64 noundef %i.ck, i32 noundef %i.cj) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %write_page_mem.exit
  %indvars.iv.i.i78 = phi i64 [ 0, %write_page_mem.exit ], [ %indvars.iv.next.i.i82, %bb.k ] ; 3 uses
  %i.cl = shl i64 %indvars.iv.i.i78, 2
  %i.cm = and i64 %i.cl, 4294967292
  %i.cn = add nuw nsw i64 %i.cm, %i.av
  %.val.i.i80 = load ptr, ptr %0, align 8
  %.val7.i.i81 = load i64, ptr %i.q, align 8
  %i.co = add i64 %.val7.i.i81, %i.cn
  %i.cp = tail call i32 @qtest_readl(ptr noundef %.val.i.i80, i64 noundef %i.co) #6
  %i.cq = tail call noundef i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i78
  store i32 %i.cq, ptr %i.cr, align 4
  %indvars.iv.next.i.i82 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %exitcond.not.i.i83 = icmp eq i64 %indvars.iv.next.i.i82, 64
  br i1 %exitcond.not.i.i83, label %read_page_mem.exit.preheader.i84, label %bb.k, !llvm.loop !0

read_page_mem.exit.preheader.i84:                 ; preds = %bb.k
  %.not47 = icmp samesign ugt i64 %i.at, %indvars.iv
  %i.cs = select i1 %.not47, i32 -1412567278, i32 -1 ; 2 uses
  %i.ct = uitofp i32 %i.cs to x86_fp80
  br label %bb.l

bb.l:                                             ; preds = %read_page_mem.exit.i86, %read_page_mem.exit.preheader.i84
  %indvars.iv.i85 = phi i64 [ 0, %read_page_mem.exit.preheader.i84 ], [ %indvars.iv.next.i87, %read_page_mem.exit.i86 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.cs
  br i1 %i.cw, label %read_page_mem.exit.i86, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = uitofp i32 %i.cv to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @__func__.assert_page_mem, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.cx, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.ct, i8 noundef signext 120) #6
  br label %read_page_mem.exit.i86

read_page_mem.exit.i86:                           ; preds = %bb.m, %bb.l
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, 64
  br i1 %exitcond.not.i88, label %assert_page_mem.exit89, label %bb.l, !llvm.loop !1

assert_page_mem.exit89:                           ; preds = %read_page_mem.exit.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !33
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_write_block_protect_bottom_bit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i32], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %.val.i = load ptr, ptr %0, align 8
  %i.g = getelementptr i8, ptr %0, i64 8          ; 15 uses
  %.val4.i = load i64, ptr %i.g, align 8
  %i.h = add i64 %.val4.i, 4
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %i.h) #6
  %i.j = or i32 %i.i, %i.f
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.g, align 8
  %i.k = add i64 %.val6.i, 4
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %i.k, i32 noundef %i.j) #6
  %i.l = load i8, ptr %i.c, align 8
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw i32 65536, %i.m
  %.val.i58 = load ptr, ptr %0, align 8
  %.val4.i59 = load i64, ptr %i.g, align 8
  %i.o = tail call i32 @qtest_readl(ptr noundef %.val.i58, i64 noundef %.val4.i59) #6
  %i.p = or i32 %i.o, %i.n
  %.val5.i60 = load ptr, ptr %0, align 8
  %.val6.i61 = load i64, ptr %i.g, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i60, i64 noundef %.val6.i61, i32 noundef %i.p) #6
  %i.q = getelementptr i8, ptr %0, i64 16         ; 10 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a, %bb.f
  %.04488 = phi i32 [ 0, %bb.a ], [ %i.au, %bb.f ] ; 5 uses
  %i.r = shl nuw nsw i32 %.04488, 3
  %i.s = and i32 %i.r, 64
  %i.t = shl nuw nsw i32 %.04488, 2
  %i.u = add nuw nsw i32 %i.s, %i.t
  %i.v = load i8, ptr %i.c, align 8
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 16                 ; 3 uses
  %.val.i62 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.g, align 8
  %i.z = add i64 %i.y, %.val10.i
  %i.aa = tail call i32 @qtest_readl(ptr noundef %.val.i62, i64 noundef %i.z) #6
  %i.ab = or i32 %i.aa, 7                         ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.g, align 8
  %i.ac = add i64 %.val14.i, %i.y
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.ac, i32 noundef %i.ab) #6
  %i.ad = and i32 %i.ab, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.g, align 8
  %i.ae = add i64 %.val12.i, %i.y
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.ae, i32 noundef %i.ad) #6
  %.val56 = load ptr, ptr %0, align 8
  %.val57 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val56, i64 noundef %.val57, i8 noundef zeroext 6) #6
  %.val54 = load ptr, ptr %0, align 8
  %.val55 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val54, i64 noundef %.val55, i8 noundef zeroext -57) #6
  %.val52 = load ptr, ptr %0, align 8
  %.val53 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val52, i64 noundef %.val53, i8 noundef zeroext 6) #6
  %.val50 = load ptr, ptr %0, align 8
  %.val51 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val50, i64 noundef %.val51, i8 noundef zeroext 1) #6
  %i.af = trunc nuw nsw i32 %i.u to i8
  %i.ag = or i8 %i.af, 32
  %.val48 = load ptr, ptr %0, align 8
  %.val49 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val48, i64 noundef %.val49, i8 noundef zeroext %i.ag) #6
  %.val46 = load ptr, ptr %0, align 8
  %.val47 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val46, i64 noundef %.val47, i8 noundef zeroext -73) #6
  %.val = load ptr, ptr %0, align 8
  %.val45 = load i64, ptr %i.q, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val45, i8 noundef zeroext 6) #6
  %i.ah = load i8, ptr %i.c, align 8
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %.val.i63 = load ptr, ptr %0, align 8
  %.val6.i64 = load i64, ptr %i.g, align 8
  %i.al = add i64 %i.ak, %.val6.i64
  %i.am = tail call i32 @qtest_readl(ptr noundef %.val.i63, i64 noundef %i.al) #6
  %i.an = or i32 %i.am, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.g, align 8
  %i.ao = add i64 %.val8.i, %i.ak
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.ao, i32 noundef %i.an) #6
  %.not = icmp eq i32 %.04488, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i32 %.04488, -1
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 512)
  %i.as = zext nneg i32 %i.ar to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.as, %bb.d ], [ 0, %bb.c ]
  br label %bb.g

bb.f:                                             ; preds = %assert_page_mem.exit86
  %i.au = add nuw nsw i32 %.04488, 1              ; 2 uses
  %exitcond90.not = icmp eq i32 %i.au, 16
  br i1 %exitcond90.not, label %bb.b, label %bb.c, !llvm.loop !34

bb.g:                                             ; preds = %bb.e, %assert_page_mem.exit86
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %assert_page_mem.exit86 ] ; 3 uses
  %i.av = shl nuw nsw i64 %indvars.iv, 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !annotation !11
  %i.aw = load i8, ptr %i.c, align 8
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 16               ; 2 uses
  %.val.i.i.i = load ptr, ptr %0, align 8
  %.val9.i.i.i = load i64, ptr %i.g, align 8
  %i.ba = add i64 %i.az, %.val9.i.i.i
  %i.bb = tail call i32 @qtest_readl(ptr noundef %.val.i.i.i, i64 noundef %i.ba) #6
  %i.bc = and i32 %i.bb, -16711684
  %i.bd = or disjoint i32 %i.bc, 196608
  %.val10.i.i.i = load ptr, ptr %0, align 8
  %.val11.i.i.i = load i64, ptr %i.g, align 8
  %i.be = add i64 %.val11.i.i.i, %i.az
  tail call void @qtest_writel(ptr noundef %.val10.i.i.i, i64 noundef %i.be, i32 noundef %i.bd) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.bf = shl i64 %indvars.iv.i.i, 2
  %i.bg = and i64 %i.bf, 4294967292
  %i.bh = add nuw nsw i64 %i.bg, %i.av
  %.val.i.i = load ptr, ptr %0, align 8
  %.val7.i.i = load i64, ptr %i.q, align 8
  %i.bi = add i64 %.val7.i.i, %i.bh
  %i.bj = tail call i32 @qtest_readl(ptr noundef %.val.i.i, i64 noundef %i.bi) #6
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i32 %i.bk, ptr %i.bl, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %read_page_mem.exit.preheader.i, label %bb.h, !llvm.loop !0

read_page_mem.exit.preheader.i:                   ; preds = %bb.h, %read_page_mem.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %read_page_mem.exit.i ], [ 0, %bb.h ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %read_page_mem.exit.i, label %bb.i

bb.i:                                             ; preds = %read_page_mem.exit.preheader.i
  %i.bp = uitofp i32 %i.bn to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @__func__.assert_page_mem, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.bp, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %read_page_mem.exit.i

read_page_mem.exit.i:                             ; preds = %bb.i, %read_page_mem.exit.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %assert_page_mem.exit, label %read_page_mem.exit.preheader.i, !llvm.loop !1

assert_page_mem.exit:                             ; preds = %read_page_mem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.bq = load i8, ptr %i.c, align 8
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 16               ; 2 uses
  %.val.i.i65 = load ptr, ptr %0, align 8
  %.val9.i.i = load i64, ptr %i.g, align 8
  %i.bu = add i64 %i.bt, %.val9.i.i
  %i.bv = tail call i32 @qtest_readl(ptr noundef %.val.i.i65, i64 noundef %i.bu) #6
  %i.bw = and i32 %i.bv, -16711684
  %i.bx = or disjoint i32 %i.bw, 131074
  %.val10.i.i = load ptr, ptr %0, align 8
  %.val11.i.i = load i64, ptr %i.g, align 8
  %i.by = add i64 %.val11.i.i, %i.bt
  tail call void @qtest_writel(ptr noundef %.val10.i.i, i64 noundef %i.by, i32 noundef %i.bx) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %assert_page_mem.exit
  %indvars.iv.i66 = phi i64 [ 0, %assert_page_mem.exit ], [ %indvars.iv.next.i69, %bb.j ] ; 2 uses
  %i.bz = shl nuw nsw i64 %indvars.iv.i66, 2
  %i.ca = add nuw nsw i64 %i.bz, %i.av
  %.val.i67 = load ptr, ptr %0, align 8
  %.val6.i68 = load i64, ptr %i.q, align 8
  %i.cb = add i64 %i.ca, %.val6.i68
  tail call void @qtest_writel(ptr noundef %.val.i67, i64 noundef %i.cb, i32 noundef 317705643) #6
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, 64
  br i1 %exitcond.not.i70, label %write_page_mem.exit, label %bb.j, !llvm.loop !2

write_page_mem.exit:                              ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.cc = load i8, ptr %i.c, align 8
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 16               ; 2 uses
  %.val.i.i.i71 = load ptr, ptr %0, align 8
  %.val9.i.i.i72 = load i64, ptr %i.g, align 8
  %i.cg = add i64 %i.cf, %.val9.i.i.i72
  %i.ch = tail call i32 @qtest_readl(ptr noundef %.val.i.i.i71, i64 noundef %i.cg) #6
  %i.ci = and i32 %i.ch, -16711684
  %i.cj = or disjoint i32 %i.ci, 196608
  %.val10.i.i.i73 = load ptr, ptr %0, align 8
  %.val11.i.i.i74 = load i64, ptr %i.g, align 8
  %i.ck = add i64 %.val11.i.i.i74, %i.cf
  tail call void @qtest_writel(ptr noundef %.val10.i.i.i73, i64 noundef %i.ck, i32 noundef %i.cj) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %write_page_mem.exit
  %indvars.iv.i.i75 = phi i64 [ 0, %write_page_mem.exit ], [ %indvars.iv.next.i.i79, %bb.k ] ; 3 uses
  %i.cl = shl i64 %indvars.iv.i.i75, 2
  %i.cm = and i64 %i.cl, 4294967292
  %i.cn = add nuw nsw i64 %i.cm, %i.av
  %.val.i.i77 = load ptr, ptr %0, align 8
  %.val7.i.i78 = load i64, ptr %i.q, align 8
  %i.co = add i64 %.val7.i.i78, %i.cn
  %i.cp = tail call i32 @qtest_readl(ptr noundef %.val.i.i77, i64 noundef %i.co) #6
  %i.cq = tail call noundef i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i75
  store i32 %i.cq, ptr %i.cr, align 4
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i75, 1 ; 2 uses
  %exitcond.not.i.i80 = icmp eq i64 %indvars.iv.next.i.i79, 64
  br i1 %exitcond.not.i.i80, label %read_page_mem.exit.preheader.i81, label %bb.k, !llvm.loop !0

read_page_mem.exit.preheader.i81:                 ; preds = %bb.k
  %i.cs = icmp samesign ult i64 %indvars.iv, %i.at
  %i.ct = select i1 %i.cs, i32 -1, i32 -1412567278 ; 2 uses
  %i.cu = uitofp i32 %i.ct to x86_fp80
  br label %bb.l

bb.l:                                             ; preds = %read_page_mem.exit.i83, %read_page_mem.exit.preheader.i81
  %indvars.iv.i82 = phi i64 [ 0, %read_page_mem.exit.preheader.i81 ], [ %indvars.iv.next.i84, %read_page_mem.exit.i83 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i82
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp eq i32 %i.cw, %i.ct
  br i1 %i.cx, label %read_page_mem.exit.i83, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = uitofp i32 %i.cw to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @__func__.assert_page_mem, ptr noundef nonnull @.str.15, x86_fp80 noundef %i.cy, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.cu, i8 noundef signext 120) #6
  br label %read_page_mem.exit.i83

read_page_mem.exit.i83:                           ; preds = %bb.m, %bb.l
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, 64
  br i1 %exitcond.not.i85, label %assert_page_mem.exit86, label %bb.l, !llvm.loop !1

assert_page_mem.exit86:                           ; preds = %read_page_mem.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !35
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aspeed_smc_test_write_page_qpi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = alloca [64 x i32], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw i32 65536, %i.f
  %.val.i = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 11 uses
  %.val4.i = load i64, ptr %i.h, align 8
  %i.i = tail call i32 @qtest_readl(ptr noundef %.val.i, i64 noundef %.val4.i) #6
  %i.j = or i32 %i.i, %i.g
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i64, ptr %i.h, align 8
  tail call void @qtest_writel(ptr noundef %.val5.i, i64 noundef %.val6.i, i32 noundef %i.j) #6
  %i.k = load i8, ptr %i.d, align 8
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 16                 ; 3 uses
  %.val.i69 = load ptr, ptr %0, align 8
  %.val10.i = load i64, ptr %i.h, align 8
  %i.o = add i64 %i.n, %.val10.i
  %i.p = tail call i32 @qtest_readl(ptr noundef %.val.i69, i64 noundef %i.o) #6
  %i.q = or i32 %i.p, 7                           ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.r = add i64 %.val14.i, %i.n
  tail call void @qtest_writel(ptr noundef %.val13.i, i64 noundef %i.r, i32 noundef %i.q) #6
  %i.s = and i32 %i.q, -5
  %.val11.i = load ptr, ptr %0, align 8
  %.val12.i = load i64, ptr %i.h, align 8
  %i.t = add i64 %.val12.i, %i.n
  tail call void @qtest_writel(ptr noundef %.val11.i, i64 noundef %i.t, i32 noundef %i.s) #6
  %.val61 = load ptr, ptr %0, align 8
  %i.u = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %.val62 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val61, i64 noundef %.val62, i8 noundef zeroext -73) #6
  %.val59 = load ptr, ptr %0, align 8
  %.val60 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val59, i64 noundef %.val60, i8 noundef zeroext 6) #6
  %.val = load ptr, ptr %0, align 8
  %.val58 = load i64, ptr %i.u, align 8
  tail call void @qtest_writeb(ptr noundef %.val, i64 noundef %.val58, i8 noundef zeroext 2) #6
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.c)
  %.val67 = load ptr, ptr %0, align 8
  %.val68 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val67, i64 noundef %.val68, i32 noundef %i.v) #6
  %i.w = load i8, ptr %i.d, align 8
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 16                 ; 2 uses
  %.val.i70 = load ptr, ptr %0, align 8
  %.val9.i = load i64, ptr %i.h, align 8
  %i.aa = add i64 %i.z, %.val9.i
  %i.ab = tail call i32 @qtest_readl(ptr noundef %.val.i70, i64 noundef %i.aa) #6
  %i.ac = and i32 %i.ab, 268435455
  %i.ad = or disjoint i32 %i.ac, -2147483648
  %.val10.i71 = load ptr, ptr %0, align 8
  %.val11.i72 = load i64, ptr %i.h, align 8
  %i.ae = add i64 %.val11.i72, %i.z
  tail call void @qtest_writel(ptr noundef %.val10.i71, i64 noundef %i.ae, i32 noundef %i.ad) #6
  %.val65 = load ptr, ptr %0, align 8
  %.val66 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val65, i64 noundef %.val66, i32 noundef 885119211) #6
  %.val65.1 = load ptr, ptr %0, align 8
  %.val66.1 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val65.1, i64 noundef %.val66.1, i32 noundef -1130978979) #6
  %.val65.2 = load ptr, ptr %0, align 8
  %.val66.2 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val65.2, i64 noundef %.val66.2, i32 noundef 703010222) #6
  %.val65.3 = load ptr, ptr %0, align 8
  %.val66.3 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val65.3, i64 noundef %.val66.3, i32 noundef -540244656) #6
  %i.af = add i32 %i.c, 256
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.181 = phi i32 [ %i.aj, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 2 uses
  %i.ag = shl nuw nsw i32 %.181, 2
  %i.ah = add i32 %i.ag, %i.c
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %.val63 = load ptr, ptr %0, align 8
  %.val64 = load i64, ptr %i.u, align 8
  tail call void @qtest_writel(ptr noundef %.val63, i64 noundef %.val64, i32 noundef %i.ai) #6
  %i.aj = add nuw nsw i32 %.181, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, 64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !11
  %i.ak = load i8, ptr %i.d, align 8
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 16               ; 2 uses
  %.val.i73 = load ptr, ptr %0, align 8
  %.val9.i74 = load i64, ptr %i.h, align 8
  %i.ao = add i64 %i.an, %.val9.i74
  %i.ap = tail call i32 @qtest_readl(ptr noundef %.val.i73, i64 noundef %i.ao) #6
  %i.aq = and i32 %i.ap, 268435455
  %.val10.i75 = load ptr, ptr %0, align 8
  %.val11.i76 = load i64, ptr %i.h, align 8
  %i.ar = add i64 %.val11.i76, %i.an
  tail call void @qtest_writel(ptr noundef %.val10.i75, i64 noundef %i.ar, i32 noundef %i.aq) #6
  %i.as = load i8, ptr %i.d, align 8
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 16               ; 2 uses
  %.val.i77 = load ptr, ptr %0, align 8
  %.val6.i78 = load i64, ptr %i.h, align 8
  %i.aw = add i64 %i.av, %.val6.i78
  %i.ax = tail call i32 @qtest_readl(ptr noundef %.val.i77, i64 noundef %i.aw) #6
  %i.ay = or i32 %i.ax, 7
  %.val7.i = load ptr, ptr %0, align 8
  %.val8.i = load i64, ptr %i.h, align 8
  %i.az = add i64 %.val8.i, %i.av
  tail call void @qtest_writel(ptr noundef %.val7.i, i64 noundef %i.az, i32 noundef %i.ay) #6
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.a)
  %i.ba = load i32, ptr %i.a, align 16            ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -338116300
  br i1 %i.bb, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.bc = uitofp i32 %i.ba to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.bc, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EEBD8C13400000000, i8 noundef signext 120) #6
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1570870972
  br i1 %i.bf, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = uitofp i32 %i.be to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.bg, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401DBB432D7800000000, i8 noundef signext 120) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1374296279
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = uitofp i32 %i.bi to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.bk, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EAE15E72900000000, i8 noundef signext 120) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1350946015
  br i1 %i.bn, label %.lr.ph84.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = uitofp i32 %i.bm to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.14, x86_fp80 noundef %i.bo, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401DA10B99BE00000000, i8 noundef signext 120) #6
  br label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.f, %bb.g
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 4, %.lr.ph84.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.bs = add i32 %i.br, %i.c                     ; 2 uses
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph84
  %i.bu = uitofp i32 %i.bq to x86_fp80
  %i.bv = uitofp i32 %i.bs to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 675, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.5, x86_fp80 noundef %i.bu, ptr noundef nonnull @.str.2, x86_fp80 noundef %i.bv, i8 noundef signext 120) #6
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph84, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond92.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !37

._crit_edge85:                                    ; preds = %bb.i
  call fastcc void @read_page(ptr noundef nonnull %0, i32 noundef %i.af, ptr noundef %i.a)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge85, %bb.l
  %indvars.iv93 = phi i64 [ 0, %._crit_edge85 ], [ %indvars.iv.next94, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv93
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = uitofp i32 %i.bx to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 681, ptr noundef nonnull @__func__.aspeed_smc_test_write_page_qpi, ptr noundef nonnull @.str.3, x86_fp80 noundef %i.bz, ptr noundef nonnull @.str.2, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 120) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 64
  br i1 %exitcond96.not, label %bb.m, label %bb.j, !llvm.loop !38

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @flash_reset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare i32 @qtest_readl(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @qtest_writel(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @qtest_writeb(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @qtest_readb(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"long-double-type", !"x86_fp80"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
end_hunk_1
