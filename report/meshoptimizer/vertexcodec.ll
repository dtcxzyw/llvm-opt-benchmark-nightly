Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN7meshoptL5cpuidE = internal unnamed_addr global i32 0, align 4
@_ZN7meshoptL20gEncodeVertexVersionE = internal unnamed_addr global i32 1, align 4
@_ZN7meshoptL24kDecodeBytesGroupShuffleE = internal unnamed_addr global [256 x [8 x i8]] zeroinitializer, align 16
@_ZN7meshoptL7kBitsV0E = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 4, i32 8], align 16
@_ZN7meshoptL7kBitsV1E = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 16
@_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE4hbtn = internal unnamed_addr constant [9 x i32] [i32 4, i32 1, i32 2, i32 3, i32 4, i32 0, i32 1, i32 2, i32 3], align 16
@_ZZN7meshoptL20decodeBytesGroupSimdEPKhPhiE5lanes = internal unnamed_addr constant [9 x i64] [i64 0, i64 1431655765, i64 1229782938247303441, i64 0, i64 0, i64 65535, i64 1431655765, i64 1229782938247303441, i64 0], align 16
@_ZN7meshoptL23kDecodeBytesGroupConfigE = internal unnamed_addr constant [9 x [4 x [16 x i8]]] [[4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03", [16 x i8] c"\04\00@\00\04\00@\00\04\00@\00\04\00@\00", [16 x i8] c"\10\00\00\01\10\00\00\01\10\00\00\01\10\00\00\01"], [4 x [16 x i8]] [[16 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07", [16 x i8] c"\10\00\10\00\10\00\10\00\10\00\10\00\10\00\10\00", [16 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01"], [4 x [16 x i8]] [[16 x i8] zeroinitializer, [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [4 x [16 x i8]] [[16 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [16 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01", [16 x i8] c"\00\01@\00\10\00\04\00\00\01@\00\10\00\04\00", [16 x i8] c"\80\00 \00\08\00\02\00\80\00 \00\08\00\02\00"], [4 x [16 x i8]] [[16 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03", [16 x i8] c"\04\00@\00\04\00@\00\04\00@\00\04\00@\00", [16 x i8] c"\10\00\00\01\10\00\00\01\10\00\00\01\10\00\00\01"], [4 x [16 x i8]] [[16 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07", [16 x i8] c"\10\00\10\00\10\00\10\00\10\00\10\00\10\00\10\00", [16 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01"], [4 x [16 x i8]] [[16 x i8] zeroinitializer, [16 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer]], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_vertexcodec.cpp, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @meshopt_encodeVertexBufferLevel(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 18 uses
  %i.b = alloca [256 x i8], align 16              ; 15 uses
  %i.c = alloca [256 x i8], align 16              ; 8 uses
  %i.d = alloca [3 x i64], align 16               ; 7 uses
  %i.e = alloca [8 x i64], align 16               ; 15 uses
  %i.f = alloca [256 x i8], align 16              ; 6 uses
  %i.g = alloca [256 x i8], align 16              ; 9 uses
  %i.h = alloca [64 x i8], align 16               ; 6 uses
  %i.i = icmp slt i32 %6, 0
  %i.j = load i32, ptr @_ZN7meshoptL20gEncodeVertexVersionE, align 4
  %i.k = select i1 %i.i, i32 %i.j, i32 %6         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.n = ptrtoint ptr %0 to i64
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i32 %i.k to i8
  %i.q = or i8 %i.p, -96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %0, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.f, i8 0, i64 256, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 1 %2, i64 %4, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.s = icmp ugt i64 %4, 255
  %i.t = sub i64 256, %4
  %i.u = select i1 %i.s, i64 0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.g, i64 %4
  call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.u, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 16 %i.f, i64 %4, i1 false)
  %i.w = udiv i64 8192, %4
  %i.x = and i64 %i.w, 16368
  %i.y = icmp ugt i64 %4, 32
  %i.z = select i1 %i.y, i64 %i.x, i64 256        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.aa = icmp ne i32 %i.k, 0                     ; 2 uses
  %i.ab = icmp sgt i32 %5, 1
  %i.ac = icmp ugt i64 %3, 1
  %i.ad = and i1 %i.ac, %i.ab
  %or.cond3 = and i1 %i.ad, %i.aa
  br i1 %or.cond3, label %.preheader, label %.loopexit145

.preheader:                                       ; preds = %bb.d
  %i.ae = icmp samesign ult i32 %5, 3             ; 2 uses
  %i.af = mul nuw nsw i64 %i.z, 3
  %i.ag = add i64 %3, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.al = mul nsw i64 %i.z, -3
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit
  %.091171 = phi i64 [ 0, %.preheader ], [ %i.sv, %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit ] ; 4 uses
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.091171 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ %i.ag, %bb.f ], [ %indvars.iv.next.i, %.critedge.preheader.i ] ; 4 uses
  %.04461.i = phi ptr [ %i.ao, %bb.f ], [ %scevgep, %.critedge.preheader.i ] ; 3 uses
  %.04660.i = phi i32 [ %i.ap, %bb.f ], [ %.lcssa356, %.critedge.preheader.i ] ; 2 uses
  %.04859.i = phi i64 [ 0, %bb.f ], [ %i.bo, %.critedge.preheader.i ]
  %10 = phi <8 x i64> [ zeroinitializer, %bb.f ], [ %72, %.critedge.preheader.i ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %i.aq = add nuw nsw i64 %umin, 1                ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 15)
  %xtraiter = and i64 %i.aq, 3                    ; 3 uses
  %i.ar = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.ar, label %.epil.preheader, label %.preheader53.i.new

.preheader53.i.new:                               ; preds = %.preheader53.i
  %unroll_iter = and i64 %i.aq, 28
  br label %bb.h

.critedge.preheader.i.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.unr-lcssa, %.preheader53.i
  %.157.i.epil.init = phi ptr [ %.04461.i, %.preheader53.i ], [ %i.cf, %.critedge.preheader.i.unr-lcssa ]
  %.14756.i.epil.init = phi i32 [ %.04660.i, %.preheader53.i ], [ %i.cc, %.critedge.preheader.i.unr-lcssa ]
  %.05054.i.epil.init = phi i32 [ 0, %.preheader53.i ], [ %i.ce, %.critedge.preheader.i.unr-lcssa ]
  %lcmp.mod367.a = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod367.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.157.i.epil = phi ptr [ %.157.i.epil.init, %.epil.preheader ], [ %i.av, %bb.g ] ; 2 uses
  %.14756.i.epil = phi i32 [ %.14756.i.epil.init, %.epil.preheader ], [ %i.as, %bb.g ]
  %.05054.i.epil = phi i32 [ %.05054.i.epil.init, %.epil.preheader ], [ %i.au, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.as = load i32, ptr %.157.i.epil, align 1     ; 3 uses
  %i.at = xor i32 %i.as, %.14756.i.epil
  %i.au = or i32 %i.at, %.05054.i.epil            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.157.i.epil, i64 %4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.g, !llvm.loop !14

.critedge.preheader.i:                            ; preds = %bb.g, %.critedge.preheader.i.unr-lcssa
  %.lcssa356 = phi i32 [ %i.cc, %.critedge.preheader.i.unr-lcssa ], [ %i.as, %bb.g ]
  %.lcssa355 = phi i32 [ %i.ce, %.critedge.preheader.i.unr-lcssa ], [ %i.au, %bb.g ] ; 17 uses
  %i.aw = add nuw nsw i64 %umin.i, 1
  %i.ax = mul i64 %4, %i.aw
  %scevgep = getelementptr i8, ptr %.04461.i, i64 %i.ax
  %i.ay = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 1) ; 3 uses
  %11 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 2) ; 3 uses
  %12 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 3) ; 3 uses
  %13 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 4) ; 3 uses
  %14 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 5) ; 3 uses
  %15 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 6) ; 3 uses
  %16 = tail call noundef i32 @llvm.fshl.i32(i32 %.lcssa355, i32 %.lcssa355, i32 7) ; 3 uses
  %i.az = trunc i32 %.lcssa355 to i8
  %i.ba = icmp ult i32 %.lcssa355, 268435456
  %i.bb = trunc i32 %i.ay to i8
  %i.bc = icmp ult i32 %i.ay, 268435456
  %i.bd = trunc i32 %11 to i8
  %i.be = icmp ult i32 %11, 268435456
  %i.bf = trunc i32 %12 to i8
  %i.bg = icmp ult i32 %12, 268435456
  %i.bh = trunc i32 %13 to i8
  %i.bi = icmp ult i32 %13, 268435456
  %i.bj = trunc i32 %14 to i8
  %i.bk = icmp ult i32 %14, 268435456
  %i.bl = trunc i32 %15 to i8
  %i.bm = icmp ult i32 %15, 268435456
  %i.bn = trunc i32 %16 to i8
  %17 = insertelement <8 x i8> poison, i8 %i.bn, i64 0
  %18 = insertelement <8 x i8> %17, i8 %i.bl, i64 1
  %19 = insertelement <8 x i8> %18, i8 %i.bj, i64 2
  %20 = insertelement <8 x i8> %19, i8 %i.bh, i64 3
  %21 = insertelement <8 x i8> %20, i8 %i.bf, i64 4
  %22 = insertelement <8 x i8> %21, i8 %i.bd, i64 5
  %23 = insertelement <8 x i8> %22, i8 %i.bb, i64 6
  %24 = insertelement <8 x i8> %23, i8 %i.az, i64 7 ; 3 uses
  %25 = icmp ult <8 x i8> %24, splat (i8 16)
  %26 = icmp samesign ult <8 x i8> %24, splat (i8 4)
  %27 = icmp eq <8 x i8> %24, zeroinitializer
  %28 = select <8 x i1> %27, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %29 = select <8 x i1> %26, <8 x i64> %28, <8 x i64> splat (i64 4)
  %30 = select <8 x i1> %25, <8 x i64> %29, <8 x i64> splat (i64 8)
  %31 = insertelement <8 x i32> poison, i32 %16, i64 0
  %32 = insertelement <8 x i32> %31, i32 %15, i64 1
  %33 = insertelement <8 x i32> %32, i32 %14, i64 2
  %34 = insertelement <8 x i32> %33, i32 %13, i64 3
  %35 = insertelement <8 x i32> %34, i32 %12, i64 4
  %36 = insertelement <8 x i32> %35, i32 %11, i64 5
  %37 = insertelement <8 x i32> %36, i32 %i.ay, i64 6
  %38 = insertelement <8 x i32> %37, i32 %.lcssa355, i64 7 ; 4 uses
  %39 = lshr <8 x i32> %38, splat (i32 8)
  %40 = trunc <8 x i32> %39 to <8 x i8>           ; 3 uses
  %41 = icmp ult <8 x i8> %40, splat (i8 16)
  %42 = icmp samesign ult <8 x i8> %40, splat (i8 4)
  %43 = icmp eq <8 x i8> %40, zeroinitializer
  %44 = select <8 x i1> %43, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %45 = select <8 x i1> %42, <8 x i64> %44, <8 x i64> splat (i64 4)
  %46 = select <8 x i1> %41, <8 x i64> %45, <8 x i64> splat (i64 8)
  %47 = lshr <8 x i32> %38, splat (i32 16)
  %48 = trunc <8 x i32> %47 to <8 x i8>           ; 3 uses
  %49 = icmp ult <8 x i8> %48, splat (i8 16)
  %50 = icmp samesign ult <8 x i8> %48, splat (i8 4)
  %51 = icmp eq <8 x i8> %48, zeroinitializer
  %52 = select <8 x i1> %51, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %53 = select <8 x i1> %50, <8 x i64> %52, <8 x i64> splat (i64 4)
  %54 = select <8 x i1> %49, <8 x i64> %53, <8 x i64> splat (i64 8)
  %55 = icmp ult i32 %16, 268435456
  %56 = icmp ult <8 x i32> %38, splat (i32 67108864)
  %57 = icmp ult <8 x i32> %38, splat (i32 16777216)
  %58 = select <8 x i1> %57, <8 x i64> zeroinitializer, <8 x i64> splat (i64 2)
  %59 = select <8 x i1> %56, <8 x i64> %58, <8 x i64> splat (i64 4)
  %60 = insertelement <8 x i1> poison, i1 %55, i64 0
  %61 = insertelement <8 x i1> %60, i1 %i.bm, i64 1
  %62 = insertelement <8 x i1> %61, i1 %i.bk, i64 2
  %63 = insertelement <8 x i1> %62, i1 %i.bi, i64 3
  %64 = insertelement <8 x i1> %63, i1 %i.bg, i64 4
  %65 = insertelement <8 x i1> %64, i1 %i.be, i64 5
  %66 = insertelement <8 x i1> %65, i1 %i.bc, i64 6
  %67 = insertelement <8 x i1> %66, i1 %i.ba, i64 7
  %68 = select <8 x i1> %67, <8 x i64> %59, <8 x i64> splat (i64 8)
  %69 = add <8 x i64> %68, %10
  %70 = add <8 x i64> %69, %30
  %71 = add <8 x i64> %70, %54
  %72 = add <8 x i64> %71, %46                    ; 9 uses
  %i.bo = add nuw i64 %.04859.i, 16               ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, -16
  br i1 %i.bp, label %.preheader53.i, label %_ZN7meshoptL14estimateRotateEPKhmmmm.exit, !llvm.loop !15

bb.h:                                             ; preds = %bb.h, %.preheader53.i.new
  %.157.i = phi ptr [ %.04461.i, %.preheader53.i.new ], [ %i.cf, %bb.h ] ; 2 uses
  %.14756.i = phi i32 [ %.04660.i, %.preheader53.i.new ], [ %i.cc, %bb.h ]
  %.05054.i = phi i32 [ 0, %.preheader53.i.new ], [ %i.ce, %bb.h ]
  %niter = phi i64 [ 0, %.preheader53.i.new ], [ %niter.next.3, %bb.h ]
  %i.bq = load i32, ptr %.157.i, align 1          ; 2 uses
  %i.br = xor i32 %i.bq, %.14756.i
  %i.bs = or i32 %i.br, %.05054.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.157.i, i64 %4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 1            ; 2 uses
  %i.bv = xor i32 %i.bu, %i.bq
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 1            ; 2 uses
  %i.bz = xor i32 %i.by, %i.bu
  %i.ca = or i32 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 1            ; 4 uses
  %i.cd = xor i32 %i.cc, %i.by
  %i.ce = or i32 %i.cd, %i.ca                     ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !16

_ZN7meshoptL14estimateRotateEPKhmmmm.exit:        ; preds = %.critedge.preheader.i
  %73 = extractelement <8 x i64> %72, i64 7       ; 3 uses
  store i64 %73, ptr %i.e, align 16, !tbaa !36
  %74 = extractelement <8 x i64> %72, i64 6       ; 3 uses
  store i64 %74, ptr %i.ah, align 8, !tbaa !36
  %75 = extractelement <8 x i64> %72, i64 5       ; 2 uses
  store i64 %75, ptr %i.ai, align 16, !tbaa !36
  %76 = extractelement <8 x i64> %72, i64 4       ; 2 uses
  store i64 %76, ptr %i.aj, align 8, !tbaa !36
  %77 = extractelement <8 x i64> %72, i64 3       ; 2 uses
  store i64 %77, ptr %i.ak, align 16, !tbaa !36
  %78 = extractelement <8 x i64> %72, i64 2       ; 2 uses
  store i64 %78, ptr %7, align 8, !tbaa !36
  %79 = extractelement <8 x i64> %72, i64 1       ; 2 uses
  store i64 %79, ptr %8, align 16, !tbaa !36
  %i.cg = icmp ult i64 %74, %73
  %i.ch = zext i1 %i.cg to i32
  %i.ci = tail call i64 @llvm.umin.i64(i64 %74, i64 %73)
  %i.cj = icmp ult i64 %75, %i.ci
  %i.ck = select i1 %i.cj, i32 2, i32 %i.ch       ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !36
  %i.co = icmp ult i64 %76, %i.cn
  %i.cp = select i1 %i.co, i32 3, i32 %i.ck       ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !36
  %i.ct = icmp ult i64 %77, %i.cs
  %i.cu = select i1 %i.ct, i32 4, i32 %i.cp       ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !36
  %i.cy = icmp ult i64 %78, %i.cx
  %i.cz = select i1 %i.cy, i32 5, i32 %i.cu       ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !36
  %i.dd = icmp ult i64 %79, %i.dc
  %i.de = select i1 %i.dd, i32 6, i32 %i.cz       ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !36
  %i.di = extractelement <8 x i64> %72, i64 0
  %i.dj = icmp ult i64 %i.di, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.dk = shl nuw nsw i32 %i.de, 4
  %i.dl = select i1 %i.dj, i32 112, i32 %i.dk
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit
  %wide.trip.count.i = phi i64 [ 3, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 2, %bb.e ]
  %i.dm = phi i32 [ %i.dl, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.06881.i = phi i64 [ %i.er, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.dn = add i64 %i.z, %.06881.i
  %umin368 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.dn)
  %i.do = mul i64 %i.al, %indvar
  %i.dp = add i64 %i.do, -1
  %i.dq = add i64 %umin368, %i.dp                 ; 3 uses
  %i.dr = add i64 %.06881.i, %i.z
  %i.ds = icmp ult i64 %i.dr, %3
  %i.dt = sub nuw i64 %3, %.06881.i
  %i.du = select i1 %i.ds, i64 %i.z, i64 %i.dt    ; 16 uses
  %i.dv = add i64 %i.du, 15
  %i.dw = and i64 %i.dv, -16                      ; 2 uses
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %.06881.i, i64 1)
  %i.dy = mul i64 %i.dx, %4
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %i.dz, i64 %4, i1 false)
  %i.ea = icmp ult i64 %i.du, %i.dw
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.du
  %i.ec = sub nuw i64 %i.dw, %i.du
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eb, i8 0, i64 %i.ec, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ed = mul i64 %.06881.i, %4
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed ; 3 uses
  %.not.i25.i.i = icmp eq i64 %i.du, 0            ; 4 uses
  %xtraiter369 = and i64 %i.du, 1
  %i.ef = icmp eq i64 %i.dq, 0
  %unroll_iter373 = and i64 %i.du, -2
  %lcmp.mod371.not = icmp eq i64 %xtraiter369, 0
  %lcmp.mod372 = trunc i64 %i.du to i1
  %xtraiter375 = and i64 %i.du, 1
  %i.eg = icmp eq i64 %i.dq, 0
  %unroll_iter379 = and i64 %i.du, -2
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  %lcmp.mod378 = trunc i64 %i.du to i1
  %xtraiter381 = and i64 %i.du, 1
  %i.eh = icmp eq i64 %i.dq, 0
  %unroll_iter385 = and i64 %i.du, -2
  %lcmp.mod383.not = icmp eq i64 %xtraiter381, 0
  %lcmp.mod384 = trunc i64 %i.du to i1
  %i.ei = tail call i64 @llvm.umax.i64(i64 %i.du, i64 16)
  %i.ej = add i64 %i.ei, -1
  %i.ek = lshr i64 %i.ej, 4                       ; 2 uses
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.ek, 0
  %n.vec = and i64 %i.el, 2305843009213693950     ; 3 uses
  %i.em = shl i64 %n.vec, 4
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %bb.n, %bb.l
  %indvars.iv.i103 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i106, %bb.n ] ; 3 uses
  %i.en = trunc nuw nsw i64 %indvars.iv.i103 to i32 ; 2 uses
  %i.eo = or i32 %i.dm, %i.en
  %i.ep = lshr i32 %i.eo, 4                       ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i103 ; 2 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %i.er = add i64 %.06881.i, %i.af                ; 2 uses
  %i.es = icmp ult i64 %i.er, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.es, label %bb.j, label %.preheader.i, !llvm.loop !17

bb.n:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i
  br i1 %exitcond89.not.i, label %bb.m, label %.preheader77.i, !llvm.loop !18

bb.o:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, %.preheader77.i
  %.07179.i = phi i64 [ 0, %.preheader77.i ], [ %i.rq, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i ] ; 4 uses
  %i.et = add nuw nsw i64 %.07179.i, %.091171     ; 5 uses
  switch i32 %i.en, label %default.unreachable33.i.i [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9   ; 2 uses
  br i1 %i.eh, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %.03238.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.03337.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i ], [ %i.eu, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.136.i.i.i = phi i8 [ %i.fd, %.lr.ph.i.i.i ], [ %i.ew, %.lr.ph.preheader.i.i.i ]
  %niter386 = phi i64 [ %niter386.next.1, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ex = load i8, ptr %.03337.i.i.i, align 1, !tbaa !9 ; 2 uses
  %i.ey = sub i8 %i.ex, %.136.i.i.i               ; 2 uses
  %.neg.i.i.i.i = ashr i8 %i.ey, 7
  %i.ez = shl i8 %i.ey, 1
  %i.fa = xor i8 %i.ez, %.neg.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  store i8 %i.fa, ptr %i.fb, align 2, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %.03337.i.i.i, i64 %4 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9   ; 3 uses
  %i.fe = sub i8 %i.fd, %i.ex                     ; 2 uses
  %.neg.i.i.i.i.1 = ashr i8 %i.fe, 7
  %i.ff = shl i8 %i.fe, 1
  %i.fg = xor i8 %i.ff, %.neg.i.i.i.i.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fg, ptr %i.fi, align 1, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %4 ; 2 uses
  %i.fk = add nuw nsw i64 %.03238.i.i.i, 2        ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %.lr.ph.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !19

bb.q:                                             ; preds = %bb.o
  %.tr.i.i.i = trunc i64 %.07179.i to i16
  %i.fl = shl i16 %.tr.i.i.i, 3
  %i.fm = and i16 %i.fl, 8                        ; 3 uses
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i20.i.i

.lr.ph.preheader.i20.i.i:                         ; preds = %bb.q
  %i.fn = and i64 %i.et, -2                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fn ; 2 uses
  %i.fp = or i64 %i.et, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !9
  %i.fs = zext i8 %i.fr to i16
  %i.ft = shl nuw i16 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fn
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !9
  %i.fw = zext i8 %i.fv to i16
  %i.fx = or disjoint i16 %i.ft, %i.fw            ; 2 uses
  br i1 %i.eg, label %.lr.ph.i21.i.i.epil.preheader, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.preheader.i20.i.i, %.lr.ph.i21.i.i
  %.03240.i.i.i = phi i64 [ %i.gp, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ] ; 3 uses
  %.03339.i.i.i = phi ptr [ %i.go, %.lr.ph.i21.i.i ], [ %i.fo, %.lr.ph.preheader.i20.i.i ] ; 2 uses
  %.138.i.i.i = phi i16 [ %i.gg, %.lr.ph.i21.i.i ], [ %i.fx, %.lr.ph.preheader.i20.i.i ]
  %niter380 = phi i64 [ %niter380.next.1, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ]
  %i.fy = load i16, ptr %.03339.i.i.i, align 1    ; 2 uses
  %i.fz = sub i16 %i.fy, %.138.i.i.i              ; 2 uses
  %.neg.i.i22.i.i = ashr i16 %i.fz, 15
  %i.ga = shl i16 %i.fz, 1
  %i.gb = xor i16 %i.ga, %.neg.i.i22.i.i
  %i.gc = lshr i16 %i.gb, %i.fm
  %i.gd = trunc i16 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i
  store i8 %i.gd, ptr %i.ge, align 2, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %.03339.i.i.i, i64 %4 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 1            ; 3 uses
  %i.gh = sub i16 %i.gg, %i.fy                    ; 2 uses
  %.neg.i.i22.i.i.1 = ashr i16 %i.gh, 15
  %i.gi = shl i16 %i.gh, 1
  %i.gj = xor i16 %i.gi, %.neg.i.i22.i.i.1
  %i.gk = lshr i16 %i.gj, %i.fm
  %i.gl = trunc i16 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 %4 ; 2 uses
  %i.gp = add nuw nsw i64 %.03240.i.i.i, 2        ; 2 uses
  %niter380.next.1 = add i64 %niter380, 2         ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %.lr.ph.i.loopexit353.unr-lcssa.a, label %.lr.ph.i21.i.i, !llvm.loop !20

bb.r:                                             ; preds = %bb.o
  %.tr.i24.i.i = trunc i64 %.07179.i to i32
  %i.gq = shl i32 %.tr.i24.i.i, 3
  %i.gr = and i32 %i.gq, 24                       ; 3 uses
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i26.i.i

.lr.ph.preheader.i26.i.i:                         ; preds = %bb.r
  %i.gs = and i64 %i.et, -4                       ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gs
  %i.gv = load i32, ptr %i.gu, align 4            ; 2 uses
  br i1 %i.ef, label %.lr.ph.i27.i.i.epil.preheader, label %.lr.ph.i27.i.i
end_hunk_0
