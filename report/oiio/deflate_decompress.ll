inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@decompress_impl = internal global ptr @dispatch_decomp, align 8
@libdeflate_x86_cpu_features = external global i32, align 4
@precode_decode_results = internal constant [19 x i32] [i32 0, i32 65536, i32 131072, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720896, i32 786432, i32 851968, i32 917504, i32 983040, i32 1048576, i32 1114112, i32 1179648], align 16
@offset_decode_results = internal constant [32 x i32] [i32 65536, i32 131072, i32 196608, i32 262144, i32 327681, i32 458753, i32 589826, i32 851970, i32 1114115, i32 1638403, i32 2162692, i32 3211268, i32 4259845, i32 6356997, i32 8454150, i32 12648454, i32 16842759, i32 25231367, i32 33619976, i32 50397192, i32 67174409, i32 100728841, i32 134283274, i32 201392138, i32 268501003, i32 402718731, i32 536936460, i32 805371916, i32 1073807373, i32 1610678285, i32 1610678285, i32 1610678285], align 16
@litlen_decode_results = internal constant [288 x i32] [i32 -2147483648, i32 -2147418112, i32 -2147352576, i32 -2147287040, i32 -2147221504, i32 -2147155968, i32 -2147090432, i32 -2147024896, i32 -2146959360, i32 -2146893824, i32 -2146828288, i32 -2146762752, i32 -2146697216, i32 -2146631680, i32 -2146566144, i32 -2146500608, i32 -2146435072, i32 -2146369536, i32 -2146304000, i32 -2146238464, i32 -2146172928, i32 -2146107392, i32 -2146041856, i32 -2145976320, i32 -2145910784, i32 -2145845248, i32 -2145779712, i32 -2145714176, i32 -2145648640, i32 -2145583104, i32 -2145517568, i32 -2145452032, i32 -2145386496, i32 -2145320960, i32 -2145255424, i32 -2145189888, i32 -2145124352, i32 -2145058816, i32 -2144993280, i32 -2144927744, i32 -2144862208, i32 -2144796672, i32 -2144731136, i32 -2144665600, i32 -2144600064, i32 -2144534528, i32 -2144468992, i32 -2144403456, i32 -2144337920, i32 -2144272384, i32 -2144206848, i32 -2144141312, i32 -2144075776, i32 -2144010240, i32 -2143944704, i32 -2143879168, i32 -2143813632, i32 -2143748096, i32 -2143682560, i32 -2143617024, i32 -2143551488, i32 -2143485952, i32 -2143420416, i32 -2143354880, i32 -2143289344, i32 -2143223808, i32 -2143158272, i32 -2143092736, i32 -2143027200, i32 -2142961664, i32 -2142896128, i32 -2142830592, i32 -2142765056, i32 -2142699520, i32 -2142633984, i32 -2142568448, i32 -2142502912, i32 -2142437376, i32 -2142371840, i32 -2142306304, i32 -2142240768, i32 -2142175232, i32 -2142109696, i32 -2142044160, i32 -2141978624, i32 -2141913088, i32 -2141847552, i32 -2141782016, i32 -2141716480, i32 -2141650944, i32 -2141585408, i32 -2141519872, i32 -2141454336, i32 -2141388800, i32 -2141323264, i32 -2141257728, i32 -2141192192, i32 -2141126656, i32 -2141061120, i32 -2140995584, i32 -2140930048, i32 -2140864512, i32 -2140798976, i32 -2140733440, i32 -2140667904, i32 -2140602368, i32 -2140536832, i32 -2140471296, i32 -2140405760, i32 -2140340224, i32 -2140274688, i32 -2140209152, i32 -2140143616, i32 -2140078080, i32 -2140012544, i32 -2139947008, i32 -2139881472, i32 -2139815936, i32 -2139750400, i32 -2139684864, i32 -2139619328, i32 -2139553792, i32 -2139488256, i32 -2139422720, i32 -2139357184, i32 -2139291648, i32 -2139226112, i32 -2139160576, i32 -2139095040, i32 -2139029504, i32 -2138963968, i32 -2138898432, i32 -2138832896, i32 -2138767360, i32 -2138701824, i32 -2138636288, i32 -2138570752, i32 -2138505216, i32 -2138439680, i32 -2138374144, i32 -2138308608, i32 -2138243072, i32 -2138177536, i32 -2138112000, i32 -2138046464, i32 -2137980928, i32 -2137915392, i32 -2137849856, i32 -2137784320, i32 -2137718784, i32 -2137653248, i32 -2137587712, i32 -2137522176, i32 -2137456640, i32 -2137391104, i32 -2137325568, i32 -2137260032, i32 -2137194496, i32 -2137128960, i32 -2137063424, i32 -2136997888, i32 -2136932352, i32 -2136866816, i32 -2136801280, i32 -2136735744, i32 -2136670208, i32 -2136604672, i32 -2136539136, i32 -2136473600, i32 -2136408064, i32 -2136342528, i32 -2136276992, i32 -2136211456, i32 -2136145920, i32 -2136080384, i32 -2136014848, i32 -2135949312, i32 -2135883776, i32 -2135818240, i32 -2135752704, i32 -2135687168, i32 -2135621632, i32 -2135556096, i32 -2135490560, i32 -2135425024, i32 -2135359488, i32 -2135293952, i32 -2135228416, i32 -2135162880, i32 -2135097344, i32 -2135031808, i32 -2134966272, i32 -2134900736, i32 -2134835200, i32 -2134769664, i32 -2134704128, i32 -2134638592, i32 -2134573056, i32 -2134507520, i32 -2134441984, i32 -2134376448, i32 -2134310912, i32 -2134245376, i32 -2134179840, i32 -2134114304, i32 -2134048768, i32 -2133983232, i32 -2133917696, i32 -2133852160, i32 -2133786624, i32 -2133721088, i32 -2133655552, i32 -2133590016, i32 -2133524480, i32 -2133458944, i32 -2133393408, i32 -2133327872, i32 -2133262336, i32 -2133196800, i32 -2133131264, i32 -2133065728, i32 -2133000192, i32 -2132934656, i32 -2132869120, i32 -2132803584, i32 -2132738048, i32 -2132672512, i32 -2132606976, i32 -2132541440, i32 -2132475904, i32 -2132410368, i32 -2132344832, i32 -2132279296, i32 -2132213760, i32 -2132148224, i32 -2132082688, i32 -2132017152, i32 -2131951616, i32 -2131886080, i32 -2131820544, i32 -2131755008, i32 -2131689472, i32 -2131623936, i32 -2131558400, i32 -2131492864, i32 -2131427328, i32 -2131361792, i32 -2131296256, i32 -2131230720, i32 -2131165184, i32 -2131099648, i32 -2131034112, i32 -2130968576, i32 -2130903040, i32 -2130837504, i32 -2130771968, i32 40960, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720897, i32 851969, i32 983041, i32 1114113, i32 1245186, i32 1507330, i32 1769474, i32 2031618, i32 2293763, i32 2818051, i32 3342339, i32 3866627, i32 4390916, i32 5439492, i32 6488068, i32 7536644, i32 8585221, i32 10682373, i32 12779525, i32 14876677, i32 16908288, i32 16908288, i32 16908288], align 16
@deflate_decompress_default.deflate_precode_lens_permutation = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16

; Function Attrs: nounwind uwtable
define hidden i32 @libdeflate_deflate_decompress_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr @decompress_impl, align 8, !tbaa !7
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #10
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden i32 @libdeflate_deflate_decompress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr @decompress_impl, align 8, !tbaa !7
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, ptr noundef %5) #10, !inline_history !9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @libdeflate_alloc_decompressor() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @libdeflate_malloc(i64 noundef 11560) #10 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11560) %i.a, i8 0, i64 11560, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @libdeflate_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @libdeflate_free_decompressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @libdeflate_free(ptr noundef %0) #10
  ret void
}

declare void @libdeflate_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_decomp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %arch_select_decompress_func.exit

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features() #10
  br label %arch_select_decompress_func.exit

arch_select_decompress_func.exit:                 ; preds = %bb.a, %bb.b
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !3
  %i.d = and i32 %i.c, 16
  %.not.i = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not.i, ptr @deflate_decompress_default, ptr @deflate_decompress_bmi2 ; 2 uses
  store volatile ptr %spec.store.select, ptr @decompress_impl, align 8, !tbaa !7
  %i.e = tail call i32 %spec.store.select(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #10, !callees !10
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_default(ptr noalias noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef writeonly captures(address_is_null) %5, ptr noundef writeonly captures(address_is_null) %6) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0692 = phi i64 [ 0, %bb.a ], [ %.21713, %.thread869 ] ; 3 uses
  %.0649 = phi i32 [ 0, %bb.a ], [ %.29678, %.thread869 ] ; 6 uses
  %.0614 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0599 = phi ptr [ %1, %bb.a ], [ %.26, %.thread869 ] ; 5 uses
  %.0590 = phi ptr [ %3, %bb.a ], [ %.8598, %.thread869 ] ; 6 uses
  %i.r = ptrtoint ptr %.0599 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !11

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0649, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0599, align 1
  %i.w = and i32 %.0649, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0614
  %i.aa = getelementptr inbounds nuw i8, ptr %.0599, i64 7
  %i.ab = lshr i32 %.0649, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0649, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1600953 = phi ptr [ %.2601, %bb.f ], [ %.0599, %.preheader915 ] ; 4 uses
  %.1615952 = phi i64 [ %.2616, %bb.f ], [ %.0614, %.preheader915 ] ; 2 uses
  %.1650951 = phi i32 [ %i.aq, %bb.f ], [ %.0649, %.preheader915 ]
  %.1693950 = phi i64 [ %.2694, %bb.f ], [ %.0692, %.preheader915 ] ; 2 uses
  %.not = icmp eq ptr %.1600953, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1600953, i64 1
  %i.aj = load i8, ptr %.1600953, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1615952
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1693950, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2694 = phi i64 [ %.1693950, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %.2616 = phi i64 [ %i.an, %bb.d ], [ %.1615952, %bb.e ] ; 2 uses
  %.2601 = phi ptr [ %i.ai, %bb.d ], [ %.1600953, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1650951, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !14

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3695 = phi i64 [ %.0692, %bb.c ], [ %.0692, %.preheader915 ], [ %.2694, %bb.f ] ; 7 uses
  %.2651 = phi i32 [ %i.ag, %bb.c ], [ %.0649, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3617 = phi i64 [ %i.z, %bb.c ], [ %.0614, %.preheader915 ], [ %.2616, %bb.f ] ; 5 uses
  %.3602 = phi ptr [ %i.af, %bb.c ], [ %.0599, %.preheader915 ], [ %.2601, %bb.f ] ; 8 uses
  %i.at = and i64 %.3617, 1
  %.not744 = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %.3617 to i32                 ; 4 uses
  %i.av = and i32 %i.au, 6
  switch i32 %i.av, label %default.unreachable [
    i32 4, label %bb.g
    i32 0, label %bb.at
    i32 2, label %bb.az
    i32 6, label %.thread836
  ], !prof !16

bb.g:                                             ; preds = %.loopexit916
  %i.aw = lshr i32 %i.au, 3
  %i.ax = and i32 %i.aw, 31
  %i.ay = add nuw nsw i32 %i.ax, 257              ; 2 uses
  %i.az = lshr i32 %i.au, 8
  %i.ba = and i32 %i.az, 31
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = lshr i32 %i.au, 13                      ; 2 uses
  %i.bd = and i32 %i.bc, 15
  store i8 0, ptr %i.j, align 4, !tbaa !17
  %i.be = lshr i64 %.3617, 17
  %i.bf = trunc i64 %i.be to i8
  %i.bg = and i8 %i.bf, 7
  store i8 %i.bg, ptr %i.l, align 4, !tbaa !13
  %i.bh = lshr i64 %.3617, 20                     ; 3 uses
  %i.bi = add i32 %.2651, -20                     ; 6 uses
  %i.bj = ptrtoint ptr %.3602 to i64
  %i.bk = sub i64 %i.i, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %bb.h, label %.preheader908, !prof !11

.preheader908:                                    ; preds = %bb.g
  %i.bm = and i32 %i.bi, 255                      ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 56
  br i1 %i.bn, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3602, align 1
  %i.bo = and i32 %i.bi, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.0.copyload.i807, %i.bp
  %i.br = or i64 %i.bq, %i.bh
  %i.bs = getelementptr inbounds nuw i8, ptr %.3602, i64 7
  %i.bt = lshr i32 %i.bi, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  %i.by = or i32 %i.bi, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bz = phi i32 [ %i.cj, %bb.k ], [ %i.bm, %.preheader908 ]
  %.4603972 = phi ptr [ %.5604, %bb.k ], [ %.3602, %.preheader908 ] ; 4 uses
  %.4618971 = phi i64 [ %.5619, %bb.k ], [ %i.bh, %.preheader908 ] ; 2 uses
  %.3652970 = phi i32 [ %i.ci, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4696969 = phi i64 [ %.5697, %bb.k ], [ %.3695, %.preheader908 ] ; 2 uses
  %.not749 = icmp eq ptr %.4603972, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.lr.ph973
  %i.ca = getelementptr inbounds nuw i8, ptr %.4603972, i64 1
  %i.cb = load i8, ptr %.4603972, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i64
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.4618971
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cg = add i64 %.4696969, 1                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 8
  br i1 %i.ch, label %.thread836, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5697 = phi i64 [ %.4696969, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %.5619 = phi i64 [ %i.cf, %bb.i ], [ %.4618971, %bb.j ] ; 2 uses
  %.5604 = phi ptr [ %i.ca, %bb.i ], [ %.4603972, %bb.j ] ; 2 uses
  %i.ci = add i32 %.3652970, 8                    ; 3 uses
  %i.cj = and i32 %i.ci, 255                      ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, 56
  br i1 %i.ck, label %.lr.ph973, label %.loopexit909, !llvm.loop !20

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6698 = phi i64 [ %.3695, %bb.h ], [ %.3695, %.preheader908 ], [ %.5697, %bb.k ]
  %.4653 = phi i32 [ %i.by, %bb.h ], [ %i.bi, %.preheader908 ], [ %i.ci, %bb.k ]
  %.6620 = phi i64 [ %i.br, %bb.h ], [ %i.bh, %.preheader908 ], [ %.5619, %bb.k ]
  %.6605 = phi ptr [ %i.bx, %bb.h ], [ %.3602, %.preheader908 ], [ %.5604, %bb.k ]
  %i.cl = and i32 %i.bc, 15
  %narrow = add nuw nsw i32 %i.cl, 3              ; 2 uses
  %i.cm = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.cm, 1
  %unroll_iter = and i64 %i.cm, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7621 = phi i64 [ %.6620, %.loopexit909 ], [ %i.da, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.cn = trunc i64 %.7621 to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !13
  %i.ct = lshr i64 %.7621, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !13
  %i.da = lshr i64 %.7621, 6                      ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader907.unr-lcssa, label %bb.l, !llvm.loop !21

.preheader907.unr-lcssa:                          ; preds = %bb.l
  %indvars.iv.next1051 = or disjoint i64 %indvars.iv1050, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1189 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1189)
  %i.db = trunc i64 %i.da to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !13
  %i.dh = lshr i64 %i.da, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1172 = phi i64 [ %i.da, %.preheader907.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.di = add i32 %.4653, -9
  %.neg1092 = mul nsw i32 %i.bd, -3
  %i.dj = add i32 %.neg1092, %i.di
  %i.dk = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.dk, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !13
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.dp = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.dp, label %.lr.ph979, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dq = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dq, label %.preheader905, label %.thread836, !prof !11

.preheader905:                                    ; preds = %._crit_edge
  %i.dr = add nuw nsw i32 %i.ay, %i.bb            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7699 = phi i64 [ %.10702, %bb.ar ], [ %.6698, %.preheader905 ] ; 4 uses
  %.6655 = phi i32 [ %.10659, %bb.ar ], [ %i.dj, %.preheader905 ] ; 11 uses
  %.2646 = phi i32 [ %.4648, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %.8622 = phi i64 [ %.13627, %bb.ar ], [ %.lcssa1172, %.preheader905 ] ; 4 uses
  %.7606 = phi ptr [ %.10609, %bb.ar ], [ %.6605, %.preheader905 ] ; 8 uses
  %i.ds = and i32 %.6655, 255                     ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 14
  br i1 %i.dt, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.du = ptrtoint ptr %.7606 to i64
  %i.dv = sub i64 %i.i, %i.du
  %i.dw = icmp ugt i64 %i.dv, 7
  br i1 %i.dw, label %bb.o, label %.lr.ph984, !prof !11

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7606, align 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = shl i64 %.0.copyload.i806, %i.dx
  %i.dz = or i64 %i.dy, %.8622
  %i.ea = getelementptr inbounds nuw i8, ptr %.7606, i64 7
  %i.eb = lshr i32 %.6655, 3
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 %i.ee
  %i.eg = or i32 %.6655, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7606, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !12

bb.p:                                             ; preds = %.lr.ph984
  %i.eh = getelementptr inbounds nuw i8, ptr %.7606, i64 1
  %i.ei = load i8, ptr %.7606, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
end_hunk_0
begin_hunk_1_@deflate_decompress_default:bb.a
  %i.zd = icmp eq i64 %index.next, %n.vec
  br i1 %i.zd, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yy, %n.vec
  br i1 %cmp.n, label %.loopexit904.backedge, label %vec.epilog.iter.check

.loopexit904.backedge:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.cy
  %.23672.be = phi i32 [ %.26675, %bb.cy ], [ %i.yj, %vec.epilog.middle.block ], [ %i.yj, %middle.block ], [ %i.yj, %vec.epilog.scalar.ph ]
  %.26640.be = phi i64 [ %.30, %bb.cy ], [ %i.yi, %vec.epilog.middle.block ], [ %i.yi, %middle.block ], [ %i.yi, %vec.epilog.scalar.ph ]
  %.6596.be = phi ptr [ %i.wr, %bb.cy ], [ %i.yo, %vec.epilog.middle.block ], [ %i.yo, %middle.block ], [ %i.yo, %vec.epilog.scalar.ph ]
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %i.yy, -4                  ; 4 uses
  %i.ze = getelementptr i8, ptr %i.ys, i64 %n.vec1150
  %i.zf = getelementptr i8, ptr %i.yu, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %i.ys, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %i.yu, i64 %index1151
  %wide.load1154 = load <4 x i8>, ptr %next.gep1152, align 1, !tbaa !13
  store <4 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !13
  %index.next1155 = add nuw i64 %index1151, 4     ; 2 uses
  %i.zg = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.zg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %i.yy, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %i.ys, %iter.check ], [ %i.yz, %vec.epilog.iter.check ], [ %i.ze, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.yu, %iter.check ], [ %i.za, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %i.zh, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.zj, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %i.zi = load i8, ptr %.0578, align 1, !tbaa !13
  %i.zj = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.zi, ptr %.0, align 1, !tbaa !13
  %i.zk = icmp ult ptr %i.zj, %i.yo
  br i1 %i.zk, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !36

.thread869:                                       ; preds = %bb.bl, %bb.bi, %bb.cz, %bb.ay
  %.21713 = phi i64 [ %.19711, %bb.cz ], [ 0, %bb.ay ], [ %.15707, %bb.bi ], [ %.15707, %bb.bl ] ; 3 uses
  %.29678 = phi i32 [ %.26675, %bb.cz ], [ 0, %bb.ay ], [ %.17666, %bb.bi ], [ %i.mw, %bb.bl ] ; 2 uses
  %.33 = phi i64 [ %.30, %bb.cz ], [ 0, %bb.ay ], [ %.20634, %bb.bi ], [ %i.mv, %bb.bl ]
  %.26 = phi ptr [ %.24, %bb.cz ], [ %i.js, %bb.ay ], [ %.16, %bb.bi ], [ %.16, %bb.bl ] ; 2 uses
  %.8598 = phi ptr [ %.6596, %bb.cz ], [ %i.jt, %bb.ay ], [ %.3593, %bb.bi ], [ %.3593, %bb.bl ] ; 3 uses
  br i1 %.not744, label %bb.b, label %bb.de

bb.de:                                            ; preds = %.thread869
  %i.zl = lshr i32 %.29678, 3
  %i.zm = and i32 %i.zl, 31
  %i.zn = zext nneg i32 %i.zm to i64              ; 2 uses
  %.not781 = icmp ugt i64 %.21713, %i.zn
  br i1 %.not781, label %.thread836, label %bb.df, !prof !12

bb.df:                                            ; preds = %bb.de
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.neg783 = sub nsw i64 %.21713, %i.zn
  %i.zo = getelementptr inbounds i8, ptr %.26, i64 %.neg783
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %1 to i64
  %i.zr = sub i64 %i.zp, %i.zq
  store i64 %i.zr, ptr %5, align 8, !tbaa !37
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zs = ptrtoint ptr %.8598 to i64
  %i.zt = sub i64 %i.zs, %i.q
  store i64 %i.zt, ptr %6, align 8, !tbaa !37
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %.not785 = icmp eq ptr %.8598, %i.a
  br i1 %.not785, label %bb.dk, label %.thread836

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.thread836

.thread836:                                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.as, %.loopexit916, %bb.ba, %.thread843, %bb.e, %bb.j, %bb.am, %bb.bs, %bb.dd, %bb.da, %bb.cx, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.cb, %bb.ce, %bb.ch, %bb.ck, %bb.cn, %bb.cq, %bb.ct, %bb.dj, %bb.de, %bb.dk
  %.14 = phi i32 [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.am ], [ 1, %bb.dd ], [ 0, %bb.dk ], [ 1, %bb.de ], [ 2, %bb.dj ], [ 1, %bb.bs ], [ 1, %bb.j ], [ 1, %bb.cb ], [ 1, %bb.ct ], [ 1, %bb.cq ], [ 1, %bb.cn ], [ 1, %bb.ck ], [ 1, %bb.ch ], [ 1, %bb.ce ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %bb.t ], [ 3, %bb.cx ], [ 3, %bb.da ], [ 1, %bb.au ], [ 1, %bb.av ], [ 3, %bb.aw ], [ 1, %bb.ax ], [ 1, %bb.as ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %bb.at ], [ 1, %.thread843 ], [ 1, %bb.ba ]
  ret i32 %.14
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_bmi2(ptr noalias noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef writeonly captures(address_is_null) %5, ptr noundef writeonly captures(address_is_null) %6) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0692 = phi i64 [ 0, %bb.a ], [ %.21713, %.thread869 ] ; 3 uses
  %.0649 = phi i32 [ 0, %bb.a ], [ %.29678, %.thread869 ] ; 6 uses
  %.0614 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0599 = phi ptr [ %1, %bb.a ], [ %.26, %.thread869 ] ; 5 uses
  %.0590 = phi ptr [ %3, %bb.a ], [ %.8598, %.thread869 ] ; 6 uses
  %i.r = ptrtoint ptr %.0599 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !11

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0649, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0599, align 1
  %i.w = and i32 %.0649, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0614
  %i.aa = getelementptr inbounds nuw i8, ptr %.0599, i64 7
  %i.ab = lshr i32 %.0649, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0649, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1600953 = phi ptr [ %.2601, %bb.f ], [ %.0599, %.preheader915 ] ; 4 uses
  %.1615952 = phi i64 [ %.2616, %bb.f ], [ %.0614, %.preheader915 ] ; 2 uses
  %.1650951 = phi i32 [ %i.aq, %bb.f ], [ %.0649, %.preheader915 ]
  %.1693950 = phi i64 [ %.2694, %bb.f ], [ %.0692, %.preheader915 ] ; 2 uses
  %.not = icmp eq ptr %.1600953, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1600953, i64 1
  %i.aj = load i8, ptr %.1600953, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1615952
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1693950, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2694 = phi i64 [ %.1693950, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %.2616 = phi i64 [ %i.an, %bb.d ], [ %.1615952, %bb.e ] ; 2 uses
  %.2601 = phi ptr [ %i.ai, %bb.d ], [ %.1600953, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1650951, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !39

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3695 = phi i64 [ %.0692, %bb.c ], [ %.0692, %.preheader915 ], [ %.2694, %bb.f ] ; 7 uses
  %.2651 = phi i32 [ %i.ag, %bb.c ], [ %.0649, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3617 = phi i64 [ %i.z, %bb.c ], [ %.0614, %.preheader915 ], [ %.2616, %bb.f ] ; 5 uses
  %.3602 = phi ptr [ %i.af, %bb.c ], [ %.0599, %.preheader915 ], [ %.2601, %bb.f ] ; 8 uses
  %i.at = and i64 %.3617, 1
  %.not744 = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %.3617 to i32                 ; 4 uses
  %i.av = and i32 %i.au, 6
  switch i32 %i.av, label %default.unreachable [
    i32 4, label %bb.g
    i32 0, label %bb.at
    i32 2, label %bb.az
    i32 6, label %.thread836
  ], !prof !16

bb.g:                                             ; preds = %.loopexit916
  %i.aw = lshr i32 %i.au, 3
  %i.ax = and i32 %i.aw, 31
  %i.ay = add nuw nsw i32 %i.ax, 257              ; 2 uses
  %i.az = lshr i32 %i.au, 8
  %i.ba = and i32 %i.az, 31
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = lshr i32 %i.au, 13                      ; 2 uses
  %i.bd = and i32 %i.bc, 15
  store i8 0, ptr %i.j, align 4, !tbaa !17
  %i.be = lshr i64 %.3617, 17
  %i.bf = trunc i64 %i.be to i8
  %i.bg = and i8 %i.bf, 7
  store i8 %i.bg, ptr %i.l, align 4, !tbaa !13
  %i.bh = lshr i64 %.3617, 20                     ; 3 uses
  %i.bi = add i32 %.2651, -20                     ; 6 uses
  %i.bj = ptrtoint ptr %.3602 to i64
  %i.bk = sub i64 %i.i, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 7
  br i1 %i.bl, label %bb.h, label %.preheader908, !prof !11

.preheader908:                                    ; preds = %bb.g
  %i.bm = and i32 %i.bi, 255                      ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 56
  br i1 %i.bn, label %.lr.ph973, label %.loopexit909

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i807 = load i64, ptr %.3602, align 1
  %i.bo = and i32 %i.bi, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.0.copyload.i807, %i.bp
  %i.br = or i64 %i.bq, %i.bh
  %i.bs = getelementptr inbounds nuw i8, ptr %.3602, i64 7
  %i.bt = lshr i32 %i.bi, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  %i.by = or i32 %i.bi, 56
  br label %.loopexit909

.lr.ph973:                                        ; preds = %.preheader908, %bb.k
  %i.bz = phi i32 [ %i.cj, %bb.k ], [ %i.bm, %.preheader908 ]
  %.4603972 = phi ptr [ %.5604, %bb.k ], [ %.3602, %.preheader908 ] ; 4 uses
  %.4618971 = phi i64 [ %.5619, %bb.k ], [ %i.bh, %.preheader908 ] ; 2 uses
  %.3652970 = phi i32 [ %i.ci, %bb.k ], [ %i.bi, %.preheader908 ]
  %.4696969 = phi i64 [ %.5697, %bb.k ], [ %.3695, %.preheader908 ] ; 2 uses
  %.not749 = icmp eq ptr %.4603972, %i.e
  br i1 %.not749, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.lr.ph973
  %i.ca = getelementptr inbounds nuw i8, ptr %.4603972, i64 1
  %i.cb = load i8, ptr %.4603972, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i64
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = shl nuw nsw i64 %i.cc, %i.cd
  %i.cf = or i64 %i.ce, %.4618971
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph973
  %i.cg = add i64 %.4696969, 1                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 8
  br i1 %i.ch, label %.thread836, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5697 = phi i64 [ %.4696969, %bb.i ], [ %i.cg, %bb.j ] ; 2 uses
  %.5619 = phi i64 [ %i.cf, %bb.i ], [ %.4618971, %bb.j ] ; 2 uses
  %.5604 = phi ptr [ %i.ca, %bb.i ], [ %.4603972, %bb.j ] ; 2 uses
  %i.ci = add i32 %.3652970, 8                    ; 3 uses
  %i.cj = and i32 %i.ci, 255                      ; 2 uses
  %i.ck = icmp samesign ult i32 %i.cj, 56
  br i1 %i.ck, label %.lr.ph973, label %.loopexit909, !llvm.loop !40

.loopexit909:                                     ; preds = %bb.k, %.preheader908, %bb.h
  %.6698 = phi i64 [ %.3695, %bb.h ], [ %.3695, %.preheader908 ], [ %.5697, %bb.k ]
  %.4653 = phi i32 [ %i.by, %bb.h ], [ %i.bi, %.preheader908 ], [ %i.ci, %bb.k ]
  %.6620 = phi i64 [ %i.br, %bb.h ], [ %i.bh, %.preheader908 ], [ %.5619, %bb.k ]
  %.6605 = phi ptr [ %i.bx, %bb.h ], [ %.3602, %.preheader908 ], [ %.5604, %bb.k ]
  %i.cl = and i32 %i.bc, 15
  %narrow = add nuw nsw i32 %i.cl, 3              ; 2 uses
  %i.cm = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter = and i64 %i.cm, 1
  %unroll_iter = and i64 %i.cm, 30
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit909
  %indvars.iv1050 = phi i64 [ 2, %.loopexit909 ], [ %indvars.iv.next1051.1, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.loopexit909 ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %.7621 = phi i64 [ %.6620, %.loopexit909 ], [ %i.da, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.loopexit909 ], [ %niter.next.1, %bb.l ]
  %i.cn = trunc i64 %.7621 to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !13
  %i.ct = lshr i64 %.7621, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !13
  %i.da = lshr i64 %.7621, 6                      ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader907.unr-lcssa, label %bb.l, !llvm.loop !41

.preheader907.unr-lcssa:                          ; preds = %bb.l
  %indvars.iv.next1051 = or disjoint i64 %indvars.iv1050, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1189 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1189)
  %i.db = trunc i64 %i.da to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !13
  %i.dh = lshr i64 %i.da, 3
  br label %.preheader907

.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1172 = phi i64 [ %i.da, %.preheader907.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.di = add i32 %.4653, -9
  %.neg1092 = mul nsw i32 %i.bd, -3
  %i.dj = add i32 %.neg1092, %i.di
  %i.dk = icmp samesign ult i64 %indvars.iv.lcssa, 18
  br i1 %i.dk, label %.lr.ph979, label %._crit_edge

.lr.ph979:                                        ; preds = %.preheader907, %.lr.ph979
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %.lr.ph979 ], [ %indvars.iv1050.lcssa, %.preheader907 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv1052
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !13
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %i.dp = icmp samesign ult i64 %indvars.iv1052, 18
  br i1 %i.dp, label %.lr.ph979, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph979, %.preheader907
  %i.dq = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.m, ptr noundef nonnull %0, i32 noundef 19, ptr noundef nonnull @precode_decode_results, i32 noundef 7, i32 noundef 7, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.dq, label %.preheader905, label %.thread836, !prof !11

.preheader905:                                    ; preds = %._crit_edge
  %i.dr = add nuw nsw i32 %i.ay, %i.bb            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader905, %bb.ar
  %.7699 = phi i64 [ %.10702, %bb.ar ], [ %.6698, %.preheader905 ] ; 4 uses
  %.6655 = phi i32 [ %.10659, %bb.ar ], [ %i.dj, %.preheader905 ] ; 11 uses
  %.2646 = phi i32 [ %.4648, %bb.ar ], [ 0, %.preheader905 ] ; 10 uses
  %.8622 = phi i64 [ %.13627, %bb.ar ], [ %.lcssa1172, %.preheader905 ] ; 4 uses
  %.7606 = phi ptr [ %.10609, %bb.ar ], [ %.6605, %.preheader905 ] ; 8 uses
  %i.ds = and i32 %.6655, 255                     ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 14
  br i1 %i.dt, label %bb.n, label %.loopexit899

bb.n:                                             ; preds = %bb.m
  %i.du = ptrtoint ptr %.7606 to i64
  %i.dv = sub i64 %i.i, %i.du
  %i.dw = icmp ugt i64 %i.dv, 7
  br i1 %i.dw, label %bb.o, label %.lr.ph984, !prof !11

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i806 = load i64, ptr %.7606, align 1
  %i.dx = zext nneg i32 %i.ds to i64
  %i.dy = shl i64 %.0.copyload.i806, %i.dx
  %i.dz = or i64 %i.dy, %.8622
  %i.ea = getelementptr inbounds nuw i8, ptr %.7606, i64 7
  %i.eb = lshr i32 %.6655, 3
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 %i.ee
  %i.eg = or i32 %.6655, 56
  br label %.loopexit899

.lr.ph984:                                        ; preds = %bb.n
  %.not750 = icmp eq ptr %.7606, %i.e
  br i1 %.not750, label %bb.q, label %bb.p, !prof !12

bb.p:                                             ; preds = %.lr.ph984
  %i.eh = getelementptr inbounds nuw i8, ptr %.7606, i64 1
  %i.ei = load i8, ptr %.7606, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
end_hunk_1
