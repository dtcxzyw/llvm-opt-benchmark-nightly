Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_pivco_arch?download=true
inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_PivCoHuffmanEncode = type { ptr, ptr, ptr, ptr, ptr }
%struct.ZL_cpuid_t = type { i32, i32, i32, i32 }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@ZL_PivCoHuffmanEncode_avx512 = external constant %struct.ZL_PivCoHuffmanEncode, align 8
@ZL_PivCoHuffmanEncode_avx2 = external constant %struct.ZL_PivCoHuffmanEncode, align 8
@ZL_PivCoHuffmanEncode_arm = external constant %struct.ZL_PivCoHuffmanEncode, align 8
@ZL_PivCoHuffmanEncode_generic = constant %struct.ZL_PivCoHuffmanEncode { ptr @supported, ptr @partitionGeneric, ptr @partitionRight, ptr @partitionNone, ptr @packFlatDepth }, align 8
@ZS_BitCStreamFF_finish.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 264, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unconditional failure: Internal buffer too small: %s\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/common/bitstream/ff_bitstream.h\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ZS_BitCStreamFF_finish\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1

; Function Attrs: nounwind uwtable
define nonnull ptr @ZL_PivCoHuffmanEncode_select(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ZL_cpuid_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #7, !srcloc !16 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %ZL_cpuid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #7, !srcloc !17 ; 2 uses
  %i.d = extractvalue { i32, i32, i32 } %i.c, 1
  %i.e = extractvalue { i32, i32, i32 } %i.c, 2
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = zext i32 %i.d to i64
  %i.i = or disjoint i64 %i.g, %i.h               ; 2 uses
  %i.j = icmp ugt i32 %i.b, 6
  br i1 %i.j, label %bb.d, label %ZL_cpuid.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !18 ; 2 uses
  %i.l = extractvalue { i32, i32, i32 } %i.k, 1
  %i.m = extractvalue { i32, i32, i32 } %i.k, 2
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = zext i32 %i.l to i64
  %i.q = or disjoint i64 %i.o, %i.p
  br label %ZL_cpuid.exit

ZL_cpuid.exit:                                    ; preds = %bb.b, %bb.c, %bb.d
  %.0610.i = phi i64 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.b ]
  %.sroa.3.8.insert.insert.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  store i64 %.0610.i, ptr %1, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %ZL_cpuid.exit, %bb.a
  %.05 = phi ptr [ %1, %ZL_cpuid.exit ], [ %0, %bb.a ] ; 3 uses
  %i.r = load ptr, ptr @ZL_PivCoHuffmanEncode_avx512, align 8, !tbaa !22
  %i.s = call zeroext i1 %i.r(ptr noundef nonnull %.05) #6
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @ZL_PivCoHuffmanEncode_avx2, align 8, !tbaa !22
  %i.u = call zeroext i1 %i.t(ptr noundef nonnull %.05) #6
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @ZL_PivCoHuffmanEncode_arm, align 8, !tbaa !22
  %i.w = call zeroext i1 %i.v(ptr noundef nonnull %.05) #6
  %ZL_PivCoHuffmanEncode_arm.ZL_PivCoHuffmanEncode_generic = select i1 %i.w, ptr @ZL_PivCoHuffmanEncode_arm, ptr @ZL_PivCoHuffmanEncode_generic
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi ptr [ @ZL_PivCoHuffmanEncode_avx2, %bb.f ], [ @ZL_PivCoHuffmanEncode_avx512, %bb.e ], [ %ZL_PivCoHuffmanEncode_arm.ZL_PivCoHuffmanEncode_generic, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @supported(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal i64 @partitionGeneric(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i8 noundef zeroext %5) #0 {
bb.a:
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 4 uses
  %i.a = add i64 %4, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr i8, ptr %0, i64 %i.b       ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 64
  %i.e = getelementptr i8, ptr %i.c, i64 57       ; 4 uses
  %.not78 = icmp eq i64 %4, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not26 = icmp eq ptr %1, null
  %.not27 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not26, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not27, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %ZS_BitCStreamFF_flush.exit.us.us
  %.045.us.us = phi i64 [ %.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ 0, %.lr.ph.split.us ]
  %.02343.us.us = phi i64 [ %i.q, %ZS_BitCStreamFF_flush.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.sroa.9.042.us.us = phi i64 [ %.sroa.9.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.sroa.15.041.us.us = phi ptr [ %.sroa.15.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ %0, %.lr.ph.split.us ] ; 4 uses
  %.sroa.0.040.us.us = phi i64 [ %.sroa.0.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ 0, %.lr.ph.split.us ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.02343.us.us
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.us.us = icmp uge i8 %i.g, %5
  %i.h = zext i1 %.not.us.us to i64               ; 2 uses
  %i.i = shl nuw i64 %i.h, %.sroa.9.042.us.us
  %i.j = or i64 %i.i, %.sroa.0.040.us.us          ; 3 uses
  %i.k = add i64 %.sroa.9.042.us.us, 1            ; 4 uses
  %.not.i28.us.us = icmp ult ptr %.sroa.15.041.us.us, %i.e
  br i1 %.not.i28.us.us, label %bb.b, label %ZS_BitCStreamFF_flush.exit.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.l = lshr i64 %i.k, 3
  store i64 %i.j, ptr %.sroa.15.041.us.us, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.15.041.us.us, i64 %i.l
  %i.n = and i64 %i.k, 7
  %i.o = and i64 %i.k, -8
  %i.p = lshr i64 %i.j, %i.o
  br label %ZS_BitCStreamFF_flush.exit.us.us

ZS_BitCStreamFF_flush.exit.us.us:                 ; preds = %bb.b, %.lr.ph.split.us.split.us
  %.sroa.0.1.us.us = phi i64 [ %i.p, %bb.b ], [ %i.j, %.lr.ph.split.us.split.us ] ; 2 uses
  %.sroa.15.1.us.us = phi ptr [ %i.m, %bb.b ], [ %.sroa.15.041.us.us, %.lr.ph.split.us.split.us ] ; 2 uses
  %.sroa.9.1.us.us = phi i64 [ %i.n, %bb.b ], [ %i.k, %.lr.ph.split.us.split.us ] ; 2 uses
  %.1.us.us = add i64 %.045.us.us, %i.h           ; 2 uses
  %i.q = add nuw i64 %.02343.us.us, 1             ; 2 uses
  %exitcond84.not = icmp eq i64 %i.q, %4
  br i1 %exitcond84.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !0

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %.045.us = phi i64 [ %.1.us, %bb.e ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.02343.us = phi i64 [ %i.ae, %bb.e ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.sroa.9.042.us = phi i64 [ %.sroa.9.1.us, %bb.e ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.sroa.15.041.us = phi ptr [ %.sroa.15.1.us, %bb.e ], [ %0, %.lr.ph.split.us ] ; 4 uses
  %.sroa.0.040.us = phi i64 [ %.sroa.0.1.us, %bb.e ], [ 0, %.lr.ph.split.us ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %.02343.us
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13    ; 2 uses
  %.not.us = icmp uge i8 %i.s, %5                 ; 2 uses
  %i.t = zext i1 %.not.us to i64
  %i.u = shl nuw i64 %i.t, %.sroa.9.042.us
  %i.v = or i64 %i.u, %.sroa.0.040.us             ; 3 uses
  %i.w = add i64 %.sroa.9.042.us, 1               ; 4 uses
  %.not.i28.us = icmp ult ptr %.sroa.15.041.us, %i.e
  br i1 %.not.i28.us, label %bb.c, label %ZS_BitCStreamFF_flush.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.x = lshr i64 %i.w, 3
  store i64 %i.v, ptr %.sroa.15.041.us, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.15.041.us, i64 %i.x
  %i.z = and i64 %i.w, 7
  %i.aa = and i64 %i.w, -8
  %i.ab = lshr i64 %i.v, %i.aa
  br label %ZS_BitCStreamFF_flush.exit.us

ZS_BitCStreamFF_flush.exit.us:                    ; preds = %bb.c, %.lr.ph.split.us.split
  %.sroa.0.1.us = phi i64 [ %i.ab, %bb.c ], [ %i.v, %.lr.ph.split.us.split ] ; 2 uses
  %.sroa.15.1.us = phi ptr [ %i.y, %bb.c ], [ %.sroa.15.041.us, %.lr.ph.split.us.split ] ; 2 uses
  %.sroa.9.1.us = phi i64 [ %i.z, %bb.c ], [ %i.w, %.lr.ph.split.us.split ] ; 2 uses
  br i1 %.not.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZS_BitCStreamFF_flush.exit.us
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.045.us
  store i8 %i.s, ptr %i.ac, align 1, !tbaa !13
  %i.ad = add i64 %.045.us, 1
  br label %bb.e

bb.e:                                             ; preds = %ZS_BitCStreamFF_flush.exit.us, %bb.d
  %.1.us = phi i64 [ %i.ad, %bb.d ], [ %.045.us, %ZS_BitCStreamFF_flush.exit.us ] ; 2 uses
  %i.ae = add nuw i64 %.02343.us, 1               ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ae, %4
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not27, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.i
  %.045.us52 = phi i64 [ %.1.us65, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %.02144.us53 = phi i64 [ %.122.us64, %bb.i ], [ 0, %.lr.ph.split ] ; 3 uses
  %.02343.us54 = phi i64 [ %i.at, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %.sroa.9.042.us55 = phi i64 [ %.sroa.9.1.us63, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %.sroa.15.041.us56 = phi ptr [ %.sroa.15.1.us62, %bb.i ], [ %0, %.lr.ph.split ] ; 4 uses
  %.sroa.0.040.us57 = phi i64 [ %.sroa.0.1.us61, %bb.i ], [ 0, %.lr.ph.split ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.02343.us54
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13  ; 2 uses
  %.not.us58 = icmp uge i8 %i.ag, %5              ; 2 uses
  %i.ah = zext i1 %.not.us58 to i64
  %i.ai = shl nuw i64 %i.ah, %.sroa.9.042.us55
  %i.aj = or i64 %i.ai, %.sroa.0.040.us57         ; 3 uses
  %i.ak = add i64 %.sroa.9.042.us55, 1            ; 4 uses
  %.not.i28.us59 = icmp ult ptr %.sroa.15.041.us56, %i.e
  br i1 %.not.i28.us59, label %bb.f, label %ZS_BitCStreamFF_flush.exit.us60

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.al = lshr i64 %i.ak, 3
  store i64 %i.aj, ptr %.sroa.15.041.us56, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.15.041.us56, i64 %i.al
  %i.an = and i64 %i.ak, 7
  %i.ao = and i64 %i.ak, -8
  %i.ap = lshr i64 %i.aj, %i.ao
  br label %ZS_BitCStreamFF_flush.exit.us60

ZS_BitCStreamFF_flush.exit.us60:                  ; preds = %bb.f, %.lr.ph.split.split.us
  %.sroa.0.1.us61 = phi i64 [ %i.ap, %bb.f ], [ %i.aj, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.15.1.us62 = phi ptr [ %i.am, %bb.f ], [ %.sroa.15.041.us56, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.9.1.us63 = phi i64 [ %i.an, %bb.f ], [ %i.ak, %.lr.ph.split.split.us ] ; 2 uses
  br i1 %.not.us58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ZS_BitCStreamFF_flush.exit.us60
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.02144.us53
  store i8 %i.ag, ptr %i.aq, align 1, !tbaa !13
  %i.ar = add i64 %.02144.us53, 1
  br label %bb.i

bb.h:                                             ; preds = %ZS_BitCStreamFF_flush.exit.us60
  %i.as = add i64 %.045.us52, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.122.us64 = phi i64 [ %.02144.us53, %bb.h ], [ %i.ar, %bb.g ]
  %.1.us65 = phi i64 [ %i.as, %bb.h ], [ %.045.us52, %bb.g ] ; 2 uses
  %i.at = add nuw i64 %.02343.us54, 1             ; 2 uses
  %exitcond82.not = icmp eq i64 %i.at, %4
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.o, %bb.i, %bb.e, %ZS_BitCStreamFF_flush.exit.us.us, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.1.us61, %bb.i ], [ %.sroa.0.1.us, %bb.e ], [ %.sroa.0.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ %.sroa.0.1, %bb.o ] ; 5 uses
  %.sroa.15.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.15.1.us62, %bb.i ], [ %.sroa.15.1.us, %bb.e ], [ %.sroa.15.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ %.sroa.15.1, %bb.o ] ; 6 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.9.1.us63, %bb.i ], [ %.sroa.9.1.us, %bb.e ], [ %.sroa.9.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ %.sroa.9.1, %bb.o ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.us65, %bb.i ], [ %.1.us, %bb.e ], [ %.1.us.us, %ZS_BitCStreamFF_flush.exit.us.us ], [ %.1, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.au = add i64 %.sroa.9.0.lcssa, 7             ; 2 uses
  %i.av = lshr i64 %i.au, 3                       ; 4 uses
  %i.aw = ptrtoint ptr %i.d to i64
  %i.ax = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.av
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ba = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6 ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0
  %i.bc = extractvalue { i32, ptr } %i.ba, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.5) #6
  br label %ZS_BitCStreamFF_finish.exit

bb.k:                                             ; preds = %._crit_edge
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %ZS_BitCStreamFF_finish.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.bd = icmp ult i64 %i.au, 32
  br i1 %i.bd, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.av, 2305843009213693948
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.07.i.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bx, %.preheader ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.be = shl nuw i64 %.07.i.i, 3
  %i.bf = lshr i64 %.sroa.0.0.lcssa, %i.be
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 %.07.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !13
  %i.bi = or disjoint i64 %.07.i.i, 1             ; 2 uses
  %i.bj = shl nuw i64 %i.bi, 3
  %i.bk = lshr i64 %.sroa.0.0.lcssa, %i.bj
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 %i.bi
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !13
  %i.bn = or disjoint i64 %.07.i.i, 2             ; 2 uses
  %i.bo = shl nuw i64 %i.bn, 3
  %i.bp = lshr i64 %.sroa.0.0.lcssa, %i.bo
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 %i.bn
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %i.bs = or disjoint i64 %.07.i.i, 3             ; 2 uses
  %i.bt = shl nuw i64 %i.bs, 3
  %i.bu = lshr i64 %.sroa.0.0.lcssa, %i.bt
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 %i.bs
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !13
  %i.bx = add nuw nsw i64 %.07.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !1

ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa:   ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZS_BitCStreamFF_finish.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bx, %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.cc, %.preheader.epil ], [ %.07.i.i.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.by = shl nuw i64 %.07.i.i.epil, 3
  %i.bz = lshr i64 %.sroa.0.0.lcssa, %i.by
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa, i64 %.07.i.i.epil
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %i.cc = add nuw nsw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZS_BitCStreamFF_finish.exit, label %.preheader.epil, !llvm.loop !23

ZS_BitCStreamFF_finish.exit:                      ; preds = %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i64 %.0.lcssa

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.045 = phi i64 [ %.1, %bb.o ], [ 0, %.lr.ph.split ] ; 3 uses
  %.02144 = phi i64 [ %.122, %bb.o ], [ 0, %.lr.ph.split ] ; 3 uses
  %.02343 = phi i64 [ %i.cs, %bb.o ], [ 0, %.lr.ph.split ] ; 2 uses
  %.sroa.9.042 = phi i64 [ %.sroa.9.1, %bb.o ], [ 0, %.lr.ph.split ] ; 2 uses
  %.sroa.15.041 = phi ptr [ %.sroa.15.1, %bb.o ], [ %0, %.lr.ph.split ] ; 4 uses
  %.sroa.0.040 = phi i64 [ %.sroa.0.1, %bb.o ], [ 0, %.lr.ph.split ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.02343
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13  ; 3 uses
  %.not = icmp uge i8 %i.ce, %5                   ; 2 uses
  %i.cf = zext i1 %.not to i64
  %i.cg = shl nuw i64 %i.cf, %.sroa.9.042
  %i.ch = or i64 %i.cg, %.sroa.0.040              ; 3 uses
  %i.ci = add i64 %.sroa.9.042, 1                 ; 4 uses
  %.not.i28 = icmp ult ptr %.sroa.15.041, %i.e
  br i1 %.not.i28, label %bb.l, label %ZS_BitCStreamFF_flush.exit

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.cj = lshr i64 %i.ci, 3
  store i64 %i.ch, ptr %.sroa.15.041, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.15.041, i64 %i.cj
  %i.cl = and i64 %i.ci, 7
  %i.cm = and i64 %i.ci, -8
  %i.cn = lshr i64 %i.ch, %i.cm
  br label %ZS_BitCStreamFF_flush.exit

ZS_BitCStreamFF_flush.exit:                       ; preds = %.lr.ph.split.split, %bb.l
  %.sroa.0.1 = phi i64 [ %i.cn, %bb.l ], [ %i.ch, %.lr.ph.split.split ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %i.ck, %bb.l ], [ %.sroa.15.041, %.lr.ph.split.split ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %i.cl, %bb.l ], [ %i.ci, %.lr.ph.split.split ] ; 2 uses
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ZS_BitCStreamFF_flush.exit
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.045
  store i8 %i.ce, ptr %i.co, align 1, !tbaa !13
  %i.cp = add i64 %.045, 1
  br label %bb.o

bb.n:                                             ; preds = %ZS_BitCStreamFF_flush.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.02144
  store i8 %i.ce, ptr %i.cq, align 1, !tbaa !13
  %i.cr = add i64 %.02144, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.122 = phi i64 [ %.02144, %bb.m ], [ %i.cr, %bb.n ]
  %.1 = phi i64 [ %i.cp, %bb.m ], [ %.045, %bb.n ] ; 2 uses
  %i.cs = add nuw i64 %.02343, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !0
}

; Function Attrs: nounwind uwtable
define internal i64 @partitionRight(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = tail call i64 @partitionGeneric(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal void @partitionNone(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = add i64 %2, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr i8, ptr %0, i64 %i.b       ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 64
  %i.e = getelementptr i8, ptr %i.c, i64 57
  %.not78.i = icmp eq i64 %2, 0
  br i1 %.not78.i, label %.thread, label %.lr.ph.split.us.split.us.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  br label %partitionGeneric.exit

.lr.ph.split.us.split.us.i:                       ; preds = %bb.a, %ZS_BitCStreamFF_flush.exit.us.us.i
  %.02343.us.us.i = phi i64 [ %i.q, %ZS_BitCStreamFF_flush.exit.us.us.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.9.042.us.us.i = phi i64 [ %.sroa.9.1.us.us.i, %ZS_BitCStreamFF_flush.exit.us.us.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.15.041.us.us.i = phi ptr [ %.sroa.15.1.us.us.i, %ZS_BitCStreamFF_flush.exit.us.us.i ], [ %0, %bb.a ] ; 4 uses
  %.sroa.0.040.us.us.i = phi i64 [ %.sroa.0.1.us.us.i, %ZS_BitCStreamFF_flush.exit.us.us.i ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.02343.us.us.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.us.us.i = icmp uge i8 %i.g, %3
  %i.h = zext i1 %.not.us.us.i to i64
  %i.i = shl nuw i64 %i.h, %.sroa.9.042.us.us.i
  %i.j = or i64 %i.i, %.sroa.0.040.us.us.i        ; 3 uses
  %i.k = add i64 %.sroa.9.042.us.us.i, 1          ; 4 uses
  %.not.i28.us.us.i = icmp ult ptr %.sroa.15.041.us.us.i, %i.e
  br i1 %.not.i28.us.us.i, label %bb.b, label %ZS_BitCStreamFF_flush.exit.us.us.i

bb.b:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.l = lshr i64 %i.k, 3
  store i64 %i.j, ptr %.sroa.15.041.us.us.i, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.15.041.us.us.i, i64 %i.l
  %i.n = and i64 %i.k, 7
  %i.o = and i64 %i.k, -8
  %i.p = lshr i64 %i.j, %i.o
  br label %ZS_BitCStreamFF_flush.exit.us.us.i

ZS_BitCStreamFF_flush.exit.us.us.i:               ; preds = %bb.b, %.lr.ph.split.us.split.us.i
  %.sroa.0.1.us.us.i = phi i64 [ %i.p, %bb.b ], [ %i.j, %.lr.ph.split.us.split.us.i ] ; 6 uses
  %.sroa.15.1.us.us.i = phi ptr [ %i.m, %bb.b ], [ %.sroa.15.041.us.us.i, %.lr.ph.split.us.split.us.i ] ; 7 uses
  %.sroa.9.1.us.us.i = phi i64 [ %i.n, %bb.b ], [ %i.k, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %i.q = add nuw i64 %.02343.us.us.i, 1           ; 2 uses
  %exitcond84.not.i = icmp eq i64 %i.q, %2
  br i1 %exitcond84.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %ZS_BitCStreamFF_flush.exit.us.us.i
  %i.r = add i64 %.sroa.9.1.us.us.i, 7            ; 2 uses
  %i.s = lshr i64 %i.r, 3                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = ptrtoint ptr %.sroa.15.1.us.us.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.x = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6 ; 2 uses
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = extractvalue { i32, ptr } %i.x, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.y, ptr %i.z, ptr noundef nonnull @.str.5) #6
  br label %partitionGeneric.exit

bb.d:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %partitionGeneric.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.d
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.aa = icmp ult i64 %i.r, 32
  br i1 %i.aa, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.s, 2305843009213693948
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.au, %.preheader.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.ab = shl nuw i64 %.07.i.i.i, 3
  %i.ac = lshr i64 %.sroa.0.1.us.us.i, %i.ab
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.15.1.us.us.i, i64 %.07.i.i.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  %i.af = or disjoint i64 %.07.i.i.i, 1           ; 2 uses
  %i.ag = shl nuw i64 %i.af, 3
  %i.ah = lshr i64 %.sroa.0.1.us.us.i, %i.ag
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.15.1.us.us.i, i64 %i.af
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !13
  %i.ak = or disjoint i64 %.07.i.i.i, 2           ; 2 uses
  %i.al = shl nuw i64 %i.ak, 3
  %i.am = lshr i64 %.sroa.0.1.us.us.i, %i.al
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.15.1.us.us.i, i64 %i.ak
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !13
  %i.ap = or disjoint i64 %.07.i.i.i, 3           ; 2 uses
  %i.aq = shl nuw i64 %i.ap, 3
  %i.ar = lshr i64 %.sroa.0.1.us.us.i, %i.aq
  %i.as = trunc i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.15.1.us.us.i, i64 %i.ap
  store i8 %i.as, ptr %i.at, align 1, !tbaa !13
  %i.au = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %partitionGeneric.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !1

partitionGeneric.exit.loopexit.unr-lcssa:         ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %partitionGeneric.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %partitionGeneric.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.au, %partitionGeneric.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.az, %.preheader.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.av = shl nuw i64 %.07.i.i.i.epil, 3
  %i.aw = lshr i64 %.sroa.0.1.us.us.i, %i.av
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.15.1.us.us.i, i64 %.07.i.i.i.epil
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !13
  %i.az = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %partitionGeneric.exit, label %.preheader.i.epil, !llvm.loop !24

partitionGeneric.exit:                            ; preds = %partitionGeneric.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.thread, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @packFlatDepth(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i8 noundef zeroext %4) #0 {
bb.a:
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = mul i64 %3, %1
  %i.b = add i64 %i.a, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 64
  %i.f = getelementptr i8, ptr %i.d, i64 57
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  br label %ZS_BitCStreamFF_finish.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = zext i8 %4 to i64
  %notmask.i = shl nsw i64 -1, %1
  %i.h = xor i64 %notmask.i, -1
  br label %bb.d

._crit_edge:                                      ; preds = %ZS_BitCStreamFF_flush.exit
  %i.i = add i64 %.sroa.9.1, 7                    ; 2 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %.sroa.15.1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.o = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #6 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0
  %i.q = extractvalue { i32, ptr } %i.o, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.p, ptr %i.q, ptr noundef nonnull @.str.5) #6
  br label %ZS_BitCStreamFF_finish.exit

bb.c:                                             ; preds = %._crit_edge
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %ZS_BitCStreamFF_finish.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.r = icmp ult i64 %i.i, 32
  br i1 %i.r, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.j, 2305843009213693948
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.07.i.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.al, %.preheader ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.s = shl nuw i64 %.07.i.i, 3
  %i.t = lshr i64 %.sroa.0.1, %i.s
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %.07.i.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !13
  %i.w = or disjoint i64 %.07.i.i, 1              ; 2 uses
  %i.x = shl nuw i64 %i.w, 3
  %i.y = lshr i64 %.sroa.0.1, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.w
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !13
  %i.ab = or disjoint i64 %.07.i.i, 2             ; 2 uses
  %i.ac = shl nuw i64 %i.ab, 3
  %i.ad = lshr i64 %.sroa.0.1, %i.ac
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.ab
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !13
  %i.ag = or disjoint i64 %.07.i.i, 3             ; 2 uses
  %i.ah = shl nuw i64 %i.ag, 3
  %i.ai = lshr i64 %.sroa.0.1, %i.ah
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !13
  %i.al = add nuw nsw i64 %.07.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !1

ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa:   ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZS_BitCStreamFF_finish.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.al, %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.aq, %.preheader.epil ], [ %.07.i.i.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.am = shl nuw i64 %.07.i.i.epil, 3
  %i.an = lshr i64 %.sroa.0.1, %i.am
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %.07.i.i.epil
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  %i.aq = add nuw nsw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZS_BitCStreamFF_finish.exit, label %.preheader.epil, !llvm.loop !25

ZS_BitCStreamFF_finish.exit:                      ; preds = %ZS_BitCStreamFF_finish.exit.loopexit.unr-lcssa, %.preheader.epil, %.thread, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void

bb.d:                                             ; preds = %.lr.ph, %ZS_BitCStreamFF_flush.exit
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.be, %ZS_BitCStreamFF_flush.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ 0, %.lr.ph ], [ %.sroa.9.1, %ZS_BitCStreamFF_flush.exit ] ; 2 uses
  %.sroa.15.023 = phi ptr [ %0, %.lr.ph ], [ %.sroa.15.1, %ZS_BitCStreamFF_flush.exit ] ; 4 uses
  %.sroa.0.022 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %ZS_BitCStreamFF_flush.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.025
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  %i.au = sub nsw i64 %i.at, %i.g
  %i.av = and i64 %i.au, %i.h
  %i.aw = shl i64 %i.av, %.sroa.9.024
  %i.ax = or i64 %i.aw, %.sroa.0.022              ; 3 uses
  %i.ay = add i64 %.sroa.9.024, %1                ; 4 uses
  %.not.i10 = icmp ult ptr %.sroa.15.023, %i.f
  br i1 %.not.i10, label %bb.e, label %ZS_BitCStreamFF_flush.exit

bb.e:                                             ; preds = %bb.d
  %i.az = lshr i64 %i.ay, 3
  store i64 %i.ax, ptr %.sroa.15.023, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.15.023, i64 %i.az
  %i.bb = and i64 %i.ay, 7
  %i.bc = and i64 %i.ay, -8
  %i.bd = lshr i64 %i.ax, %i.bc
  br label %ZS_BitCStreamFF_flush.exit

ZS_BitCStreamFF_flush.exit:                       ; preds = %bb.d, %bb.e
  %.sroa.0.1 = phi i64 [ %i.bd, %bb.e ], [ %i.ax, %bb.d ] ; 6 uses
  %.sroa.15.1 = phi ptr [ %i.ba, %bb.e ], [ %.sroa.15.023, %bb.d ] ; 7 uses
  %.sroa.9.1 = phi i64 [ %i.bb, %bb.e ], [ %i.ay, %bb.d ] ; 2 uses
  %i.be = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{i64 185324}
!17 = !{i64 185431}
!18 = !{i64 185554}
!19 = !{!10, !10, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!22 = !{!21, !20, i64 0}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !14}
end_hunk_0
