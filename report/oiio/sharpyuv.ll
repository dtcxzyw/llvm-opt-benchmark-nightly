inline.NumInlined: 53
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.SharpYuvOptions = type { ptr, i32 }

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
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not2 = icmp eq ptr %0, @SharpYuvGetCPUInfo
  br i1 %.not2, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.b = phi ptr [ %.pre, %._crit_edge ], [ %0, %bb.c ]
  %i.c = load volatile ptr, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SharpYuvInitDsp() #10
  tail call void @SharpYuvInitGammaTables() #10
  %i.e = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  store volatile ptr %i.e, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10 ; 0 uses
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
define range(i32 0, 2) i32 @SharpYuvConvert(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly captures(address_is_null) %6, i32 noundef %7, ptr noundef writeonly captures(address_is_null) %8, i32 noundef %9, ptr noundef writeonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15) local_unnamed_addr #1 {
bb.a:
  %16 = alloca %struct.SharpYuvOptions, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  store ptr %15, ptr %16, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 13, ptr %i.a, align 8, !tbaa !11
  %i.b = call i32 @SharpYuvConvertWithOptions(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SharpYuvConvertWithOptions(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly captures(address_is_null) %6, i32 noundef %7, ptr noundef writeonly captures(address_is_null) %8, i32 noundef %9, ptr noundef writeonly captures(address_is_null) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef readonly captures(none) %15) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %15, align 8, !tbaa !9     ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 18 uses
  %notmask = shl nsw i32 -1, %5
  %i.d = xor i32 %notmask, -1                     ; 9 uses
  %i.e = add nsw i32 %5, -1
  %i.f = shl nuw i32 1, %i.e                      ; 9 uses
  %notmask103 = shl nsw i32 -1, %12
  %i.g = xor i32 %notmask103, -1                  ; 14 uses
  %16 = icmp slt i32 %5, 13
  %17 = sub nsw i32 14, %5
  %i.h = select i1 %16, i32 2, i32 %17            ; 8 uses
  %i.i = add i32 %13, -2147483647
  %i.j = icmp ult i32 %i.i, -2147483646
  %i.k = add i32 %14, -2147483647
  %i.l = icmp ult i32 %i.k, -2147483646
  %i.m = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.n = insertelement <4 x ptr> %i.m, ptr %1, i64 1
  %i.o = insertelement <4 x ptr> %i.n, ptr %2, i64 2
  %i.p = insertelement <4 x ptr> %i.o, ptr %6, i64 3
  %i.q = icmp eq <4 x ptr> %i.p, splat (ptr null)
  %i.r = icmp eq ptr %8, null
  %i.s = icmp eq ptr %10, null
  %i.t = bitcast <4 x i1> %i.q to i4
  %i.u = icmp ne i4 %i.t, 0
  %op.rdx261 = or i1 %i.u, %i.r
  %op.rdx262.a = or i1 %i.s, %i.j
  %op.rdx263.a = or i1 %op.rdx261, %op.rdx262.a
  %op.rdx264 = or i1 %op.rdx263.a, %i.l
  br i1 %op.rdx264, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %5, label %bb.v [
    i32 16, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  switch i32 %12, label %bb.v [
    i32 12, label %bb.d
    i32 10, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.v = icmp samesign ugt i32 %5, 8
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = or i32 %4, %3
  %i.x = and i32 %i.w, 1
  %or.cond = icmp eq i32 %i.x, 0
  br i1 %or.cond, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = icmp samesign ugt i32 %12, 8
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = or i32 %9, %7
  %i.aa = or i32 %i.z, %11
  %i.ab = and i32 %i.aa, 1
  %or.cond109 = icmp eq i32 %i.ab, 0
  br i1 %or.cond109, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %SharpYuvInit.exit

bb.i:                                             ; preds = %bb.h
  %.pre.i = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  %i.ad = load volatile ptr, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  %i.ae = icmp eq ptr %i.ad, %.pre.i
  br i1 %i.ae, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @SharpYuvInitDsp() #10
  tail call void @SharpYuvInitGammaTables() #10
  %i.af = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  store volatile ptr %i.af, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10 ; 0 uses
  br label %SharpYuvInit.exit

SharpYuvInit.exit:                                ; preds = %bb.h, %.sink.split.i
  %i.ah = icmp eq i32 %5, %12
  br i1 %i.ah, label %bb.k, label %.preheader

.preheader:                                       ; preds = %SharpYuvInit.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !3
  %i.al = mul nsw i32 %i.ak, %i.g
  %i.am = add nsw i32 %i.al, %i.f
  %i.an = sdiv i32 %i.am, %i.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ay = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.bc = mul nsw i32 %i.bb, %i.g
  %i.bd = mul nsw i32 %i.ba, %i.g
  %i.be = mul nsw i32 %i.ax, %i.g
  %i.bf = mul nsw i32 %i.aw, %i.g
  %i.bg = mul nsw i32 %i.at, %i.g
  %i.bh = mul nsw i32 %i.az, %i.g
  %i.bi = mul nsw i32 %i.ay, %i.g
  %i.bj = mul nsw i32 %i.av, %i.g
  %i.bk = add nsw i32 %i.bc, %i.f
  %i.bl = add nsw i32 %i.bd, %i.f
  %i.bm = add nsw i32 %i.be, %i.f
  %i.bn = add nsw i32 %i.bf, %i.f
  %i.bo = add nsw i32 %i.bg, %i.f
  %i.bp = add nsw i32 %i.bh, %i.f
  %i.bq = add nsw i32 %i.bi, %i.f
  %i.br = add nsw i32 %i.bj, %i.f
  %i.bs = sdiv i32 %i.bm, %i.d
  %i.bt = sdiv i32 %i.bp, %i.d
  %i.bu = sdiv i32 %i.bk, %i.d
  %i.bv = sdiv i32 %i.bn, %i.d
  %i.bw = sdiv i32 %i.bq, %i.d
  %i.bx = sdiv i32 %i.bl, %i.d
  %i.by = sdiv i32 %i.bo, %i.d
  %i.bz = sdiv i32 %i.br, %i.d
  %i.ca = insertelement <8 x i32> poison, i32 %i.bu, i64 0
  %i.cb = insertelement <8 x i32> %i.ca, i32 %i.bx, i64 1
  %i.cc = insertelement <8 x i32> %i.cb, i32 %i.bs, i64 2
  %i.cd = insertelement <8 x i32> %i.cc, i32 %i.bv, i64 3
  %i.ce = insertelement <8 x i32> %i.cd, i32 %i.by, i64 4
  %i.cf = insertelement <8 x i32> %i.ce, i32 %i.bt, i64 5
  %i.cg = insertelement <8 x i32> %i.cf, i32 %i.bw, i64 6
  %i.ch = insertelement <8 x i32> %i.cg, i32 %i.bz, i64 7
  br label %.loopexit

bb.k:                                             ; preds = %SharpYuvInit.exit
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ci = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.cj = load <2 x i32>, ptr %.sroa.15.0..sroa_idx, align 4
  %i.ck = load <2 x i32>, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4
  %i.cl = shufflevector <2 x i32> %i.ci, <2 x i32> %i.cj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison>
  %i.cn = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 13, i32 14, i32 poison>
  %i.co = insertelement <8 x i32> %i.cn, i32 %.sroa.21.0.copyload, i64 4
  %i.cp = insertelement <8 x i32> %i.co, i32 %.sroa.33.0.copyload, i64 7
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.k
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.k ], [ %i.an, %.preheader ] ; 3 uses
  %i.cq = phi <8 x i32> [ %i.cp, %bb.k ], [ %i.ch, %.preheader ] ; 30 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3  ; 2 uses
  %i.ct = shl i32 %i.cs, %i.h
  %i.cu = sub nsw i32 0, %i.h                     ; 3 uses
  %i.cv = ashr i32 %i.cs, %i.cu
  %18 = icmp slt i32 %i.h, 0                      ; 3 uses
  %i.cw = select i1 %18, i32 %i.cv, i32 %i.ct     ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.cz = shl i32 %i.cy, %i.h
  %i.da = ashr i32 %i.cy, %i.cu
  %i.db = select i1 %18, i32 %i.da, i32 %i.cz     ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3  ; 2 uses
  %i.de = shl i32 %i.dd, %i.h
  %i.df = ashr i32 %i.dd, %i.cu
  %i.dg = select i1 %18, i32 %i.df, i32 %i.de     ; 3 uses
  %i.dh = add nuw nsw i32 %13, 1                  ; 2 uses
  %i.di = and i32 %i.dh, 2147483646               ; 14 uses
  %i.dj = add nuw nsw i32 %14, 1                  ; 3 uses
  %i.dk = and i32 %i.dj, 2147483646               ; 4 uses
  %i.dl = lshr i32 %i.dh, 1                       ; 11 uses
  %i.dm = lshr i32 %i.dj, 1
  %i.dn = add nsw i32 %i.h, %5                    ; 24 uses
  %i.do = mul nuw nsw i32 %i.di, 3
  %i.dp = zext nneg i32 %i.do to i64              ; 4 uses
  %i.dq = shl nuw nsw i64 %i.dp, 1
  %i.dr = shl nuw nsw i64 %i.dp, 2
  %i.ds = tail call noalias noundef ptr @malloc(i64 noundef %i.dr) #11 ; 19 uses
  %i.dt = zext nneg i32 %i.di to i64              ; 16 uses
  %i.du = zext nneg i32 %i.dk to i64
  %i.dv = shl nuw nsw i64 %i.dt, 1
  %i.dw = mul nuw nsw i64 %i.dv, %i.du            ; 2 uses
  %i.dx = tail call noalias noundef ptr @malloc(i64 noundef %i.dw) #11 ; 6 uses
  %i.dy = tail call noalias noundef ptr @malloc(i64 noundef %i.dw) #11 ; 4 uses
  %i.dz = shl nuw nsw i64 %i.dt, 2
  %i.ea = tail call noalias noundef ptr @malloc(i64 noundef %i.dz) #11 ; 5 uses
  %i.eb = mul nuw nsw i32 %i.dl, 3                ; 3 uses
  %i.ec = zext nneg i32 %i.eb to i64              ; 8 uses
  %i.ed = and i32 %i.dj, 2147483646
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, %i.ec            ; 2 uses
  %i.eg = tail call noalias noundef ptr @malloc(i64 noundef %i.ef) #11 ; 10 uses
  %i.eh = tail call noalias noundef ptr @malloc(i64 noundef %i.ef) #11 ; 4 uses
  %i.ei = shl nuw nsw i64 %i.ec, 1                ; 2 uses
  %i.ej = tail call noalias noundef ptr @malloc(i64 noundef %i.ei) #11 ; 4 uses
  %i.ek = uitofp nneg i32 %i.di to double
  %i.el = fmul nnan double %i.ek, 3.000000e+00
  %i.em = uitofp nneg i32 %i.dk to double
  %i.en = fmul double %i.el, %i.em
  %i.eo = fptoui double %i.en to i64
  %i.ep = insertelement <4 x ptr> poison, ptr %i.dx, i64 0
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %i.eg, i64 1
  %i.er = insertelement <4 x ptr> %i.eq, ptr %i.dy, i64 2
  %i.es = insertelement <4 x ptr> %i.er, ptr %i.eh, i64 3
  %i.et = icmp eq <4 x ptr> %i.es, splat (ptr null)
  %i.eu = icmp eq ptr %i.ea, null
  %i.ev = icmp eq ptr %i.ej, null
  %i.ew = icmp eq ptr %i.ds, null
  %i.ex = bitcast <4 x i1> %i.et to i4
  %i.ey = icmp ne i4 %i.ex, 0
  %op.rdx = or i1 %i.ey, %i.eu
  %op.rdx259 = or i1 %i.ev, %i.ew
  %op.rdx260 = or i1 %op.rdx, %op.rdx259
  br i1 %op.rdx260, label %DoSharpArgbToYuv.exit, label %.preheader288.i

.preheader288.i:                                  ; preds = %.loopexit
  %i.ez = icmp sgt i32 %14, 0
  br i1 %i.ez, label %.lr.ph.i, label %.preheader288..preheader287_crit_edge.i

.preheader288..preheader287_crit_edge.i:          ; preds = %.preheader288.i
  %.pre.i110 = shl nuw nsw i32 %i.di, 1           ; 2 uses
  %.pre306.i = zext nneg i32 %.pre.i110 to i64
  %.pre308.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, -1) %i.di, i32 1)
  %.pre309.i = zext nneg i32 %.pre308.i to i64
  br label %.preheader287.i

.lr.ph.i:                                         ; preds = %.preheader288.i
  %i.fa = add nsw i32 %14, -1
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dp ; 8 uses
  %i.fc = sext i32 %4 to i64                      ; 3 uses
  %i.fd = shl nuw nsw i32 %i.di, 1                ; 2 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 5 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.di, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 9 uses
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.ds, i64 %i.dt ; 3 uses
  %invariant.gep13.i.i = getelementptr [2 x i8], ptr %i.ds, i64 %i.fe ; 3 uses
  %invariant.gep.i231.i = getelementptr [2 x i8], ptr %i.fb, i64 %i.dt ; 3 uses
  %invariant.gep13.i232.i = getelementptr [2 x i8], ptr %i.fb, i64 %i.fe ; 3 uses
  %i.ff = shl nsw i32 %4, 1
  %i.fg = sext i32 %i.ff to i64                   ; 3 uses
  %min.iters.check140 = icmp samesign ult i32 %i.di, 8
  %n.vec143 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n151 = icmp eq i64 %n.vec143, %wide.trip.count.i.i
  %min.iters.check = icmp samesign ult i32 %i.di, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %bb.l

.preheader287.i:                                  ; preds = %UpdateW.exit255.i, %.preheader288..preheader287_crit_edge.i
  %wide.trip.count.i257.pre-phi.i = phi i64 [ %.pre309.i, %.preheader288..preheader287_crit_edge.i ], [ %wide.trip.count.i.i, %UpdateW.exit255.i ] ; 2 uses
  %.pre-phi307.i = phi i64 [ %.pre306.i, %.preheader288..preheader287_crit_edge.i ], [ %i.fe, %UpdateW.exit255.i ] ; 4 uses
  %.pre-phi.i = phi i32 [ %.pre.i110, %.preheader288..preheader287_crit_edge.i ], [ %i.fd, %UpdateW.exit255.i ]
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dp ; 7 uses
  %i.fi = add nsw i32 %i.dk, -2
  %i.fj = add nsw i32 %i.di, -1                   ; 3 uses
  %i.fk = ashr i32 %i.fj, 1                       ; 6 uses
  %notmask.i.i.i.i = shl nsw i32 -1, %i.dn        ; 13 uses
  %i.fl = xor i32 %notmask.i.i.i.i, -1            ; 12 uses
  %i.fm = zext nneg i32 %i.dl to i64              ; 8 uses
  %i.fn = add nsw i32 %i.fj, %i.di
  %i.fo = sext i32 %i.fn to i64
  %i.fp = sext i32 %i.fj to i64                   ; 7 uses
  %i.fq = add nsw i32 %i.dl, -1
  %i.fr = sext i32 %i.fq to i64                   ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.fp
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %i.fp
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dt ; 5 uses
  %i.fx = getelementptr [2 x i8], ptr %i.fh, i64 %i.dt ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.fp
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.fp
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.dt ; 3 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.dt ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.fp
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.fp
  %invariant.gep27.i259.i = getelementptr [2 x i8], ptr %i.ds, i64 %.pre-phi307.i
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.dt
  %invariant.gep27.i269.i = getelementptr [2 x i8], ptr %i.fh, i64 %.pre-phi307.i
  br label %.preheader.i

bb.l:                                             ; preds = %UpdateW.exit255.i, %.lr.ph.i
  %.0204296.i = phi ptr [ %0, %.lr.ph.i ], [ %i.kt, %UpdateW.exit255.i ] ; 3 uses
  %.0205295.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ku, %UpdateW.exit255.i ] ; 3 uses
  %.0206294.i = phi ptr [ %2, %.lr.ph.i ], [ %i.kv, %UpdateW.exit255.i ] ; 3 uses
  %.0211293.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kw, %UpdateW.exit255.i ] ; 2 uses
  %.0215292.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.kp, %UpdateW.exit255.i ] ; 4 uses
  %.0217291.i = phi ptr [ %i.eh, %.lr.ph.i ], [ %i.ks, %UpdateW.exit255.i ] ; 3 uses
  %.0219290.i = phi ptr [ %i.eg, %.lr.ph.i ], [ %i.kq, %UpdateW.exit255.i ] ; 2 uses
  %.0221289.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %i.kr, %UpdateW.exit255.i ] ; 3 uses
  %i.gj = icmp eq i32 %.0211293.i, %i.fa
  tail call fastcc void @ImportOneRow(ptr noundef %.0204296.i, ptr noundef %.0205295.i, ptr noundef %.0206294.i, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef nonnull %i.ds)
  br i1 %i.gj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gk = getelementptr inbounds i8, ptr %.0204296.i, i64 %i.fc
  %i.gl = getelementptr inbounds i8, ptr %.0205295.i, i64 %i.fc
  %i.gm = getelementptr inbounds i8, ptr %.0206294.i, i64 %i.fc
  tail call fastcc void @ImportOneRow(ptr noundef %i.gk, ptr noundef %i.gl, ptr noundef %i.gm, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef nonnull %i.fb)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fb, ptr nonnull align 2 %i.ds, i64 %i.dq, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.body144

vector.body144:                                   ; preds = %bb.o, %vector.body144
  %index145 = phi i64 [ %index.next149, %vector.body144 ], [ 0, %bb.o ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index145
  %wide.load146 = load <8 x i16>, ptr %i.gn, align 2, !tbaa !12
  %i.go = zext <8 x i16> %wide.load146 to <8 x i32>
  %i.gp = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index145
  %wide.load147 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !12
  %i.gq = zext <8 x i16> %wide.load147 to <8 x i32>
  %i.gr = getelementptr [2 x i8], ptr %invariant.gep13.i.i, i64 %index145
  %wide.load148 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !12
  %i.gs = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.gt = mul nuw nsw <8 x i32> %i.go, splat (i32 13933)
  %i.gu = mul nuw <8 x i32> %i.gq, splat (i32 46871)
  %i.gv = mul nuw nsw <8 x i32> %i.gs, splat (i32 4732)
  %i.gw = add nuw nsw <8 x i32> %i.gt, splat (i32 32768)
  %i.gx = add nuw <8 x i32> %i.gw, %i.gu
  %i.gy = add nuw <8 x i32> %i.gx, %i.gv
  %i.gz = lshr <8 x i32> %i.gy, splat (i32 16)
  %i.ha = trunc nuw <8 x i32> %i.gz to <8 x i16>
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0215292.i, i64 %index145
  store <8 x i16> %i.ha, ptr %i.hb, align 2, !tbaa !12
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.hc, label %middle.block150, label %vector.body144, !llvm.loop !14

middle.block150:                                  ; preds = %vector.body144
  br i1 %cmp.n151, label %StoreGray.exit.i, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %bb.o, %middle.block150
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.o ], [ %n.vec143, %middle.block150 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph139 ], [ %indvars.iv.i.i.ph, %scalar.ph139.preheader ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv.i.i
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !12
  %i.hf = zext i16 %i.he to i32
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.hg = load i16, ptr %gep.i.i, align 2, !tbaa !12
  %i.hh = zext i16 %i.hg to i32
  %gep14.i.i = getelementptr [2 x i8], ptr %invariant.gep13.i.i, i64 %indvars.iv.i.i
  %i.hi = load i16, ptr %gep14.i.i, align 2, !tbaa !12
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.hf, 13933
  %i.hl = mul nuw i32 %i.hh, 46871
  %i.hm = mul nuw nsw i32 %i.hj, 4732
  %i.hn = add nuw nsw i32 %i.hk, 32768
  %i.ho = add nuw i32 %i.hn, %i.hl
  %i.hp = add nuw i32 %i.ho, %i.hm
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = trunc nuw i32 %i.hq to i16
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.0215292.i, i64 %indvars.iv.i.i
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@SharpYuvConvertWithOptions:bb.a
  %i.adi = add i32 %i.adh, %i.adf
  %i.adj = add i32 %i.adi, %i.dg
  %i.adk = ashr i32 %i.adj, %i.uq                 ; 2 uses
  %i.adl = trunc i32 %i.adc to i16                ; 2 uses
  %i.adm = icmp ugt i16 %i.adl, 255
  %i.adn = trunc i32 %i.adc to i8
  %i.ado = icmp sgt i16 %i.adl, -1
  %i.adp = sext i1 %i.ado to i8
  %i.adq = select i1 %i.adm, i8 %i.adp, i8 %i.adn
  %i.adr = getelementptr inbounds nuw i8, ptr %.093.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.adq, ptr %i.adr, align 1, !tbaa !27
  %i.ads = trunc i32 %i.adk to i16                ; 2 uses
  %i.adt = icmp ugt i16 %i.ads, 255
  %i.adu = trunc i32 %i.adk to i8
  %i.adv = icmp sgt i16 %i.ads, -1
  %i.adw = sext i1 %i.adv to i8
  %i.adx = select i1 %i.adt, i8 %i.adw, i8 %i.adu
  %i.ady = getelementptr inbounds nuw i8, ptr %.094.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.adx, ptr %i.ady, align 1, !tbaa !27
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i, label %.split117.us.us.i.i, label %scalar.ph225, !llvm.loop !38

.split117.us.us.i.i:                              ; preds = %scalar.ph225, %middle.block256
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %.1.us.i.i, i64 %i.ec
  %i.aea = getelementptr inbounds i8, ptr %.093.us.i.i, i64 %i.zu
  %i.aeb = getelementptr inbounds i8, ptr %.094.us.i.i, i64 %i.zv
  %i.aec = add nuw nsw i32 %.198.us.i.i, 1        ; 2 uses
  %exitcond149.not.i.i = icmp eq i32 %i.aec, %smax148.i.i
  br i1 %exitcond149.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.us.us.i.i, !llvm.loop !39

.split115.i.i:                                    ; preds = %.split117.i.i, %.split115.preheader.i.i
  %.198.i.i = phi i32 [ %i.agw, %.split117.i.i ], [ 0, %.split115.preheader.i.i ]
  %.094.i.i = phi ptr [ %i.agv, %.split117.i.i ], [ %10, %.split115.preheader.i.i ] ; 3 uses
  %.093.i.i = phi ptr [ %i.agu, %.split117.i.i ], [ %8, %.split115.preheader.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.agt, %.split117.i.i ], [ %i.eg, %.split115.preheader.i.i ] ; 5 uses
  %invariant.gep.i280.i = getelementptr [2 x i8], ptr %.1.i.i, i64 %i.fm ; 2 uses
  %invariant.gep167.i.i = getelementptr [2 x i8], ptr %.1.i.i, i64 %i.dt ; 2 uses
  %brmerge267 = select i1 %min.iters.check184, i1 true, i1 %i.aaw
  br i1 %brmerge267, label %scalar.ph183.preheader, label %vector.body208

vector.body208:                                   ; preds = %.split115.i.i, %vector.body208
  %index209 = phi i64 [ %index.next213, %vector.body208 ], [ 0, %.split115.i.i ] ; 6 uses
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %.1.i.i, i64 %index209
  %wide.load210 = load <8 x i16>, ptr %i.aed, align 2, !tbaa !12
  %i.aee = sext <8 x i16> %wide.load210 to <8 x i32> ; 2 uses
  %i.aef = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %index209
  %wide.load211 = load <8 x i16>, ptr %i.aef, align 2, !tbaa !12
  %i.aeg = sext <8 x i16> %wide.load211 to <8 x i32> ; 2 uses
  %i.aeh = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %index209
  %wide.load212 = load <8 x i16>, ptr %i.aeh, align 2, !tbaa !12
  %i.aei = sext <8 x i16> %wide.load212 to <8 x i32> ; 2 uses
  %i.aej = mul nsw <8 x i32> %broadcast.splat189, %i.aee
  %i.aek = mul nsw <8 x i32> %broadcast.splat191, %i.aeg
  %i.ael = mul nsw <8 x i32> %broadcast.splat193, %i.aei
  %i.aem = add <8 x i32> %broadcast.splat195, %i.aej
  %i.aen = add <8 x i32> %i.aem, %i.aek
  %i.aeo = add <8 x i32> %i.aen, %i.ael
  %i.aep = ashr <8 x i32> %i.aeo, %broadcast.splat197 ; 2 uses
  %i.aeq = mul nsw <8 x i32> %broadcast.splat199, %i.aee
  %i.aer = mul nsw <8 x i32> %broadcast.splat201, %i.aeg
  %i.aes = mul nsw <8 x i32> %broadcast.splat203, %i.aei
  %i.aet = add <8 x i32> %broadcast.splat205, %i.aeq
  %i.aeu = add <8 x i32> %i.aet, %i.aer
  %i.aev = add <8 x i32> %i.aeu, %i.aes
  %i.aew = ashr <8 x i32> %i.aev, %broadcast.splat197 ; 2 uses
  %i.aex = and <8 x i32> %i.aep, splat (i32 32768)
  %i.aey = icmp eq <8 x i32> %i.aex, zeroinitializer
  %i.aez = and <8 x i32> %i.aep, splat (i32 65535)
  %i.afa = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat207, <8 x i32> %i.aez)
  %i.afb = trunc nuw <8 x i32> %i.afa to <8 x i16>
  %i.afc = select <8 x i1> %i.aey, <8 x i16> %i.afb, <8 x i16> zeroinitializer
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %index209
  store <8 x i16> %i.afc, ptr %i.afd, align 2, !tbaa !12, !alias.scope !40, !noalias !43
  %i.afe = and <8 x i32> %i.aew, splat (i32 32768)
  %i.aff = icmp eq <8 x i32> %i.afe, zeroinitializer
  %i.afg = and <8 x i32> %i.aew, splat (i32 65535)
  %i.afh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat207, <8 x i32> %i.afg)
  %i.afi = trunc nuw <8 x i32> %i.afh to <8 x i16>
  %i.afj = select <8 x i1> %i.aff, <8 x i16> %i.afi, <8 x i16> zeroinitializer
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %index209
  store <8 x i16> %i.afj, ptr %i.afk, align 2, !tbaa !12, !alias.scope !43
  %index.next213 = add nuw i64 %index209, 8       ; 2 uses
  %i.afl = icmp eq i64 %index.next213, %n.vec187
  br i1 %i.afl, label %middle.block214, label %vector.body208, !llvm.loop !45

middle.block214:                                  ; preds = %vector.body208
  br i1 %cmp.n215, label %.split117.i.i, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.split115.i.i, %middle.block214
  %indvars.iv134.i.i.ph = phi i64 [ %n.vec187, %middle.block214 ], [ 0, %.split115.i.i ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv134.i.i = phi i64 [ %indvars.iv.next135.i.i, %scalar.ph183 ], [ %indvars.iv134.i.i.ph, %scalar.ph183.preheader ] ; 6 uses
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %.1.i.i, i64 %indvars.iv134.i.i
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !12
  %i.afo = sext i16 %i.afn to i32                 ; 2 uses
  %gep.i281.i = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %indvars.iv134.i.i
  %i.afp = load i16, ptr %gep.i281.i, align 2, !tbaa !12
  %i.afq = sext i16 %i.afp to i32                 ; 2 uses
  %gep168.i.i = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv134.i.i
  %i.afr = load i16, ptr %gep168.i.i, align 2, !tbaa !12
  %i.afs = sext i16 %i.afr to i32                 ; 2 uses
  %i.aft = mul nsw i32 %i.aax, %i.afo
  %i.afu = mul nsw i32 %i.aay, %i.afq
  %i.afv = mul nsw i32 %i.aaz, %i.afs
  %i.afw = add i32 %i.aal, %i.aft
  %i.afx = add i32 %i.afw, %i.afu
  %i.afy = add i32 %i.afx, %i.afv
  %i.afz = ashr i32 %i.afy, %i.uq                 ; 2 uses
  %i.aga = mul nsw i32 %i.aba, %i.afo
  %i.agb = mul nsw i32 %i.abb, %i.afq
  %i.agc = mul nsw i32 %i.abc, %i.afs
  %i.agd = add i32 %i.aam, %i.aga
  %i.age = add i32 %i.agd, %i.agb
  %i.agf = add i32 %i.age, %i.agc
  %i.agg = ashr i32 %i.agf, %i.uq                 ; 2 uses
  %i.agh = and i32 %i.afz, 32768
  %.not104.i.i = icmp eq i32 %i.agh, 0
  %i.agi = and i32 %i.afz, 65535
  %i.agj = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.agi)
  %i.agk = trunc nuw i32 %i.agj to i16
  %i.agl = select i1 %.not104.i.i, i16 %i.agk, i16 0
  %i.agm = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %indvars.iv134.i.i
  store i16 %i.agl, ptr %i.agm, align 2, !tbaa !12
  %i.agn = and i32 %i.agg, 32768
  %.not105.i.i = icmp eq i32 %i.agn, 0
  %i.ago = and i32 %i.agg, 65535
  %i.agp = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.ago)
  %i.agq = trunc nuw i32 %i.agp to i16
  %i.agr = select i1 %.not105.i.i, i16 %i.agq, i16 0
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %indvars.iv134.i.i
  store i16 %i.agr, ptr %i.ags, align 2, !tbaa !12
  %indvars.iv.next135.i.i = add nuw nsw i64 %indvars.iv134.i.i, 1 ; 2 uses
  %exitcond139.not.i.i = icmp eq i64 %indvars.iv.next135.i.i, %wide.trip.count146.i.i
  br i1 %exitcond139.not.i.i, label %.split117.i.i, label %scalar.ph183, !llvm.loop !46

.split117.i.i:                                    ; preds = %scalar.ph183, %middle.block214
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %.1.i.i, i64 %i.ec
  %i.agu = getelementptr inbounds i8, ptr %.093.i.i, i64 %i.zu
  %i.agv = getelementptr inbounds i8, ptr %.094.i.i, i64 %i.zv
  %i.agw = add nuw nsw i32 %.198.i.i, 1           ; 2 uses
  %exitcond141.not.i.i = icmp eq i32 %i.agw, %smax148.i.i
  br i1 %exitcond141.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.i.i, !llvm.loop !39

DoSharpArgbToYuv.exit:                            ; preds = %.split117.i.i, %.split117.us.us.i.i, %.loopexit
  %.0214.i = phi i32 [ 0, %.loopexit ], [ 1, %.split117.us.us.i.i ], [ 1, %.split117.i.i ]
  tail call void @free(ptr noundef %i.dx) #10
  tail call void @free(ptr noundef %i.eg) #10
  tail call void @free(ptr noundef %i.dy) #10
  tail call void @free(ptr noundef %i.eh) #10
  tail call void @free(ptr noundef %i.ea) #10
  tail call void @free(ptr noundef %i.ej) #10
  tail call void @free(ptr noundef %i.ds) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %DoSharpArgbToYuv.exit
  %.0102 = phi i32 [ %.0214.i, %DoSharpArgbToYuv.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.0102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @SharpYuvOptionsInitInternal(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond.not22 = and i1 %i.b, %i.a
  %i.c = and i32 %2, -65536
  %or.cond7.not = icmp eq i32 %i.c, 262144
  %or.cond20 = and i1 %or.cond.not22, %or.cond7.not
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.d, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 14 uses
  %i.e = add i32 %5, 1                            ; 2 uses
  %i.f = and i32 %i.e, -2                         ; 4 uses
  %i.g = icmp eq i32 %4, 8
  %i.h = icmp slt i32 %4, 13
  %i.i = sub nsw i32 14, %4
  %i.j = select i1 %i.h, i32 2, i32 %i.i          ; 6 uses
  %i.k = sub nsw i32 0, %i.j                      ; 4 uses
  %i.l = shl i32 %i.f, 1                          ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = sext i32 %i.f to i64                     ; 2 uses
  %i.o = sext i32 %i.l to i64                     ; 2 uses
  %smax82.a = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count83.a = zext nneg i32 %smax82.a to i64 ; 9 uses
  %invariant.gep93 = getelementptr [2 x i8], ptr %6, i64 %i.n ; 7 uses
  %invariant.gep95.a = getelementptr [2 x i8], ptr %6, i64 %i.o ; 7 uses
  %min.iters.check217 = icmp sgt i32 %5, 55
  %ident.check165.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check217, %ident.check165.not
  br i1 %or.cond, label %vector.memcheck166, label %.split.us.preheader233

vector.memcheck166:                               ; preds = %.split.us.preheader
  %i.p = shl nuw nsw i64 %wide.trip.count83.a, 1
  %scevgep = getelementptr i8, ptr %6, i64 %i.p   ; 5 uses
  %i.q = add nsw i64 %i.n, %wide.trip.count83.a
  %i.r = shl nsw i64 %i.q, 1
  %scevgep167 = getelementptr i8, ptr %6, i64 %i.r ; 5 uses
  %i.s = add nsw i64 %i.o, %wide.trip.count83.a
  %i.t = shl nsw i64 %i.s, 1
  %scevgep168 = getelementptr i8, ptr %6, i64 %i.t ; 5 uses
  %scevgep169 = getelementptr i8, ptr %0, i64 %wide.trip.count83.a ; 3 uses
  %scevgep170 = getelementptr i8, ptr %1, i64 %wide.trip.count83.a ; 3 uses
  %scevgep171 = getelementptr i8, ptr %2, i64 %wide.trip.count83.a ; 3 uses
  %bound0 = icmp ult ptr %6, %scevgep167
  %bound1 = icmp ult ptr %invariant.gep93, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0172 = icmp ult ptr %6, %scevgep168
  %bound1173 = icmp ult ptr %invariant.gep95.a, %scevgep
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %found.conflict, %found.conflict174
  %bound0176 = icmp ult ptr %6, %scevgep169
  %bound1177 = icmp ult ptr %0, %scevgep
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %6, %scevgep170
  %bound1181 = icmp ult ptr %1, %scevgep
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %6, %scevgep171
  %bound1185 = icmp ult ptr %2, %scevgep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %invariant.gep93, %scevgep168
  %bound1189 = icmp ult ptr %invariant.gep95.a, %scevgep167
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  %bound0192 = icmp ult ptr %invariant.gep93, %scevgep169
  %bound1193 = icmp ult ptr %0, %scevgep167
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  %bound0196 = icmp ult ptr %invariant.gep93, %scevgep170
  %bound1197 = icmp ult ptr %1, %scevgep167
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %invariant.gep93, %scevgep171
  %bound1201 = icmp ult ptr %2, %scevgep167
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %invariant.gep95.a, %scevgep169
  %bound1205 = icmp ult ptr %0, %scevgep168
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %invariant.gep95.a, %scevgep170
  %bound1209 = icmp ult ptr %1, %scevgep168
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %invariant.gep95.a, %scevgep171
  %bound1213 = icmp ult ptr %2, %scevgep168
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  br i1 %conflict.rdx215, label %.split.us.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck166
  %n.vec220 = and i64 %wide.trip.count83.a, 2147483640 ; 3 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body221 ] ; 7 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %index222
  %wide.load223 = load <8 x i8>, ptr %i.u, align 1, !tbaa !27, !alias.scope !47
  %i.v = zext <8 x i8> %wide.load223 to <8 x i16>
  %i.w = shl nuw nsw <8 x i16> %i.v, splat (i16 2)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index222
  store <8 x i16> %i.w, ptr %i.x, align 2, !tbaa !12, !alias.scope !50, !noalias !52
  %i.y = getelementptr inbounds i8, ptr %1, i64 %index222
  %wide.load224 = load <8 x i8>, ptr %i.y, align 1, !tbaa !27, !alias.scope !57
  %i.z = zext <8 x i8> %wide.load224 to <8 x i16>
  %i.aa = shl nuw nsw <8 x i16> %i.z, splat (i16 2)
  %i.ab = getelementptr [2 x i8], ptr %invariant.gep93, i64 %index222
  store <8 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !12, !alias.scope !58, !noalias !59
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %index222
  %wide.load225 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !27, !alias.scope !60
  %i.ad = zext <8 x i8> %wide.load225 to <8 x i16>
  %i.ae = shl nuw nsw <8 x i16> %i.ad, splat (i16 2)
  %i.af = getelementptr [2 x i8], ptr %invariant.gep95.a, i64 %index222
  store <8 x i16> %i.ae, ptr %i.af, align 2, !tbaa !12, !alias.scope !61, !noalias !62
  %index.next226 = add nuw i64 %index222, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next226, %n.vec220
  br i1 %i.ag, label %middle.block227, label %vector.body221, !llvm.loop !63

middle.block227:                                  ; preds = %vector.body221
  %cmp.n228 = icmp eq i64 %n.vec220, %wide.trip.count83.a
  br i1 %cmp.n228, label %.split67.us, label %.split.us.preheader233

.split.us.preheader233:                           ; preds = %vector.memcheck166, %.split.us.preheader, %middle.block227
  %indvars.iv79.ph.a = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.split.us.preheader ], [ %n.vec220, %middle.block227 ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader233, %.split.us
  %indvars.iv79.a = phi i64 [ %indvars.iv.next80.a, %.split.us ], [ %indvars.iv79.ph.a, %.split.us.preheader233 ] ; 5 uses
  %i.ah = mul nsw i64 %indvars.iv79.a, %i.m       ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = zext i8 %i.aj to i16
  %i.al = shl nuw nsw i16 %i.ak, 2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv79.a
  store i16 %i.al, ptr %i.am, align 2, !tbaa !12
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = zext i8 %i.ao to i16
  %i.aq = shl nuw nsw i16 %i.ap, 2
  %gep94.a = getelementptr [2 x i8], ptr %invariant.gep93, i64 %indvars.iv79.a
  store i16 %i.aq, ptr %gep94.a, align 2, !tbaa !12
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw nsw i16 %i.at, 2
  %gep96.a = getelementptr [2 x i8], ptr %invariant.gep95.a, i64 %indvars.iv79.a
  store i16 %i.au, ptr %gep96.a, align 2, !tbaa !12
  %indvars.iv.next80.a = add nuw nsw i64 %indvars.iv79.a, 1 ; 2 uses
  %exitcond84.not.a = icmp eq i64 %indvars.iv.next80.a, %wide.trip.count83.a
  br i1 %exitcond84.not.a, label %.split67.us, label %.split.us, !llvm.loop !64

.split:                                           ; preds = %bb.a
  %i.av = icmp sgt i32 %4, 8
  %i.aw = sdiv i32 %3, 2
  %i.ax = select i1 %i.av, i32 %i.aw, i32 %3      ; 2 uses
  %7 = icmp slt i32 %i.j, 0
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = sext i32 %i.f to i64                    ; 3 uses
  %i.ba = sext i32 %i.l to i64                    ; 3 uses
  %smax76 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count77 = zext nneg i32 %smax76 to i64 ; 6 uses
  %invariant.gep89 = getelementptr [2 x i8], ptr %6, i64 %i.az ; 4 uses
  %invariant.gep91 = getelementptr [2 x i8], ptr %6, i64 %i.ba ; 4 uses
  %min.iters.check149 = icmp sgt i32 %5, 39
  %ident.check123.not = icmp eq i32 %i.ax, 1
  %or.cond232 = and i1 %min.iters.check149, %ident.check123.not ; 2 uses
  br i1 %7, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %or.cond232, label %vector.memcheck, label %.split.split.preheader236

vector.memcheck:                                  ; preds = %.split.split.preheader
  %i.bb = shl nsw i64 %i.az, 1                    ; 4 uses
  %diff.check = icmp ult i64 %i.bb, 16
  %i.bc = shl nsw i64 %i.ba, 1                    ; 4 uses
  %diff.check99 = icmp ult i64 %i.bc, 16
  %conflict.rdx = or i1 %diff.check, %diff.check99
  %i.bd = sub i64 %i.d, %i.c
  %diff.check100 = icmp ult i64 %i.bd, 16
  %conflict.rdx101 = or i1 %conflict.rdx, %diff.check100
  %i.be = sub i64 %i.b, %i.d
  %diff.check102 = icmp ult i64 %i.be, 16
  %conflict.rdx103 = or i1 %conflict.rdx101, %diff.check102
  %i.bf = sub i64 %i.a, %i.d
  %diff.check104 = icmp ult i64 %i.bf, 16
  %conflict.rdx105 = or i1 %conflict.rdx103, %diff.check104
  %i.bg = sub nsw i64 %i.bc, %i.bb
  %diff.check106 = icmp ult i64 %i.bg, 16
  %conflict.rdx107 = or i1 %conflict.rdx105, %diff.check106
  %i.bh = add i64 %i.bb, %i.d                     ; 2 uses
  %i.bi = sub i64 %i.bh, %i.c
  %diff.check108 = icmp ult i64 %i.bi, 16
  %conflict.rdx109 = or i1 %conflict.rdx107, %diff.check108
  %i.bj = sub i64 %i.bh, %i.b
  %diff.check110 = icmp ult i64 %i.bj, 16
  %conflict.rdx111 = or i1 %conflict.rdx109, %diff.check110
  %i.bk = add i64 %i.bb, %i.d
  %i.bl = sub i64 %i.a, %i.bk
  %diff.check112 = icmp ult i64 %i.bl, 16
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check112
  %i.bm = add i64 %i.bc, %i.d                     ; 2 uses
  %i.bn = sub i64 %i.bm, %i.c
  %diff.check114 = icmp ult i64 %i.bn, 16
  %conflict.rdx115 = or i1 %conflict.rdx113, %diff.check114
  %i.bo = sub i64 %i.bm, %i.b
  %diff.check116 = icmp ult i64 %i.bo, 16
  %conflict.rdx117 = or i1 %conflict.rdx115, %diff.check116
  %i.bp = add i64 %i.bc, %i.d
  %i.bq = sub i64 %i.bp, %i.a
  %diff.check118 = icmp ult i64 %i.bq, 16
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118
  br i1 %conflict.rdx119, label %.split.split.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.br, align 2, !tbaa !12
  %i.bs = zext <8 x i16> %wide.load to <8 x i32>
  %8 = shl <8 x i32> %i.bs, %broadcast.splat
  %i.bt = trunc <8 x i32> %8 to <8 x i16>
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !12
  %i.bv = getelementptr inbounds [2 x i8], ptr %1, i64 %index
  %wide.load120 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !12
  %i.bw = zext <8 x i16> %wide.load120 to <8 x i32>
  %9 = shl <8 x i32> %i.bw, %broadcast.splat
  %i.bx = trunc <8 x i32> %9 to <8 x i16>
  %i.by = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index
  store <8 x i16> %i.bx, ptr %i.by, align 2, !tbaa !12
  %i.bz = getelementptr inbounds [2 x i8], ptr %2, i64 %index
  %wide.load121 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !12
  %i.ca = zext <8 x i16> %wide.load121 to <8 x i32>
  %10 = shl <8 x i32> %i.ca, %broadcast.splat
  %i.cb = trunc <8 x i32> %10 to <8 x i16>
  %i.cc = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index
  store <8 x i16> %i.cb, ptr %i.cc, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77
  br i1 %cmp.n, label %.split67.us, label %.split.split.preheader236

.split.split.preheader236:                        ; preds = %vector.memcheck, %.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  br i1 %or.cond232, label %vector.memcheck124, label %.split.split.us.preheader234

vector.memcheck124:                               ; preds = %.split.split.us.preheader
  %i.ce = shl nsw i64 %i.az, 1                    ; 4 uses
  %diff.check125 = icmp ult i64 %i.ce, 16
  %i.cf = shl nsw i64 %i.ba, 1                    ; 4 uses
  %diff.check126 = icmp ult i64 %i.cf, 16
  %conflict.rdx127 = or i1 %diff.check125, %diff.check126
  %i.cg = sub i64 %i.d, %i.c
  %diff.check128 = icmp ult i64 %i.cg, 16
  %conflict.rdx129 = or i1 %conflict.rdx127, %diff.check128
  %i.ch = sub i64 %i.b, %i.d
  %diff.check130 = icmp ult i64 %i.ch, 16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  %i.ci = sub i64 %i.a, %i.d
  %diff.check132 = icmp ult i64 %i.ci, 16
  %conflict.rdx133 = or i1 %conflict.rdx131, %diff.check132
  %i.cj = sub nsw i64 %i.cf, %i.ce
  %diff.check134 = icmp ult i64 %i.cj, 16
  %conflict.rdx135 = or i1 %conflict.rdx133, %diff.check134
  %i.ck = add i64 %i.ce, %i.d                     ; 2 uses
  %i.cl = sub i64 %i.ck, %i.c
  %diff.check136 = icmp ult i64 %i.cl, 16
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136
  %i.cm = sub i64 %i.ck, %i.b
  %diff.check138 = icmp ult i64 %i.cm, 16
  %conflict.rdx139 = or i1 %conflict.rdx137, %diff.check138
  %i.cn = add i64 %i.ce, %i.d
  %i.co = sub i64 %i.a, %i.cn
  %diff.check140 = icmp ult i64 %i.co, 16
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %i.cp = add i64 %i.cf, %i.d                     ; 2 uses
  %i.cq = sub i64 %i.cp, %i.c
  %diff.check142 = icmp ult i64 %i.cq, 16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  %i.cr = sub i64 %i.cp, %i.b
  %diff.check144 = icmp ult i64 %i.cr, 16
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.cs = add i64 %i.cf, %i.d
  %i.ct = sub i64 %i.cs, %i.a
  %diff.check146 = icmp ult i64 %i.ct, 16
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  br i1 %conflict.rdx147, label %.split.split.us.preheader234, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck124
  %n.vec152 = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next160, %vector.body155 ] ; 7 uses
  %i.cu = getelementptr inbounds [2 x i8], ptr %0, i64 %index156
  %wide.load157 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !12
  %i.cv = zext <8 x i16> %wide.load157 to <8 x i32>
  %11 = lshr <8 x i32> %i.cv, %broadcast.splat154
  %i.cw = trunc nuw <8 x i32> %11 to <8 x i16>
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index156
  store <8 x i16> %i.cw, ptr %i.cx, align 2, !tbaa !12
  %i.cy = getelementptr inbounds [2 x i8], ptr %1, i64 %index156
  %wide.load158 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !12
  %i.cz = zext <8 x i16> %wide.load158 to <8 x i32>
  %12 = lshr <8 x i32> %i.cz, %broadcast.splat154
  %i.da = trunc nuw <8 x i32> %12 to <8 x i16>
  %i.db = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index156
  store <8 x i16> %i.da, ptr %i.db, align 2, !tbaa !12
  %i.dc = getelementptr inbounds [2 x i8], ptr %2, i64 %index156
  %wide.load159 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !12
  %i.dd = zext <8 x i16> %wide.load159 to <8 x i32>
  %13 = lshr <8 x i32> %i.dd, %broadcast.splat154
  %i.de = trunc nuw <8 x i32> %13 to <8 x i16>
  %i.df = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index156
  store <8 x i16> %i.de, ptr %i.df, align 2, !tbaa !12
  %index.next160 = add nuw i64 %index156, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next160, %n.vec152
  br i1 %i.dg, label %middle.block161, label %vector.body155, !llvm.loop !66

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %n.vec152, %wide.trip.count77
  br i1 %cmp.n162, label %.split67.us, label %.split.split.us.preheader234

.split.split.us.preheader234:                     ; preds = %vector.memcheck124, %.split.split.us.preheader, %middle.block161
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck124 ], [ 0, %.split.split.us.preheader ], [ %n.vec152, %middle.block161 ]
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader234, %.split.split.us
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.split.split.us ], [ %indvars.iv73.ph, %.split.split.us.preheader234 ] ; 5 uses
  %i.dh = mul nsw i64 %indvars.iv73, %i.ay        ; 3 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !12
  %i.dk = zext i16 %i.dj to i32
  %14 = lshr i32 %i.dk, %i.k
  %i.dl = trunc nuw i32 %14 to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv73
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !12
  %i.dn = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dh
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !12
  %i.dp = zext i16 %i.do to i32
  %15 = lshr i32 %i.dp, %i.k
  %i.dq = trunc nuw i32 %15 to i16
  %gep90 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv73
  store i16 %i.dq, ptr %gep90, align 2, !tbaa !12
  %i.dr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dh
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !12
  %i.dt = zext i16 %i.ds to i32
  %16 = lshr i32 %i.dt, %i.k
  %i.du = trunc nuw i32 %16 to i16
  %gep92 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv73
  store i16 %i.du, ptr %gep92, align 2, !tbaa !12
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count77
  br i1 %exitcond78.not, label %.split67.us, label %.split.split.us, !llvm.loop !67

.split.split:                                     ; preds = %.split.split.preheader236, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.split ], [ %indvars.iv.ph, %.split.split.preheader236 ] ; 5 uses
  %i.dv = mul nsw i64 %indvars.iv, %i.ay          ; 3 uses
  %i.dw = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !12
  %i.dy = zext i16 %i.dx to i32
  %17 = shl i32 %i.dy, %i.j
  %i.dz = trunc i32 %17 to i16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !12
  %i.eb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dv
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !12
  %i.ed = zext i16 %i.ec to i32
  %18 = shl i32 %i.ed, %i.j
  %i.ee = trunc i32 %18 to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv
  store i16 %i.ee, ptr %gep, align 2, !tbaa !12
  %i.ef = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !12
  %i.eh = zext i16 %i.eg to i32
  %19 = shl i32 %i.eh, %i.j
  %i.ei = trunc i32 %19 to i16
  %gep88 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv
  store i16 %i.ei, ptr %gep88, align 2, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  br i1 %exitcond.not, label %.split67.us, label %.split.split, !llvm.loop !68

.split67.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %middle.block, %middle.block161, %middle.block227
  %i.ej = and i32 %5, 1
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split67.us
  %i.ek = sext i32 %5 to i64
  %i.el = getelementptr [2 x i8], ptr %6, i64 %i.ek ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 -2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !12
  store i16 %i.en, ptr %i.el, align 2, !tbaa !12
  %i.eo = add nsw i32 %i.f, %5
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr [2 x i8], ptr %6, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !12
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !12
  %i.et = shl nsw i32 %i.e, 1
  %i.eu = add nsw i32 %i.et, %5
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [2 x i8], ptr %6, i64 %i.ev ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !12
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split67.us
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateChroma(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %6 = icmp slt i32 %4, 13
  %7 = sub nsw i32 14, %4
  %i.a = select i1 %6, i32 2, i32 %7
  %i.b = add nsw i32 %i.a, %4                     ; 15 uses
  %i.c = shl nsw i32 %3, 1                        ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = or disjoint i32 %i.c, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nsw i32 %3, 2                        ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = or disjoint i32 %i.g, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = sext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %i.ce, %bb.b ]
  %.050 = phi ptr [ %2, %bb.a ], [ %i.cb, %bb.b ] ; 4 uses
  %.049 = phi ptr [ %1, %bb.a ], [ %i.cd, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.cc, %bb.b ]   ; 7 uses
  %i.l = load i16, ptr %.0, align 2, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !12
  %i.o = load i16, ptr %.049, align 2, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12
  %i.r = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.l, i32 noundef %i.b, i32 noundef %5) #10
  %i.s = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.n, i32 noundef %i.b, i32 noundef %5) #10
  %i.t = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.o, i32 noundef %i.b, i32 noundef %5) #10
  %i.u = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.q, i32 noundef %i.b, i32 noundef %5) #10
  %i.v = add i32 %i.r, 2
  %i.w = add i32 %i.v, %i.s
  %i.x = add i32 %i.w, %i.t
  %i.y = add i32 %i.x, %i.u
  %i.z = lshr i32 %i.y, 2
  %i.aa = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.z, i32 noundef %i.b, i32 noundef %5) #10 ; 2 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.d
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !12
  %i.ad = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.f
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !12
  %i.af = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.d
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !12
  %i.ah = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.f
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !12
  %i.aj = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ac, i32 noundef %i.b, i32 noundef %5) #10
  %i.ak = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ae, i32 noundef %i.b, i32 noundef %5) #10
  %i.al = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ag, i32 noundef %i.b, i32 noundef %5) #10
  %i.am = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ai, i32 noundef %i.b, i32 noundef %5) #10
  %i.an = add i32 %i.aj, 2
  %i.ao = add i32 %i.an, %i.ak
  %i.ap = add i32 %i.ao, %i.al
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = lshr i32 %i.aq, 2
  %i.as = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.ar, i32 noundef %i.b, i32 noundef %5) #10 ; 2 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.h
  %i.au = load i16, ptr %i.at, align 2, !tbaa !12
  %i.av = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.j
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !12
  %i.ax = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.h
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !12
  %i.az = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.j
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !12
  %i.bb = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.au, i32 noundef %i.b, i32 noundef %5) #10
  %i.bc = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.aw, i32 noundef %i.b, i32 noundef %5) #10
  %i.bd = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ay, i32 noundef %i.b, i32 noundef %5) #10
  %i.be = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ba, i32 noundef %i.b, i32 noundef %5) #10
  %i.bf = add i32 %i.bb, 2
  %i.bg = add i32 %i.bf, %i.bc
  %i.bh = add i32 %i.bg, %i.bd
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.bj, i32 noundef %i.b, i32 noundef %5) #10 ; 2 uses
  %i.bl = zext i16 %i.aa to i32
  %i.bm = zext i16 %i.as to i32
  %i.bn = zext i16 %i.bk to i32
  %i.bo = mul nuw nsw i32 %i.bl, 13933
  %i.bp = mul nuw i32 %i.bm, 46871
  %i.bq = mul nuw nsw i32 %i.bn, 4732
  %i.br = add nuw nsw i32 %i.bo, 32768
  %i.bs = add nuw i32 %i.br, %i.bp
  %i.bt = add nuw i32 %i.bs, %i.bq
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = trunc nuw i32 %i.bu to i16              ; 3 uses
  %i.bw = sub i16 %i.aa, %i.bv
  store i16 %i.bw, ptr %.050, align 2, !tbaa !12
  %i.bx = sub i16 %i.as, %i.bv
  %i.by = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.k
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !12
  %i.bz = sub i16 %i.bk, %i.bv
  %i.ca = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.d
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %.050, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.ce = add nuw nsw i32 %.051, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %smax
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !69

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @SharpYuvGammaToLinear(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i16 @SharpYuvLinearToGamma(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"SharpYuvOptions", !8, i64 0, !4, i64 8}
!11 = !{!10, !4, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !17, !16}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !17, !16}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{null, null}
!24 = distinct !{null}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15, !16, !17}
!31 = distinct !{!31, !15, !17, !16}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !16}
!39 = distinct !{!39, !15}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !15, !16, !17}
!46 = distinct !{!46, !15, !16}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = !{!53, !54, !48, !55, !56}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = !{!55}
!58 = !{!53}
!59 = !{!54, !48, !55, !56}
!60 = !{!56}
end_hunk_1
