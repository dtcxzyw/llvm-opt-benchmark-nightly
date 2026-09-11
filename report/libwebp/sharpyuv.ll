Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.SharpYuvOptions = type { ptr, i32 }
%struct.SharpYuvConversionMatrix = type { [4 x i32], [4 x i32], [4 x i32] }

@SharpYuvInit.sharpyuv_last_cpuinfo_used = internal global ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8
@SharpYuvInit.sharpyuv_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@SharpYuvGetCPUInfo = external global ptr, align 8
@SharpYuvUpdateY = external local_unnamed_addr global ptr, align 8
@SharpYuvUpdateRGB = external local_unnamed_addr global ptr, align 8
@SharpYuvFilterRow = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SharpYuvGetVersion() local_unnamed_addr #0 {
bb.a:
  ret i32 262146
}

; Function Attrs: nounwind uwtable
define void @SharpYuvInit(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not2 = icmp eq ptr %0, @SharpYuvGetCPUInfo
  br i1 %.not2, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.b = phi ptr [ %.pre, %._crit_edge ], [ %0, %bb.c ]
  %i.c = load volatile ptr, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !9
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SharpYuvInitDsp() #11
  tail call void @SharpYuvInitGammaTables() #11
  %i.e = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !9
  store volatile ptr %i.e, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare void @SharpYuvInitDsp() local_unnamed_addr #3

declare void @SharpYuvInitGammaTables() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SharpYuvConvert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, i32 noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15) local_unnamed_addr #1 {
bb.a:
  %16 = alloca %struct.SharpYuvOptions, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store ptr %15, ptr %16, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 13, ptr %i.a, align 8, !tbaa !12
  %i.b = call i32 @SharpYuvConvertWithOptions(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SharpYuvConvertWithOptions(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, i32 noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr nofree noundef readonly captures(none) %15) local_unnamed_addr #1 {
bb.a:
  %16 = alloca %struct.SharpYuvConversionMatrix, align 4 ; 16 uses
  %i.a = load ptr, ptr %15, align 8, !tbaa !11    ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %notmask = shl nsw i32 -1, %5
  %i.d = xor i32 %notmask, -1                     ; 9 uses
  %i.e = add nsw i32 %5, -1
  %i.f = shl nuw i32 1, %i.e                      ; 9 uses
  %notmask152 = shl nsw i32 -1, %12
  %i.g = xor i32 %notmask152, -1                  ; 9 uses
  %i.h = icmp slt i32 %5, 13
  %i.i = sub nsw i32 14, %5
  %i.j = select i1 %i.h, i32 2, i32 %i.i          ; 5 uses
  %i.k = add i32 %13, -2147483647
  %i.l = icmp ult i32 %i.k, -2147483646
  %i.m = add i32 %14, -2147483647
  %i.n = icmp ult i32 %i.m, -2147483646
  %i.o = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.p = insertelement <4 x ptr> %i.o, ptr %1, i64 1
  %i.q = insertelement <4 x ptr> %i.p, ptr %2, i64 2
  %i.r = insertelement <4 x ptr> %i.q, ptr %6, i64 3
  %i.s = icmp eq <4 x ptr> %i.r, splat (ptr null)
  %i.t = icmp eq ptr %8, null
  %i.u = icmp eq ptr %10, null
  %i.v = bitcast <4 x i1> %i.s to i4
  %i.w = icmp ne i4 %i.v, 0
  %op.rdx = or i1 %i.w, %i.t
  %op.rdx171 = or i1 %i.u, %i.l
  %op.rdx172 = or i1 %op.rdx, %op.rdx171
  %op.rdx173 = or i1 %op.rdx172, %i.n
  br i1 %op.rdx173, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %5, label %bb.m [
    i32 16, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  switch i32 %12, label %bb.m [
    i32 12, label %bb.d
    i32 10, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.x = icmp samesign ugt i32 %5, 8
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = or i32 %4, %3
  %i.z = and i32 %i.y, 1
  %or.cond = icmp eq i32 %i.z, 0
  br i1 %or.cond, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp samesign ugt i32 %12, 8            ; 2 uses
  %i.ab = add nuw nsw i32 %13, 1
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = zext nneg i32 %9 to i64
  %i.aj = sext i32 %11 to i64
  %i.ak = icmp slt i32 %7, 0
  br i1 %i.ak, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = zext nneg i32 %7 to i64
  %i.am = zext nneg i32 %13 to i64                ; 2 uses
  %i.an = zext i1 %i.aa to i64                    ; 2 uses
  %i.ao = shl nuw nsw i64 %i.am, %i.an
  %i.ap = icmp samesign ugt i64 %i.ao, %i.al
  %i.aq = icmp slt i32 %9, 0
  %or.cond29 = or i1 %i.aq, %i.ap
  br i1 %or.cond29, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = shl nuw nsw i64 %i.ad, %i.an            ; 2 uses
  %i.as = icmp samesign ugt i64 %i.ar, %i.ai
  %i.at = icmp slt i32 %11, 0
  %or.cond31 = or i1 %i.at, %i.as
  %i.au = icmp ugt i64 %i.ar, %i.aj
  %or.cond157 = or i1 %i.au, %or.cond31
  br i1 %or.cond157, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq i32 %3, 0
  %i.aw = mul nuw nsw i64 %i.am, %i.af
  %i.ax = icmp samesign ugt i64 %i.aw, %i.ah
  %or.cond159 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond159, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.i
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.ay = or i32 %9, %7
  %i.az = or i32 %i.ay, %11
  %i.ba = and i32 %i.az, 1
  %or.cond161 = icmp eq i32 %i.ba, 0
  br i1 %or.cond161, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %.critedge
  tail call void @SharpYuvInit(ptr noundef nonnull @SharpYuvGetCPUInfo)
  %i.bb = icmp eq i32 %5, %12
  br i1 %i.bb, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 32
  %17 = load i32, ptr %i.a, align 4, !tbaa !13
  %18 = mul nsw i32 %17, %i.g
  %19 = add nsw i32 %18, %i.f
  %20 = sdiv i32 %19, %i.d
  store i32 %20, ptr %16, align 4, !tbaa !13
  %21 = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.bg = mul nsw i32 %21, %i.g
  %i.bh = add nsw i32 %i.bg, %i.f
  %22 = sdiv i32 %i.bh, %i.d
  store i32 %22, ptr %i.bd, align 4, !tbaa !13
  %23 = load i32, ptr %i.be, align 4, !tbaa !13
  %24 = mul nsw i32 %23, %i.g
  %25 = add nsw i32 %24, %i.f
  %26 = sdiv i32 %25, %i.d
  store i32 %26, ptr %i.bf, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !13
  %i.bk = mul nsw i32 %i.bj, %i.g
  %27 = add nsw i32 %i.bk, %i.f
  %28 = sdiv i32 %27, %i.d
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %28, ptr %29, align 4, !tbaa !13
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = mul nsw i32 %31, %i.g
  %33 = add nsw i32 %32, %i.f
  %34 = sdiv i32 %33, %i.d
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 %34, ptr %35, align 4, !tbaa !13
  %36 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = mul nsw i32 %37, %i.g
  %39 = add nsw i32 %38, %i.f
  %40 = sdiv i32 %39, %i.d
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %40, ptr %41, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = mul nsw i32 %i.bm, %i.g
  %i.bo = add nsw i32 %i.bn, %i.f
  %i.bp = sdiv i32 %i.bo, %i.d
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.bt = mul nsw i32 %i.bs, %i.g
  %i.bu = add nsw i32 %i.bt, %i.f
  %i.bv = sdiv i32 %i.bu, %i.d
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.bz = mul nsw i32 %i.by, %i.g
  %i.ca = add nsw i32 %i.bz, %i.f
  %i.cb = sdiv i32 %i.ca, %i.d
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !13
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %16, ptr noundef nonnull align 4 dereferenceable(48) %i.a, i64 44, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cf = shl i32 %i.ce, %i.j
  %i.cg = sub nsw i32 0, %i.j                     ; 3 uses
  %i.ch = ashr i32 %i.ce, %i.cg
  %i.ci = icmp slt i32 %i.j, 0                    ; 3 uses
  %i.cj = select i1 %i.ci, i32 %i.ch, i32 %i.cf
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13 ; 2 uses
  %i.cn = shl i32 %i.cm, %i.j
  %i.co = ashr i32 %i.cm, %i.cg
  %i.cp = select i1 %i.ci, i32 %i.co, i32 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !13 ; 2 uses
  %i.ct = shl i32 %i.cs, %i.j
  %i.cu = ashr i32 %i.cs, %i.cg
  %i.cv = select i1 %i.ci, i32 %i.cu, i32 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !13
  %i.cx = call fastcc i32 @DoSharpArgbToYuv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef nonnull %8, i32 noundef %9, ptr noundef nonnull %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %16, i32 noundef %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.i, %bb.e, %bb.c, %bb.b, %bb.a, %.loopexit
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.cx, %.loopexit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @SharpYuvOptionsInitInternal(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond.not22 = and i1 %i.b, %i.a
  %i.c = and i32 %2, -65536
  %or.cond7.not = icmp eq i32 %i.c, 262144
  %or.cond20 = and i1 %or.cond.not22, %or.cond7.not
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DoSharpArgbToYuv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8, i32 noundef %9, ptr nofree noundef writeonly captures(none) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr nofree noundef nonnull readonly captures(none) %15, i32 noundef %16) unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %13, 1                       ; 2 uses
  %i.b = and i32 %i.a, -2                         ; 15 uses
  %i.c = add nsw i32 %14, 1                       ; 2 uses
  %i.d = and i32 %i.c, -2                         ; 4 uses
  %i.e = ashr i32 %i.a, 1                         ; 12 uses
  %i.f = ashr i32 %i.c, 1                         ; 2 uses
  %i.g = icmp slt i32 %5, 13
  %i.h = sub nsw i32 14, %5
  %i.i = select i1 %i.g, i32 2, i32 %i.h          ; 3 uses
  %i.j = add nsw i32 %i.i, %5                     ; 26 uses
  %i.k = sext i32 %i.b to i64                     ; 20 uses
  %i.l = mul nsw i64 %i.k, 6                      ; 2 uses
  %i.m = sext i32 %i.d to i64
  %i.n = mul nsw i64 %i.m, %i.k                   ; 3 uses
  %i.o = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.p = sext i32 %i.e to i64                     ; 9 uses
  %i.q = mul nsw i64 %i.p, 3                      ; 2 uses
  %i.r = sext i32 %i.f to i64
  %i.s = mul nsw i64 %i.q, %i.r                   ; 3 uses
  %reass.add279 = add nsw i64 %i.n, %i.s
  %i.t = add nsw i64 %i.l, %i.q
  %i.u = add nsw i64 %i.t, %i.o
  %i.v = shl i64 %reass.add279, 2
  %i.w = shl nsw i64 %i.u, 1
  %i.x = add i64 %i.v, %i.w
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #12 ; 22 uses
  %i.z = sitofp i32 %i.b to double
  %i.aa = fmul nnan double %i.z, 3.000000e+00
  %i.ab = sitofp i32 %i.d to double
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fptoui double %i.ac to i64
  %i.ae = icmp eq ptr %i.y, null
  br i1 %i.ae, label %ConvertWRGBToYUV.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.l ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.n ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.n ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.o ; 9 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.s ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.s ; 2 uses
  %i.al = icmp sgt i32 %14, 0
  br i1 %i.al, label %.lr.ph, label %..preheader282_crit_edge

..preheader282_crit_edge:                         ; preds = %bb.b
  %.pre = mul nsw i32 %i.b, 3
  %.pre300 = sext i32 %.pre to i64
  %.pre302 = mul nsw i32 %i.e, 3                  ; 2 uses
  %.pre304 = shl nsw i32 %i.b, 1                  ; 2 uses
  %.pre306 = sext i32 %.pre304 to i64
  %.pre308 = tail call i32 @llvm.smax.i32(i32 range(i32 0, -1) %i.b, i32 1)
  %.pre309 = zext nneg i32 %.pre308 to i64
  %.pre310 = sext i32 %.pre302 to i64
  br label %.preheader282

.lr.ph:                                           ; preds = %bb.b
  %i.am = add nsw i32 %14, -1
  %i.an = mul i32 %i.b, 3
  %i.ao = sext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ao ; 10 uses
  %i.aq = sext i32 %4 to i64                      ; 3 uses
  %i.ar = shl nsw i64 %i.ao, 1
  %i.as = shl i32 %i.b, 1                         ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 9 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 13 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %invariant.gep13.i = getelementptr [2 x i8], ptr %i.y, i64 %i.at ; 5 uses
  %invariant.gep.i225 = getelementptr [2 x i8], ptr %i.ap, i64 %i.k ; 5 uses
  %invariant.gep13.i226 = getelementptr [2 x i8], ptr %i.ap, i64 %i.at ; 5 uses
  %i.au = mul nsw i32 %i.e, 3                     ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 4 uses
  %i.aw = shl nsw i64 %i.av, 1
  %i.ax = shl nsw i32 %4, 1
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = mul nsw i64 %i.k, 14                    ; 2 uses
  %i.ba = shl nsw i64 %i.ao, 1                    ; 2 uses
  %i.bb = sub nsw i64 %i.az, %i.ba
  %i.bc = shl nsw i64 %i.at, 1
  %i.bd = mul nsw i64 %i.k, 12                    ; 3 uses
  %i.be = sub nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.ao, %i.at
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = sub nsw i64 %i.az, %i.bg
  %i.bi = shl nsw i64 %i.at, 1
  %i.bj = mul nsw i64 %i.k, 10
  %i.bk = shl nsw i64 %i.at, 1
  %i.bl = sub nsw i64 %i.bd, %i.bk
  %min.iters.check335 = icmp slt i32 %i.b, 8
  %invariant.op = add i64 %i.bd, -1
  %invariant.op380 = add i64 %i.bj, -1
  %invariant.op382 = add i64 %i.bl, -1
  %n.vec337 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n345 = icmp eq i64 %n.vec337, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bm = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp slt i32 %i.b, 8
  %invariant.op384 = add i64 %i.bb, -1
  %invariant.op386 = add i64 %i.be, -1
  %invariant.op388 = add i64 %i.bh, -1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter378 = and i64 %wide.trip.count.i, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  %i.bn = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

.preheader282:                                    ; preds = %UpdateW.exit249, %..preheader282_crit_edge
  %.pre-phi311 = phi i64 [ %.pre310, %..preheader282_crit_edge ], [ %i.av, %UpdateW.exit249 ] ; 4 uses
  %wide.trip.count.i251.pre-phi = phi i64 [ %.pre309, %..preheader282_crit_edge ], [ %wide.trip.count.i, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi307 = phi i64 [ %.pre306, %..preheader282_crit_edge ], [ %i.at, %UpdateW.exit249 ] ; 4 uses
  %.pre-phi305 = phi i32 [ %.pre304, %..preheader282_crit_edge ], [ %i.as, %UpdateW.exit249 ]
  %.pre-phi303 = phi i32 [ %.pre302, %..preheader282_crit_edge ], [ %i.au, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi301 = phi i64 [ %.pre300, %..preheader282_crit_edge ], [ %i.ao, %UpdateW.exit249 ]
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.y, i64 %.pre-phi301 ; 7 uses
  %i.bp = add nsw i32 %i.d, -2
  %i.bq = add nsw i32 %i.b, -1                    ; 3 uses
  %i.br = ashr i32 %i.bq, 1                       ; 6 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.j           ; 13 uses
  %i.bs = xor i32 %notmask.i.i.i, -1              ; 12 uses
  %i.bt = add nsw i32 %i.bq, %i.b
  %i.bu = sext i32 %i.bt to i64
  %i.bv = sext i32 %i.bq to i64                   ; 7 uses
  %i.bw = add nsw i32 %i.e, -1
  %i.bx = sext i32 %i.bw to i64                   ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bv
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bv
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %i.cd = getelementptr [2 x i8], ptr %i.bo, i64 %i.k ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
end_hunk_0
