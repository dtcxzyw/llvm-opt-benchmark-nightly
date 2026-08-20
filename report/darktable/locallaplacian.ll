inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [7 x i8] c"coarse\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"locallaplacian\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"oldcoarse\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"newcoarse\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"padded\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @local_laplacian_boundary_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  tail call void @free(ptr noundef %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, i8 0, i64 296, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.h) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !16
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @local_laplacian(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #4 {
bb.a:
  tail call void @local_laplacian_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @local_laplacian_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [30 x ptr], align 16              ; 15 uses
  %i.f = alloca [30 x ptr], align 16              ; 13 uses
  %i.g = alloca [6 x float], align 16             ; 7 uses
  %i.h = alloca [6 x [30 x ptr]], align 16        ; 19 uses
  %i.i = icmp slt i32 %2, 2
  %i.j = icmp slt i32 %3, 2
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @llvm.umin.i32(i32 %2, i32 %3) ; 5 uses
  %i.l = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true) ; 8 uses
  %i.m = xor i32 %i.l, 31                         ; 3 uses
  %i.n = sub nuw nsw i32 30, %i.l                 ; 4 uses
  %.not = icmp eq ptr %8, null                    ; 5 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %8, align 8, !tbaa !18
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.m, 4
  %i.r = select i1 %i.q, i32 4, i32 %i.n          ; 2 uses
  %i.s = shl nuw nsw i32 1, %i.r                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.e, i8 0, i64 240, i1 false)
  %i.t = call fastcc ptr @ll_pad_input(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %i.s, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %8)
  %.pre.pre = load i32, ptr %i.c, align 4, !tbaa !19
  %.pre1068.pre = load i32, ptr %i.d, align 4
  br label %ll_pad_input.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.e, i8 0, i64 240, i1 false)
  %i.u = lshr exact i32 1073741824, %i.l          ; 7 uses
  %i.v = shl nuw nsw i32 %i.u, 1                  ; 4 uses
  %i.w = add nuw nsw i32 %i.v, %2                 ; 19 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !19
  %i.x = add nuw nsw i32 %i.v, %3                 ; 5 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !19
  %i.y = zext nneg i32 %i.w to i64                ; 8 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = mul nuw i64 %i.aa, %i.y
  %i.ac = tail call ptr @dt_alloc_aligned(i64 noundef %i.ab) #14 ; 29 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = shl i32 %2, 2                           ; 5 uses
  %i.ae = add nuw i32 %i.u, %2                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.w
  %i.ag = sext i32 %i.ae to i64                   ; 10 uses
  %i.ah = sext i32 %i.ad to i64                   ; 2 uses
  %i.ai = zext nneg i32 %i.u to i64               ; 9 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 12 uses
  %wide.trip.count529.i = zext nneg i32 %3 to i64 ; 4 uses
  %i.ak = sub nsw i32 30, %i.l
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.y, %i.al                     ; 2 uses
  %i.an = add i64 %i.am, %i.ag
  %i.ao = shl i64 %i.an, 2
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.ap = shl nuw nsw i64 %i.ai, 3
  %i.aq = shl nuw nsw i64 %i.aj, 2
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = add nsw i64 %wide.trip.count529.i, -1
  %i.at = mul i64 %i.ar, %i.as
  %i.au = add nsw i64 %i.ag, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %i.au)
  %i.av = add i64 %i.am, %smax
  %i.aw = shl i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %i.ac, i64 %i.aw
  %scevgep1181 = getelementptr i8, ptr %i.ax, i64 %i.at
  %i.ay = add i32 %i.ad, -4
  %scevgep1183 = getelementptr i8, ptr %0, i64 4
  %i.az = add nsw i64 %i.ag, 1
  %smax1185 = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %i.az)
  %i.ba = sub i64 %smax1185, %i.ag                ; 7 uses
  %i.bb = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.bc = add nuw i32 %2, %i.v
  %i.bd = add i32 %i.bc, 1
  %i.be = sub nsw i32 30, %i.l
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = mul nuw nsw i64 %wide.trip.count529.i, %i.aj
  %i.bh = shl i64 %i.bg, 4
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  %scevgep1195 = getelementptr i8, ptr %i.bi, i64 -12
  %i.bj = add nuw i32 %2, %i.v
  %i.bk = add i32 %i.bj, 1
  %i.bl = sub nsw i32 30, %i.l
  %i.bm = shl i32 %i.bk, %i.bl
  %i.bn = shl nuw nsw i64 %i.aj, 2                ; 3 uses
  %scevgep1197 = getelementptr i8, ptr %i.ac, i64 %i.bn
  %i.bo = sub nsw i32 30, %i.l
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %i.y, %i.bp
  %i.br = shl i64 %i.bq, 2
  %scevgep1231 = getelementptr i8, ptr %i.ac, i64 %i.br
  %i.bs = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, %i.bn
  %i.bu = add nsw i64 %wide.trip.count529.i, -1   ; 2 uses
  %i.bv = mul i64 %i.bt, %i.bu
  %9 = add nuw nsw i64 %i.bs, %i.bn
  %i.bw = add nuw nsw i64 %9, 4
  %i.bx = sub nsw i32 30, %i.l
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl i64 %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %i.ac, i64 %i.bv
  %scevgep1232 = getelementptr i8, ptr %i.ca, i64 %i.bz
  %i.cb = mul nsw i64 %i.bu, %i.ah
  %i.cc = shl i64 %i.cb, 2
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %scevgep1233 = getelementptr i8, ptr %i.cd, i64 4
  %min.iters.check1237 = icmp ult i32 %i.k, 8
  %bound01234 = icmp ult ptr %scevgep1231, %scevgep1233
  %bound11235 = icmp ult ptr %0, %scevgep1232
  %found.conflict1236 = and i1 %bound01234, %bound11235
  %stride.check = icmp slt i32 %i.ad, 0
  %i.ce = or i1 %found.conflict1236, %stride.check
  %min.iters.check1239 = icmp ult i32 %i.k, 64
  %n.vec1241 = and i64 %i.ai, 1073741792
  %n.vec1255 = and i64 %i.ai, 1073741820
  %xtraiter = and i64 %i.ai, 7                    ; 3 uses
  %i.cf = icmp ult i32 %i.k, 16
  %unroll_iter = and i64 %i.ai, 1073741816
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1425 = icmp ne i64 %xtraiter, 0
  %min.iters.check1202 = icmp ult i32 %2, 5
  %i.cg = trunc nsw i64 %i.bb to i32
  %i.ch = icmp ugt i64 %i.bb, 4294967295
  %min.iters.check1204 = icmp ult i32 %2, 33
  %i.ci = and i64 %i.aj, 31                       ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 32, i64 %i.ci      ; 2 uses
  %n.vec1206 = sub nsw i64 %i.aj, %i.ck           ; 3 uses
  %min.epilog.iters.check1221 = icmp samesign ult i64 %i.ck, 5
  %i.cl = and i64 %i.aj, 3                        ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = select i1 %i.cm, i64 4, i64 %i.cl
  %n.vec1223 = sub nsw i64 %i.aj, %i.cn           ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 4
  %min.iters.check1186 = icmp ult i64 %i.ba, 32
  %i.co = and i64 %i.ba, 28
  %n.vec = and i64 %i.ba, -32                     ; 4 uses
  %i.cp = add i64 %n.vec, %i.ag
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  %n.vec1187 = and i64 %i.ba, -4                  ; 3 uses
  %i.cq = add i64 %n.vec1187, %i.ag
  %cmp.n1192 = icmp eq i64 %i.ba, %n.vec1187
  br label %iter.check1250

iter.check1250:                                   ; preds = %._crit_edge472.i, %bb.e
  %indvars.iv526.i = phi i64 [ 0, %bb.e ], [ %i.is, %._crit_edge472.i ] ; 7 uses
  %i.cr = trunc i64 %indvars.iv526.i to i32
  %i.cs = mul i32 %i.w, %i.cr
  %i.ct = add i32 %i.cs, %i.bm
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 2                    ; 2 uses
  %scevgep1196 = getelementptr i8, ptr %i.ac, i64 %i.cv
  %scevgep1198 = getelementptr i8, ptr %scevgep1197, i64 %i.cv
  %i.cw = trunc i64 %indvars.iv526.i to i32
  %i.cx = mul i32 %i.w, %i.cw
  %i.cy = add i32 %i.cx, %i.bf                    ; 2 uses
  %i.cz = trunc i64 %indvars.iv526.i to i32
  %i.da = mul i32 %i.ad, %i.cz
  %i.db = add i32 %i.da, %i.ay
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2                    ; 2 uses
  %scevgep1182 = getelementptr i8, ptr %0, i64 %i.dd
  %scevgep1184 = getelementptr i8, ptr %scevgep1183, i64 %i.dd
  %i.de = mul nuw nsw i64 %indvars.iv526.i, %i.ah
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de ; 10 uses
  %i.dg = add nuw nsw i64 %indvars.iv526.i, %i.ai
  %i.dh = mul nuw nsw i64 %i.dg, %i.y             ; 2 uses
  %i.di = getelementptr [4 x i8], ptr %i.ac, i64 %i.dh ; 14 uses
  %brmerge = select i1 %min.iters.check1237, i1 true, i1 %i.ce
  br i1 %brmerge, label %vec.epilog.scalar.ph1251.preheader, label %vector.main.loop.iter.check1238

vec.epilog.scalar.ph1251.preheader:               ; preds = %iter.check1250
  br i1 %i.cf, label %vec.epilog.scalar.ph1251.epil.preheader, label %vec.epilog.scalar.ph1251

vector.main.loop.iter.check1238:                  ; preds = %iter.check1250
  %i.dj = load float, ptr %i.df, align 4, !tbaa !20, !alias.scope !22
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, f0x3C23D70A ; 2 uses
  br i1 %min.iters.check1239, label %vec.epilog.ph1254, label %vector.ph1240

vector.ph1240:                                    ; preds = %vector.main.loop.iter.check1238
  %broadcast.splatinsert1244 = insertelement <8 x float> poison, float %i.dk, i64 0
  %broadcast.splat1245 = shufflevector <8 x float> %broadcast.splatinsert1244, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1240
  %index1243 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1246, %vector.body1242 ] ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.di, i64 %index1243 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 32
  %i.dn = getelementptr i8, ptr %i.dl, i64 64
  %i.do = getelementptr i8, ptr %i.dl, i64 96
  store <8 x float> %broadcast.splat1245, ptr %i.dl, align 4, !tbaa !20, !alias.scope !25, !noalias !22
  store <8 x float> %broadcast.splat1245, ptr %i.dm, align 4, !tbaa !20, !alias.scope !25, !noalias !22
  store <8 x float> %broadcast.splat1245, ptr %i.dn, align 4, !tbaa !20, !alias.scope !25, !noalias !22
  store <8 x float> %broadcast.splat1245, ptr %i.do, align 4, !tbaa !20, !alias.scope !25, !noalias !22
  %index.next1246 = add nuw i64 %index1243, 32    ; 2 uses
  %i.dp = icmp eq i64 %index.next1246, %n.vec1241
  br i1 %i.dp, label %iter.check1218, label %vector.body1242, !llvm.loop !27

vec.epilog.ph1254:                                ; preds = %vector.main.loop.iter.check1238
  %broadcast.splatinsert1258 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat1259 = shufflevector <4 x float> %broadcast.splatinsert1258, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1256

vec.epilog.vector.body1256:                       ; preds = %vec.epilog.vector.body1256, %vec.epilog.ph1254
  %index1257 = phi i64 [ 0, %vec.epilog.ph1254 ], [ %index.next1260, %vec.epilog.vector.body1256 ] ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.di, i64 %index1257
  store <4 x float> %broadcast.splat1259, ptr %i.dq, align 4, !tbaa !20, !alias.scope !25, !noalias !22
  %index.next1260 = add nuw i64 %index1257, 4     ; 2 uses
  %i.dr = icmp eq i64 %index.next1260, %n.vec1255
  br i1 %i.dr, label %iter.check1218, label %vec.epilog.vector.body1256, !llvm.loop !30

bb.f:                                             ; preds = %._crit_edge472.i
  %i.ds = shl i32 %i.w, %i.n
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dt ; 5 uses
  %i.dv = shl nuw nsw i64 %i.y, 2                 ; 10 uses
  %i.dw = sub nsw i32 %i.x, %i.u                  ; 6 uses
  %i.dx = add nsw i32 %i.dw, -1
  %i.dy = mul i32 %i.dx, %i.w
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dz ; 5 uses
  %xtraiter1428 = and i64 %i.ai, 3                ; 3 uses
  %i.eb = icmp ult i32 %i.k, 8
  br i1 %i.eb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter1432 = and i64 %i.ai, 1073741820
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.g ] ; 5 uses
  %niter1433 = phi i64 [ 0, %.new ], [ %niter1433.next.3, %bb.g ]
  %i.ec = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.ed = mul i32 %i.w, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ef, ptr noundef nonnull align 4 dereferenceable(1) %i.du, i64 %i.dv, i1 false)
  %i.eg = add i32 %i.dw, %i.ec
  %i.eh = mul i32 %i.eg, %i.w
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ej, ptr noundef nonnull align 4 dereferenceable(1) %i.ea, i64 %i.dv, i1 false)
  %i.ek = trunc i64 %indvars.iv.i.i to i32
  %i.el = or disjoint i32 %i.ek, 1                ; 2 uses
  %i.em = mul i32 %i.w, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eo, ptr noundef nonnull align 4 dereferenceable(1) %i.du, i64 %i.dv, i1 false)
  %i.ep = add i32 %i.dw, %i.el
  %i.eq = mul i32 %i.ep, %i.w
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.es, ptr noundef nonnull align 4 dereferenceable(1) %i.ea, i64 %i.dv, i1 false)
  %i.et = trunc i64 %indvars.iv.i.i to i32
  %i.eu = or disjoint i32 %i.et, 2                ; 2 uses
  %i.ev = mul i32 %i.w, %i.eu
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 4 dereferenceable(1) %i.du, i64 %i.dv, i1 false)
  %i.ey = add i32 %i.dw, %i.eu
  %i.ez = mul i32 %i.ey, %i.w
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fb, ptr noundef nonnull align 4 dereferenceable(1) %i.ea, i64 %i.dv, i1 false)
  %i.fc = trunc i64 %indvars.iv.i.i to i32
  %i.fd = or disjoint i32 %i.fc, 3                ; 2 uses
  %i.fe = mul i32 %i.w, %i.fd
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ff
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fg, ptr noundef nonnull align 4 dereferenceable(1) %i.du, i64 %i.dv, i1 false)
  %i.fh = add i32 %i.dw, %i.fd
  %i.fi = mul i32 %i.fh, %i.w
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fk, ptr noundef nonnull align 4 dereferenceable(1) %i.ea, i64 %i.dv, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter1433.next.3 = add i64 %niter1433, 4       ; 2 uses
  %niter1433.ncmp.3 = icmp eq i64 %niter1433.next.3, %unroll_iter1432
  br i1 %niter1433.ncmp.3, label %ll_pad_input.exit.loopexit.unr-lcssa, label %bb.g

iter.check1218.loopexit.unr-lcssa:                ; preds = %vec.epilog.scalar.ph1251
  br i1 %lcmp.mod.not, label %iter.check1218, label %vec.epilog.scalar.ph1251.epil.preheader

vec.epilog.scalar.ph1251.epil.preheader:          ; preds = %iter.check1218.loopexit.unr-lcssa, %vec.epilog.scalar.ph1251.preheader
  %indvars.iv513.i.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph1251.preheader ], [ %indvars.iv.next514.i.7, %iter.check1218.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1425)
  br label %vec.epilog.scalar.ph1251.epil

vec.epilog.scalar.ph1251.epil:                    ; preds = %vec.epilog.scalar.ph1251.epil, %vec.epilog.scalar.ph1251.epil.preheader
  %indvars.iv513.i.epil = phi i64 [ %indvars.iv.next514.i.epil, %vec.epilog.scalar.ph1251.epil ], [ %indvars.iv513.i.epil.init, %vec.epilog.scalar.ph1251.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %vec.epilog.scalar.ph1251.epil ], [ 0, %vec.epilog.scalar.ph1251.epil.preheader ]
  %i.fl = load float, ptr %i.df, align 4, !tbaa !20
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, f0x3C23D70A
  %i.fn = getelementptr [4 x i8], ptr %i.di, i64 %indvars.iv513.i.epil
  store float %i.fm, ptr %i.fn, align 4, !tbaa !20
  %indvars.iv.next514.i.epil = add nuw nsw i64 %indvars.iv513.i.epil, 1
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
vec.epilog.vector.body1376.preheader:             ; preds = %vector.main.loop.iter.check1356, %vec.epilog.iter.check1372
  %index1377.ph = phi i64 [ 0, %vector.main.loop.iter.check1356 ], [ %n.vec1359, %vec.epilog.iter.check1372 ]
  br label %vec.epilog.vector.body1376

.lr.ph912.preheader:                              ; preds = %iter.check1370, %vec.epilog.iter.check1372
  %.0542911.ph = phi i64 [ %n.vec1359, %vec.epilog.iter.check1372 ], [ 0, %iter.check1370 ] ; 3 uses
  %xtraiter1702 = and i64 %i.mj, 4                ; 2 uses
  %lcmp.mod1703.not = icmp eq i64 %xtraiter1702, 0
  br i1 %lcmp.mod1703.not, label %.lr.ph912.prol.loopexit, label %.lr.ph912.prol

.lr.ph912.prol:                                   ; preds = %.lr.ph912.preheader, %.lr.ph912.prol
  %.0542911.prol = phi i64 [ %i.my, %.lr.ph912.prol ], [ %.0542911.ph, %.lr.ph912.preheader ] ; 3 uses
  %prol.iter1704 = phi i64 [ %prol.iter1704.next, %.lr.ph912.prol ], [ 0, %.lr.ph912.preheader ]
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542911.prol
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !20
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542911.prol
  store float %i.mw, ptr %i.mx, align 4, !tbaa !20
  %i.my = add nuw i64 %.0542911.prol, 1           ; 2 uses
  %prol.iter1704.next = add i64 %prol.iter1704, 1 ; 2 uses
  %prol.iter1704.cmp.not = icmp eq i64 %prol.iter1704.next, %xtraiter1702
  br i1 %prol.iter1704.cmp.not, label %.lr.ph912.prol.loopexit, label %.lr.ph912.prol, !llvm.loop !58

.lr.ph912.prol.loopexit:                          ; preds = %.lr.ph912.prol, %.lr.ph912.preheader
  %.0542911.unr = phi i64 [ %.0542911.ph, %.lr.ph912.preheader ], [ %i.my, %.lr.ph912.prol ]
  %i.mz = sub i64 %.0542911.ph, %i.mj
  %i.na = icmp ugt i64 %i.mz, -8
  br i1 %i.na, label %.loopexit, label %.lr.ph912

vec.epilog.vector.body1376:                       ; preds = %vec.epilog.vector.body1376.preheader, %vec.epilog.vector.body1376
  %index1377 = phi i64 [ %index.next1379, %vec.epilog.vector.body1376 ], [ %index1377.ph, %vec.epilog.vector.body1376.preheader ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1377
  %wide.load1378 = load <4 x float>, ptr %i.nb, align 4, !tbaa !20
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1377
  store <4 x float> %wide.load1378, ptr %i.nc, align 4, !tbaa !20
  %index.next1379 = add nuw i64 %index1377, 4     ; 2 uses
  %i.nd = icmp eq i64 %index.next1379, %i.mj
  br i1 %i.nd, label %.loopexit, label %vec.epilog.vector.body1376, !llvm.loop !59

.critedge638:                                     ; preds = %.critedge638.preheader, %.critedge638
  %indvars.iv1062 = phi i64 [ %indvars.iv.next1063, %.critedge638 ], [ 0, %.critedge638.preheader ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1062
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.nf) #14
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1062
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.nh) #14
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %exitcond1066.not = icmp eq i64 %indvars.iv.next1063, %wide.trip.count941.pre-phi
  br i1 %exitcond1066.not, label %iter.check1370, label %.critedge638

.lr.ph912:                                        ; preds = %.lr.ph912.prol.loopexit, %.lr.ph912
  %.0542911 = phi i64 [ %i.on, %.lr.ph912 ], [ %.0542911.unr, %.lr.ph912.prol.loopexit ] ; 10 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542911
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !20
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542911
  store float %i.nj, ptr %i.nk, align 4, !tbaa !20
  %i.nl = add nuw i64 %.0542911, 1                ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !20
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nl
  store float %i.nn, ptr %i.no, align 4, !tbaa !20
  %i.np = add nuw i64 %.0542911, 2                ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !20
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.np
  store float %i.nr, ptr %i.ns, align 4, !tbaa !20
  %i.nt = add nuw i64 %.0542911, 3                ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nt
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !20
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nt
  store float %i.nv, ptr %i.nw, align 4, !tbaa !20
  %i.nx = add nuw i64 %.0542911, 4                ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !20
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nx
  store float %i.nz, ptr %i.oa, align 4, !tbaa !20
  %i.ob = add nuw i64 %.0542911, 5                ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !20
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ob
  store float %i.od, ptr %i.oe, align 4, !tbaa !20
  %i.of = add nuw i64 %.0542911, 6                ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !20
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.of
  store float %i.oh, ptr %i.oi, align 4, !tbaa !20
  %i.oj = add nuw i64 %.0542911, 7                ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oj
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !20
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oj
  store float %i.ol, ptr %i.om, align 4, !tbaa !20
  %i.on = add nuw i64 %.0542911, 8                ; 2 uses
  %exitcond1067.not.7 = icmp eq i64 %i.on, %i.mj
  br i1 %exitcond1067.not.7, label %.loopexit, label %.lr.ph912, !llvm.loop !60

._crit_edge871:                                   ; preds = %dl.exit688
  %i.oo = add nsw i32 %.0528791, -1               ; 6 uses
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !17
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count946
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !17
  %i.ou = add nsw i32 %.0528791, -2               ; 2 uses
  %xtraiter1479 = and i32 %i.oo, 7                ; 3 uses
  %i.ov = icmp ult i32 %i.ou, 7
  br i1 %i.ov, label %.lr.ph.i659.epil.preheader, label %._crit_edge871.new

._crit_edge871.new:                               ; preds = %._crit_edge871
  %unroll_iter1484 = and i32 %i.oo, -8
  br label %.lr.ph.i659

.lr.ph.i659:                                      ; preds = %.lr.ph.i659, %._crit_edge871.new
  %.056.i661 = phi i32 [ %.pre1072, %._crit_edge871.new ], [ %i.ow, %.lr.ph.i659 ]
  %niter1485 = phi i32 [ 0, %._crit_edge871.new ], [ %niter1485.next.7, %.lr.ph.i659 ]
  %i.ow = sdiv i32 %.056.i661, 256                ; 3 uses
  %niter1485.next.7 = add i32 %niter1485, 8       ; 2 uses
  %niter1485.ncmp.7 = icmp eq i32 %niter1485.next.7, %unroll_iter1484
  br i1 %niter1485.ncmp.7, label %.lr.ph.i667.preheader.unr-lcssa, label %.lr.ph.i659

.lr.ph.i667.preheader.unr-lcssa:                  ; preds = %.lr.ph.i659
  %lcmp.mod1481.not = icmp eq i32 %xtraiter1479, 0
  br i1 %lcmp.mod1481.not, label %.lr.ph.i667.preheader, label %.lr.ph.i659.epil.preheader

.lr.ph.i659.epil.preheader:                       ; preds = %.lr.ph.i667.preheader.unr-lcssa, %._crit_edge871
  %.056.i661.epil.init = phi i32 [ %.pre1072, %._crit_edge871 ], [ %i.ow, %.lr.ph.i667.preheader.unr-lcssa ]
  %lcmp.mod1483 = icmp ne i32 %xtraiter1479, 0
  tail call void @llvm.assume(i1 %lcmp.mod1483)
  br label %.lr.ph.i659.epil

.lr.ph.i659.epil:                                 ; preds = %.lr.ph.i659.epil, %.lr.ph.i659.epil.preheader
  %.056.i661.epil = phi i32 [ %i.ox, %.lr.ph.i659.epil ], [ %.056.i661.epil.init, %.lr.ph.i659.epil.preheader ]
  %epil.iter1480 = phi i32 [ %epil.iter1480.next, %.lr.ph.i659.epil ], [ 0, %.lr.ph.i659.epil.preheader ]
  %i.ox = sdiv i32 %.056.i661.epil, 2             ; 2 uses
  %epil.iter1480.next = add i32 %epil.iter1480, 1 ; 2 uses
  %epil.iter1480.cmp.not = icmp eq i32 %epil.iter1480.next, %xtraiter1479
  br i1 %epil.iter1480.cmp.not, label %.lr.ph.i667.preheader, label %.lr.ph.i659.epil, !llvm.loop !61

.lr.ph.i667.preheader:                            ; preds = %.lr.ph.i659.epil, %.lr.ph.i667.preheader.unr-lcssa
  %.lcssa1416 = phi i32 [ %i.ow, %.lr.ph.i667.preheader.unr-lcssa ], [ %i.ox, %.lr.ph.i659.epil ]
  %xtraiter1486 = and i32 %i.oo, 7                ; 3 uses
  %i.oy = icmp ult i32 %i.ou, 7
  br i1 %i.oy, label %.lr.ph.i667.epil.preheader, label %.lr.ph.i667.preheader.new

.lr.ph.i667.preheader.new:                        ; preds = %.lr.ph.i667.preheader
  %unroll_iter1491 = and i32 %i.oo, -8
  br label %.lr.ph.i667

._crit_edge.loopexit.i671.unr-lcssa:              ; preds = %.lr.ph.i667
  %lcmp.mod1488.not = icmp eq i32 %xtraiter1486, 0
  br i1 %lcmp.mod1488.not, label %._crit_edge.loopexit.i671, label %.lr.ph.i667.epil.preheader

.lr.ph.i667.epil.preheader:                       ; preds = %._crit_edge.loopexit.i671.unr-lcssa, %.lr.ph.i667.preheader
  %.056.i669.epil.init = phi i32 [ %.pre1074, %.lr.ph.i667.preheader ], [ %i.pc, %._crit_edge.loopexit.i671.unr-lcssa ]
  %lcmp.mod1490 = icmp ne i32 %xtraiter1486, 0
  tail call void @llvm.assume(i1 %lcmp.mod1490)
  br label %.lr.ph.i667.epil

.lr.ph.i667.epil:                                 ; preds = %.lr.ph.i667.epil, %.lr.ph.i667.epil.preheader
  %.056.i669.epil = phi i32 [ %i.oz, %.lr.ph.i667.epil ], [ %.056.i669.epil.init, %.lr.ph.i667.epil.preheader ]
  %epil.iter1487 = phi i32 [ %epil.iter1487.next, %.lr.ph.i667.epil ], [ 0, %.lr.ph.i667.epil.preheader ]
  %i.oz = sdiv i32 %.056.i669.epil, 2             ; 2 uses
  %epil.iter1487.next = add i32 %epil.iter1487, 1 ; 2 uses
  %epil.iter1487.cmp.not = icmp eq i32 %epil.iter1487.next, %xtraiter1486
  br i1 %epil.iter1487.cmp.not, label %._crit_edge.loopexit.i671, label %.lr.ph.i667.epil, !llvm.loop !62

._crit_edge.loopexit.i671:                        ; preds = %.lr.ph.i667.epil, %._crit_edge.loopexit.i671.unr-lcssa
  %.lcssa1415 = phi i32 [ %i.pc, %._crit_edge.loopexit.i671.unr-lcssa ], [ %i.oz, %.lr.ph.i667.epil ]
  %i.pa = add nsw i32 %.lcssa1416, 1
  %i.pb = add nsw i32 %.lcssa1415, 1
  br label %dl.exit672

.lr.ph.i667:                                      ; preds = %.lr.ph.i667, %.lr.ph.i667.preheader.new
  %.056.i669 = phi i32 [ %.pre1074, %.lr.ph.i667.preheader.new ], [ %i.pc, %.lr.ph.i667 ]
  %niter1492 = phi i32 [ 0, %.lr.ph.i667.preheader.new ], [ %niter1492.next.7, %.lr.ph.i667 ]
  %i.pc = sdiv i32 %.056.i669, 256                ; 3 uses
  %niter1492.next.7 = add i32 %niter1492, 8       ; 2 uses
  %niter1492.ncmp.7 = icmp eq i32 %niter1492.next.7, %unroll_iter1491
  br i1 %niter1492.ncmp.7, label %._crit_edge.loopexit.i671.unr-lcssa, label %.lr.ph.i667

dl.exit672:                                       ; preds = %._crit_edge871.thread, %._crit_edge.loopexit.i671
  %i.pd = phi ptr [ %i.ot, %._crit_edge.loopexit.i671 ], [ %i.mf, %._crit_edge871.thread ] ; 4 uses
  %i.pe = phi ptr [ %i.or, %._crit_edge.loopexit.i671 ], [ %i.md, %._crit_edge871.thread ]
  %i.pf = phi i32 [ %i.oo, %._crit_edge.loopexit.i671 ], [ %i.ma, %._crit_edge871.thread ]
  %.in823 = phi i32 [ %i.pa, %._crit_edge.loopexit.i671 ], [ %.pre, %._crit_edge871.thread ]
  %.05.lcssa.i665 = phi i32 [ %i.pb, %._crit_edge.loopexit.i671 ], [ %.pre1068, %._crit_edge871.thread ]
  %i.pg = sext i32 %.in823 to i64
  %i.ph = sext i32 %.05.lcssa.i665 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.pe, ptr noundef %i.pd, i64 noundef %i.pg, i64 noundef %i.ph)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store <4 x float> <float f0x3DAAAAAB, float 2.500000e-01, float f0x3ED55556, float f0x3F155555>, ptr %i.g, align 16, !tbaa !20
  %i.pi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x float> <float 7.500000e-01, float f0x3F6AAAAB>, ptr %i.pi, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.h, i8 0, i64 1440, i1 false)
  br label %bb.o

.lr.ph870:                                        ; preds = %.preheader845, %dl.exit688
  %indvar1463 = phi i64 [ %indvar.next1464, %dl.exit688 ], [ 0, %.preheader845 ] ; 7 uses
  %i.pj = phi ptr [ %i.pm, %dl.exit688 ], [ %storemerge, %.preheader845 ]
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %dl.exit688 ], [ 1, %.preheader845 ] ; 3 uses
  %i.pk = add nsw i64 %indvar1463, -1
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv943
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !17 ; 2 uses
  %i.pn = icmp samesign ugt i64 %indvars.iv943, 1
  br i1 %i.pn, label %.lr.ph.i675.preheader, label %dl.exit688

.lr.ph.i675.preheader:                            ; preds = %.lr.ph870
  %i.po = add nsw i64 %indvar1463, -1
  %xtraiter1465 = and i64 %indvar1463, 7          ; 3 uses
  %i.pp = icmp ult i64 %i.po, 7
  br i1 %i.pp, label %.lr.ph.i675.epil.preheader, label %.lr.ph.i675.preheader.new

.lr.ph.i675.preheader.new:                        ; preds = %.lr.ph.i675.preheader
  %unroll_iter1470 = and i64 %indvar1463, -8
  br label %.lr.ph.i675

.lr.ph.i675:                                      ; preds = %.lr.ph.i675, %.lr.ph.i675.preheader.new
  %.056.i677 = phi i32 [ %.pre1072, %.lr.ph.i675.preheader.new ], [ %i.pq, %.lr.ph.i675 ]
  %niter1471 = phi i64 [ 0, %.lr.ph.i675.preheader.new ], [ %niter1471.next.7, %.lr.ph.i675 ]
  %i.pq = sdiv i32 %.056.i677, 256                ; 3 uses
  %niter1471.next.7 = add i64 %niter1471, 8       ; 2 uses
  %niter1471.ncmp.7 = icmp eq i64 %niter1471.next.7, %unroll_iter1470
  br i1 %niter1471.ncmp.7, label %.lr.ph.i683.preheader.unr-lcssa, label %.lr.ph.i675

.lr.ph.i683.preheader.unr-lcssa:                  ; preds = %.lr.ph.i675
  %lcmp.mod1467.not = icmp eq i64 %xtraiter1465, 0
  br i1 %lcmp.mod1467.not, label %.lr.ph.i683.preheader, label %.lr.ph.i675.epil.preheader

.lr.ph.i675.epil.preheader:                       ; preds = %.lr.ph.i683.preheader.unr-lcssa, %.lr.ph.i675.preheader
  %.056.i677.epil.init = phi i32 [ %.pre1072, %.lr.ph.i675.preheader ], [ %i.pq, %.lr.ph.i683.preheader.unr-lcssa ]
  %lcmp.mod1469 = icmp ne i64 %xtraiter1465, 0
  tail call void @llvm.assume(i1 %lcmp.mod1469)
  br label %.lr.ph.i675.epil

.lr.ph.i675.epil:                                 ; preds = %.lr.ph.i675.epil, %.lr.ph.i675.epil.preheader
  %.056.i677.epil = phi i32 [ %i.pr, %.lr.ph.i675.epil ], [ %.056.i677.epil.init, %.lr.ph.i675.epil.preheader ]
  %epil.iter1466 = phi i64 [ %epil.iter1466.next, %.lr.ph.i675.epil ], [ 0, %.lr.ph.i675.epil.preheader ]
  %i.pr = sdiv i32 %.056.i677.epil, 2             ; 2 uses
  %epil.iter1466.next = add i64 %epil.iter1466, 1 ; 2 uses
  %epil.iter1466.cmp.not = icmp eq i64 %epil.iter1466.next, %xtraiter1465
  br i1 %epil.iter1466.cmp.not, label %.lr.ph.i683.preheader, label %.lr.ph.i675.epil, !llvm.loop !63

.lr.ph.i683.preheader:                            ; preds = %.lr.ph.i675.epil, %.lr.ph.i683.preheader.unr-lcssa
  %.lcssa1417 = phi i32 [ %i.pq, %.lr.ph.i683.preheader.unr-lcssa ], [ %i.pr, %.lr.ph.i675.epil ]
  %xtraiter1472 = and i64 %indvar1463, 7          ; 3 uses
  %i.ps = icmp ult i64 %i.pk, 7
  br i1 %i.ps, label %.lr.ph.i683.epil.preheader, label %.lr.ph.i683.preheader.new

.lr.ph.i683.preheader.new:                        ; preds = %.lr.ph.i683.preheader
  %unroll_iter1477 = and i64 %indvar1463, -8
  br label %.lr.ph.i683

._crit_edge.loopexit.i687.unr-lcssa:              ; preds = %.lr.ph.i683
  %lcmp.mod1474.not = icmp eq i64 %xtraiter1472, 0
  br i1 %lcmp.mod1474.not, label %._crit_edge.loopexit.i687, label %.lr.ph.i683.epil.preheader

.lr.ph.i683.epil.preheader:                       ; preds = %._crit_edge.loopexit.i687.unr-lcssa, %.lr.ph.i683.preheader
  %.056.i685.epil.init = phi i32 [ %.pre1074, %.lr.ph.i683.preheader ], [ %i.pw, %._crit_edge.loopexit.i687.unr-lcssa ]
  %lcmp.mod1476 = icmp ne i64 %xtraiter1472, 0
  tail call void @llvm.assume(i1 %lcmp.mod1476)
  br label %.lr.ph.i683.epil

.lr.ph.i683.epil:                                 ; preds = %.lr.ph.i683.epil, %.lr.ph.i683.epil.preheader
  %.056.i685.epil = phi i32 [ %i.pt, %.lr.ph.i683.epil ], [ %.056.i685.epil.init, %.lr.ph.i683.epil.preheader ]
  %epil.iter1473 = phi i64 [ %epil.iter1473.next, %.lr.ph.i683.epil ], [ 0, %.lr.ph.i683.epil.preheader ]
  %i.pt = sdiv i32 %.056.i685.epil, 2             ; 2 uses
  %epil.iter1473.next = add i64 %epil.iter1473, 1 ; 2 uses
  %epil.iter1473.cmp.not = icmp eq i64 %epil.iter1473.next, %xtraiter1472
  br i1 %epil.iter1473.cmp.not, label %._crit_edge.loopexit.i687, label %.lr.ph.i683.epil, !llvm.loop !64

._crit_edge.loopexit.i687:                        ; preds = %.lr.ph.i683.epil, %._crit_edge.loopexit.i687.unr-lcssa
  %.lcssa1418 = phi i32 [ %i.pw, %._crit_edge.loopexit.i687.unr-lcssa ], [ %i.pt, %.lr.ph.i683.epil ]
  %i.pu = add nsw i32 %.lcssa1417, 1
  %i.pv = add nsw i32 %.lcssa1418, 1
  br label %dl.exit688

.lr.ph.i683:                                      ; preds = %.lr.ph.i683, %.lr.ph.i683.preheader.new
  %.056.i685 = phi i32 [ %.pre1074, %.lr.ph.i683.preheader.new ], [ %i.pw, %.lr.ph.i683 ]
  %niter1478 = phi i64 [ 0, %.lr.ph.i683.preheader.new ], [ %niter1478.next.7, %.lr.ph.i683 ]
  %i.pw = sdiv i32 %.056.i685, 256                ; 3 uses
  %niter1478.next.7 = add i64 %niter1478, 8       ; 2 uses
  %niter1478.ncmp.7 = icmp eq i64 %niter1478.next.7, %unroll_iter1477
  br i1 %niter1478.ncmp.7, label %._crit_edge.loopexit.i687.unr-lcssa, label %.lr.ph.i683

dl.exit688:                                       ; preds = %.lr.ph870, %._crit_edge.loopexit.i687
  %.in828 = phi i32 [ %i.pu, %._crit_edge.loopexit.i687 ], [ %.pre, %.lr.ph870 ]
  %.05.lcssa.i681 = phi i32 [ %i.pv, %._crit_edge.loopexit.i687 ], [ %.pre1068, %.lr.ph870 ]
  %i.px = sext i32 %.in828 to i64
  %i.py = sext i32 %.05.lcssa.i681 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.pj, ptr noundef %i.pm, i64 noundef %i.px, i64 noundef %i.py)
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 1 ; 2 uses
  %exitcond947.not = icmp eq i64 %indvars.iv.next944, %wide.trip.count946
  %indvar.next1464 = add i64 %indvar1463, 1
  br i1 %exitcond947.not, label %._crit_edge871, label %.lr.ph870

bb.n:                                             ; preds = %dl.exit704
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 1 ; 2 uses
  %exitcond956.not = icmp eq i64 %indvars.iv.next953, %wide.trip.count941.pre-phi
  br i1 %exitcond956.not, label %.thread801, label %bb.o

bb.o:                                             ; preds = %dl.exit672, %bb.n
  %indvars.iv952 = phi i64 [ 0, %dl.exit672 ], [ %indvars.iv.next953, %bb.n ] ; 9 uses
  %.not826 = icmp eq i64 %indvars.iv952, 0
  br i1 %.not826, label %dl.exit704, label %.lr.ph.i691.preheader

.lr.ph.i691.preheader:                            ; preds = %bb.o
  %xtraiter1493 = and i64 %indvars.iv952, 7       ; 3 uses
  %i.pz = icmp samesign ult i64 %indvars.iv952, 8
  br i1 %i.pz, label %.lr.ph.i691.epil.preheader, label %.lr.ph.i691.preheader.new

.lr.ph.i691.preheader.new:                        ; preds = %.lr.ph.i691.preheader
  %unroll_iter1498 = and i64 %indvars.iv952, 9223372036854775800
  br label %.lr.ph.i691

.lr.ph.i691:                                      ; preds = %.lr.ph.i691, %.lr.ph.i691.preheader.new
  %.056.i693 = phi i32 [ %.pre1072, %.lr.ph.i691.preheader.new ], [ %i.qa, %.lr.ph.i691 ]
  %niter1499 = phi i64 [ 0, %.lr.ph.i691.preheader.new ], [ %niter1499.next.7, %.lr.ph.i691 ]
  %i.qa = sdiv i32 %.056.i693, 256                ; 3 uses
  %niter1499.next.7 = add i64 %niter1499, 8       ; 2 uses
  %niter1499.ncmp.7 = icmp eq i64 %niter1499.next.7, %unroll_iter1498
  br i1 %niter1499.ncmp.7, label %.lr.ph.i699.preheader.unr-lcssa, label %.lr.ph.i691

.lr.ph.i699.preheader.unr-lcssa:                  ; preds = %.lr.ph.i691
  %lcmp.mod1495.not = icmp eq i64 %xtraiter1493, 0
  br i1 %lcmp.mod1495.not, label %.lr.ph.i699.preheader, label %.lr.ph.i691.epil.preheader

.lr.ph.i691.epil.preheader:                       ; preds = %.lr.ph.i699.preheader.unr-lcssa, %.lr.ph.i691.preheader
  %.056.i693.epil.init = phi i32 [ %.pre1072, %.lr.ph.i691.preheader ], [ %i.qa, %.lr.ph.i699.preheader.unr-lcssa ]
  %lcmp.mod1497 = icmp ne i64 %xtraiter1493, 0
  tail call void @llvm.assume(i1 %lcmp.mod1497)
  br label %.lr.ph.i691.epil

.lr.ph.i691.epil:                                 ; preds = %.lr.ph.i691.epil, %.lr.ph.i691.epil.preheader
  %.056.i693.epil = phi i32 [ %i.qb, %.lr.ph.i691.epil ], [ %.056.i693.epil.init, %.lr.ph.i691.epil.preheader ]
  %epil.iter1494 = phi i64 [ %epil.iter1494.next, %.lr.ph.i691.epil ], [ 0, %.lr.ph.i691.epil.preheader ]
  %i.qb = sdiv i32 %.056.i693.epil, 2             ; 2 uses
  %epil.iter1494.next = add i64 %epil.iter1494, 1 ; 2 uses
  %epil.iter1494.cmp.not = icmp eq i64 %epil.iter1494.next, %xtraiter1493
  br i1 %epil.iter1494.cmp.not, label %.lr.ph.i699.preheader, label %.lr.ph.i691.epil, !llvm.loop !65

.lr.ph.i699.preheader:                            ; preds = %.lr.ph.i691.epil, %.lr.ph.i699.preheader.unr-lcssa
  %.lcssa1413 = phi i32 [ %i.qa, %.lr.ph.i699.preheader.unr-lcssa ], [ %i.qb, %.lr.ph.i691.epil ]
  %xtraiter1515 = and i64 %indvars.iv952, 7       ; 3 uses
  %i.qc = icmp samesign ult i64 %indvars.iv952, 8
  br i1 %i.qc, label %.lr.ph.i699.epil.preheader, label %.lr.ph.i699.preheader.new

.lr.ph.i699.preheader.new:                        ; preds = %.lr.ph.i699.preheader
  %unroll_iter1520 = and i64 %indvars.iv952, 9223372036854775800
  br label %.lr.ph.i699

._crit_edge.loopexit.i703.unr-lcssa:              ; preds = %.lr.ph.i699
  %lcmp.mod1517.not = icmp eq i64 %xtraiter1515, 0
  br i1 %lcmp.mod1517.not, label %._crit_edge.loopexit.i703, label %.lr.ph.i699.epil.preheader

.lr.ph.i699.epil.preheader:                       ; preds = %._crit_edge.loopexit.i703.unr-lcssa, %.lr.ph.i699.preheader
  %.056.i701.epil.init = phi i32 [ %.pre1074, %.lr.ph.i699.preheader ], [ %i.qg, %._crit_edge.loopexit.i703.unr-lcssa ]
  %lcmp.mod1519 = icmp ne i64 %xtraiter1515, 0
  tail call void @llvm.assume(i1 %lcmp.mod1519)
  br label %.lr.ph.i699.epil

.lr.ph.i699.epil:                                 ; preds = %.lr.ph.i699.epil, %.lr.ph.i699.epil.preheader
  %.056.i701.epil = phi i32 [ %i.qd, %.lr.ph.i699.epil ], [ %.056.i701.epil.init, %.lr.ph.i699.epil.preheader ]
  %epil.iter1516 = phi i64 [ %epil.iter1516.next, %.lr.ph.i699.epil ], [ 0, %.lr.ph.i699.epil.preheader ]
  %i.qd = sdiv i32 %.056.i701.epil, 2             ; 2 uses
  %epil.iter1516.next = add i64 %epil.iter1516, 1 ; 2 uses
  %epil.iter1516.cmp.not = icmp eq i64 %epil.iter1516.next, %xtraiter1515
  br i1 %epil.iter1516.cmp.not, label %._crit_edge.loopexit.i703, label %.lr.ph.i699.epil, !llvm.loop !66

._crit_edge.loopexit.i703:                        ; preds = %.lr.ph.i699.epil, %._crit_edge.loopexit.i703.unr-lcssa
  %.lcssa1414 = phi i32 [ %i.qg, %._crit_edge.loopexit.i703.unr-lcssa ], [ %i.qd, %.lr.ph.i699.epil ]
  %i.qe = add nsw i32 %.lcssa1413, 1
  %i.qf = add nsw i32 %.lcssa1414, 1
  br label %dl.exit704

.lr.ph.i699:                                      ; preds = %.lr.ph.i699, %.lr.ph.i699.preheader.new
  %.056.i701 = phi i32 [ %.pre1074, %.lr.ph.i699.preheader.new ], [ %i.qg, %.lr.ph.i699 ]
  %niter1521 = phi i64 [ 0, %.lr.ph.i699.preheader.new ], [ %niter1521.next.7, %.lr.ph.i699 ]
  %i.qg = sdiv i32 %.056.i701, 256                ; 3 uses
  %niter1521.next.7 = add i64 %niter1521, 8       ; 2 uses
  %niter1521.ncmp.7 = icmp eq i64 %niter1521.next.7, %unroll_iter1520
  br i1 %niter1521.ncmp.7, label %._crit_edge.loopexit.i703.unr-lcssa, label %.lr.ph.i699

dl.exit704:                                       ; preds = %bb.o, %._crit_edge.loopexit.i703
  %.in827 = phi i32 [ %i.qe, %._crit_edge.loopexit.i703 ], [ %.pre, %bb.o ]
  %.05.lcssa.i697 = phi i32 [ %i.qf, %._crit_edge.loopexit.i703 ], [ %.pre1068, %bb.o ]
  %i.qh = sext i32 %.in827 to i64
  %i.qi = sext i32 %.05.lcssa.i697 to i64
  %i.qj = shl nsw i64 %i.qh, 2
  %i.qk = mul i64 %i.qj, %i.qi
  %i.ql = tail call ptr @dt_alloc_aligned(i64 noundef %i.qk) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ql, i64 64) ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv952
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !17
  %.not620 = icmp eq ptr %i.ql, null
  br i1 %.not620, label %iter.check1339, label %bb.n

iter.check1339:                                   ; preds = %dl.exit704, %dl.exit704.1, %dl.exit704.2, %dl.exit704.3, %dl.exit704.4, %dl.exit704.5
  %i.qn = zext nneg i32 %2 to i64
  %i.qo = shl nuw nsw i64 %i.qn, 2
  %i.qp = zext nneg i32 %3 to i64
  %i.qq = mul nuw i64 %i.qo, %i.qp                ; 9 uses
  %min.iters.check1324 = icmp eq i64 %i.qq, 0
  %i.qr = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.qr, -128
  %or.cond1384 = or i1 %min.iters.check1324, %diff.check
  br i1 %or.cond1384, label %.lr.ph906.preheader, label %vector.main.loop.iter.check1325

vector.main.loop.iter.check1325:                  ; preds = %iter.check1339
end_hunk_1
begin_hunk_2_@local_laplacian_internal:bb.a
  %.056.i693.4.epil.init = phi i32 [ %.pre1072, %.lr.ph.i691.4.preheader ], [ %i.um, %.lr.ph.i699.4.preheader.unr-lcssa ]
  %lcmp.mod1583 = icmp ne i64 %xtraiter1579, 0
  tail call void @llvm.assume(i1 %lcmp.mod1583)
  br label %.lr.ph.i691.4.epil

.lr.ph.i691.4.epil:                               ; preds = %.lr.ph.i691.4.epil, %.lr.ph.i691.4.epil.preheader
  %.056.i693.4.epil = phi i32 [ %i.un, %.lr.ph.i691.4.epil ], [ %.056.i693.4.epil.init, %.lr.ph.i691.4.epil.preheader ]
  %epil.iter1580 = phi i64 [ %epil.iter1580.next, %.lr.ph.i691.4.epil ], [ 0, %.lr.ph.i691.4.epil.preheader ]
  %i.un = sdiv i32 %.056.i693.4.epil, 2           ; 2 uses
  %epil.iter1580.next = add i64 %epil.iter1580, 1 ; 2 uses
  %epil.iter1580.cmp.not = icmp eq i64 %epil.iter1580.next, %xtraiter1579
  br i1 %epil.iter1580.cmp.not, label %.lr.ph.i699.4.preheader, label %.lr.ph.i691.4.epil, !llvm.loop !77

.lr.ph.i699.4.preheader:                          ; preds = %.lr.ph.i691.4.epil, %.lr.ph.i699.4.preheader.unr-lcssa
  %.lcssa1401 = phi i32 [ %i.um, %.lr.ph.i699.4.preheader.unr-lcssa ], [ %i.un, %.lr.ph.i691.4.epil ]
  %xtraiter1586 = and i64 %indvars.iv952.4, 7     ; 3 uses
  %i.uo = icmp samesign ult i64 %indvars.iv952.4, 8
  br i1 %i.uo, label %.lr.ph.i699.4.epil.preheader, label %.lr.ph.i699.4.preheader.new

.lr.ph.i699.4.preheader.new:                      ; preds = %.lr.ph.i699.4.preheader
  %unroll_iter1591 = and i64 %indvars.iv952.4, 9223372036854775800
  br label %.lr.ph.i699.4

.lr.ph.i699.4:                                    ; preds = %.lr.ph.i699.4, %.lr.ph.i699.4.preheader.new
  %.056.i701.4 = phi i32 [ %.pre1074, %.lr.ph.i699.4.preheader.new ], [ %i.up, %.lr.ph.i699.4 ]
  %niter1592 = phi i64 [ 0, %.lr.ph.i699.4.preheader.new ], [ %niter1592.next.7, %.lr.ph.i699.4 ]
  %i.up = sdiv i32 %.056.i701.4, 256              ; 3 uses
  %niter1592.next.7 = add i64 %niter1592, 8       ; 2 uses
  %niter1592.ncmp.7 = icmp eq i64 %niter1592.next.7, %unroll_iter1591
  br i1 %niter1592.ncmp.7, label %._crit_edge.loopexit.i703.4.unr-lcssa, label %.lr.ph.i699.4

._crit_edge.loopexit.i703.4.unr-lcssa:            ; preds = %.lr.ph.i699.4
  %lcmp.mod1588.not = icmp eq i64 %xtraiter1586, 0
  br i1 %lcmp.mod1588.not, label %._crit_edge.loopexit.i703.4, label %.lr.ph.i699.4.epil.preheader

.lr.ph.i699.4.epil.preheader:                     ; preds = %._crit_edge.loopexit.i703.4.unr-lcssa, %.lr.ph.i699.4.preheader
  %.056.i701.4.epil.init = phi i32 [ %.pre1074, %.lr.ph.i699.4.preheader ], [ %i.up, %._crit_edge.loopexit.i703.4.unr-lcssa ]
  %lcmp.mod1590 = icmp ne i64 %xtraiter1586, 0
  tail call void @llvm.assume(i1 %lcmp.mod1590)
  br label %.lr.ph.i699.4.epil

.lr.ph.i699.4.epil:                               ; preds = %.lr.ph.i699.4.epil, %.lr.ph.i699.4.epil.preheader
  %.056.i701.4.epil = phi i32 [ %i.uq, %.lr.ph.i699.4.epil ], [ %.056.i701.4.epil.init, %.lr.ph.i699.4.epil.preheader ]
  %epil.iter1587 = phi i64 [ %epil.iter1587.next, %.lr.ph.i699.4.epil ], [ 0, %.lr.ph.i699.4.epil.preheader ]
  %i.uq = sdiv i32 %.056.i701.4.epil, 2           ; 2 uses
  %epil.iter1587.next = add i64 %epil.iter1587, 1 ; 2 uses
  %epil.iter1587.cmp.not = icmp eq i64 %epil.iter1587.next, %xtraiter1586
  br i1 %epil.iter1587.cmp.not, label %._crit_edge.loopexit.i703.4, label %.lr.ph.i699.4.epil, !llvm.loop !78

._crit_edge.loopexit.i703.4:                      ; preds = %.lr.ph.i699.4.epil, %._crit_edge.loopexit.i703.4.unr-lcssa
  %.lcssa1402 = phi i32 [ %i.up, %._crit_edge.loopexit.i703.4.unr-lcssa ], [ %i.uq, %.lr.ph.i699.4.epil ]
  %i.ur = add nsw i32 %.lcssa1401, 1
  %i.us = add nsw i32 %.lcssa1402, 1
  br label %dl.exit704.4

dl.exit704.4:                                     ; preds = %._crit_edge.loopexit.i703.4, %bb.v
  %.in827.4 = phi i32 [ %i.ur, %._crit_edge.loopexit.i703.4 ], [ %.pre, %bb.v ]
  %.05.lcssa.i697.4 = phi i32 [ %i.us, %._crit_edge.loopexit.i703.4 ], [ %.pre1068, %bb.v ]
  %i.ut = sext i32 %.in827.4 to i64
  %i.uu = sext i32 %.05.lcssa.i697.4 to i64
  %i.uv = shl nsw i64 %i.ut, 2
  %i.uw = mul i64 %i.uv, %i.uu
  %i.ux = tail call ptr @dt_alloc_aligned(i64 noundef %i.uw) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ux, i64 64) ]
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv952.4
  store ptr %i.ux, ptr %i.uy, align 8, !tbaa !17
  %.not620.4 = icmp eq ptr %i.ux, null
  br i1 %.not620.4, label %iter.check1339, label %bb.w

bb.w:                                             ; preds = %dl.exit704.4
  %indvars.iv.next953.4 = add nuw nsw i64 %indvars.iv952.4, 1 ; 2 uses
  %exitcond956.4.not = icmp eq i64 %indvars.iv.next953.4, %wide.trip.count941.pre-phi
  br i1 %exitcond956.4.not, label %.thread801.4, label %bb.v

.thread801.4:                                     ; preds = %bb.w
  %i.uz = getelementptr inbounds nuw i8, ptr %i.h, i64 1200
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.thread801.4
  %indvars.iv952.5 = phi i64 [ 0, %.thread801.4 ], [ %indvars.iv.next953.5, %bb.y ] ; 9 uses
  %.not826.5 = icmp eq i64 %indvars.iv952.5, 0
  br i1 %.not826.5, label %dl.exit704.5, label %.lr.ph.i691.5.preheader

.lr.ph.i691.5.preheader:                          ; preds = %bb.x
  %xtraiter1593 = and i64 %indvars.iv952.5, 7     ; 3 uses
  %i.va = icmp samesign ult i64 %indvars.iv952.5, 8
  br i1 %i.va, label %.lr.ph.i691.5.epil.preheader, label %.lr.ph.i691.5.preheader.new

.lr.ph.i691.5.preheader.new:                      ; preds = %.lr.ph.i691.5.preheader
  %unroll_iter1598 = and i64 %indvars.iv952.5, 9223372036854775800
  br label %.lr.ph.i691.5

.lr.ph.i691.5:                                    ; preds = %.lr.ph.i691.5, %.lr.ph.i691.5.preheader.new
  %.056.i693.5 = phi i32 [ %.pre1072, %.lr.ph.i691.5.preheader.new ], [ %i.vb, %.lr.ph.i691.5 ]
  %niter1599 = phi i64 [ 0, %.lr.ph.i691.5.preheader.new ], [ %niter1599.next.7, %.lr.ph.i691.5 ]
  %i.vb = sdiv i32 %.056.i693.5, 256              ; 3 uses
  %niter1599.next.7 = add i64 %niter1599, 8       ; 2 uses
  %niter1599.ncmp.7 = icmp eq i64 %niter1599.next.7, %unroll_iter1598
  br i1 %niter1599.ncmp.7, label %.lr.ph.i699.5.preheader.unr-lcssa, label %.lr.ph.i691.5

.lr.ph.i699.5.preheader.unr-lcssa:                ; preds = %.lr.ph.i691.5
  %lcmp.mod1595.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1595.not, label %.lr.ph.i699.5.preheader, label %.lr.ph.i691.5.epil.preheader

.lr.ph.i691.5.epil.preheader:                     ; preds = %.lr.ph.i699.5.preheader.unr-lcssa, %.lr.ph.i691.5.preheader
  %.056.i693.5.epil.init = phi i32 [ %.pre1072, %.lr.ph.i691.5.preheader ], [ %i.vb, %.lr.ph.i699.5.preheader.unr-lcssa ]
  %lcmp.mod1597 = icmp ne i64 %xtraiter1593, 0
  tail call void @llvm.assume(i1 %lcmp.mod1597)
  br label %.lr.ph.i691.5.epil

.lr.ph.i691.5.epil:                               ; preds = %.lr.ph.i691.5.epil, %.lr.ph.i691.5.epil.preheader
  %.056.i693.5.epil = phi i32 [ %i.vc, %.lr.ph.i691.5.epil ], [ %.056.i693.5.epil.init, %.lr.ph.i691.5.epil.preheader ]
  %epil.iter1594 = phi i64 [ %epil.iter1594.next, %.lr.ph.i691.5.epil ], [ 0, %.lr.ph.i691.5.epil.preheader ]
  %i.vc = sdiv i32 %.056.i693.5.epil, 2           ; 2 uses
  %epil.iter1594.next = add i64 %epil.iter1594, 1 ; 2 uses
  %epil.iter1594.cmp.not = icmp eq i64 %epil.iter1594.next, %xtraiter1593
  br i1 %epil.iter1594.cmp.not, label %.lr.ph.i699.5.preheader, label %.lr.ph.i691.5.epil, !llvm.loop !79

.lr.ph.i699.5.preheader:                          ; preds = %.lr.ph.i691.5.epil, %.lr.ph.i699.5.preheader.unr-lcssa
  %.lcssa1398 = phi i32 [ %i.vb, %.lr.ph.i699.5.preheader.unr-lcssa ], [ %i.vc, %.lr.ph.i691.5.epil ]
  %xtraiter1600 = and i64 %indvars.iv952.5, 7     ; 3 uses
  %i.vd = icmp samesign ult i64 %indvars.iv952.5, 8
  br i1 %i.vd, label %.lr.ph.i699.5.epil.preheader, label %.lr.ph.i699.5.preheader.new

.lr.ph.i699.5.preheader.new:                      ; preds = %.lr.ph.i699.5.preheader
  %unroll_iter1605 = and i64 %indvars.iv952.5, 9223372036854775800
  br label %.lr.ph.i699.5

.lr.ph.i699.5:                                    ; preds = %.lr.ph.i699.5, %.lr.ph.i699.5.preheader.new
  %.056.i701.5 = phi i32 [ %.pre1074, %.lr.ph.i699.5.preheader.new ], [ %i.ve, %.lr.ph.i699.5 ]
  %niter1606 = phi i64 [ 0, %.lr.ph.i699.5.preheader.new ], [ %niter1606.next.7, %.lr.ph.i699.5 ]
  %i.ve = sdiv i32 %.056.i701.5, 256              ; 3 uses
  %niter1606.next.7 = add i64 %niter1606, 8       ; 2 uses
  %niter1606.ncmp.7 = icmp eq i64 %niter1606.next.7, %unroll_iter1605
  br i1 %niter1606.ncmp.7, label %._crit_edge.loopexit.i703.5.unr-lcssa, label %.lr.ph.i699.5

._crit_edge.loopexit.i703.5.unr-lcssa:            ; preds = %.lr.ph.i699.5
  %lcmp.mod1602.not = icmp eq i64 %xtraiter1600, 0
  br i1 %lcmp.mod1602.not, label %._crit_edge.loopexit.i703.5, label %.lr.ph.i699.5.epil.preheader

.lr.ph.i699.5.epil.preheader:                     ; preds = %._crit_edge.loopexit.i703.5.unr-lcssa, %.lr.ph.i699.5.preheader
  %.056.i701.5.epil.init = phi i32 [ %.pre1074, %.lr.ph.i699.5.preheader ], [ %i.ve, %._crit_edge.loopexit.i703.5.unr-lcssa ]
  %lcmp.mod1604 = icmp ne i64 %xtraiter1600, 0
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %.lr.ph.i699.5.epil

.lr.ph.i699.5.epil:                               ; preds = %.lr.ph.i699.5.epil, %.lr.ph.i699.5.epil.preheader
  %.056.i701.5.epil = phi i32 [ %i.vf, %.lr.ph.i699.5.epil ], [ %.056.i701.5.epil.init, %.lr.ph.i699.5.epil.preheader ]
  %epil.iter1601 = phi i64 [ %epil.iter1601.next, %.lr.ph.i699.5.epil ], [ 0, %.lr.ph.i699.5.epil.preheader ]
  %i.vf = sdiv i32 %.056.i701.5.epil, 2           ; 2 uses
  %epil.iter1601.next = add i64 %epil.iter1601, 1 ; 2 uses
  %epil.iter1601.cmp.not = icmp eq i64 %epil.iter1601.next, %xtraiter1600
  br i1 %epil.iter1601.cmp.not, label %._crit_edge.loopexit.i703.5, label %.lr.ph.i699.5.epil, !llvm.loop !80

._crit_edge.loopexit.i703.5:                      ; preds = %.lr.ph.i699.5.epil, %._crit_edge.loopexit.i703.5.unr-lcssa
  %.lcssa1399 = phi i32 [ %i.ve, %._crit_edge.loopexit.i703.5.unr-lcssa ], [ %i.vf, %.lr.ph.i699.5.epil ]
  %i.vg = add nsw i32 %.lcssa1398, 1
  %i.vh = add nsw i32 %.lcssa1399, 1
  br label %dl.exit704.5

dl.exit704.5:                                     ; preds = %._crit_edge.loopexit.i703.5, %bb.x
  %.in827.5 = phi i32 [ %i.vg, %._crit_edge.loopexit.i703.5 ], [ %.pre, %bb.x ]
  %.05.lcssa.i697.5 = phi i32 [ %i.vh, %._crit_edge.loopexit.i703.5 ], [ %.pre1068, %bb.x ]
  %i.vi = sext i32 %.in827.5 to i64
  %i.vj = sext i32 %.05.lcssa.i697.5 to i64
  %i.vk = shl nsw i64 %i.vi, 2
  %i.vl = mul i64 %i.vk, %i.vj
  %i.vm = tail call ptr @dt_alloc_aligned(i64 noundef %i.vl) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vm, i64 64) ]
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv952.5
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !17
  %.not620.5 = icmp eq ptr %i.vm, null
  br i1 %.not620.5, label %iter.check1339, label %bb.y

bb.y:                                             ; preds = %dl.exit704.5
  %indvars.iv.next953.5 = add nuw nsw i64 %indvars.iv952.5, 1 ; 2 uses
  %exitcond956.5.not = icmp eq i64 %indvars.iv.next953.5, %wide.trip.count941.pre-phi
  br i1 %exitcond956.5.not, label %.thread801.5, label %bb.x

bb.z:                                             ; preds = %._crit_edge879
  br i1 %.not, label %bb.ay, label %bb.aa

.thread801.5:                                     ; preds = %bb.y, %._crit_edge879
  %indvars.iv1007 = phi i64 [ %indvars.iv.next1008, %._crit_edge879 ], [ 0, %bb.y ] ; 3 uses
  %i.vo = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %indvars.iv1007 ; 2 uses
  %i.vp = load ptr, ptr %i.vo, align 16, !tbaa !17 ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv1007
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !20
  tail call void @apply_curve(ptr noundef %i.vp, ptr noundef %storemerge, i32 noundef %.pre, i32 noundef %.pre1068, i32 noundef %i.kv, float noundef %i.vr, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  br i1 %.not612865, label %._crit_edge879, label %.lr.ph878

._crit_edge879:                                   ; preds = %dl.exit720, %.thread801.5
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1 ; 2 uses
  %exitcond1010.not = icmp eq i64 %indvars.iv.next1008, 6
  br i1 %exitcond1010.not, label %bb.z, label %.thread801.5

.lr.ph878:                                        ; preds = %.thread801.5, %dl.exit720
  %indvar1607 = phi i64 [ %indvar.next1608, %dl.exit720 ], [ 0, %.thread801.5 ] ; 7 uses
  %i.vs = phi ptr [ %i.vv, %dl.exit720 ], [ %i.vp, %.thread801.5 ]
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %dl.exit720 ], [ 1, %.thread801.5 ] ; 3 uses
  %i.vt = add nsw i64 %indvar1607, -1
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv1002
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !17 ; 2 uses
  %i.vw = icmp samesign ugt i64 %indvars.iv1002, 1
  br i1 %i.vw, label %.lr.ph.i707.preheader, label %dl.exit720

.lr.ph.i707.preheader:                            ; preds = %.lr.ph878
  %i.vx = add nsw i64 %indvar1607, -1
  %xtraiter1609 = and i64 %indvar1607, 7          ; 3 uses
  %i.vy = icmp ult i64 %i.vx, 7
  br i1 %i.vy, label %.lr.ph.i707.epil.preheader, label %.lr.ph.i707.preheader.new

.lr.ph.i707.preheader.new:                        ; preds = %.lr.ph.i707.preheader
  %unroll_iter1614 = and i64 %indvar1607, -8
  br label %.lr.ph.i707

.lr.ph.i707:                                      ; preds = %.lr.ph.i707, %.lr.ph.i707.preheader.new
  %.056.i709 = phi i32 [ %.pre1072, %.lr.ph.i707.preheader.new ], [ %i.vz, %.lr.ph.i707 ]
  %niter1615 = phi i64 [ 0, %.lr.ph.i707.preheader.new ], [ %niter1615.next.7, %.lr.ph.i707 ]
  %i.vz = sdiv i32 %.056.i709, 256                ; 3 uses
  %niter1615.next.7 = add i64 %niter1615, 8       ; 2 uses
  %niter1615.ncmp.7 = icmp eq i64 %niter1615.next.7, %unroll_iter1614
  br i1 %niter1615.ncmp.7, label %.lr.ph.i715.preheader.unr-lcssa, label %.lr.ph.i707

.lr.ph.i715.preheader.unr-lcssa:                  ; preds = %.lr.ph.i707
  %lcmp.mod1611.not = icmp eq i64 %xtraiter1609, 0
  br i1 %lcmp.mod1611.not, label %.lr.ph.i715.preheader, label %.lr.ph.i707.epil.preheader

.lr.ph.i707.epil.preheader:                       ; preds = %.lr.ph.i715.preheader.unr-lcssa, %.lr.ph.i707.preheader
  %.056.i709.epil.init = phi i32 [ %.pre1072, %.lr.ph.i707.preheader ], [ %i.vz, %.lr.ph.i715.preheader.unr-lcssa ]
  %lcmp.mod1613 = icmp ne i64 %xtraiter1609, 0
  tail call void @llvm.assume(i1 %lcmp.mod1613)
  br label %.lr.ph.i707.epil

.lr.ph.i707.epil:                                 ; preds = %.lr.ph.i707.epil, %.lr.ph.i707.epil.preheader
  %.056.i709.epil = phi i32 [ %i.wa, %.lr.ph.i707.epil ], [ %.056.i709.epil.init, %.lr.ph.i707.epil.preheader ]
  %epil.iter1610 = phi i64 [ %epil.iter1610.next, %.lr.ph.i707.epil ], [ 0, %.lr.ph.i707.epil.preheader ]
  %i.wa = sdiv i32 %.056.i709.epil, 2             ; 2 uses
  %epil.iter1610.next = add i64 %epil.iter1610, 1 ; 2 uses
  %epil.iter1610.cmp.not = icmp eq i64 %epil.iter1610.next, %xtraiter1609
  br i1 %epil.iter1610.cmp.not, label %.lr.ph.i715.preheader, label %.lr.ph.i707.epil, !llvm.loop !81

.lr.ph.i715.preheader:                            ; preds = %.lr.ph.i707.epil, %.lr.ph.i715.preheader.unr-lcssa
  %.lcssa1396 = phi i32 [ %i.vz, %.lr.ph.i715.preheader.unr-lcssa ], [ %i.wa, %.lr.ph.i707.epil ]
  %xtraiter1616 = and i64 %indvar1607, 7          ; 3 uses
  %i.wb = icmp ult i64 %i.vt, 7
  br i1 %i.wb, label %.lr.ph.i715.epil.preheader, label %.lr.ph.i715.preheader.new

.lr.ph.i715.preheader.new:                        ; preds = %.lr.ph.i715.preheader
  %unroll_iter1621 = and i64 %indvar1607, -8
  br label %.lr.ph.i715

._crit_edge.loopexit.i719.unr-lcssa:              ; preds = %.lr.ph.i715
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1618.not, label %._crit_edge.loopexit.i719, label %.lr.ph.i715.epil.preheader

.lr.ph.i715.epil.preheader:                       ; preds = %._crit_edge.loopexit.i719.unr-lcssa, %.lr.ph.i715.preheader
  %.056.i717.epil.init = phi i32 [ %.pre1074, %.lr.ph.i715.preheader ], [ %i.wf, %._crit_edge.loopexit.i719.unr-lcssa ]
  %lcmp.mod1620 = icmp ne i64 %xtraiter1616, 0
  tail call void @llvm.assume(i1 %lcmp.mod1620)
  br label %.lr.ph.i715.epil

.lr.ph.i715.epil:                                 ; preds = %.lr.ph.i715.epil, %.lr.ph.i715.epil.preheader
  %.056.i717.epil = phi i32 [ %i.wc, %.lr.ph.i715.epil ], [ %.056.i717.epil.init, %.lr.ph.i715.epil.preheader ]
  %epil.iter1617 = phi i64 [ %epil.iter1617.next, %.lr.ph.i715.epil ], [ 0, %.lr.ph.i715.epil.preheader ]
  %i.wc = sdiv i32 %.056.i717.epil, 2             ; 2 uses
  %epil.iter1617.next = add i64 %epil.iter1617, 1 ; 2 uses
  %epil.iter1617.cmp.not = icmp eq i64 %epil.iter1617.next, %xtraiter1616
  br i1 %epil.iter1617.cmp.not, label %._crit_edge.loopexit.i719, label %.lr.ph.i715.epil, !llvm.loop !82

._crit_edge.loopexit.i719:                        ; preds = %.lr.ph.i715.epil, %._crit_edge.loopexit.i719.unr-lcssa
  %.lcssa1397 = phi i32 [ %i.wf, %._crit_edge.loopexit.i719.unr-lcssa ], [ %i.wc, %.lr.ph.i715.epil ]
  %i.wd = add nsw i32 %.lcssa1396, 1
  %i.we = add nsw i32 %.lcssa1397, 1
  br label %dl.exit720

.lr.ph.i715:                                      ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader.new
  %.056.i717 = phi i32 [ %.pre1074, %.lr.ph.i715.preheader.new ], [ %i.wf, %.lr.ph.i715 ]
  %niter1622 = phi i64 [ 0, %.lr.ph.i715.preheader.new ], [ %niter1622.next.7, %.lr.ph.i715 ]
  %i.wf = sdiv i32 %.056.i717, 256                ; 3 uses
  %niter1622.next.7 = add i64 %niter1622, 8       ; 2 uses
  %niter1622.ncmp.7 = icmp eq i64 %niter1622.next.7, %unroll_iter1621
  br i1 %niter1622.ncmp.7, label %._crit_edge.loopexit.i719.unr-lcssa, label %.lr.ph.i715

dl.exit720:                                       ; preds = %.lr.ph878, %._crit_edge.loopexit.i719
  %.in825 = phi i32 [ %i.wd, %._crit_edge.loopexit.i719 ], [ %.pre, %.lr.ph878 ]
  %.05.lcssa.i713 = phi i32 [ %i.we, %._crit_edge.loopexit.i719 ], [ %.pre1068, %.lr.ph878 ]
  %i.wg = sext i32 %.in825 to i64
  %i.wh = sext i32 %.05.lcssa.i713 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.vs, ptr noundef %i.vv, i64 noundef %i.wg, i64 noundef %i.wh)
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 1 ; 2 uses
  %exitcond1006.not = icmp eq i64 %indvars.iv.next1003, %wide.trip.count941.pre-phi
  %indvar.next1608 = add i64 %indvar1607, 1
  br i1 %exitcond1006.not, label %._crit_edge879, label %.lr.ph878

bb.aa:                                            ; preds = %bb.z
  %i.wi = load i32, ptr %8, align 8, !tbaa !18
  %i.wj = icmp eq i32 %i.wi, 2
  br i1 %i.wj, label %bb.ab, label %bb.ay

bb.ab:                                            ; preds = %bb.aa
  %i.wk = uitofp nneg i32 %.0528791 to float
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.wk) ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !83
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !84
  %i.wp = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !86
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !87
  %i.wt = sitofp reassoc nsz arcp contract afn i32 %i.ws to float
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wo, %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !88
  %i.wx = sitofp reassoc nsz arcp contract afn i32 %i.ww to float
  %i.wy = fmul reassoc nsz arcp contract afn float %exp2, %i.wx
  %i.wz = fdiv reassoc nsz arcp contract afn float %i.wy, %i.wu
  %i.xa = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !16 ; 2 uses
  %i.xc = add nsw i32 %i.xb, -1
  %i.xd = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.wz) ; 2 uses
  %i.xe = insertelement <2 x float> poison, float %i.xd, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xg = fadd reassoc nsz arcp contract afn <2 x float> %i.xf, <float 1.000000e+00, float -0.000000e+00>
  %i.xh = fptosi <2 x float> %i.xg to <2 x i32>   ; 2 uses
  %i.xi = insertelement <2 x i32> poison, i32 %i.xb, i64 0
  %i.xj = shufflevector <2 x i32> %i.xi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xk = icmp sgt <2 x i32> %i.xj, %i.xh
  %i.xl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.xh, <2 x i32> zeroinitializer)
  %i.xm = insertelement <2 x i32> poison, i32 %i.xc, i64 0
  %i.xn = shufflevector <2 x i32> %i.xm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xo = select <2 x i1> %i.xk, <2 x i32> %i.xl, <2 x i32> %i.xn ; 3 uses
  %i.xp = extractelement <2 x i32> %i.xo, i64 1   ; 10 uses
  %i.xq = sitofp reassoc nsz arcp contract afn i32 %i.xp to float
  %i.xr = fsub reassoc nsz arcp contract afn float %i.xd, %i.xq ; 3 uses
  %i.xs = fcmp reassoc nsz arcp contract afn ogt float %i.xr, 1.000000e+00
  %i.xt = fcmp reassoc nsz arcp contract afn olt float %i.xr, 0.000000e+00
  %i.xu = select reassoc nsz arcp contract afn i1 %i.xt, float 0.000000e+00, float %i.xr
  %i.xv = select reassoc nsz arcp contract afn i1 %i.xs, float 1.000000e+00, float %i.xu
  %i.xw = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.xo)
  %i.xx = fdiv reassoc nnan nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xw
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.xz = icmp sgt i32 %.0528791, 0
  br i1 %i.xz, label %.lr.ph.i723.preheader, label %dl.exit736

.lr.ph.i723.preheader:                            ; preds = %bb.ab
  %xtraiter1623 = and i32 %.0528791, 7            ; 3 uses
  %i.ya = icmp ult i32 %.0528791, 8
  br i1 %i.ya, label %.lr.ph.i723.epil.preheader, label %.lr.ph.i723.preheader.new

.lr.ph.i723.preheader.new:                        ; preds = %.lr.ph.i723.preheader
  %unroll_iter1628 = and i32 %.0528791, 2147483640
  br label %.lr.ph.i723

.lr.ph.i723:                                      ; preds = %.lr.ph.i723, %.lr.ph.i723.preheader.new
  %.056.i725 = phi i32 [ %.pre1072, %.lr.ph.i723.preheader.new ], [ %i.yb, %.lr.ph.i723 ]
  %niter1629 = phi i32 [ 0, %.lr.ph.i723.preheader.new ], [ %niter1629.next.7, %.lr.ph.i723 ]
  %i.yb = sdiv i32 %.056.i725, 256                ; 3 uses
  %niter1629.next.7 = add nuw nsw i32 %niter1629, 8 ; 2 uses
  %niter1629.ncmp.7 = icmp eq i32 %niter1629.next.7, %unroll_iter1628
  br i1 %niter1629.ncmp.7, label %.lr.ph.i731.preheader.unr-lcssa, label %.lr.ph.i723

.lr.ph.i731.preheader.unr-lcssa:                  ; preds = %.lr.ph.i723
  %lcmp.mod1625.not = icmp eq i32 %xtraiter1623, 0
  br i1 %lcmp.mod1625.not, label %.lr.ph.i731.preheader, label %.lr.ph.i723.epil.preheader

.lr.ph.i723.epil.preheader:                       ; preds = %.lr.ph.i731.preheader.unr-lcssa, %.lr.ph.i723.preheader
  %.056.i725.epil.init = phi i32 [ %.pre1072, %.lr.ph.i723.preheader ], [ %i.yb, %.lr.ph.i731.preheader.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i32 %xtraiter1623, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %.lr.ph.i723.epil

.lr.ph.i723.epil:                                 ; preds = %.lr.ph.i723.epil, %.lr.ph.i723.epil.preheader
  %.056.i725.epil = phi i32 [ %i.yc, %.lr.ph.i723.epil ], [ %.056.i725.epil.init, %.lr.ph.i723.epil.preheader ]
  %epil.iter1624 = phi i32 [ %epil.iter1624.next, %.lr.ph.i723.epil ], [ 0, %.lr.ph.i723.epil.preheader ]
  %i.yc = sdiv i32 %.056.i725.epil, 2             ; 2 uses
  %epil.iter1624.next = add i32 %epil.iter1624, 1 ; 2 uses
  %epil.iter1624.cmp.not = icmp eq i32 %epil.iter1624.next, %xtraiter1623
  br i1 %epil.iter1624.cmp.not, label %.lr.ph.i731.preheader, label %.lr.ph.i723.epil, !llvm.loop !89

.lr.ph.i731.preheader:                            ; preds = %.lr.ph.i723.epil, %.lr.ph.i731.preheader.unr-lcssa
  %.lcssa1395 = phi i32 [ %i.yb, %.lr.ph.i731.preheader.unr-lcssa ], [ %i.yc, %.lr.ph.i723.epil ]
  %xtraiter1630 = and i32 %.0528791, 7            ; 3 uses
  %i.yd = icmp ult i32 %.0528791, 8
  br i1 %i.yd, label %.lr.ph.i731.epil.preheader, label %.lr.ph.i731.preheader.new

.lr.ph.i731.preheader.new:                        ; preds = %.lr.ph.i731.preheader
  %unroll_iter1635 = and i32 %.0528791, 2147483640
  br label %.lr.ph.i731

._crit_edge.loopexit.i735.unr-lcssa:              ; preds = %.lr.ph.i731
  %lcmp.mod1632.not = icmp eq i32 %xtraiter1630, 0
  br i1 %lcmp.mod1632.not, label %._crit_edge.loopexit.i735, label %.lr.ph.i731.epil.preheader

.lr.ph.i731.epil.preheader:                       ; preds = %._crit_edge.loopexit.i735.unr-lcssa, %.lr.ph.i731.preheader
  %.056.i733.epil.init = phi i32 [ %.pre1074, %.lr.ph.i731.preheader ], [ %i.yh, %._crit_edge.loopexit.i735.unr-lcssa ]
  %lcmp.mod1634 = icmp ne i32 %xtraiter1630, 0
  tail call void @llvm.assume(i1 %lcmp.mod1634)
  br label %.lr.ph.i731.epil

.lr.ph.i731.epil:                                 ; preds = %.lr.ph.i731.epil, %.lr.ph.i731.epil.preheader
  %.056.i733.epil = phi i32 [ %i.ye, %.lr.ph.i731.epil ], [ %.056.i733.epil.init, %.lr.ph.i731.epil.preheader ]
  %epil.iter1631 = phi i32 [ %epil.iter1631.next, %.lr.ph.i731.epil ], [ 0, %.lr.ph.i731.epil.preheader ]
  %i.ye = sdiv i32 %.056.i733.epil, 2             ; 2 uses
  %epil.iter1631.next = add i32 %epil.iter1631, 1 ; 2 uses
  %epil.iter1631.cmp.not = icmp eq i32 %epil.iter1631.next, %xtraiter1630
  br i1 %epil.iter1631.cmp.not, label %._crit_edge.loopexit.i735, label %.lr.ph.i731.epil, !llvm.loop !90
end_hunk_2
begin_hunk_3_@ll_pad_input:bb.a
bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %bb.ag
  %i.me = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ag ], [ %i.lz, %bb.ah ], [ %i.mb, %bb.af ]
  %i.mf = fptosi float %i.me to i32
  %i.mg = load i32, ptr %i.hl, align 4, !tbaa !146 ; 2 uses
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %i.mg to float
  %i.mi = fmul reassoc nsz arcp contract afn float %i.lf, %i.mh
  %i.mj = fdiv reassoc nsz arcp contract afn float %i.mi, %i.lp
  %i.mk = load i32, ptr %i.hm, align 4, !tbaa !92 ; 2 uses
  %i.ml = sub nsw i32 %i.mk, %i.mg
  %i.mm = sdiv i32 %i.ml, 2
  %i.mn = sitofp reassoc nsz arcp contract afn i32 %i.mm to float
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mj, %i.mn ; 3 uses
  %i.mp = add nsw i32 %i.mk, -1
  %i.mq = sitofp reassoc nsz arcp contract afn i32 %i.mp to float ; 2 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt float %i.mo, %i.mq
  br i1 %i.mr, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ms = fcmp reassoc nsz arcp contract afn olt float %i.mo, 0.000000e+00
  br i1 %i.ms, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.mt = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.aj ], [ %i.mo, %bb.ak ], [ %i.mq, %bb.ai ]
  %i.mu = fptosi float %i.mt to i32
  %i.mv = load ptr, ptr %i.hn, align 8, !tbaa !11
  %i.mw = mul nsw i32 %i.lv, %i.mu
  %i.mx = add nsw i32 %i.mw, %i.mf
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.my
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ae
  %.sink586.in = phi ptr [ %i.mz, %bb.al ], [ %gep, %bb.ae ]
  %.sink586 = load float, ptr %.sink586.in, align 4, !tbaa !20
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sink588, i64 %indvars.iv495
  store float %.sink586, ptr %i.na, align 4, !tbaa !20
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %exitcond499.not = icmp eq i64 %indvars.iv.next496, %i.hw
  br i1 %exitcond499.not, label %._crit_edge451, label %bb.ab

.preheader425:                                    ; preds = %.preheader425.lr.ph.split, %._crit_edge459
  %indvars.iv510 = phi i64 [ %i.kz, %.preheader425.lr.ph.split ], [ %indvars.iv.next511, %._crit_edge459 ] ; 3 uses
  %i.nb = trunc nuw nsw i64 %indvars.iv510 to i32
  %.reass464 = add i32 %invariant.op463, %i.nb
  %i.nc = sitofp reassoc nsz arcp contract afn i32 %.reass464 to float
  %i.nd = mul nuw nsw i64 %indvars.iv510, %i.o
  %.sink591 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.nd
  br label %bb.an

._crit_edge459:                                   ; preds = %bb.ay
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.ne = icmp samesign ult i64 %indvars.iv.next511, %i.la
  br i1 %i.ne, label %.preheader425, label %pad_by_replication.exit

bb.an:                                            ; preds = %.preheader425, %bb.ay
  %indvars.iv505 = phi i64 [ 0, %.preheader425 ], [ %indvars.iv.next506, %bb.ay ] ; 4 uses
  %i.nf = trunc nuw nsw i64 %indvars.iv505 to i32
  %.reass461 = add i32 %invariant.op460, %i.nf
  %i.ng = sitofp reassoc nsz arcp contract afn i32 %.reass461 to float
  %i.nh = load float, ptr %i.kv, align 4, !tbaa !84 ; 2 uses
  %i.ni = fdiv reassoc nsz arcp contract afn float %i.ng, %i.nh ; 2 uses
  %i.nj = fdiv reassoc nsz arcp contract afn float %i.nc, %i.nh ; 4 uses
  %i.nk = fcmp reassoc nsz arcp contract afn olt float %i.ni, 0.000000e+00
  br i1 %i.nk, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nl = load ptr, ptr %i.hi, align 8, !tbaa !86 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !87
  %i.no = sitofp reassoc nsz arcp contract afn i32 %i.nn to float ; 2 uses
  %i.np = fcmp reassoc nsz arcp contract afn oge float %i.nj, %i.no
  %i.nq = fcmp reassoc nsz arcp contract afn olt float %i.nj, 0.000000e+00
  %or.cond7 = or i1 %i.nq, %i.np
  br i1 %or.cond7, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !145
  %i.nt = sitofp reassoc nsz arcp contract afn i32 %i.ns to float ; 2 uses
  %i.nu = fcmp reassoc nsz arcp contract afn ult float %i.nj, %i.nt
  br i1 %i.nu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %gep576 = getelementptr [4 x i8], ptr %invariant.gep575, i64 %indvars.iv505
  br label %bb.ay

bb.ar:                                            ; preds = %bb.ap
  %i.nv = load i32, ptr %i.hj, align 8, !tbaa !88 ; 2 uses
  %i.nw = sitofp reassoc nsz arcp contract afn i32 %i.nv to float
  %i.nx = fmul reassoc nsz arcp contract afn float %i.ni, %i.nw
  %i.ny = fdiv reassoc nsz arcp contract afn float %i.nx, %i.no
  %i.nz = load i32, ptr %i.hk, align 8, !tbaa !91 ; 3 uses
  %i.oa = sub nsw i32 %i.nz, %i.nv
  %i.ob = sdiv i32 %i.oa, 2
  %i.oc = sitofp reassoc nsz arcp contract afn i32 %i.ob to float
  %i.od = fadd reassoc nsz arcp contract afn float %i.ny, %i.oc ; 3 uses
  %i.oe = add nsw i32 %i.nz, -1
  %i.of = sitofp reassoc nsz arcp contract afn i32 %i.oe to float ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ogt float %i.od, %i.of
  br i1 %i.og, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oh = fcmp reassoc nsz arcp contract afn olt float %i.od, 0.000000e+00
  br i1 %i.oh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at, %bb.as
  %i.oi = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.as ], [ %i.od, %bb.at ], [ %i.of, %bb.ar ]
  %i.oj = fptosi float %i.oi to i32
  %i.ok = load i32, ptr %i.hl, align 4, !tbaa !146 ; 2 uses
  %i.ol = sitofp reassoc nsz arcp contract afn i32 %i.ok to float
  %i.om = fmul reassoc nsz arcp contract afn float %i.nj, %i.ol
  %i.on = fdiv reassoc nsz arcp contract afn float %i.om, %i.nt
  %i.oo = load i32, ptr %i.hm, align 4, !tbaa !92 ; 2 uses
  %i.op = sub nsw i32 %i.oo, %i.ok
  %i.oq = sdiv i32 %i.op, 2
  %i.or = sitofp reassoc nsz arcp contract afn i32 %i.oq to float
  %i.os = fadd reassoc nsz arcp contract afn float %i.on, %i.or ; 3 uses
  %i.ot = add nsw i32 %i.oo, -1
  %i.ou = sitofp reassoc nsz arcp contract afn i32 %i.ot to float ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn ogt float %i.os, %i.ou
  br i1 %i.ov, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ow = fcmp reassoc nsz arcp contract afn olt float %i.os, 0.000000e+00
  br i1 %i.ow, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.aw, %bb.av
  %i.ox = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.av ], [ %i.os, %bb.aw ], [ %i.ou, %bb.au ]
  %i.oy = fptosi float %i.ox to i32
  %i.oz = load ptr, ptr %i.hn, align 8, !tbaa !11
  %i.pa = mul nsw i32 %i.nz, %i.oy
  %i.pb = add nsw i32 %i.pa, %i.oj
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.pc
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aq
  %.sink589.in = phi ptr [ %i.pd, %bb.ax ], [ %gep576, %bb.aq ]
  %.sink589 = load float, ptr %.sink589.in, align 4, !tbaa !20
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sink591, i64 %indvars.iv505
  store float %.sink589, ptr %i.pe, align 4, !tbaa !20
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1 ; 2 uses
  %exitcond509.not = icmp eq i64 %indvars.iv.next506, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge459, label %bb.an

bb.az:                                            ; preds = %bb.b, %bb.a
  %i.pf = shl i32 %1, 2                           ; 5 uses
  %i.pg = load i32, ptr %4, align 4, !tbaa !19    ; 21 uses
  %i.ph = add nuw i32 %3, %1                      ; 2 uses
  %i.pi = icmp slt i32 %i.ph, %i.pg
  %i.pj = sext i32 %i.ph to i64                   ; 8 uses
  %i.pk = sext i32 %i.pg to i64                   ; 8 uses
  %i.pl = sext i32 %i.pf to i64                   ; 2 uses
  %i.pm = zext nneg i32 %3 to i64
  %i.pn = zext nneg i32 %1 to i64
  %wide.trip.count529 = zext nneg i32 %2 to i64   ; 4 uses
  %wide.trip.count516 = zext nneg i32 %3 to i64   ; 14 uses
  %wide.trip.count521 = zext nneg i32 %1 to i64   ; 10 uses
  %i.po = mul nsw i64 %i.pk, %wide.trip.count516
  %i.pp = add nsw i64 %i.po, %i.pj
  %i.pq = shl i64 %i.pp, 2
  %scevgep610 = getelementptr i8, ptr %i.i, i64 %i.pq
  %i.pr = add nuw nsw i64 %wide.trip.count529, %wide.trip.count516
  %i.ps = shl nuw nsw i64 %i.pr, 2
  %i.pt = mul i64 %i.ps, %i.pk
  %scevgep611 = getelementptr i8, ptr %i.i, i64 %i.pt
  %i.pu = add i32 %i.pf, -4
  %scevgep613 = getelementptr i8, ptr %0, i64 4
  %i.pv = sub nsw i64 %i.pk, %i.pj                ; 7 uses
  %i.pw = add nsw i64 %wide.trip.count521, -1     ; 2 uses
  %i.px = add i32 %i.pg, 1
  %i.py = mul i32 %3, %i.px
  %i.pz = mul nuw nsw i64 %wide.trip.count529, %wide.trip.count521
  %i.qa = shl i64 %i.pz, 4
  %i.qb = getelementptr i8, ptr %0, i64 %i.qa
  %scevgep645 = getelementptr i8, ptr %i.qb, i64 -12
  %i.qc = add i32 %i.pg, 1
  %i.qd = mul i32 %3, %i.qc
  %i.qe = shl nuw nsw i64 %wide.trip.count521, 2
  %scevgep647 = getelementptr i8, ptr %i.i, i64 %i.qe
  %i.qf = mul nsw i64 %i.pk, %wide.trip.count516
  %i.qg = shl i64 %i.qf, 2
  %scevgep684 = getelementptr i8, ptr %i.i, i64 %i.qg
  %i.qh = add nsw i64 %wide.trip.count529, -1     ; 2 uses
  %i.qi = mul nsw i64 %i.qh, %i.pk
  %i.qj = shl i64 %i.qi, 2
  %i.qk = shl nsw i64 %i.pk, 2
  %i.ql = add nsw i64 %i.qk, 4
  %i.qm = mul nsw i64 %i.ql, %wide.trip.count516
  %i.qn = getelementptr i8, ptr %i.i, i64 %i.qj
  %scevgep685 = getelementptr i8, ptr %i.qn, i64 %i.qm
  %i.qo = mul nsw i64 %i.qh, %i.pl
  %i.qp = shl i64 %i.qo, 2
  %i.qq = getelementptr i8, ptr %0, i64 %i.qp
  %scevgep686 = getelementptr i8, ptr %i.qq, i64 4
  %min.iters.check692 = icmp samesign ult i32 %3, 4
  %bound0687 = icmp ult ptr %scevgep684, %scevgep686
  %bound1688 = icmp ult ptr %0, %scevgep685
  %found.conflict689 = and i1 %bound0687, %bound1688
  %i.qr = or i32 %i.pf, %i.pg
  %i.qs = icmp slt i32 %i.qr, 0
  %i.qt = or i1 %found.conflict689, %i.qs
  %min.iters.check694 = icmp samesign ult i32 %3, 32
  %i.qu = and i64 %wide.trip.count516, 28
  %n.vec696 = and i64 %wide.trip.count516, 1073741792 ; 4 uses
  %cmp.n703 = icmp eq i64 %n.vec696, %wide.trip.count516
  %min.epilog.iters.check708 = icmp eq i64 %i.qu, 0
  %n.vec710 = and i64 %wide.trip.count516, 1073741820 ; 3 uses
  %cmp.n717 = icmp eq i64 %n.vec710, %wide.trip.count516
  %min.iters.check652 = icmp samesign ult i32 %1, 5
  %i.qv = trunc nsw i64 %i.pw to i32
  %i.qw = icmp ugt i64 %i.pw, 4294967295
  %min.iters.check654 = icmp samesign ult i32 %1, 33
  %i.qx = and i64 %wide.trip.count521, 31         ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 0
  %i.qz = select i1 %i.qy, i64 32, i64 %i.qx      ; 2 uses
  %n.vec656 = sub nsw i64 %wide.trip.count521, %i.qz ; 3 uses
  %min.epilog.iters.check673 = icmp samesign ult i64 %i.qz, 5
  %i.ra = and i64 %wide.trip.count521, 3          ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  %i.rc = select i1 %i.rb, i64 4, i64 %i.ra
  %n.vec675 = sub nsw i64 %wide.trip.count521, %i.rc ; 2 uses
  %min.iters.check618 = icmp ult i64 %i.pv, 4
  %stride.check = icmp slt i32 %i.pg, 0
  %min.iters.check620 = icmp ult i64 %i.pv, 32
  %i.rd = and i64 %i.pv, 28
  %n.vec622 = and i64 %i.pv, -32                  ; 4 uses
  %i.re = add nsw i64 %n.vec622, %i.pj
  %cmp.n = icmp eq i64 %i.pv, %n.vec622
  %min.epilog.iters.check632 = icmp eq i64 %i.rd, 0
  %n.vec634 = and i64 %i.pv, -4                   ; 3 uses
  %i.rf = add nsw i64 %n.vec634, %i.pj
  %cmp.n641 = icmp eq i64 %i.pv, %n.vec634
  br label %iter.check705

iter.check705:                                    ; preds = %bb.az, %._crit_edge472
  %indvars.iv526 = phi i64 [ 0, %bb.az ], [ %i.xo, %._crit_edge472 ] ; 7 uses
  %i.rg = trunc i64 %indvars.iv526 to i32
  %i.rh = mul i32 %i.pg, %i.rg
  %i.ri = add i32 %i.rh, %i.qd
  %i.rj = sext i32 %i.ri to i64
  %i.rk = shl nsw i64 %i.rj, 2                    ; 2 uses
  %scevgep646 = getelementptr i8, ptr %i.i, i64 %i.rk
  %scevgep648 = getelementptr i8, ptr %scevgep647, i64 %i.rk
  %i.rl = trunc i64 %indvars.iv526 to i32
  %i.rm = mul i32 %i.pg, %i.rl
  %i.rn = add i32 %i.rm, %i.py                    ; 2 uses
  %i.ro = trunc i64 %indvars.iv526 to i32
  %i.rp = mul i32 %i.pf, %i.ro
  %i.rq = add i32 %i.rp, %i.pu
  %i.rr = sext i32 %i.rq to i64
  %i.rs = shl nsw i64 %i.rr, 2                    ; 2 uses
  %scevgep612 = getelementptr i8, ptr %0, i64 %i.rs
  %scevgep614 = getelementptr i8, ptr %scevgep613, i64 %i.rs
  %i.rt = mul nuw nsw i64 %indvars.iv526, %i.pl
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rt ; 11 uses
  %i.rv = add nuw nsw i64 %indvars.iv526, %i.pm
  %i.rw = mul nsw i64 %i.rv, %i.pk                ; 3 uses
  %i.rx = getelementptr [4 x i8], ptr %i.i, i64 %i.rw ; 11 uses
  %brmerge = select i1 %min.iters.check692, i1 true, i1 %i.qt
  br i1 %brmerge, label %vec.epilog.scalar.ph706.preheader, label %vector.main.loop.iter.check693

vector.main.loop.iter.check693:                   ; preds = %iter.check705
  br i1 %min.iters.check694, label %vec.epilog.ph709, label %vector.ph695

vector.ph695:                                     ; preds = %vector.main.loop.iter.check693
  %i.ry = load float, ptr %i.ru, align 4, !tbaa !20, !alias.scope !196
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, f0x3C23D70A
  %broadcast.splatinsert699 = insertelement <8 x float> poison, float %i.rz, i64 0
  %broadcast.splat700 = shufflevector <8 x float> %broadcast.splatinsert699, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph695
  %index698 = phi i64 [ 0, %vector.ph695 ], [ %index.next701, %vector.body697 ] ; 2 uses
  %i.sa = getelementptr [4 x i8], ptr %i.rx, i64 %index698 ; 4 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 32
  %i.sc = getelementptr i8, ptr %i.sa, i64 64
  %i.sd = getelementptr i8, ptr %i.sa, i64 96
  store <8 x float> %broadcast.splat700, ptr %i.sa, align 4, !tbaa !20, !alias.scope !199, !noalias !196
  store <8 x float> %broadcast.splat700, ptr %i.sb, align 4, !tbaa !20, !alias.scope !199, !noalias !196
  store <8 x float> %broadcast.splat700, ptr %i.sc, align 4, !tbaa !20, !alias.scope !199, !noalias !196
  store <8 x float> %broadcast.splat700, ptr %i.sd, align 4, !tbaa !20, !alias.scope !199, !noalias !196
  %index.next701 = add nuw i64 %index698, 32      ; 2 uses
  %i.se = icmp eq i64 %index.next701, %n.vec696
  br i1 %i.se, label %middle.block702, label %vector.body697, !llvm.loop !201

middle.block702:                                  ; preds = %vector.body697
  br i1 %cmp.n703, label %iter.check670, label %vec.epilog.iter.check707

vec.epilog.iter.check707:                         ; preds = %middle.block702
  br i1 %min.epilog.iters.check708, label %vec.epilog.scalar.ph706.preheader, label %vec.epilog.ph709, !prof !39

vec.epilog.ph709:                                 ; preds = %vector.main.loop.iter.check693, %vec.epilog.iter.check707
  %vec.epilog.resume.val704 = phi i64 [ %n.vec696, %vec.epilog.iter.check707 ], [ 0, %vector.main.loop.iter.check693 ]
  %i.sf = load float, ptr %i.ru, align 4, !tbaa !20, !alias.scope !196
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, f0x3C23D70A
  %broadcast.splatinsert713 = insertelement <4 x float> poison, float %i.sg, i64 0
  %broadcast.splat714 = shufflevector <4 x float> %broadcast.splatinsert713, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body711

vec.epilog.vector.body711:                        ; preds = %vec.epilog.vector.body711, %vec.epilog.ph709
  %index712 = phi i64 [ %vec.epilog.resume.val704, %vec.epilog.ph709 ], [ %index.next715, %vec.epilog.vector.body711 ] ; 2 uses
  %i.sh = getelementptr [4 x i8], ptr %i.rx, i64 %index712
  store <4 x float> %broadcast.splat714, ptr %i.sh, align 4, !tbaa !20, !alias.scope !199, !noalias !196
  %index.next715 = add nuw i64 %index712, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next715, %n.vec710
  br i1 %i.si, label %vec.epilog.middle.block716, label %vec.epilog.vector.body711, !llvm.loop !202

vec.epilog.middle.block716:                       ; preds = %vec.epilog.vector.body711
  br i1 %cmp.n717, label %iter.check670, label %vec.epilog.scalar.ph706.preheader

vec.epilog.scalar.ph706.preheader:                ; preds = %iter.check705, %vec.epilog.iter.check707, %vec.epilog.middle.block716
  %indvars.iv513.ph = phi i64 [ 0, %iter.check705 ], [ %n.vec710, %vec.epilog.middle.block716 ], [ %n.vec696, %vec.epilog.iter.check707 ] ; 4 uses
  %i.sj = sub nsw i64 %wide.trip.count516, %indvars.iv513.ph
  %xtraiter720 = and i64 %i.sj, 7                 ; 2 uses
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  br i1 %lcmp.mod721.not, label %vec.epilog.scalar.ph706.prol.loopexit, label %vec.epilog.scalar.ph706.prol

vec.epilog.scalar.ph706.prol:                     ; preds = %vec.epilog.scalar.ph706.preheader, %vec.epilog.scalar.ph706.prol
  %indvars.iv513.prol = phi i64 [ %indvars.iv.next514.prol, %vec.epilog.scalar.ph706.prol ], [ %indvars.iv513.ph, %vec.epilog.scalar.ph706.preheader ] ; 2 uses
  %prol.iter722 = phi i64 [ %prol.iter722.next, %vec.epilog.scalar.ph706.prol ], [ 0, %vec.epilog.scalar.ph706.preheader ]
  %i.sk = load float, ptr %i.ru, align 4, !tbaa !20
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, f0x3C23D70A
  %i.sm = getelementptr [4 x i8], ptr %i.rx, i64 %indvars.iv513.prol
  store float %i.sl, ptr %i.sm, align 4, !tbaa !20
  %indvars.iv.next514.prol = add nuw nsw i64 %indvars.iv513.prol, 1 ; 2 uses
  %prol.iter722.next = add i64 %prol.iter722, 1   ; 2 uses
  %prol.iter722.cmp.not = icmp eq i64 %prol.iter722.next, %xtraiter720
  br i1 %prol.iter722.cmp.not, label %vec.epilog.scalar.ph706.prol.loopexit, label %vec.epilog.scalar.ph706.prol, !llvm.loop !203

vec.epilog.scalar.ph706.prol.loopexit:            ; preds = %vec.epilog.scalar.ph706.prol, %vec.epilog.scalar.ph706.preheader
  %indvars.iv513.unr = phi i64 [ %indvars.iv513.ph, %vec.epilog.scalar.ph706.preheader ], [ %indvars.iv.next514.prol, %vec.epilog.scalar.ph706.prol ]
  %i.sn = sub nsw i64 %indvars.iv513.ph, %wide.trip.count516
  %i.so = icmp ugt i64 %i.sn, -8
  br i1 %i.so, label %iter.check670, label %vec.epilog.scalar.ph706

bb.ba:                                            ; preds = %._crit_edge472
  %i.sp = load i32, ptr %5, align 4, !tbaa !19
  %i.sq = mul i32 %i.pg, %3
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sr ; 5 uses
  %i.st = zext i32 %i.pg to i64
  %i.su = shl nuw nsw i64 %i.st, 2                ; 10 uses
  %i.sv = sub i32 %i.sp, %3                       ; 6 uses
  %i.sw = add i32 %i.sv, -1
  %i.sx = mul i32 %i.sw, %i.pg
  %i.sy = zext i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sy ; 5 uses
  %xtraiter728 = and i64 %wide.trip.count516, 3   ; 3 uses
  %i.ta = icmp samesign ult i32 %3, 4
  br i1 %i.ta, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ba
  %unroll_iter = and i64 %wide.trip.count516, 1073741820
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.bb ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.bb ]
  %i.tb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.tc = mul i32 %i.pg, %i.tb
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.td
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.te, ptr align 4 %i.ss, i64 %i.su, i1 false)
  %i.tf = add i32 %i.sv, %i.tb
  %i.tg = mul i32 %i.tf, %i.pg
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.th
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ti, ptr align 4 %i.sz, i64 %i.su, i1 false)
  %i.tj = trunc i64 %indvars.iv.i to i32
  %i.tk = or disjoint i32 %i.tj, 1                ; 2 uses
  %i.tl = mul i32 %i.pg, %i.tk
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tn, ptr align 4 %i.ss, i64 %i.su, i1 false)
  %i.to = add i32 %i.sv, %i.tk
  %i.tp = mul i32 %i.to, %i.pg
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tr, ptr align 4 %i.sz, i64 %i.su, i1 false)
  %i.ts = trunc i64 %indvars.iv.i to i32
  %i.tt = or disjoint i32 %i.ts, 2                ; 2 uses
  %i.tu = mul i32 %i.pg, %i.tt
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.tw, ptr align 4 %i.ss, i64 %i.su, i1 false)
  %i.tx = add i32 %i.sv, %i.tt
  %i.ty = mul i32 %i.tx, %i.pg
  %i.tz = zext i32 %i.ty to i64
end_hunk_3
