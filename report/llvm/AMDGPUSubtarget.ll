Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUSubtarget?download=true
inline.NumInlined: 319
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::APInt" = type <{ %union.anon.168, i32, [4 x i8] }>
%union.anon.168 = type { i64 }
%"class.llvm::ConstantRange" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"class.llvm::MDBuilder" = type { ptr }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [28 x i8] c"amdgpu-flat-work-group-size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"amdgpu-lds-size\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"amdgpu-waves-per-eu\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"reqd_work_group_size\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"amdgpu-no-wwm\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"amdgpu-no-implicitarg-ptr\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"amdgpu-implicitarg-num-bytes\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"amdgpu-hidden-argument\00", align 1
@.str.8 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@switch.table._ZNK4llvm15AMDGPUSubtarget21getKernArgSegmentSizeERKNS_8FunctionERNS_5AlignE = private unnamed_addr constant [11 x i8] c"\00$$$$$$$$\00\00", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm15AMDGPUSubtarget31getMaxLocalMemSizeWithWaveCountEjRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(140) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %i.c = zext nneg i8 %i.b to i32                 ; 2 uses
  %i.d = shl nuw i32 1, %i.c                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = lshr i16 %i.f, 4
  %i.h = and i16 %i.g, 1023
  switch i16 %i.h, label %bb.b [
    i16 87, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
    i16 95, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
    i16 93, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
    i16 96, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
    i16 88, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
    i16 89, label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !20
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i

_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %bb.a ], [ %i.d, %bb.a ], [ %i.d, %bb.a ], [ %i.d, %bb.a ], [ %i.d, %bb.a ] ; 4 uses
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, 1
  %i.m = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr nonnull @.str, i64 27, i64 %.sroa.04.0.insert.insert.i.i, i1 noundef zeroext false) #10 ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.m to i32 ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %i.m, 32  ; 2 uses
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
  %i.n = icmp ugt i32 %.sroa.01.0.extract.trunc.i, %.sroa.6.0.extract.trunc.i
  br i1 %i.n, label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !21
  %i.s = icmp ugt i32 %i.r, %.sroa.01.0.extract.trunc.i
  br i1 %i.s, label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !21
  %i.x = icmp ult i32 %i.w, %.sroa.6.0.extract.trunc.i
  %i.y = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.z = select i1 %i.x, i32 %.sroa.3.0.i.i, i32 %i.y
  br label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit

_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit: ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i, %bb.c, %bb.d
  %.sroa.5.0.insert.shift.pre-phi.i = phi i32 [ %.sroa.3.0.i.i, %bb.c ], [ %.sroa.3.0.i.i, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i ], [ %i.z, %bb.d ]
  %i.aa = add i32 %i.d, -1
  %i.ab = add i32 %i.aa, %.sroa.5.0.insert.shift.pre-phi.i
  %i.ac = lshr i32 %i.ab, %i.c
  %.sroa.speculated11 = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22
  %i.af = mul i32 %i.ae, %1
  %i.ag = udiv i32 %i.af, %.sroa.speculated11
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = udiv i32 %i.ai, %.sroa.speculated
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !13
  %i.c = lshr i16 %i.b, 4
  %i.d = and i16 %i.c, 1023
  switch i16 %i.d, label %bb.c [
    i16 87, label %bb.b
    i16 95, label %bb.b
    i16 93, label %bb.b
    i16 96, label %bb.b
    i16 88, label %bb.b
    i16 89, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !8
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 1, %i.g
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !24
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit

_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i32 [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32 ; 3 uses
  %.sroa.04.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, 1
  %i.m = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str, i64 27, i64 %.sroa.04.0.insert.insert.i, i1 noundef zeroext false) #10 ; 3 uses
  %.sroa.01.0.extract.trunc = trunc i64 %i.m to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.m, 32    ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.n = icmp ugt i32 %.sroa.01.0.extract.trunc, %.sroa.6.0.extract.trunc
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %i.s = icmp ugt i32 %i.r, %.sroa.01.0.extract.trunc
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  %i.x = icmp ult i32 %i.w, %.sroa.6.0.extract.trunc ; 2 uses
  %spec.select16 = select i1 %i.x, i64 %.sroa.3.0.insert.ext.i, i64 %.sroa.6.0.extract.shift
  %i.y = and i64 %i.m, 4294967295
  %i.z = select i1 %i.x, i64 1, i64 %i.y
  %.pre = shl nuw i64 %spec.select16, 32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit, %bb.e
  %.sroa.5.0.insert.shift.pre-phi = phi i64 [ %.sroa.3.0.insert.shift.i, %bb.d ], [ %.sroa.3.0.insert.shift.i, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit ], [ %.pre, %bb.e ]
  %.sroa.09.0 = phi i64 [ 1, %bb.d ], [ 1, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit ], [ %i.z, %bb.e ]
  %.sroa.09.0.insert.insert = add nuw nsw i64 %.sroa.5.0.insert.shift.pre-phi, %.sroa.09.0
  ret i64 %.sroa.09.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %.sroa.speculated102 = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.c = icmp ne i32 %1, 0
  %i.d = zext i1 %i.c to i32                      ; 2 uses
  %i.e = sub i32 %1, %i.d
  %i.f = udiv i32 %i.e, %.sroa.speculated102
  %i.g = add i32 %i.f, %i.d
  %i.h = mul i32 %i.g, %.sroa.speculated102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23   ; 2 uses
  %.sroa.speculated97 = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1) ; 2 uses
  %.not = icmp ugt i32 %.sroa.speculated97, %i.j
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = udiv i32 %i.j, %.sroa.speculated97       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !8
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26   ; 5 uses
  %.sroa.074.0.extract.trunc = trunc i64 %2 to i32 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 3 uses
  %i.q = icmp ne i32 %.sroa.074.0.extract.trunc, 0
  %i.r = zext i1 %i.q to i32                      ; 2 uses
  %i.s = sub i32 %.sroa.074.0.extract.trunc, %i.r
  %i.t = lshr i32 %i.s, %i.n
  %i.u = add i32 %i.t, %i.r                       ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE:bb.a
  %i.ab = zext i1 %i.aa to i32                    ; 2 uses
  %i.ac = sub i32 %.sroa.4.0.extract.trunc, %i.ab
  %i.ad = lshr i32 %i.ac, %i.n
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !18, !noalias !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2144
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !31
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.4.0.extract.trunc) #10, !noalias !31, !inline_history !30
  %.sroa.speculated.i41 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.ai) ; 6 uses
  %i.aj = mul i32 %.sroa.speculated.i41, %i.ae    ; 6 uses
  %.not37 = icmp ult i32 %i.aj, %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22 ; 4 uses
  br i1 %.not37, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.am = mul i32 %i.al, %i.p                     ; 3 uses
  %i.an = add i32 %.sroa.speculated.i41, 1
  %i.ao = icmp ne i32 %i.am, 0
  %i.ap = zext i1 %i.ao to i32                    ; 2 uses
  %i.aq = sub i32 %i.am, %i.ap
  %i.ar = udiv i32 %i.aq, %i.an
  %i.as = add i32 %i.ar, %i.ap
  %i.at = mul i32 %i.as, %.sroa.speculated.i41    ; 2 uses
  %i.au = icmp ugt i32 %i.aj, %i.at
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = sub nuw i32 %i.aj, %i.at                ; 2 uses
  %.not38 = icmp ugt i32 %.sroa.speculated.i41, %i.av
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = udiv i32 %i.av, %.sroa.speculated.i41
  %i.ax = sub i32 %i.ae, %i.u
  %.sroa.speculated54 = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.aw)
  %i.ay = sub i32 %i.ae, %.sroa.speculated54
  %i.az = mul i32 %i.ay, %.sroa.speculated.i41
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.1 = phi i32 [ %i.aj, %bb.c ], [ %i.aj, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %i.ba = sub i32 %i.am, %i.z                     ; 2 uses
  %.not39 = icmp ugt i32 %.sroa.speculated.i, %i.ba
  br i1 %.not39, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = udiv i32 %i.ba, %.sroa.speculated.i
  %i.bc = add i32 %.sroa.4.0.extract.trunc, -1
  %i.bd = lshr i32 %i.bc, %i.n
  %i.be = add i32 %i.bd, 1
  %i.bf = sub i32 %i.be, %i.u
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.bb)
  %i.bg = add i32 %.sroa.speculated, %i.u
  %i.bh = mul i32 %i.bg, %.sroa.speculated.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.f, %bb.g
  %.sroa.066.1 = phi i32 [ %i.bh, %bb.g ], [ %i.z, %bb.f ], [ %i.aj, %bb.b ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %bb.f ], [ %i.z, %bb.b ] ; 2 uses
  %i.bi = udiv i32 %.sroa.0.2, %i.al              ; 2 uses
  %i.bj = icmp ugt i32 %i.al, %.sroa.0.2
  %i.bk = tail call i32 @llvm.umax.i32(i32 %i.bi, i32 1)
  %i.bl = icmp ult i32 %i.p, %i.bk
  %i.bm = icmp ne i32 %.sroa.066.1, 0
  %i.bn = zext i1 %i.bm to i32                    ; 2 uses
  %i.bo = sub i32 %.sroa.066.1, %i.bn
  %i.bp = udiv i32 %i.bo, %i.al
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1)
  %i.bs = icmp ult i32 %i.p, %i.br
  %.sroa.speculate.load.false86 = select i1 %i.bj, i32 1, i32 %i.bi
  %.sroa.speculated87 = select i1 %i.bl, i32 %i.p, i32 %.sroa.speculate.load.false86
  %.sroa.speculate.load.false = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 1)
  %.sroa.speculated84 = select i1 %i.bs, i32 %i.p, i32 %.sroa.speculate.load.false
  %i.bt = zext i32 %.sroa.speculated84 to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = zext i32 %.sroa.speculated87 to i64
  %i.bw = or disjoint i64 %i.bu, %i.bv
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.0108.0.insert.insert = phi i64 [ %i.bw, %._crit_edge ], [ 4294967297, %bb.a ]
  ret i64 %.sroa.0108.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !153
  %i.e = load ptr, ptr %1, align 8, !tbaa !157, !nonnull !158, !align !159 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !13
  %i.h = lshr i16 %i.g, 4
  %i.i = and i16 %i.h, 1023
  switch i16 %i.i, label %bb.c [
    i16 87, label %bb.b
    i16 95, label %bb.b
    i16 93, label %bb.b
    i16 96, label %bb.b
    i16 88, label %bb.b
    i16 89, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !160
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i

_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i.i = phi i32 [ %i.q, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.3.0.insert.ext.i.i.i = zext i32 %.sroa.3.0.i.i.i to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i.i, 32 ; 3 uses
  %.sroa.04.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, 1
  %i.r = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %i.e, ptr nonnull @.str, i64 27, i64 %.sroa.04.0.insert.insert.i.i.i, i1 noundef zeroext false) #10 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %i.r to i32 ; 2 uses
  %.sroa.6.0.extract.shift.i.i = lshr i64 %i.r, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32 ; 2 uses
  %i.s = icmp ugt i32 %.sroa.01.0.extract.trunc.i.i, %.sroa.6.0.extract.trunc.i.i
  br i1 %i.s, label %_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjRKNS_8FunctionE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2152
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !161
  %i.x = icmp ugt i32 %i.w, %.sroa.01.0.extract.trunc.i.i
  br i1 %i.x, label %_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjRKNS_8FunctionE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2160
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !161
  %i.ac = icmp ult i32 %i.ab, %.sroa.6.0.extract.trunc.i.i ; 2 uses
  %spec.select16.i.i = select i1 %i.ac, i64 %.sroa.3.0.insert.ext.i.i.i, i64 %.sroa.6.0.extract.shift.i.i
  %i.ad = and i64 %i.r, 4294967295
  %i.ae = select i1 %i.ac, i64 1, i64 %i.ad
  %.pre.i.i = shl nuw i64 %spec.select16.i.i, 32
  br label %_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjRKNS_8FunctionE.exit

_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjRKNS_8FunctionE.exit: ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i, %bb.d, %bb.e
  %.sroa.5.0.insert.shift.pre-phi.i.i = phi i64 [ %.sroa.3.0.insert.shift.i.i.i, %bb.d ], [ %.sroa.3.0.insert.shift.i.i.i, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %.sroa.09.0.i.i = phi i64 [ 1, %bb.d ], [ 1, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i.i ], [ %i.ae, %bb.e ]
  %.sroa.09.0.insert.insert.i.i = add nuw nsw i64 %.sroa.09.0.i.i, %.sroa.5.0.insert.shift.pre-phi.i.i
  %i.af = tail call i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.d, i64 %.sroa.09.0.insert.insert.i.i)
  ret i64 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 1, -4294967294) i64 @_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 87, label %bb.b
    i32 95, label %bb.b
    i32 93, label %bb.b
    i32 96, label %bb.b
    i32 88, label %bb.b
    i32 89, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2160
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 1
  ret i64 %.sroa.04.0.insert.insert
}

declare i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget22getEffectiveWavesPerEUESt4pairIjjES2_j(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.027 = alloca i64, align 8                ; 3 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  store i64 %1, ptr %.sroa.027, align 8
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.2.0.extract.trunc) #10
  %i.e = tail call i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, i64 %2)
  %.sroa.3.0.extract.shift = lshr i64 %i.e, 32    ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %.sroa.3.0.extract.trunc, ptr %.4..4..4..sroa_idx, align 4, !tbaa !162
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %.sroa.3.0.extract.trunc) ; 2 uses
  store i32 %i.f, ptr %.sroa.0, align 8, !tbaa !164
  %i.g = trunc i64 %1 to i32                      ; 3 uses
  %i.h = icmp ugt i32 %i.f, %i.g
  %i.i = icmp ugt i32 %i.g, %.sroa.3.0.extract.trunc
  %or.cond = or i1 %i.h, %i.i
  %i.j = lshr i64 %1, 32                          ; 2 uses
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = icmp ugt i32 %i.g, %i.k
  %or.cond27 = select i1 %or.cond, i1 true, i1 %i.l
  br i1 %or.cond27, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  %i.o = icmp ult i32 %i.n, %i.k
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.3.0.extract.shift)
  %i.q = trunc nuw i64 %i.p to i32
  %.4..4..4..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.027, i64 4
  store i32 %i.q, ptr %.4..4..4..sroa_idx26, align 4, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.02.0.in = phi ptr [ %.sroa.027, %bb.c ], [ %.sroa.0, %bb.b ], [ %.sroa.0, %bb.a ]
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.013 = alloca i64, align 8                ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !13
  %i.c = lshr i16 %i.b, 4
  %i.d = and i16 %i.c, 1023
  switch i16 %i.d, label %bb.c [
    i16 87, label %bb.b
    i16 95, label %bb.b
    i16 93, label %bb.b
    i16 96, label %bb.b
    i16 88, label %bb.b
    i16 89, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !8
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw i32 1, %i.g
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2160
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !20
  br label %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i

_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi i32 [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i.i to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32 ; 3 uses
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, 1
  %i.m = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str, i64 27, i64 %.sroa.04.0.insert.insert.i.i, i1 noundef zeroext false) #10 ; 3 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.m to i32 ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %i.m, 32  ; 2 uses
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
  %i.n = icmp ugt i32 %.sroa.01.0.extract.trunc.i, %.sroa.6.0.extract.trunc.i
  br i1 %i.n, label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !21
  %i.s = icmp ugt i32 %i.r, %.sroa.01.0.extract.trunc.i
  br i1 %i.s, label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %0) #10, !inline_history !21
  %i.x = icmp ult i32 %i.w, %.sroa.6.0.extract.trunc.i ; 2 uses
  %spec.select16.i = select i1 %i.x, i64 %.sroa.3.0.insert.ext.i.i, i64 %.sroa.6.0.extract.shift.i
  %i.y = and i64 %i.m, 4294967295
  %i.z = select i1 %i.x, i64 1, i64 %i.y
  %.pre.i = shl nuw i64 %spec.select16.i, 32
  br label %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit

_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit: ; preds = %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i, %bb.d, %bb.e
  %.sroa.5.0.insert.shift.pre-phi.i = phi i64 [ %.sroa.3.0.insert.shift.i.i, %bb.d ], [ %.sroa.3.0.insert.shift.i.i, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i ], [ %.pre.i, %bb.e ]
  %.sroa.09.0.i = phi i64 [ 1, %bb.d ], [ 1, %_ZNK4llvm15AMDGPUSubtarget27getDefaultFlatWorkGroupSizeEj.exit.i ], [ %i.z, %bb.e ]
  %.sroa.09.0.insert.insert.i = add nuw nsw i64 %.sroa.09.0.i, %.sroa.5.0.insert.shift.pre-phi.i ; 2 uses
  %i.aa = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.1, i64 15, i64 -4294967296, i1 noundef zeroext true) #10
  %.sroa.01.0.extract.trunc = trunc i64 %i.aa to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %.sroa.4.0.insert.ext.i = zext i32 %i.ac to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.08.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, 1
  %i.ad = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.2, i64 19, i64 %.sroa.08.0.insert.insert.i, i1 noundef zeroext true) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013)
  store i64 %i.ad, ptr %.sroa.013, align 8
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2168
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.2.0.extract.trunc.i.i) #10, !inline_history !165
  %i.ai = tail call i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.01.0.extract.trunc, i64 %.sroa.09.0.insert.insert.i)
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.ai, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32 ; 3 uses
  %.4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i, ptr %.4..4..4..4..4..4..4..sroa_idx, align 4, !tbaa !162
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %.sroa.3.0.extract.trunc.i.i) ; 2 uses
  store i32 %i.aj, ptr %.sroa.0, align 8, !tbaa !164
  %i.ak = trunc i64 %i.ad to i32                  ; 3 uses
  %i.al = icmp ugt i32 %i.aj, %i.ak
  %i.am = icmp ugt i32 %i.ak, %.sroa.3.0.extract.trunc.i.i
  %or.cond.i.i = or i1 %i.am, %i.al
  %i.an = lshr i64 %i.ad, 32                      ; 2 uses
  %i.ao = trunc nuw i64 %i.an to i32              ; 2 uses
  %i.ap = icmp ugt i32 %i.ak, %i.ao
  %or.cond.i = select i1 %or.cond.i.i, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUESt4pairIjjEjRKNS_8FunctionE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit
  %i.aq = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ar = icmp ult i32 %i.aq, %i.ao
  br i1 %i.ar, label %_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUESt4pairIjjEjRKNS_8FunctionE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.sroa.3.0.extract.shift.i.i)
  %i.at = trunc nuw i64 %i.as to i32
  %.4..4..4..4..4..4..4..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.013, i64 4
  store i32 %i.at, ptr %.4..4..4..4..4..4..4..sroa_idx12, align 4, !tbaa !162
  br label %_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUESt4pairIjjEjRKNS_8FunctionE.exit

_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUESt4pairIjjEjRKNS_8FunctionE.exit: ; preds = %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit, %bb.f, %bb.g
  %.sroa.02.0.in.i.i = phi ptr [ %.sroa.013, %bb.g ], [ %.sroa.0, %bb.f ], [ %.sroa.0, %_ZNK4llvm15AMDGPUSubtarget21getFlatWorkGroupSizesERKNS_8FunctionE.exit ]
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  ret i64 %.sroa.02.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15AMDGPUSubtarget13getWavesPerEUESt4pairIjjEjRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(140) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.012 = alloca i64, align 8                ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %.sroa.4.0.insert.ext = zext i32 %i.b to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.08.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 1
  %i.c = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr nonnull @.str.2, i64 19, i64 %.sroa.08.0.insert.insert, i1 noundef zeroext true) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012)
  store i64 %i.c, ptr %.sroa.012, align 8
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.2.0.extract.trunc.i) #10, !inline_history !166
  %i.h = tail call i64 @_ZNK4llvm15AMDGPUSubtarget30getOccupancyWithWorkGroupSizesEjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %2, i64 %1)
  %.sroa.3.0.extract.shift.i = lshr i64 %i.h, 32  ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 3 uses
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %.sroa.3.0.extract.trunc.i, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !162
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %.sroa.3.0.extract.trunc.i) ; 2 uses
  store i32 %i.i, ptr %.sroa.0, align 8, !tbaa !164
  %i.j = trunc i64 %i.c to i32                    ; 3 uses
  %i.k = icmp ugt i32 %i.i, %i.j
  %i.l = icmp ugt i32 %i.j, %.sroa.3.0.extract.trunc.i
  %or.cond.i = or i1 %i.l, %i.k
  %i.m = lshr i64 %i.c, 32                        ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 2 uses
  %i.o = icmp ugt i32 %i.j, %i.n
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZNK4llvm15AMDGPUSubtarget22getEffectiveWavesPerEUESt4pairIjjES2_j.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.a, align 8, !tbaa !26
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %_ZNK4llvm15AMDGPUSubtarget22getEffectiveWavesPerEUESt4pairIjjES2_j.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.3.0.extract.shift.i)
  %i.s = trunc nuw i64 %i.r to i32
  %.4..4..4..4..4..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.012, i64 4
  store i32 %i.s, ptr %.4..4..4..4..4..sroa_idx11, align 4, !tbaa !162
  br label %_ZNK4llvm15AMDGPUSubtarget22getEffectiveWavesPerEUESt4pairIjjES2_j.exit

_ZNK4llvm15AMDGPUSubtarget22getEffectiveWavesPerEUESt4pairIjjES2_j.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %.sroa.012, %bb.c ], [ %.sroa.0, %bb.b ], [ %.sroa.0, %bb.a ]
  %.sroa.02.0.i = load i64, ptr %.sroa.02.0.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012)
  ret i64 %.sroa.02.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4llvm15AMDGPUSubtarget20getReqdWorkGroupSizeERKNS_8FunctionEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(140) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit

_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit: ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm5Value11getMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr nonnull @.str.3, i64 20) #11 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.b
  %i.g = and i64 %i.e, 960
  %i.h = icmp eq i64 %i.g, 192
  br i1 %i.h, label %bb.c, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !174
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %.thread, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.c:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.n = lshr i64 %i.e, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %.thread, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %.thread ]
  %i.r = zext i32 %2 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !186
  %i.z = icmp ult i32 %i.y, 65
  %i.aa = load ptr, ptr %i.w, align 8
  %spec.select.i.i = select i1 %i.z, ptr %i.w, ptr %i.aa
  %.0.i.i5 = load i64, ptr %spec.select.i.i, align 8, !tbaa !188
  %i.ab = and i64 %.0.i.i5, 4294967295
  %i.ac = or disjoint i64 %i.ab, 4294967296
  br label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread: ; preds = %bb.a, %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread, %_ZNK4llvm6MDNode10getOperandEj.exit
  %.sroa.2.0 = phi i64 [ %i.ac, %_ZNK4llvm6MDNode10getOperandEj.exit ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread ], [ 0, %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15AMDGPUSubtarget32hasWavefrontsEvenlySplittingXDimERKNS_8FunctionEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(140) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit

_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit: ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm5Value11getMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr nonnull @.str.3, i64 20) #11 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = and i64 %i.e, 2
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 3 uses
  br i1 %.not.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.b
  %i.g = and i64 %i.e, 960
  %.not15 = icmp eq i64 %i.g, 192
  br i1 %.not15, label %bb.c, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !174
  %.not1533 = icmp eq i32 %i.i, 3
  br i1 %.not1533, label %.thread, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.c:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.l = lshr i64 %i.e, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %.thread, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.k, %.thread ]
  %i.p = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !179  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !186
  %i.v = icmp ult i32 %i.u, 65
  %i.w = load ptr, ptr %i.s, align 8
  %spec.select.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.0.i.i19 = load i64, ptr %spec.select.i.i, align 8, !tbaa !188
  %i.x = trunc i64 %.0.i.i19 to i32               ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175
  br label %_ZNK4llvm6MDNode10getOperandEj.exit22

bb.e:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  %i.aa = lshr i64 %i.e, 2
  %i.ab = and i64 %i.aa, 15
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ac
  br label %_ZNK4llvm6MDNode10getOperandEj.exit22

_ZNK4llvm6MDNode10getOperandEj.exit22:            ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i21 = phi ptr [ %i.ad, %bb.e ], [ %i.z, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !186
  %i.al = icmp ult i32 %i.ak, 65
  %i.am = load ptr, ptr %i.ai, align 8
  %spec.select.i.i23 = select i1 %i.al, ptr %i.ai, ptr %i.am
  %.0.i.i24 = load i64, ptr %spec.select.i.i23, align 8, !tbaa !188
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit22
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !175
  br label %_ZNK4llvm6MDNode10getOperandEj.exit27

bb.g:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit22
  %i.ap = lshr i64 %i.e, 2
  %i.aq = and i64 %i.ap, 15
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ar
  br label %_ZNK4llvm6MDNode10getOperandEj.exit27

_ZNK4llvm6MDNode10getOperandEj.exit27:            ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i26 = phi ptr [ %i.as, %bb.g ], [ %i.ao, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i26, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !176
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !179 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !186
  %i.ba = icmp ult i32 %i.az, 65
  %i.bb = load ptr, ptr %i.ax, align 8
  %spec.select.i.i28 = select i1 %i.ba, ptr %i.ax, ptr %i.bb
  %.0.i.i29 = load i64, ptr %spec.select.i.i28, align 8, !tbaa !188
  %i.bc = or i64 %.0.i.i29, %.0.i.i24
  %i.bd = and i64 %i.bc, 4294967294
  %i.be = icmp eq i64 %i.bd, 0                    ; 3 uses
  %.not.i.i30 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i30, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread, label %_ZN4llvm13isPowerOf2_32Ej.exit

_ZN4llvm13isPowerOf2_32Ej.exit:                   ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit27
  %i.bf = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.bg = icmp samesign ult i32 %i.bf, 2          ; 2 uses
  %brmerge.not = and i1 %2, %i.bg
  %.mux = select i1 %i.bg, i1 true, i1 %i.be
  br i1 %brmerge.not, label %bb.h, label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread

bb.h:                                             ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !8
  %i.bj = zext nneg i8 %i.bi to i32
  %.highbits = lshr i32 %i.x, %i.bj
  %i.bk = icmp ne i32 %.highbits, 0
  %i.bl = or i1 %i.be, %i.bk
  br label %_ZNK4llvm12GlobalObject11getMetadataENS_9StringRefE.exit.thread
end_hunk_1
