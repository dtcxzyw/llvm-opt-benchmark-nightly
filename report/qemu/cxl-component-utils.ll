Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cxl-component-utils?download=true
inline.NumInlined: 102
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c".io\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".cache_mem\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"offset >= PCI_CFG_SPACE_SIZE && ((offset + length) < PCI_CFG_SPACE_EXP_SIZE)\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"../hw/cxl/cxl-component-utils.c\00", align 1
@__PRETTY_FUNCTION__.cxl_component_create_dvsec = private unnamed_addr constant [108 x i8] c"void cxl_component_create_dvsec(CXLComponentState *, enum reg_type, uint16_t, uint16_t, uint8_t, uint8_t *)\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"(rev & ~0xf) == 0\00", align 1
@__func__.cxl_interleave_ways_enc = private unnamed_addr constant [24 x i8] c"cxl_interleave_ways_enc\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Interleave ways: %d not supported\00", align 1
@__func__.cxl_interleave_ways_dec = private unnamed_addr constant [24 x i8] c"cxl_interleave_ways_dec\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Encoded interleave ways: %d not supported\00", align 1
@__func__.cxl_interleave_granularity_enc = private unnamed_addr constant [31 x i8] c"cxl_interleave_granularity_enc\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Interleave granularity: %lu invalid\00", align 1
@cache_mem_ops = internal constant { ptr, ptr, ptr, ptr, i32, [4 x i8], { i32, i32, i8, [7 x i8], ptr }, { i32, i32, i8, [3 x i8] }, [4 x i8] } { ptr @cxl_cache_mem_read_reg, ptr @cxl_cache_mem_write_reg, ptr null, ptr null, i32 2, [4 x i8] zeroinitializer, { i32, i32, i8, [7 x i8], ptr } { i32 4, i32 8, i8 0, [7 x i8] zeroinitializer, ptr null }, { i32, i32, i8, [3 x i8] } { i32 4, i32 8, i8 0, [3 x i8] zeroinitializer }, [4 x i8] zeroinitializer }, align 8
@.str.33 = private unnamed_addr constant [48 x i8] c"CXL 8 byte cache mem registers not implemented\0A\00", align 1
@__func__.cxl_cache_mem_read_reg = private unnamed_addr constant [23 x i8] c"cxl_cache_mem_read_reg\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@__func__.cxl_cache_mem_write_reg = private unnamed_addr constant [24 x i8] c"cxl_cache_mem_write_reg\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"range->lob <= range->upb || range->lob == range->upb + 1\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/range.h\00", align 1
@__PRETTY_FUNCTION__.range_invariant = private unnamed_addr constant [36 x i8] c"void range_invariant(const Range *)\00", align 1
@switch.table.cxl_decoder_count_enc = private unnamed_addr constant [31 x i8] c"\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\00\00\09\00\00\00\0A\00\00\00\0B\00\00\00\0C", align 4
@switch.table.cxl_decoder_count_dec = private unnamed_addr constant [13 x i8] c"\01\02\04\06\08\0A\0C\0E\10\14\18\1C ", align 4
@switch.table.cxl_interleave_ways_enc = private unnamed_addr constant [16 x i8] [i8 0, i8 1, i8 8, i8 2, i8 poison, i8 9, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 poison, i8 poison, i8 4], align 1
@switch.table.cxl_interleave_ways_dec = private unnamed_addr constant [11 x i8] [i8 1, i8 2, i8 4, i8 8, i8 16, i8 poison, i8 poison, i8 poison, i8 3, i8 6, i8 12], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 13) i32 @cxl_decoder_count_enc(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 31
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cxl_decoder_count_enc, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 33) i32 @cxl_decoder_count_dec(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cxl_decoder_count_dec, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 1, -9223372036854775807) i64 @cxl_decode_ig(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, 8
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 1, %i.b
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cxl_component_register_block_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @memory_region_init(ptr noundef %1, ptr noundef %0, ptr noundef %2, i64 noundef 65536) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4368 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, i64 noundef 4096) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12832 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull @cache_mem_ops, ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef 4096) #11
  tail call void @memory_region_add_subregion(ptr noundef %1, i64 noundef 0, ptr noundef nonnull %i.a) #11
  tail call void @memory_region_add_subregion(ptr noundef %1, i64 noundef 4096, ptr noundef nonnull %i.b) #11
  ret void
}

declare void @memory_region_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @cxl_component_register_init_common(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %0, i8 noundef 0, i64 noundef 4096, i1 noundef false) #11
  store i32 1114113, ptr %0, align 4
  switch i32 %2, label %bb.g [
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 6, label %bb.d
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 662765574, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1442775032, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %spec.store.select1 = phi i32 [ 5, %bb.b ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 310444037, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, -8339456
  %i.g = icmp eq i32 %2, 1
  %storemerge.i.v = select i1 %3, i32 6298386, i32 6930
  %i.h = select i1 %i.g, i32 %storemerge.i.v, i32 786
  %i.i = or disjoint i32 %i.h, %i.f
  store i32 %i.i, ptr %i.d, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -3
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 300
  store i32 3, ptr %i.m, align 4
  %or.cond3.i = icmp samesign ult i32 %2, 3
  %.sink151.i = select i1 %or.cond3.i, i32 -268435456, i32 -1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312
  store <4 x i32> <i32 -268435456, i32 -1, i32 -268435456, i32 -1>, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i32 5119, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i32 %.sink151.i, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 344
  store <4 x i32> <i32 -268435456, i32 -1, i32 -268435456, i32 -1>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 5119, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 364
  store i32 %.sink151.i, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 376
  store <4 x i32> <i32 -268435456, i32 -1, i32 -268435456, i32 -1>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i32 5119, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 396
  store i32 %.sink151.i, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 -1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 408
  store <4 x i32> <i32 -268435456, i32 -1, i32 -268435456, i32 -1>, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i32 5119, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 428
  store i32 %.sink151.i, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i32 -1, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.a
  %.1 = phi i32 [ %spec.store.select1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.a ] ; 2 uses
  %.not = icmp eq i32 %2, 4
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i32 @llvm.umax.i32(i32 %.1, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 134348802, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 118783, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 118783, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 118783, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 118783, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 118783, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 127, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 127, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 127, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 512, ptr %i.ap, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ %i.ad, %bb.e ], [ %.1, %bb.d ]
  %i.aq = tail call i32 @llvm.umax.i32(i32 %.2, i32 2) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 226623492, ptr %i.ar, align 4
  br i1 %3, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.a
  tail call void @abort() #12
  unreachable

bb.h:                                             ; preds = %bb.f
  switch i32 %2, label %bb.k [
    i32 5, label %bb.i
    i32 3, label %bb.j
    i32 6, label %bb.j
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1434386421, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = or i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4
  br label %.sink.split

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1421803508, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %2, -3
  %.not.i = icmp eq i32 %i.az, 1
  %i.ba = and i32 %i.ay, -4
  %i.bb = select i1 %.not.i, i32 0, i32 2
  %i.bc = or disjoint i32 %i.ba, %i.bb
  store i32 %i.bc, ptr %i.ax, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink229 = phi i64 [ 2732, %bb.i ], [ 2744, %bb.j ] ; 2 uses
  %.sink227 = phi i32 [ -2, %bb.i ], [ -8, %bb.j ]
  %.sink221 = phi i32 [ 1, %bb.i ], [ 7, %bb.j ]
  %.sink = phi i64 [ 2736, %bb.i ], [ 2748, %bb.j ]
  %.3.ph = phi i32 [ 6, %bb.i ], [ 7, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink229 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, %.sink227
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink229
  store i32 %.sink221, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, -65284
  %i.bk = or disjoint i32 %i.bj, 9728
  store i32 %i.bk, ptr %i.bh, align 4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %bb.f
  %.3 = phi i32 [ %i.aq, %bb.h ], [ %i.aq, %bb.f ], [ %.3.ph, %.sink.split ]
  %i.bl = load i32, ptr %0, align 4
  %i.bm = and i32 %i.bl, 16777215
  %i.bn = shl nuw nsw i32 %.3, 24
  %i.bo = or disjoint i32 %i.bm, %i.bn
  store i32 %i.bo, ptr %0, align 4
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cxl_component_create_dvsec(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14096 ; 4 uses
  %i.d = load i16, ptr %i.c, align 16             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = icmp ugt i16 %i.d, 255
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i16 %i.d to i32
  %i.i = zext i16 %2 to i32                       ; 2 uses
  %i.j = add nuw nsw i32 %i.h, %i.i
  %i.k = icmp samesign ult i32 %i.j, 4096
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 490, ptr noundef nonnull @__PRETTY_FUNCTION__.cxl_component_create_dvsec) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i8 %4, 16
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 492, ptr noundef nonnull @__PRETTY_FUNCTION__.cxl_component_create_dvsec) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = zext nneg i8 %4 to i32
  tail call void @pcie_add_capability(ptr noundef nonnull %i.b, i16 noundef zeroext 35, i8 noundef zeroext 1, i16 noundef zeroext %i.d, i16 noundef zeroext %2) #11
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i16 %i.d to i64                     ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = shl nuw i32 %i.i, 20
  %i.t = shl nuw nsw i32 %i.m, 16
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or disjoint i32 %i.u, 7832
  store i32 %i.v, ptr %i.r, align 1
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %3, ptr %i.y, align 1
end_hunk_0
